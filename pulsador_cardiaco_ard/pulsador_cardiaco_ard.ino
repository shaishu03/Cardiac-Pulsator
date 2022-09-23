#include <TM1637.h>
#define CLK 2
#define DIO 3
TM1637 pant(CLK,DIO);
char aux[5];

//entradas
int rst=8;
int start=11;
#define sensor A4

//salidas
int lpulso=4;
int bradicardia=5;
int normal=6;
int taquicardia=7;

//lo que toma el pulso
int lectura,lectura_ant;
int diferencia=0;
int pulso=0;
int tiempo=0;
int pulsof;

//banderas
int banderarst=1;
int banderapul=1;
int banderamuestreo=0;

//display 1ra parte
char b[]={'B','R','A','D','I','C','A','R','D','I','A'};
char t[]={'T','A','Q','U','I','C','A','R','D','I','A'};
char n[]={'-','-','N','O','R','M','A','L','-','-','-'};

void setup() 
{
  pant.begin();
  pant.setBrightness(6);
  pant.colonOff();//el colon tiene que ir antes del clearscreen porque sino borra primero la pantalla.
  //pant.clearScreen();
  aux[4]='\0';
  pinMode(rst,INPUT);
  pinMode(start,INPUT);
  pinMode(lpulso,OUTPUT);
  pinMode(bradicardia,OUTPUT);
  pinMode(normal,OUTPUT);
  pinMode(taquicardia,OUTPUT);
  Serial.begin(9600);
}

void loop() 
{
  lectura = analogRead(sensor);
  diferencia = (lectura - lectura_ant)*10;
  //Serial.print(lectura);
  //Serial.print(",");
  //Serial.println(diferencia);
  delay(1);
  lectura_ant = lectura;

  if(digitalRead(start)==HIGH)
  {
    banderarst=0;
  }
  if(banderarst==0) //pulso y tiempo estan para que no se toque dos veces start y reinicie el programa(como un antirrebote
  {
    tiempo++; //esto hace que tiempo sume 0,1,2...,

    if(diferencia>=70 && banderapul==1) //REVISAR EL VALOR
    {
      pulso++;    
      Serial.print("Tiempo: ");
      Serial.print(tiempo);
      Serial.print(" Pulso: ");
      Serial.print(pulso);
      Serial.println();
      digitalWrite(lpulso,HIGH);
      banderapul=0;
    }
    
    if(diferencia<=60) //REVISAR EL VALOR
    {
      digitalWrite(lpulso,LOW);
      banderapul=1;
    }
    
    if(tiempo>=18000)//20 Segundos
      {
        pulsof=pulso*3;
        Serial.print(" Pulsaciones por minuto: ");
        Serial.println(pulso);
        if(pulsof<=59)
        {
          digitalWrite(bradicardia,HIGH);
        } // se encienden los leds correspondientes
        else if(pulsof>=101)
        {
          digitalWrite(taquicardia,HIGH);
        }
        else
        {
          digitalWrite(normal,HIGH);
        }
        banderarst=1;
      }
  } 

//solo cuando terminó
  for(int i=0;i<=7;i++)
  {
    for(int j=0;j<=3;j++)
    {
      if(pulsof<=59)
      {
        aux[j]=b[j+i];
        delay(150);
      }
      else if(pulsof>=101)
      {
        aux[j]=t[j+i];
        delay(150);
      }
      else
      {
        aux[j]=n[j+i];
        delay(150);
      }
    }
    pant.display(String(aux));
    banderamuestreo=1;
    delay(500);
  }
  pant.clearScreen();
  if(banderamuestreo==1)
  {
    pant.display(pulsof);
    delay(1000);
  }

    /*
    if(digitalReas(rst)==HIGH && banderarst==1)//resetea los valores y apaga todo
    {
      pulso=0;
      tiempo=0;
      digitalWrite(bradicardia,LOW);
      digitalWrite(normal,LOW);
      digitalWrite(taquicardia,LOW);
      banderarst==0;
    }*/
}
