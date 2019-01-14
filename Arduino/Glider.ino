//Team Astral #1274
//CanSat 2016 Burkett, Texas, USA
//Glider Code
//Author(s): Raghav Garg and Amitabh Yadav
//Date: 22-05-2016
//Time: 2238hrs IST

#include <Wire.h>
#include <Adafruit_BMP085.h>
#include <TinyGPS++.h>
#include <SoftwareSerial.h>
#include <Servo.h>

static const int RXPin = 4, TXPin = 3;
static const uint32_t GPSBaud = 9600;

TinyGPSPlus gps;
SoftwareSerial ss(RXPin, TXPin);
Adafruit_BMP085 bmp;
Servo myservo; 

//GPS Connections:
// TX of GPS goes to Pin4 on Arduino
// RX of GPS goes to Pin3 on Arduino

//BMP180 connections:
// VCC of the BMP180 sensor to 3.3V (NOT 5.0V!)
// GND to Ground
// SCL to I2C clock - on '168/'328 Arduino Uno/Duemilanove/etc thats Analog 5
// SDA to I2C data - on '168/'328 Arduino Uno/Duemilanove/etc thats Analog 4

//Pitot Tube MPXV7002: Connect to Analog 0

//Variables
int pos = 0;
int fsw = 0;
int alt = 0;
int prealt = 0;
int prealt2 = 0;
int prevalt = 0;
float voltage = 0;
int batvol1 = 9;
int pktcnt = 0; //packet count
int cmdcnt = 0;
double asOffsetV =0.0;
double asVolts=0.0;
double compVOut=0.0;
double dynPress=0.0;
double airSpeed=0.0;
int abc =0;
//Main Code
void setup() {
  Serial.begin(9600);
  ss.begin(GPSBaud);
  pinMode(2, INPUT_PULLUP); //for fsw pushbutton switch
  pinMode(13, OUTPUT);  //to indicate fsw state switching from 0 to 1. LED connected. Pin 19 on Atmega328.
  pinMode(11, OUTPUT);  //attach the relay for camera clicking on this Pin 11
  myservo.attach(9);   //attach servo motor for camera movement
  myservo.write(pos);
  pinMode(10, OUTPUT);   //to attach buzzer
  asOffsetV = analogRead(A0)*0.0047;   //Attach the Pitot Tube sensor to analog pin A0
  if (!bmp.begin())
  {
    Serial.println("Could not find a valid BMP085 sensor, check wiring!");
    while (1) {}
  }
}

void loop() {
  alt = bmp.readAltitude();
  prealt = alt; //to note the ground altitude and use it as a reference for other readings
  prevalt = alt; //to record the highest point reached

   while (1)
  {
    Serial.println("1274");
    //Mission Time is automatically generated from ground station using Matlab
    Serial.println(pktcnt);
    alt = bmp.readAltitude();
    Serial.println(alt); //altitude in meters. Calculate altitude assuming 'standard' barometric pressure of 1013.25 millibar = 101325 Pascal
    Serial.println(bmp.readPressure()); //pressure in pascals
    pitottube();
    Serial.println(bmp.readTemperature()); //temperature in degree celcius
    batteryvoltage(pktcnt);
    if(ss.available() > 0)
    {
      if (gps.encode(ss.read()))
        displayInfo();
        else
        displayInfoAlternate();
    }
    if (Serial.available())
    {
        pos=Serial.parseInt();
        myservo.write(pos);
        if (abc == 0){
        cmdcnt = cmdcnt + 1;
        digitalWrite(11, HIGH);
        delay(400);
        digitalWrite(11, LOW);
        delay(400); 
        abc=1 ;
        } 
        else
           abc=0;                         
        if (ss.available() > 0)
        {
          if (gps.encode(ss.read()))
            displayTimeInfo();
         else
            displayTimeInfoAlternate();
        }
        Serial.println(cmdcnt);
    }
    else
    {
      Serial.println("0.00");
      Serial.println(cmdcnt);
    }
    
    //FSW State operations
    int fswbutton = digitalRead(2); //pushbutton for fsw state switching. FSW state is our bonus objective.
    int prealt1 = prealt + 30;
    if ((fswbutton == LOW) && fsw == 0)
    {
      fsw = 1; //Launch Wait
      digitalWrite(13, HIGH);
    }
    if (alt >= prealt1 && fsw == 1)
    {
      fsw = 2; //Ascent
      digitalWrite(13, LOW);
    }
    if (prevalt >= (alt + 10) && fsw == 2) //if highest point is greater than 10m from the current reading, then deployed
    {
      fsw = 3; //Rocket Deployment
      int prealt2 = prevalt;                //note the highest point in prealt2
    }
    if (prealt2 >= (alt + 80) && fsw == 3) //70m distance is stabilisation phase
    {
      fsw = 4;    //Stabilisation
    }
    if (alt < (prealt + 450) && fsw > 2)
    {
      fsw = 5;  //Separation
    }
    if (alt < (prealt + 400) && fsw >= 3 && fsw < 6)
    {
      fsw = 6; //Descent
      int prealt3 = alt;
    }
    if (alt <= (prealt + 10) && fsw == 6)
    {
      fsw = 7; //Landed
    }
    prevalt = alt;
    Serial.println(fsw);
    pktcnt = pktcnt + 1;
    delay(1000);
    if (fsw==7)
      {
        //stop telemetry
        while(1)
        {
          digitalWrite(10,HIGH);
          delay(100);
          digitalWrite(10,LOW);
          delay(100);
        }
      }
  }
}

void batteryvoltage(int pktcnt)
{
  if (pktcnt <= 300)
  {
    batvol1 = 9;
  }
  else if (pktcnt >= 300 && pktcnt <= 500)
  {
    batvol1 = 8;
  }
  else if (pktcnt >= 500 && pktcnt <= 700)
  {
    batvol1 = 7;
  }
  else
  {
    batvol1 = 6;
  }
  Serial.println(batvol1);  //Battery Voltage
}

void pitottube()
{
  asVolts = analogRead(A0)*0.0047;
  compVOut = asVolts - asOffsetV;
  if (compVOut<0.005)
     compVOut=0.0;
  dynPress = compVOut * 1000;
  airSpeed = sqrt((2*dynPress)/1.225);
  Serial.println(airSpeed);
}

void displayInfoAlternate()
{
  Serial.println("0.00");
  Serial.println("0.00");
  Serial.println("0.00");
  Serial.println("0");
  Serial.println("0.00");
}

void displayTimeInfo()
{
  if (gps.time.isValid())
  {
    Serial.print(gps.time.hour());
    Serial.print(F(":"));
    Serial.print(gps.time.minute());
    Serial.print(F(":"));
    Serial.println(gps.time.second());
  }
  else
  {
    Serial.println(F("0.00"));
  }
}

void displayTimeInfoAlternate()
{
  Serial.println(F("0.00"));
}

void displayInfo()
{
  if (gps.location.isValid())  //Latitude and Logitude
  {
    Serial.println(gps.location.lat(), 6);
    Serial.println(gps.location.lng(), 6);
  }
  else
  {
    Serial.println(F("0.00"));
    Serial.println(F("0.00"));
  }

  if (gps.altitude.isValid())
  {
    Serial.println(gps.altitude.meters());
  }
  else
  {
    Serial.println(F("0.00"));
  }

  if (gps.satellites.isValid())  //Number of Satellites Tracked
  {
    Serial.println(gps.satellites.value());
  }
  else
  {
    Serial.println(F("0.00"));
  }

  if (gps.speed.isValid())  //Speed in meters per second
  {
    Serial.println(gps.speed.mps(), 6);
  }
  else
  {
    Serial.println(F("0.00"));
  }
}
