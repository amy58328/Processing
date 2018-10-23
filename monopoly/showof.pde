void showof(int go,int a)//畫出黑與白的位子
{
	if(go<=14)
		{
			if(go<=8)
			{
				xx=60+go*100;
				yy=15;
			}
			else 
				xx=860;
		}

		if(go>8 && go<=20)
		{	
			if(go<=20)
			{
				xx=860;
				yy=15+(go-8)*100;
			}

			else 
				yy=715;
		}

		if(go>14 && go<=28)
		{	
			if(go<=28)
			{
				yy=615;
				xx=860-(go-14)*100;
			}

			else 
				xx=60;
		}

		if(go>22 && go<=34)
		{	
			if(go<=27)
			{
				xx=60;
				yy=615-(go-22)*100;
			}

			if(go>27)
			{
				xx=60;
				yy=15;
				te=true;
			}
		}
		PImage piecew;
		if(a==0)
		{
			piecew=loadImage("w.png");
			image(piecew,xx,yy,50,100);
		}

		else if(a==1)
		{
			piecew=loadImage("b.png");
			image(piecew,xx+30,yy+20,50,100);
		}
			

}