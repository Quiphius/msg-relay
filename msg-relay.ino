#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64

#define OLED_RESET 4
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

#define BUTTON_PIN 2
#define RELAY_PIN 8
#define RELAYS 4

unsigned short triggerState;
bool ledOn;
bool triggered = false;
unsigned short triggerReset = 0;

unsigned short relayTimes[] = { 10, 15, 40, 0 };
bool relayActive[] = { false, false, false, false };
unsigned long relayLast[] = { 0, 0, 0, 0 };
unsigned long triggedTime, now;


void setup() {
  Serial.begin(9600);
  Serial.println("MSG-Relay test");

  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(BUTTON_PIN, INPUT);

  for (int i = 0; i < RELAYS; i++) {
    pinMode(RELAY_PIN + i, OUTPUT);
    if (triggerReset < relayTimes[i] + 11) {
      triggerReset = relayTimes[i] + 11;
    }
  }
  /*
    display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)
    display.setRotation(0);
    display.setTextSize(0);
    display.setTextColor(WHITE);
    display.clearDisplay();
  */
}

void loop() {
  now = millis();

  if (!triggered) {
    if (digitalRead(BUTTON_PIN) == HIGH) {
      triggered = true;
      triggedTime = now;
      digitalWrite(LED_BUILTIN, HIGH);
      ledOn = true;
      for (int i = 0; i < RELAYS; i++) {
        relayActive[i] = false;
      }
    }
  } else {
    if (ledOn && now - triggedTime > 1000) {
      digitalWrite(LED_BUILTIN, LOW);
      ledOn = false;
    }
    for (int i = 0; i < RELAYS; i++) {

      if (relayTimes[i] && !relayActive[i] && (now - triggedTime > (relayTimes[i] * 100))) {
        digitalWrite(RELAY_PIN + i, HIGH);
        relayLast[i] = now;
        relayActive[i] = true;
      }

      if (relayActive[i] && relayLast[i] && (now - relayLast[i] > 1000)) {
        digitalWrite(RELAY_PIN + i, LOW);
        relayLast[i] = 0;
      }
    }

    if (now - triggedTime > triggerReset * 100) {
      triggered = false;
    }
  }
  delay(100);
}

/*
  void handleSerial()
  {
    const int BUFF_SIZE = 32; // make it big enough to hold your longest command
    static char buffer[BUFF_SIZE+1]; // +1 allows space for the null terminator
    static int length = 0; // number of characters currently in the buffer

    if(Serial.available())
    {
        char c = Serial.read();
        if((c == '\r') || (c == '\n'))
        {
            // end-of-line received
            if(length > 0)
            {
                handleReceivedMessage(buffer);
            }
            length = 0;
        }
        else
        {
            if(length < BUFF_SIZE)
            {
                buffer[length++] = c; // append the received character to the array
                buffer[length] = 0; // append the null terminator
            }
            else
            {
                // buffer full - discard the received character
            }
        }
    }
  }

  void handleReceivedMessage(char *msg)
  {
    ...
  }
*/
