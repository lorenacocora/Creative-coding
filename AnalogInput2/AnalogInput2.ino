#include <Adafruit_NeoPixel.h>
#include <HCSR04.h>
#define LED_PIN 8
#define LED_COUNT 11
Adafruit_NeoPixel strip(LED_COUNT, LED_PIN, NEO_GRB + NEO_KHZ800);
byte echoPin = 11;
byte triggerPin = 10;

int pinAlb = A0;
int pinMov = A1;
int pinAlbastru = A2;
int pinVerde = A3;
int pinGalben = A4;
int pinPortocaliu = A5;

int pinLed = 8;

int ledAlb = 10;
int ledMov = 8;
int ledAlbastru = 6;
int ledVerde = 4;
int ledGalben = 2;
int ledPortocaliu = 0;

int albValue = 0;
int movValue = 0;
int albastruValue = 0;
int verdeValue = 0;
int galbenValue = 0;
int portocaliuValue = 0;
int albValuePrev = 0;
int movValuePrev = 0;
int albastruValuePrev = 0;
int verdeValuePrev = 0;
int galbenValuePrev = 0;
int portocaliuValuePrev = 0;

String state = "standBy";
int counter = 0;
bool firstTime = true;

void setup() {
  Serial.begin(115200);
  HCSR04.begin(triggerPin, echoPin);
  strip.begin();
  strip.setBrightness(20);
}

void loop() {
  albValuePrev = albValue;
  albValue = analogRead(pinAlb);
  movValuePrev = movValue;
  movValue = analogRead(pinMov);
  albastruValuePrev = albastruValue;
  albastruValue = analogRead(pinAlbastru);
  verdeValuePrev = verdeValue;
  verdeValue = analogRead(pinVerde);
  galbenValuePrev = galbenValue;
  galbenValue = analogRead(pinGalben);
  portocaliuValuePrev = portocaliuValue;
  portocaliuValue = analogRead(pinPortocaliu);

  if (albValue < albValuePrev*3/4 && state != 'alb') {
    state = "alb";
    
    openEyes(ledAlb, strip.Color(255, 0, 0));
    // Serial.write(1);
    Serial.write(albValue);
    counter = 0;
  } else if (movValue < movValuePrev*3/4 && state != "mov") {
    state = "mov";
    openEyes(ledMov, strip.Color(255, 0, 0));
    // Serial.write(2);
    Serial.write(movValue);
    counter = 0;
  } else if (albastruValue < albastruValuePrev*3/4 && state != "albastru") {
    state = "albastru";
    openEyes(ledAlbastru, strip.Color(255, 0, 0));
    // Serial.write(3);
    Serial.write(albastruValue);
    counter = 0;
  } else if (verdeValue < verdeValuePrev*3/4 && state != "verde") {
    state = "verde";
    openEyes(ledVerde, strip.Color(255, 0, 0));
    // Serial.write(4);
    Serial.write(verdeValue);
    counter = 0;
  } else if (galbenValue < galbenValuePrev*3/4 && state != "galben") {
    state = "galben";
    openEyes(ledGalben, strip.Color(255, 0, 0));
    // Serial.write(5);
    Serial.write(galbenValue);
    counter = 0;
  } else if (portocaliuValue < portocaliuValuePrev*3/4 && state != "portocaliu") {
    state = "portocaliu";
    openEyes(ledPortocaliu, strip.Color(255, 0, 0));
    // Serial.write(6);
    Serial.write(portocaliuValue);
    counter = 0;
  }

  // debugSensors();

  if (state == "standBy") {
    colorStandby();
  } else {
    counter++;
  }

  if ((state == "alb" && counter > 9) || (state == "mov" && counter > 15) || (state == "albastru" && counter > 11) || (state == "verde" && counter > 9) || (state == "galben" && counter > 6) || (state == "portocaliu" && counter > 6)) {
    state = "standBy";
  }

  delay(500);
}

void colorStandby() {
  colorWithSensorColor();
  delay(1000);
  strip.clear();
  strip.show();
  delay(100);
}

void setSensorColor(int index, uint32_t color) {
  strip.setPixelColor(index, color);
  strip.setPixelColor(index + 1, color);
  strip.show();
}

void openEyes(int index, uint32_t color) {
  colorWithSensorColor();
  if (index < 10) {
    strip.setPixelColor(index, color);
    strip.setPixelColor(index + 1, color);
    strip.setPixelColor(index + 2, color);
    strip.setPixelColor(index + 3, color);
  } else {
    strip.setPixelColor(index, color);
    strip.setPixelColor(0, color);
    strip.setPixelColor(1, color);
  }
  strip.show();
}

void colorWithSensorColor() {
  setSensorColor(0, strip.Color(215, 150, 0));
  setSensorColor(2, strip.Color(255, 255, 0));
  setSensorColor(4, strip.Color(0, 255, 0));
  setSensorColor(6, strip.Color(0, 0, 255));
  setSensorColor(8, strip.Color(185, 120, 245));
  setSensorColor(10, strip.Color(255, 255, 255));
}

void debugSensors() {
  Serial.print("Alb: ");
  Serial.println(albValue);
  Serial.print("Mov: ");
  Serial.println(movValue);
  Serial.print("Albastru: ");
  Serial.println(albastruValue);
  Serial.print("Verde: ");
  Serial.println(verdeValue);
  Serial.print("Galben: ");
  Serial.println(galbenValue);
  Serial.print("Portocaliu: ");
  Serial.println(portocaliuValue);
  Serial.print("State: ");
  Serial.println(state);
  Serial.println("----------------------------------------");
  delay(200);
}
