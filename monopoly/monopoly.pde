# int dice_n=0,dice_su=0,dice_sub=0,a,xx,yy=15;
PImage dice,piecew,pieceb;
boolean press=false;
boolean te=false;//是否有人達到終點
int who=0;//現在換到誰的回合  0表示白色  1 表示黑色
int win=0; // 0表示白色  1 表示黑色
int begin=0;
int[] q=new int[30],qq=new int[30],qqq=new int[30];

void setup()
{
	frameRate(10);
	size(1000,800);
	background(255);
 	strokeWeight(2);
	a=0;
	for(int i=50;i<=900;i+=100)//畫格子
	{
		if(i==50 || i==850)
			for(int j=50;j<750;j+=100)
			{
				rect(i,j,100,100);
				q[a]=(int)random(255);
				qq[a]=(int)random(255);
				qqq[a]=(int)random(255);
				fill(q[a],qq[a],qqq[a]);
				a++;
			}
		else 
		{
			rect(i,50,100,100);
			q[a]=(int)random(255);
			qq[a]=(int)random(255);
			qqq[a]=(int)random(255);
			fill(q[a],qq[a],qqq[a]);
			a++;

			rect(i,650,100,100);
			q[a]=(int)random(255);
			qq[a]=(int)random(255);
			qqq[a]=(int)random(255);
			fill(q[a],qq[a],qqq[a]);
			a++;
		}
	}//畫格子結束

	strokeWeight(15);
	fill(255,0,0);
	ellipse(745,560,150,150);//按鍵的按鈕

	fill(255);
	textSize(30);
	text("CLICK",705,570);//按鍵的字

	dice=loadImage("1.jpg");
	image(dice,388,278);//骰子初始

	piecew=loadImage("w.png");
	image(piecew,60,15,50,100);//白色棋子初始
  
  	pieceb=loadImage("b.png");
	image(pieceb,90,35,50,100);//黑色棋子初始

	fill(0);
  	textSize(50);
	text("Next Player : ",500,220);
	text("White",550,290);//玩家初始

	fill(0,0,0);
	textSize(30);
	text("White's score :",200,200);
	text(dice_su,420,200);
	textSize(30);
	text("Black's score :",200,250);
	text(dice_sub,420,250);//分數初始

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

void draw()
{	

	if( mousePressed == true && mouseButton == LEFT)
	{

		if(sqrt(pow(mouseX-745,2)+pow(mouseY-560,2))<75)
		{
			if(begin==1)
			{
				dice_su=0;
				dice_sub=0;
				begin=0;
			}
			
			else if(who==0)
			{
				dice_n=(int)random(1,6);//骰子六面隨機
				dice_su+=dice_n;//骰子總和
				dice=loadImage(dice_n+".jpg");
				image(dice,388,278);//輸出骰子的點數
			}	

			else if(who==1)
			{
				dice_n=(int)random(1,6);//骰子六面隨機
				dice_sub+=dice_n;//骰子總和
				dice=loadImage(dice_n+".jpg");
				image(dice,388,278);//輸出骰子的點數
			}
				
		}

		if(who==0)
		{
			reset(dice_n);//從新畫背景，參數是骰子
			dice_su=goto_(dice_su);//判斷是否踩到特殊格
			showof(dice_su,who);//畫出白色棋子
			showof(dice_sub,who+1);//畫出黑色棋子
			textSize(50);
			text("Next Player : ",500,220);
			text("Black",550,290);//更新白色的分數
			who=1;
			win=0;
		}

		else if(who==1)
		{
			reset(dice_n);//參數是骰子的
			dice_sub=goto_(dice_sub);
			showof(dice_su,who-1);
			showof(dice_sub,who);
			textSize(50);
			text("Next Player : ",500,220);
			text("White",550,290);//更新黑色的分數
			who=0;
			win=1;
		}
			
		

		
		if(te==false)//如果沒有人達到終點 輸出雙方的分數
		{
			fill(0,0,0);
			textSize(30);
			text("White's score :",200,200);
			text(dice_su,420,200);
			textSize(30);
			text("Black's score :",200,250);
			text(dice_sub,420,250);

		}


		if(te==true && win==0)//如果白色達到終點
		{	
			fill(255,0,0);
			textSize(200);
			text("White",150,310);
			text(" is WIN",70,560);
			te=false;
			begin=1;

		}

		else if(te==true && win==1)//如果黑色達到終點
		{	
			fill(255,0,0);
			textSize(200);
			text("Black",150,310);
			text(" is WIN",70,560);
			te=false;
			begin=1;
		}

	}

}
