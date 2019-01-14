void page3()
{
	background(0,205,0);
	girl_walk(x,y);
    if(x>windows_x)
    {
      page = 4;
      x = 50 ;
    }

    if(x<0)
    {
      page = 2;
      x = 860 ;
    }

    if(y>windows_y)
    {
      page = 6;
      y = 20;
    }
}