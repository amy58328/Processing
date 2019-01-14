void mousePressed()
{
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