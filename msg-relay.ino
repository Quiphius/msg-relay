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

void print_status() {
  int d, r, diff;

  triggerReset = 0;

  display.clearDisplay();
  display.setCursor(0, 0);

  for (int i = 0; i < RELAYS; i++) {
    r = relayTimes[i] % 10;
    d = relayTimes[i] / 10;
    display.print("T");
    display.print(i + 1);
    display.print(": ");
    if (relayTimes[i]) {
      display.print(d);
      display.print(".");
      display.print(r);
      display.println("s");
    } else {
      display.println("-");
    }

    if (triggerReset < relayTimes[i]) {
      triggerReset = relayTimes[i];
    }
  }
  triggerReset += 15;
  Serial.println(triggerReset);

  for (int i = 1; i < RELAYS; i++) {
    display.print("D");
    display.print(i);
    display.print(": ");
    if (relayTimes[i - 1] && relayTimes[i]) {
      diff = relayTimes[i] - relayTimes[i - 1];
      r = diff % 10;
      d = diff / 10;
      display.print(d);
      display.print(".");
      display.print(r);
      display.println("s");
    } else {
      display.println("-");
    }
  }

  display.display();
}

void handleSerial() {
  const int BUFF_SIZE = 16;
  static char buffer[BUFF_SIZE + 1];
  static int length = 0;

  if (Serial.available()) {
    char c = Serial.read();
    if ((c == '\r') || (c == '\n')) {
      if (length > 0) {
        handleReceivedMessage(buffer);
      }
      length = 0;
    } else {
      if (length < BUFF_SIZE) {
        buffer[length++] = c;
        buffer[length] = 0;
      }
    }
  }
}

void handleReceivedMessage(char *cmd) {
  int pos = 0, value;
  int i, c;

  c = cmd[pos++];
  if (c == 't' || c == 'd') {
    i = atoi(cmd + (pos++));
    if (cmd[pos++] == ' ') {
      value = atoi(cmd + pos);
    }
    if (c == 't') {
      relayTimes[i - 1] = value;
    } else {
      relayTimes[i] = relayTimes[i - 1] + value;
    }
    print_status();
  }
}

void setup() {
  Serial.begin(9600);
  Serial.println("MSG-Relay test");

  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(BUTTON_PIN, INPUT);

  for (int i = 0; i < RELAYS; i++) {
    pinMode(RELAY_PIN + i, OUTPUT);
  }

  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);
  display.setRotation(0);
  display.setTextSize(0);
  display.setTextColor(WHITE);
  print_status();
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
  handleSerial();
  delay(100);
}
