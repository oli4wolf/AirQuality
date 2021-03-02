/**
   Base code is from Bosch BME380 example library (basic.ino) containing also the proprietary library.
   Added the configuration for LED and Buzzer.

   AQI-Level
   0-50 Good, 51-100 Ok / limit, 101-150 Poor, 151-200 and up severe to dangerous.

  For a long time i tried to use the ds3231 but it didn't work in the Setting with the BME680 over i2C.
  So thought about my requirement and in the end decided to go with a long button push for resetting to go to 0.
  Time will be millis (thats ok for now).

   Idea:
   If value is dropping below 101 warn to air the room.
   Led indicate the amount of aeration during the day.
   Button to indicate that the window is now open.
   Buzzer beeps if time is up and value below 101 to close window twice and LED is engaged.
   Buzzer beeps once to indicate level higher than 101
*/

#include "bsec.h"
#include <Wire.h>

//** PIN CONFIGURATION **//
static const int LED_PIN_1 = 1;
static const int LED_PIN_2 = 2;
static const int LED_PIN_3 = 3;
static const int LED_PIN_4 = 4;
static const int LED_PIN_5 = 5;
static const int BUZZER_PIN = 0;
static const int BUTTON_PIN = 6;

//** Button logic **//
int dailyCounter = 0;
int buttonState = 0;         // current state of the button
int lastButtonState = 0;     // previous state of the button
unsigned long pressedTime  = 0;
unsigned long releasedTime = 0;

//** I2C Address  **//
#define BME680_I2C_ADDRESS 0x77

// Helper functions declarations
void checkIaqSensorStatus(void);
void errLeds(void);

// Create an object of the class Bsec
Bsec iaqSensor;
String output;

// Entry point for the example
void setup(void)
{

  // LED Configuration
  pinMode(LED_PIN_1, OUTPUT);
  pinMode(LED_PIN_2, OUTPUT);
  pinMode(LED_PIN_3, OUTPUT);
  pinMode(LED_PIN_4, OUTPUT);
  pinMode(LED_PIN_5, OUTPUT);
  pinMode(BUZZER_PIN, OUTPUT);

  // initialize the button pin as a input:
  pinMode(BUTTON_PIN, INPUT);
  int dailyCounter = 0;
  pressedTime = millis();

  //Serial
  Serial.begin(115200);
  Wire.begin();

  // Configure BME680
  iaqSensor.begin(0x77, Wire);
  output = "\nBSEC library version " + String(iaqSensor.version.major) + "." + String(iaqSensor.version.minor) + "." + String(iaqSensor.version.major_bugfix) + "." + String(iaqSensor.version.minor_bugfix) + "\n";
  Serial.println(output);
  checkIaqSensorStatus();

  bsec_virtual_sensor_t sensorList[10] = {
    BSEC_OUTPUT_RAW_TEMPERATURE,
    BSEC_OUTPUT_RAW_PRESSURE,
    BSEC_OUTPUT_RAW_HUMIDITY,
    BSEC_OUTPUT_RAW_GAS,
    BSEC_OUTPUT_IAQ,
    BSEC_OUTPUT_STATIC_IAQ,
    BSEC_OUTPUT_CO2_EQUIVALENT,
    BSEC_OUTPUT_BREATH_VOC_EQUIVALENT,
    BSEC_OUTPUT_SENSOR_HEAT_COMPENSATED_TEMPERATURE,
    BSEC_OUTPUT_SENSOR_HEAT_COMPENSATED_HUMIDITY,
  };

  iaqSensor.updateSubscription(sensorList, 10, BSEC_SAMPLE_RATE_LP);
  checkIaqSensorStatus();

  // Print the header
  output = "Timestamp [ms], IAQ, IAQ accuracy, breath VOC equivalent, Static IAQ, CO2 equivalent";
  Serial.println(output);
}

// Function that is looped forever
void loop(void)
{
  // read the pushbutton input pin:
  buttonState = digitalRead(BUTTON_PIN);

  // compare the buttonState to its previous state
  if (buttonState != lastButtonState) {
    // Expect a double click for reset
    // if the state has changed, increment the counter
    if (buttonState == LOW) {
      if ((millis() - pressedTime) < 2000) {
        Serial.println("Reset Daily Counter");
        dailyCounter = 0;
        for (int i = 1; i < 6 ; i++) {
          digitalWrite(i, LOW);
        }
      } else {
        // if the current state is HIGH then the button went from off to on:
        dailyCounter++;
        Serial.println("on");
        Serial.print("number of button pushes: ");
        Serial.println(dailyCounter);
        for (int i = 1; ( i < 6 && i <= dailyCounter); i++) {
          digitalWrite(i, HIGH);
        }
      }
    } else {
      // if the current state is LOW then the button went from on to off:
      Serial.println("off");
    }
    // Delay a little bit to avoid bouncing
    delay(50);
    pressedTime = millis();
  }

  // save the current state as the last state, for next time through the loop
  lastButtonState = buttonState;

  // Sensor logic
  if (iaqSensor.run()) { // If new data is available
    float airQualityReading = iaqSensor.iaq;
    output = "";
    output += String(airQualityReading) + "(" + iaqSensor.iaqAccuracy + ")";

    Serial.println(output);

    if (airQualityReading > 100.0) {
      Serial.println("Buzzer ON");
      digitalWrite(BUZZER_PIN, HIGH);   // sets the Buzzer on
      delay(1000);                      // waits for a second
      digitalWrite(BUZZER_PIN, LOW);    // sets the Buzzer off
    }

  } else {
    checkIaqSensorStatus();
  }
}

// Helper function definitions BME680
void checkIaqSensorStatus(void)
{
  if (iaqSensor.status != BSEC_OK) {
    if (iaqSensor.status < BSEC_OK) {
      output = "BSEC error code : " + String(iaqSensor.status);
      Serial.println(output);
      for (;;)
        errLeds(); /* Halt in case of failure */
    } else {
      output = "BSEC warning code : " + String(iaqSensor.status);
      Serial.println(output);
    }
  }

  if (iaqSensor.bme680Status != BME680_OK) {
    if (iaqSensor.bme680Status < BME680_OK) {
      output = "BME680 error code : " + String(iaqSensor.bme680Status);
      Serial.println(output);
      for (;;)
        errLeds(); /* Halt in case of failure */
    } else {
      output = "BME680 warning code : " + String(iaqSensor.bme680Status);
      Serial.println(output);
    }
  }
}

void errLeds(void)
{
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(100);
  digitalWrite(LED_BUILTIN, LOW);
  delay(100);
}
