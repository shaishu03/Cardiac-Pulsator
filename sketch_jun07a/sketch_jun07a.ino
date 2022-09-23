int rst=8;
int start=9;

void setup() 
{
  pinMode(rst,INPUT_PULLUP);
  pinMode(start,INPUT_PULLUP);
  Serial.begin(9600);
}

void loop() 
{
  if(digitalRead(start)==LOW)
  {
    Serial.print(start);
    delay(200);
  }
  if(digitalRead(rst)==LOW)
  {
    Serial.print(rst);
    delay(200);
  }
  
}
