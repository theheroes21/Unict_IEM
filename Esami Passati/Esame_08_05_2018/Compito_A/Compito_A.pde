ArrayList <Asteroid> a;
ArrayList <Bullet> ab;
Gun g;


void setup()
{
  size(512,512);
  g = new Gun(mouseX,height-30);
  a = new ArrayList <Asteroid> ();
  ab = new ArrayList <Bullet> ();
}


void draw()
{
  background(0);

  g.run();
  
  if(random(0,1) < 0.05)
  a.add(new Asteroid(-50,random(0,256),random(2,7),random(-2,2)));
  
  
  for(Asteroid as : a)
  {
    as.run();
    
    for(Bullet b : ab)
    {
      as.hit(b);
    }
  }
  

  for(Bullet b : ab )
  {
    b.run();
  }
  

  
}

void keyPressed()
{
  if(key == 'A')
  {
    ab.add(g.shot());
  }
}
