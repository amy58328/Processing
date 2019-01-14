import processing.serial.*;

Serial port; // Create object from Serial class

int val; // Data received from the serial port

PImage girl,girl1,girl2,girl3,pass;
int x=50,y=200;
int[] w_x = new int[12] ,w_y = new int[12] , windows_l = new int[12];
int windows_x=1000,windows_y=800 ;//if you change this , you also need to change the line in 7.
int page = 1;
int walk=0;
int togame=0;
int q=30;
int[] smoke_x = new int[40] , smoke_y = new int[40] , smoke_l = new int[40] , smoke_ = new int[40];
int begin =0;
int t=0;
int eat = 0;
int score = 0;
int game_x , game_y ;
int pass1=0,pass2=0,pass3=0;
int end=0;
int enter = 0;


void setup()
{
  size(1000,800);
  background(255);
  noStroke();
  girl = loadImage("girl.png");
  girl1 = loadImage("girl1.png");
  girl2 = loadImage("girl2.png");
  girl3 = loadImage("girl3.png");
  image(girl,x,y,150,175);

  println(Serial.list()); 
  String portName = Serial.list()[0]; 

  port = new Serial(this, portName, 9600);
  pass = loadImage("pass.jpg.png");

 
}


void draw()
{ 
  if (0 < port.available())
  { // If data is available,
    val = port.read(); // read it and store it in val
    println(val);
  }
  arduino(val);
  


  if(page == 1)
  {
    page1();
  }
  
  if(page == 2)
  {

    page2();
  }
  if(page == 3)
  {
    page3();
  }
  if(page == 4)
  {
    page4();
  }
  if(page == 5)
  {
    if(begin ==0)
    { 
      q=0;
      game_x = 90;
      game_y = 110;
      begin =1;
      score=0;
      while(q<12)
      {
        for(int i=20;i<1000;i+=250)
        {
            for(int j=50;j<700;j+=250)
            {
               w_x[q] = i;
              w_y[q] = j;
               windows_l[q] = 1;
               q++;
            }
        }
    }
    }
    
    page5();
  }
  if(page == 6)
  {
    page6();
  }

  if(page == 7)
  {
    background(0);
    PImage finish = loadImage("finish.png");
    image(finish,0,100,1000,600);
  }
  if(end == 2 && page!=7)
  {
     PImage pressed = loadImage("pressed.png");
    image(pressed,100,200,700,450);
    if(val == 5)
    page = 7;
  }
  val =0;
}
