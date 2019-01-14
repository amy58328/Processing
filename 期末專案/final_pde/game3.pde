void game3()
{
	background(176 ,196, 222);
    PImage windows_clear = loadImage("windows_clear.png");
    PImage windows_open = loadImage("windows_open.png");
    PImage windows_dirty = loadImage("windows_dirty.png");
    PImage windows_girl = loadImage("windows_girl.png");


   windows();
    background(176 ,196, 222);

    for(int i=0 ; i<12; i++)
    {
        if(windows_l[i] == 1)
            image(windows_clear,w_x[i] ,w_y[i] , 250 , 200);
        else if(windows_l[i] ==  0)
            image(windows_dirty,w_x[i] ,w_y[i] , 250 , 200);
    }

    image(windows_girl,game_x,game_y,120,170);

    if(eat == 3)
    {
        for(int i=0; i<12 ;i++)
        {
            if(w_x[i] == game_x-70)
                if(w_y[i] == game_y-60)
                {
                    windows_l[i] =1;
                    eat =0;
                    score++;
                }
        }
    }

    fill(255,0,0);
    textSize(50);
    text(score,750,750);


    if(score >= 2)
    {
         PImage game3_end = loadImage("game3_end.jpg");
            image(game3_end,0,0,1000,800);

            if(val == 4)
            {
                
                togame=0;
                score =0;
                pass3=1;
                end+=1;
                enter = 0;
                
            }
    }
}