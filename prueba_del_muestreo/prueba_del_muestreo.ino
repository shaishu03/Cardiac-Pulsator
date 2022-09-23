#include <TM1637.h>
#define CLK 2
#define DIO 3
TM1637 pant(CLK,DIO);
char aux[5];

//salidas
int lpulso=4;
int bradicardia=5;
int normal=6;
int taquicardia=7;

//lo que toma el pulso
int pulso=80;
int tiempo=18000;

//banderas
int banderamuestreo=0;

//display 1ra parte
char b[]={'B','R','A','D','I','C','A','R','D','I','A'};
char t[]={'T','A','Q','U','I','C','A','R','D','I','A'};
char n[]={'-','-','N','O','R','m','A','L','-','-','-'};

void setup() 
{
  pant.begin();
  pant.setBrightness(6);
  pant.colonOff();//el colon tiene que ir antes del clearscreen porque sino borra primero la pantalla.
  //pant.clearScreen();
  aux[4]='\0';
  pinMode(lpulso,OUTPUT);
  pinMode(bradicardia,OUTPUT);
  pinMode(normal,OUTPUT);
  pinMode(taquicardia,OUTPUT);
  Serial.begin(9600);
}

void loop() 
{
  if(tiempo>=18000)//20 Segundos
      {
        if(pulso<=59)
        {
          digitalWrite(bradicardia,HIGH);
        } // se encienden los leds correspondientes
        else if(pulso>=101)
        {
          digitalWrite(taquicardia,HIGH);
        }
        else
        {
          digitalWrite(normal,HIGH);
        }
        //banderarst=1;
      }

  //solo cuando terminó
  for(int i=0;i<=7;i++)
  {
    for(int j=0;j<=3;j++)
    {
      if(pulso<=59)
      {
        aux[j]=b[j+i];
        delay(200);
      }
      else if(pulso>=101)
      {
        aux[j]=t[j+i];
        delay(200);
      }
      else
      {
        aux[j]=n[j+i];
        delay(200);
      }
    }
    pant.display(String(aux));
    banderamuestreo=1;
    delay(500);
  }
  pant.clearScreen();
  if(banderamuestreo==1)
  {
    pant.display(pulso);
    delay(1000);
  }
}
