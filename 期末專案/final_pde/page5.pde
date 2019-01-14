void page5()
{
	PImage page5 = loadImage("page5.jpg");
  if(pass3 == 0)
    image(page5,0,0,1000,800);
  else if(pass3 == 1)
  {
    image(page5,0,0,1000,800);
    image(pass,150,150,200,150);
    togame=0;
  }


    

	girl_walk(x,y);
    if(x>windows_x)
    {
      page = 6;
      x = 50 ;
    }

    if(x<0)
    {
      page = 4;
      x = 860 ;
    }

    if(y<0)
    {
        page = 2;
        y = 625 ;
    }

    if(y >700)
      y = 620;
    

    if(val == 5)
    {
        if(((x >= 10 && x <= 280) || (x+150 >= 10 && x+150 <= 280) ) && ((y >=100 && y<=400 ) || (y+175 >=100 && y+175<=400 ) )) 
        {
               togame=3;
         }

     }

    if(togame == 3 && pass3 == 0)
    {
        PImage game3_begin = loadImage("game3_begin.jpg");
        image(game3_begin,0,0,1000,800);
        if(val == 4)
          enter = 1;
        if(enter == 1)
          game3();
    }
}