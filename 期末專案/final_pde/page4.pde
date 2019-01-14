void page4()
{
	PImage page4 = loadImage("page4.jpg");
  image(page4,0,0,1000,800);

	girl_walk(x,y);
    if(x>windows_x)
    {
      page = 5;
      x = 50 ;
    }

    if(x<0)
    {
      page = 3;
      x = 860 ;
    }

    if(y<0)
    {
      page = 1;
      y = 625 ;
    }

    if(y >700)
      y = 620;
}