/*
 *  Pulsómetro
 *  Versión 1.0
 *  2021
 */

#define pulso A5

int lectura,lectura_ant;
int diferencia=0;
void setup()
{
  Serial.begin(9600);
}

void loop()
{
  lectura = analogRead(pulso);
  diferencia = lectura - lectura_ant;
  Serial.print(lectura);
  Serial.print(",");
  Serial.println(diferencia);
  delay(1);
  lectura_ant = lectura;
}
