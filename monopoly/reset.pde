void reset(int ci)//從新畫背景
{
	background(255);
	//strokeWeight(3);
	strokeWeight(2);
	a=0;
	for(int i=50;i<=900;i+=100)
	{
		if(i==50 || i==850)
			for(int j=50;j<750;j+=100)
			{
				rect(i,j,100,100);
				fill(q[a],qq[a],qqq[a]);
				a++;
			}
		else 
		{
			rect(i,50,100,100);
			fill(q[a],qq[a],qqq[a]);
			a++;

			rect(i,650,100,100);
			fill(q[a],qq[a],qqq[a]);
			a++;
		}
	}//frame

	strokeWeight(15);
	fill(255,0,0);
	ellipse(745,560,150,150);//click

	fill(255);
	textSize(30);
	text("CLICK",705,570);//click

	dice=loadImage(ci+".jpg");
	image(dice,388,278);

	fill(0);
	textSize(50);
	text("-3",670,120);
	text("+3",870,220);
	text("-5",870,620);
	text("-4",170,720);
	text("-10",55,420);

	textSize(35);
	text("go",870,380);
	text("to",865,417);
	text("16",895,440);
	text("go",470,680);
	text("to",465,717);
	text("7",505,740);

}
