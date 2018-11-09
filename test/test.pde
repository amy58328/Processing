PImage r; 
int rx = 400,ry = 450;
int[] ax = new int[40] , ay = new int[40] , al = new int[40];
int[] mx = new int[40] , my = new int[40] , ml = new int[40];
int i = 0, t = 0, score = 0;
void setup()
{
	size(800,600);
	background(0);
	noStroke();
	r = loadImage("rocket.png");
}

void keyPressed()
{
	if(key == 'a')
		rx -= 10;

	if(key == 's')
		ry += 10;

	if(key == 'd')
		rx += 10;

	if(key == 'w')
		ry -= 10;

	if(rx < 0)
		rx = 800;

	if(rx > 800)
		rx = 0;

	if(ry < 0)
		ry = 600;

	if(ry > 600)
		ry = 0;


}

void mousePressed()
{
	ax[i] = rx + 65;
	ay[i] = ry;
	al[i] = 1;
	i++;
	if(i==40)
		i=0;
}

void mounster()
{
	int timer ;
	timer = (int)random(100);
	if(timer % 53 == 0)
	{
		mx[t] = (int)random(800);
		my[t] = 0;
		ml[t] = 1;
		t++;
		if(t==40)
			t=0;
	}
}

void determine()
{
	for(int j=0;j<40;j++)
	{
		for(int q=0;q<40;q++)
		{
			if(al[j] == 1 && ml[q] == 1)
			{
				if(sqrt(pow(ax[j]-mx[q],2)+pow(ay[j]-my[q],2)) < sqrt(pow(45,2)+pow(45,2)))
				{
					al[j] = 0;
					ml[q] = 0;
					score++;
				}
			}

		}
	}
		
}

void draw()
{
	background(0);
	image(r , rx , ry , 125 , 150);
	for(int j=0;j<40;j++)
	{
		fill(0,255,0);
		if(al[j] == 1)
		{
			ellipse(ax[j] , ay[j] , 50 , 50 );
			ay[j]-=2;
		}

		fill(0,0,255);
		if(ml[j] == 1)
		{
			rect(mx[j] , my[j] , 50 , 50 );
			my[j]+=2;
		}
	}

	mounster();
	determine();

	fill(255,0,0);
	textSize(50);
	text("Your score:",50,100);
	text(score,50,150);



}