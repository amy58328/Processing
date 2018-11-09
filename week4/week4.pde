PImage img,gimg,llove,b_gimg;
int q=50,i,j,love;
int[] g_live=new int[q];
float[] g_x=new float[50] ,g_y=new float[50];
void setup()
{
  size(750, 1000);
  i=0;
  img = loadImage("345.jpg");
  gimg=loadImage("234.jpg");
  llove=loadImage("love.jpg");
  b_gimg=loadImage("123.jpg");
  frameRate(20);
  //g_live=1;
  for(int e=0;e<50;e++)
  {
    g_x[e]= random(650);
    g_y[e]= random(850);
    g_live[e]=1;
  }
 
}


void draw()
{
  if(love!=50)
  {
    background(255);
    fill(255,0,0);
    strokeWeight(12);
    textSize(100);
    text("LOVE:",50,125);
    text(love,350,125);
    image(img, i, j,90,120);
  }
  
  if(love==50)
  {
    textSize(100);
    image(b_gimg,0,0,750,1000);
    text("victory",25,100);
   
    //for(int e=0;e<1600;e+=200)
      //image(llove,e,650,200,200);
  }
   
 
  
  
  for(int e=0;e<50;e++)
  {
    if(g_live[e]==1)
      image(llove,g_x[e],g_y[e],110,160);
  }
  

  for(int e=0;e<50;e++)
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
