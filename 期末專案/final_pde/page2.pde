void page2()
{
	PImage page2 = loadImage("page2.jpg");
	if(pass1 == 0)
		image(page2,0,0,1000,800);
	else if(pass1 == 1)
	{
		image(page2,0,0,1000,800);
		image(pass,600,150,200,150);
		togame = 0;
	}

		


	girl_walk(x,y);

	if(x>windows_x)
	{
		page = 3;
		x = 50 ;
	}

	if(x<0)
	{
		page = 1;
		x = 860 ;
	}

	if(y>windows_y)
	{
		page = 5;
		y = 20 ;
	}

	if(y <=0 )
      y=0;

		
	if(val == 5)
	{
		
		if(((x >= 700 && x <= 900) || (x+150 >= 700 && x+150 <= 900) ) && ((y >=200 && y<=375 ) || (y+175 >=200 && y+175<=375 ) )) 
		{
			togame=1;
		}

	}

	if(togame == 1 && pass1 == 0)
	{
		
		PImage game1_begin = loadImage("game1_begin.jpg");
		image(game1_begin,0,0,1000,800);
		if(val == 4)
			enter = 1;
		if(enter == 1)
			game1();
	}

}
