void keyPressed()
{
    if(key=='a')
    {
        if(togame ==0)
        {
            x = (x-15) ;
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

    else if(key=='d')
    {
        if(togame == 0)
        {
            x = (x+15) ;
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
    
    else if(key=='s')
    {
        if(togame == 0)
        {
            y = (y+15) ;
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
    
    else if(key=='w')
    {
        if(togame == 0)
        {
            y = (y-15) ;
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
    
    else if(key == ' ')
    {
        if(togame == 3)
        {
            eat++;
        }
    }
}
