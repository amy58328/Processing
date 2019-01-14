void smoke()
{
    int timer ;
    timer = (int)random(100);
    if(timer % 5 == 0)
    {
        smoke_x[t] = (int)random(5);
        smoke_x[t] = smoke_x[t] *200+30;

        smoke_y[t] = 280;
        smoke_l[t] = 1;

        smoke_[t] = (int)random(3);
        t++;
        if(t==40)
            t=0;
    }
}