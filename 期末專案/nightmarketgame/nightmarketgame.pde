PImage img_wine,img_milk,img_hand,img_handcircle,img_circle,img_hitbuttle;
int wine_x = -15;
int milk_x = 80;
int handcircle_x = 420;
int handcircle_y = 620;
int offset = 100;
int i = 20;


void setup(){
  size(1000,800);
  background(211,211,211);
  img_wine = loadImage("wine.png");
  img_milk = loadImage("milk.png");
  img_handcircle = loadImage("handcircle.png");
  img_circle = loadImage("circle.png");
  img_hitbuttle = loadImage("hitbuttle.png");
  img_hand = loadImage("hand.png");
  
  for(int times=0;times<=9;times++){
  image(img_wine,wine_x,50,150,150);
  wine_x += offset;
  }
  
  for(int times=0;times<=7;times++){
  image(img_milk,milk_x,450,150,150);
  milk_x += offset;
  }
  

  frameRate(20);
}


void draw(){
  
  fill(211,211,211);
  stroke(221,221,221);
  rect(0,600,1000,300);
  
  
  image(img_handcircle,handcircle_x,620,180,180);
  if(keyPressed == true) 
  {
    if(key == 'd')
    { 
      handcircle_x = handcircle_x + i;
    if(handcircle_x > 837)
       handcircle_x = 0;
    }
    
    if(key == 'a')
    {
      handcircle_x = handcircle_x - i;
      if(handcircle_x < -20)
         handcircle_x = 875;
    }
    
    if(key == ' ')
    {
      
      
        
        
      image(img_hand,handcircle_x,620,180,180);       
      
    }
  }
  
}
