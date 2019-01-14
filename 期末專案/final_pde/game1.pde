void game1()
{
	PImage game1 = loadImage("game1.jpg");
	
		image(game1,0,0,1000,800);


  PImage suck = loadImage("suck.png");

  PImage smoke1 = loadImage("smoke1.png");
  PImage smoke2 = loadImage("smoke2.png");
  PImage smoke3 = loadImage("smoke3.png");

	
		image(suck,q,600,250,275);
		smoke();

		 for(int i=0;i<40;i++)
  		{     

	    	if(smoke_l[i] == 1)
	    	{
	        	if(smoke_[i] == 0)
	            image(smoke1, smoke_x[i] , smoke_y[i],150,150); 
	        	if(smoke_[i] == 1)
	            image(smoke2, smoke_x[i] , smoke_y[i],150,150); 
	        	if(smoke_[i] == 2)
	            image(smoke3, smoke_x[i] , smoke_y[i],150,150); 

	       		 smoke_y[i]-=8;
	       	}

	       	 if(smoke_l[i] == 2)
			    {
			        if(smoke_[i] == 0)
			        {
			            image(smoke1, smoke_x[i] , smoke_y[i],150,150); 
			        }
			        if(smoke_[i] == 1)
			        {
			            image(smoke2, smoke_x[i] , smoke_y[i],150,150); 
			        }
			        if(smoke_[i] == 2)
			        {
			            image(smoke3, smoke_x[i] , smoke_y[i],150,150); 
			        }

			        smoke_y[i]+=120;

			        if(smoke_y[i] == 400)
			            smoke_l[i] = 0;

			    }

			 if(smoke_y[i] >= 550)
            smoke_l[i] = 0;
		}

		textSize(50);
  		text(score,800,750);

  		if(score >= 20)
		 {
		    PImage game1_end = loadImage("game1_end.jpg");
		    image(game1_end,0,0,1000,800);

			if(val == 4)
			{
				
				togame=0;
				score =0;
				pass1=1;
				end+=1;
				enter = 0;
				
			}
		 }
	
   

}

