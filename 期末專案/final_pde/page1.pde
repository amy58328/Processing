

void page1()
{
  PImage page1 = loadImage("page1.jpg");
  
  image(page1,0,0,1000,800);
  

  girl_walk(x,y);

    if(x>windows_x)
    {
      page = 2;
      x = 50 ;
    }

    if(x<0)
    {
      page = 6;
      x = 860 ;
    }

    if(y>windows_y )
    {
      page = 4;
      y = 20 ;
    }

    if(y <=0 )
      y=0;


    
  }
  
