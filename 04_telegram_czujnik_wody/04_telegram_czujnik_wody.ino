/*
Author:Grad73
*/

#include <ESP8266WiFi.h>
#include <WiFiClientSecure.h>
#include <UniversalTelegramBot.h>
#include <ArduinoJson.h>
#include "DHT.h"

// DANE LOGOWANIA DO WIFI!
    const char* ssid = "internet_kamil";
    const char* password = "gradowscyc";

// Initialize Telegram BOT
    #define BOTtoken "1475983679:AAGvv_-sYh6N0-zjY40F8Y3xmen_mH0tBaw"  // your Bot Token (Get from Botfather)

// Moje ID od @myidbot 
    #define CHAT_ID "948004899"

//Inicjalizacja czujnika DHT
    #define DHTTYPE DHT11   // DHT 11
    #define DHTPIN 5     // Digital pin connected to the DHT sensor
    DHT dht(DHTPIN, DHTTYPE);// Initialize DHT sensor.

//Buzzer alarmowy
    #define BUZZERPIN 10

//ADC 
    const int analogInPin = A0; 
    int sensorValue = 0;  // value read from the pot
    int outputValue = 0;  // value to output to a PWM pin   
    
//Stworzenie nowego klienta WiFi
    WiFiClientSecure client;
//Stworzenie nowego bota
    UniversalTelegramBot bot(BOTtoken, client);

// Interwał czasowy co jaki ESP sprawdza czy otrzymało wiadomość z Telegrama w [ms] 1000 [ms] = 1[s]
    int botRequestDelay = 1000;
    unsigned long lastTimeBotRan;

//Pin do którego jest podłączony sensor wody i flaga od wykrycia wody
    const int waterSensor = 14; // 
    bool waterDetected = false;
    
    int flagaAlarm = 0; // podnoszona jest po wykryciu wody
    unsigned long previousMillis = 0; // zmienna zapisujaca czas wykrycia wody
    int dlugoscAlarmu = 2000; // czas w [ms] jak dlugo ma trwac alarm po wykryciu wody

// Indicates when motion is detected
    void ICACHE_RAM_ATTR detectsWater() {
      //Serial.println("WATER DETECTED!!!");
      waterDetected = true;
}

void setup() {
  Serial.begin(115200);
  client.setInsecure();
  //Dioda wbudowana sygnalizuje wykrycie wody
  pinMode(LED_BUILTIN, OUTPUT);  
  digitalWrite(LED_BUILTIN, HIGH);
  //Buzzer
  pinMode(BUZZERPIN, OUTPUT);  
  digitalWrite(BUZZERPIN, HIGH);

  //DHT wlaczenie czujnika
   dht.begin();

  // water Sensor mode INPUT_PULLUP
  pinMode(waterSensor, INPUT_PULLUP);
  // Set waterSensor pin as interrupt, assign interrupt function and set RISING mode
  attachInterrupt(digitalPinToInterrupt(waterSensor), detectsWater, FALLING);

  // Attempt to connect to Wifi network:
  Serial.print("Connecting Wifi: ");
  Serial.println(ssid);

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    delay(500);
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  bot.sendMessage(CHAT_ID, "Bot started up", "");
}

void loop() {

unsigned long currentMillis = millis();

// SPRAWDZA CZY SA NOWE WIAODMOSCI CO botRequestDelay (1s)
    if (millis() > lastTimeBotRan + botRequestDelay)  {
        int numNewMessages = bot.getUpdates(bot.last_message_received + 1);
        while(numNewMessages) {
          Serial.println("got response");
          handleNewMessages(numNewMessages);
          numNewMessages = bot.getUpdates(bot.last_message_received + 1);
        }
        lastTimeBotRan = millis();
      }
// JEŚLI WYKRYTO WODE NA SENSORZE
    if(waterDetected){
        bot.sendMessage(CHAT_ID, "Water detected!!", "");
        Serial.println("Water Detected");
        digitalWrite(LED_BUILTIN, LOW); 
        digitalWrite(BUZZERPIN, LOW);
        waterDetected = false;
        previousMillis = currentMillis;
        flagaAlarm =1;
    }

// WYLACZANIE ALARMU PO CZASIE dlugoscAlarmu
   if(flagaAlarm == 1){
       if (currentMillis - previousMillis >= dlugoscAlarmu) {
          digitalWrite(LED_BUILTIN, HIGH);
          digitalWrite(BUZZERPIN, HIGH);
          flagaAlarm = 0; 
        }
   }

}

//###################### FUNKCJE ######################
//Zczytuje temperature i wilgotność z DHT11 i zwraca w formie stringa, którego możemy wysłać Telgramem
String getReadings(){
  float h = dht.readHumidity();
  float t = dht.readTemperature();
  float v = analogRead(analogInPin)/166;
  String message = "Temperatura: " + String(t) + " ºC \n";
  message += "Wilgotnosc: " + String (h) + " % \n";
  message += "Napiecie zasilania:: " + String (v) + " V \n";
  return message;
}

//Funkcja do obslugi otrzymanych wiaodmosci
void handleNewMessages(int numNewMessages) {
  Serial.println("handleNewMessages");
  Serial.println(String(numNewMessages));

  for (int i=0; i<numNewMessages; i++) { // sprawdza osiagalnosc wiadomosci
    // Chat id of the requester
    String chat_id = String(bot.messages[i].chat_id); //sprawdza id od kogo ta wiadomosc przyszla i czy jest to wiadomosc od nas
    if (chat_id != CHAT_ID){ // wiadomosc od kogos obcego, ignoruje
      bot.sendMessage(chat_id, "Unauthorized user", "");
      continue;
    }
    // jesli jest to wiadomosc od autoryzowanego uzytkownika to zapisuje ja do zmiennej text
    // Print the received message
    String text = bot.messages[i].text;
    Serial.println(text);

    String from_name = bot.messages[i].from_name; // zapisuje od kogo otrzymal wiadomosc

    if (text == "/start") {
      String welcome = "Welcome, " + from_name + ".\n";
      welcome += "Use the following command to get current readings.\n\n";
      welcome += "/readings \n";
      bot.sendMessage(chat_id, welcome, "");
    }

    if (text == "/readings") {
      String readings = getReadings();
      bot.sendMessage(chat_id, readings, "");
    }  
  }
}
