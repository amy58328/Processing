void setup() {
   size(800, 600);
   strokeWeight(4);
   background(255,255,255);
   smooth();
   ellipse(400,600,400,400);
   //6 
   fill(255);
   rect(725,0,75,75);
   //7
   fill(255);
   rect(725,75,75,75);
   //8
   fill(255);
   rect(725,150,75,75);
   //9
   fill(255);
   rect(725,225,75,75);
   //10
   fill(255);
   rect(725,300,75,75);
   //1
   fill(218  ,112  ,214);
   rect(0,0,50,50);
   //2
   fill(22 , 152 , 43);
   rect(0,50,50,50);
   //3
   fill(242 , 133 , 0);
   rect(0,100,50,50);
   //4
   fill(0 , 191 , 255);
   rect(0,150,50,50);
   //5
   fill(230 , 0 , 0 );
   rect(0,200,50,50);
   //RIGHR
   textSize(15);
   text("Eraser",743,40);
   textSize(15);
   text("save",743,121);
   strokeWeight(4);
   line(760,188,760,188);
   strokeWeight(8);
   line(760,263,760,263);
   textSize(15);
   text("clear",743,346);
 }
 
 void draw() 
 {
   if ((mousePressed == true) && (mouseButton == LEFT) )
   { 
     if((mouseX>57 && pmouseX>57 && mouseX<730 && pmouseX <730)|| (mouseY>257 && pmouseY>346) &&mouseY<257 && mouseY<346)
     {
       line(mouseX, mouseY, pmouseX, pmouseY);
     }
     
     if(mouseX<50)
     {
       //1
       if(mouseY<50)
       stroke(218  ,112  ,214);
       //2
       else if(mouseY<100)
       stroke(22 , 152 , 43);
       //3
       else if(mouseY<150)
       stroke(242 , 133 , 0);
       //4
       else if(mouseY<200)
       stroke(0 , 191 , 255);
       //5
       else if(mouseY<250)
       stroke(230 , 0 , 0);
     }
     
     if(mouseX>725)
     {
       //6
       if(mouseY<75)
       stroke(255);
       //7
       else if(mouseY<150)
       save("Painter.jpg");
       //8
       else if(mouseY<225)
         strokeWeight(4);
       //9
       else if(mouseY<290)
         strokeWeight(8);
       //10
       else if(mouseY<365)
       {
          strokeWeight(4);
          stroke(0);
          setup();
       }
     }
   }
   
   save("hw03.jpg");
 }
