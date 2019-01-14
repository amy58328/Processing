int num=20;
int front;
int back;

void setup()
{
  background(0);
  size(700, 800);
  fill(255);
  rect(550,75,100,70);//1
  rect(550,175,100,70);//2
  rect(550,400,100,70);//3
  rect(550,300,100,70);//save
  rect(550,575,100,70);//4
  rect(550,675,100,70);//5
  //
  fill(0);
  textSize(15);
  text("Next",580,115);
  text("Per",580,215);
  text("Random",573,440);
  text("save",580,345);
  text("Next",580,615);
  text("Per",580,715);
  front = int(random(1, num)); // Select the front card
  back = int(random(1, num)); // Select the back card
  PImage imgFront = loadImage(front + "t.jpg");
  PImage imgBack = loadImage(back + "b.jpg");
  image(imgFront, 0, 0);
  image(imgBack, 0, 400);
}

void draw()
{
  
  
  if( mousePressed == true && mouseButton == LEFT && mouseX>573)
  {
    if(mouseY>75 && mouseY <145)//1
    {
      front++;
    }
    
    else if(mouseY>175 && mouseY <245)//2
    {
      front--;
    }
    
    else if(mouseY>300 && mouseY <370)
    {
      save("hw03.jpg");
    }
    else if(mouseY>400 && mouseY <470)//3
    {
      front = int(random(1, num)); // Select the front card
      back = int(random(1, num)); // Select the back card
     
     }
    
    else if(mouseY>575 && mouseY <645)//4
    {
     back++;
    }
    
    else if(mouseY>675 && mouseY <745)//5
    {
      back--;
    }
    
    if(front>num)
    {
      front%=num;
      front+=1;
    }
    
    else if(front ==0)
    {
      front+=num;
    }
  
    if(back>num)
    {
      back%=num;
      back++;
    }
    
    else if(back==0)
    {
      back+=20;
    }
    
  }

  
      PImage imgFront = loadImage(front + "t.jpg");
      PImage imgBack = loadImage(back + "b.jpg");
      image(imgFront, 0, 0);
      image(imgBack, 0, 400);
  
  
  
}
