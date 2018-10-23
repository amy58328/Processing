int goto_(int go)//判斷是否踩到特殊格子
{
	if(go==6)
		{
			textSize(150);
			text("-3",150,610);
			go-=3;
		}	

		else if(go==9)
		{
			textSize(150);
			text("+3",150,610);
			go+=3;
		}

		else if(go==11)
		{
			textSize(100);
			text("go to 16",150,610);
			go=16;
		}

		else if(go==13)
		{
			textSize(150);
			text("-5",150,610);
			go-=5;
		}

		else if(go==18)
		{
			
			textSize(100);
			text("go to 7",150,610);
			go=7;
		}
			
		else if(go==21)
		{
			textSize(150);
			text("-4",150,610);
			go-=4;
		}

		else if(go==25)
		{
			textSize(150);
			text("-10",150,610);
			go-=10;
		}//

	return go;
}