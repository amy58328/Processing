PImage img,gimg,llove,b_gimg;
int q=50,i,j,love,time=0, t=0;
int[] g_live=new int[q];
float[] g_x=new float[50] ,g_y=new float[50];
void setup()
{
  size(750, 1000);
  i=0;
  img = loadImage("10041.jpg");
  llove=loadImage("1004.jpg");
  b_gimg=loadImage("10042.jpg");
  frameRate(20);
  //g_live=1;
  for(int e=0;e<25;e++)
  {
    g_x[e]= random(650);
    g_y[e]= random(850);
    g_live[e]=1;
  }

}

void draw()
{
  if(love!=25)
  {
    background(255 , 128,  191);
    fill(255,0,0);
    strokeWeight(12);
    textSize(100);
    text("LOVE:",50,125);
    text(love,350,125);
    image(img, i, j,90,120);
  }

  if(love==25&&time<40)
  {
    textSize(100);
    image(b_gimg,0,0,750,1000);
    text("happy birthday",23,800);
    time++;

  }
  
  if(time>=40 && t<50)
  {
     textSize(100);
    image(b_gimg,0,0,750,1000);
    text("and thanks for ",23,560);
    text("your  ",40,680);
    text("accompany ",35,800);
    
    t++;
  }
  
   if(t>=50)
  {
    textSize(75);
    image(b_gimg,0,0,750,1000);
    text("Don't forget  ",23,610);
    text("I will be  ",40,700);
    text("with you ",35,790);
    text("when you are  tired ",35,880);
    

  }

  for(int e=0;e<25;e++)
  {
    if(g_live[e]==1)
    image(llove,g_x[e],g_y[e],120,150);
  }
    
    
   for(int e=0;e<25;e++)
    {
      if(((i>=g_x[e] && i<=g_x[e]+120)||(i+90>=g_x[e] && i+90<=g_x[e]+120)) && ((j>=g_y[e] && j<=g_y[e]+140)||(j+120>=g_y[e] && j+120<=g_y[e]+140))&& g_live[e]==1)
    {
   g_live[e]=0;
   love++;

  }
}


if(keyPressed ==true)
{
if(key=='a')
i = (i-20)%750;
if(key=='d')
i = (i+20)%750; 
if(key=='s')
j=(j+20)%1000;
if(key=='w')
j=(j-20)%1000;
}
if(i<0)
i=750;

if(j<0)
j=1000;


}
