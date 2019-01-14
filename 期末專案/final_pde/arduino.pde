void arduino(int val)
{
	 if(val==9)
    {
        if(togame ==0)
        {
            x = (x-100) ;
            if(walk==2)
                walk=3;
            else 
                walk =2;
        }

        else if(togame == 1)
        {
            q-=200;
            if(q<30)
                q=830;
        }

        else if(togame == 3)
        {
            game_x-=250;
            eat =0;
            if(game_x < 90)
                game_x = 840;
        }
    	
    }

    else if(val==7)
    {
        if(togame == 0)
        {
            x = (x+100) ;
            if(walk==0)
                walk=1;
            else 
                walk =0;
        }

        else if(togame == 1)
        {
            q+=200;
            if(q>830)
                q=30;
        }

        else if(togame == 3)
        {
            game_x+=250;
            eat =0;
            if(game_x > 840)
                game_x = 90;
        }
        	
        
    }
    
    else if(val==8)
    {
        if(togame == 0)
        {
            y = (y+100) ;
            if(walk == 2 || walk== 3)
            {
                if(walk==2)
                    walk=3;
                else 
                    walk =2;
            }

            if(walk == 1 || walk== 0)
            {
                if(walk==0)
                walk=1;
            else 
                walk =0;
            }
        }
        	
        else if(togame == 3)
        {
            game_y+=250;
            eat =0;
            if(game_y > 610)
                game_y = 110;
        }

        
    }
    
    else if(val==6)
    {
        if(togame == 0)
        {
            y = (y-100) ;
            if(walk == 2 || walk== 3)
            {
                if(walk==2)
                    walk=3;
                else 
                    walk =2;
            }

            if(walk == 1 || walk== 0)
            {
                if(walk==0)
                    walk=1;
                else 
                    walk =0;
            }
        }
    	
        else if(togame == 3)
        {
            game_y-=250;
            eat =0;
            if(game_y < 110)
                game_y = 610;
        }


    }
    
    else if(val == 5)
    {
        if(togame == 3)
        {
            eat++;
        }
        if(togame == 1)
    	{
        	int xx = q;
            int yy=-100;

            for(int i=0;i<40;i++)
            {
                if(smoke_l[i] == 1)
                    if(smoke_x[i] == xx)
                    {
                        if(smoke_y[i] > yy)
                        {
                            yy = smoke_y[i];
                            eat = i;
                        }
                    }
            }
       	 	smoke_l[eat]=2;

        	if(smoke_[eat] == 0)
           		score+=10; 

        	if(smoke_[eat] == 1)
          		score+=10; 

        	if(smoke_[eat] == 2)
            	score-=10;
    	} // togame==1
    }
}