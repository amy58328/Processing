void page6()
{
	background(160,32,240);
	girl_walk(x,y);
    if(x>windows_x)
    {
      page = 1;
      x = 50 ;
    }

    if(x<0)
    {
      page = 5;
      x = 860 ;
    }

    if(y<0)
    {
      page = 3;
      y = 625 ;
    }
}