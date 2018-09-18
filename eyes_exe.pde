int x,y;
void setup()
{
  size(800,600);
  background(255,255,153);
  noStroke();
  for(int i=100;i<800;i+=200)
  {
    for( int j=100;j<600;j+=200)
    {
       fill(230,128,255);
       ellipse(i, j, 200, 200);
       fill(135,206,235);
       ellipse(i,j,150,150);
       fill(179,153,255);
       ellipse(i, j, 75, 75);
    }
  }
}

void draw()
{
  for(int i=100;i<800;i+=200)
  {
    for( int j=100;j<600;j+=200)
    {
       fill(230,128,255);
       ellipse(i, j, 200, 200);
       fill(135,206,235);
       ellipse(i+((mouseX-400)/18),j+((mouseY-300)/18),150,150);
       fill(179,153,255);
       ellipse(i+((mouseX-400)/8), j+((mouseY-300)/8), 75, 75);
    }
  }
}
