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

if (millis() > lastTimeBotRan + botRequestDelay)  {
    int numNewMessages = bot.getUpdates(bot.last_message_received + 1);
    while(numNewMessages) {
      Serial.println("got response");
      handleNewMessages(numNewMessages);
      numNewMessages = bot.getUpdates(bot.last_message_received + 1);
    }
    lastTimeBotRan = millis();
  }
  if(waterDetected){
    bot.sendMessage(CHAT_ID, "Water detected!!", "");
    Serial.println("Water Detected");
    digitalWrite(LED_BUILTIN, LOW); 
    waterDetected = false;
  }

}

//###################### FUNKCJE ######################
//Zczytuje temperature i wilgotność z DHT11 i zwraca w formie stringa, którego możemy wysłać Telgramem
String getReadings(){
  float h = dht.readHumidity();
  float t = dht.readTemperature();
  String message = "Temperature: " + String(t) + " ºC \n";
  message += "Humidity: " + String (h) + " % \n";
  return message;
}

//Handle what happens when you receive new messages
void handleNewMessages(int numNewMessages) {
  Serial.println("handleNewMessages");
  Serial.println(String(numNewMessages));

  for (int i=0; i<numNewMessages; i++) {
    // Chat id of the requester
    String chat_id = String(bot.messages[i].chat_id);
    if (chat_id != CHAT_ID){
      bot.sendMessage(chat_id, "Unauthorized user", "");
      continue;
    }
    
    // Print the received message
    String text = bot.messages[i].text;
    Serial.println(text);

    String from_name = bot.messages[i].from_name;

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
