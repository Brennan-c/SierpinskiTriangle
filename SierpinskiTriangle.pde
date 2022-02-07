public void setup()
{
size(700,700);
noStroke();
}

public void draw()
{
background(200);

sierpinski(0, 700 , 700);

}

public void sierpinski(int x, int y, int len) 
{
    fill(mouseX/2-mouseY/2 +50,mouseY/2-mouseX/2,mouseY/2);
  if(len<=mouseY*2+5)
  {
  triangle(x,y, x+len/2, y-len, x + len, y);
  }
  else
  {
  sierpinski(x,y,len/2);
  sierpinski(x+len/2,y,len/2);
  sierpinski(x+len/4,y-len/2,len/2);
  }
}
