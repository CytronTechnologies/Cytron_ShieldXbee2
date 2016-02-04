int ledPin = 13;
int EN = 2;
int val;

void setup() 
{
  pinMode(ledPin, OUTPUT);
  pinMode(EN, OUTPUT);
  Serial.begin(19200);
}

void loop()
{
  // receive data
 digitalWrite(EN, LOW);//Enable Receiving Data
 val = Serial.read();
  if (-1 != val) {
    if ('A' == val) {
      digitalWrite(ledPin, HIGH);
      delay(500);
      digitalWrite(ledPin, LOW);
      delay(500);
    }
 }
}
