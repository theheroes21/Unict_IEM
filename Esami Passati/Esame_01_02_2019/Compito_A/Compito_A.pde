Ball ab;
Hyperball b;

void setup()
{
  size(512,256);
  ab = new Ball(random(40,width/2-40),random(40,height-40),40,5);
  

  b = new Hyperball(random(width/2+40,width-40),random(40,height-40),40,5,color(0,0,255));
}

void draw()
{
  background(0);
  ab.run();
  b.run();
}

void reset()
{
  ab = new Ball(random(40,width/2-40),random(40,height-40),40,5);
  b = new Hyperball(random(width/2+40,width-40),random(40,height-40),40,5,color(0,0,255));
}

void keyPressed()
{
  if(key == 'R' || key == 'r')
  reset();
}
