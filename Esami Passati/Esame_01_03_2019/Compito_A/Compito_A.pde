Block b;
AmazingBlock ab;

void setup()
{
  size(256,512);
  reset();

}

void draw()
{
  background(0);
  b.run();
  ab.run();
}

void reset()
{
  b = new Block (random(20,width/2-20), random(60,height/2-60), 4, 40, 60);
  ab = new AmazingBlock (random(width/2,width-20), random(height/2,height-30), 4, 40, 60,random(0,360));
}

void keyPressed()
{
  if(key=='r' || key == 'R')
  {
    reset();
  }
}
