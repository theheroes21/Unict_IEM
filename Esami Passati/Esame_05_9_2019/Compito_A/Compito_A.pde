Pillow p;
SuperPillow s;

void setup()
{
  size(256,512);
  p = new Pillow(random(0,width/2), random(80,height/2-80), 2, 40, 80);
  s = new SuperPillow(random(width/2,width-80), random(height/2,height-80), 2, 40, 80,random(0,360));
}

void draw()
{
  background(0);
  p.run();
  s.run();
}

void reset()
{
  p = new Pillow(random(0,width/2), random(0,height/2-80), 2, 40, 80);
  s = new SuperPillow(random(width/2,width-80), random(height/2,height-80), 2, 40, 80,random(0,360));

}

void keyPressed()
{
  if(key == 'R' || key == 'r')
  reset();

}
