const int rst=3;
const int start=2;

const int pulso=A1;

const int ledpulso=4;
const  int bradicardia=5;
const int normal=6;
const int taquicardia=7;

int senal=0;
int a=0; //latidos o pulso
int contador=0;
int b=0;

void setup()
{
  pinMode(rst,INPUT_PULLUP);
  pinMode(start,INPUT_PULLUP);
  pinMode(pulso,INPUT);
  pinMode(ledpulso,OUTPUT);
  pinMode(bradicardia,OUTPUT);
  pinMode(normal,OUTPUT);
  pinMode(taquicardia,OUTPUT);
  Serial.begin(9600);
}

void loop()
{
   bool start = !digitalRead(start); // Lee el estado del boton y lo invierte con !
    if (start )
    {
      Serial.println("--------------- FRECUENCIA CARDIACA ---------------");
      delay(2000); //2 segundo en cargar la siguiente info
      Serial.println("          latidos");
      delay(800);
      Serial.println("por minuto: ");
      delay(800);
      Serial.println(a);
      delay(1000);
      Serial.println("---------------------------------------------------");
      contador=0;
      a=0;
    }
    if (b==1 || contador==0 || b==0 || senal>=0)
    {
    contador++; //esto hace que contador sume 0,1,2...,900
    Serial.print("Contador: ");  //esta es la parte grafica, como se muestra
    Serial.print(contador);
    // Serial.print(",");
    }
    senal=analogRead(pulso);  //muestra los valores del grafico, el pulso
    Serial.print("       valor:");
    Serial.print(senal);
    // Serial.print(",");
    
    if (senal>=150)  //senal= x se le suma un latido
    {
    a=a+1;   //latido+1
    b=1;    //bandera
    }
    
    if (contador==300)
    {
    a=a*3;
    }
    Serial.print("                   latidos: ");
    Serial.println(a);
    delay(30);

    digitalWrite(ledpulso, LOW);
    if      (a >= 101) {digitalWrite(taquicardia,HIGH);} // se encienden los leds correspondientes
    else  if (a <= 59)  {digitalWrite(bradicardia,HIGH);}
    else                    {digitalWrite(normal,HIGH);}
    
    if (a==0)
    {
      digitalWrite(7,LOW);
      digitalWrite(6,LOW);
      digitalWrite(5,LOW);
    }
}
 
