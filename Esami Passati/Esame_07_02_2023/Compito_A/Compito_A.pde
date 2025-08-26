ArrayList <Casa> ab;

void setup()
{
  size(500,500);
  ab = new ArrayList <Casa> ();
}

void draw()
{
  background(0);
  
  for(Casa b : ab)
  {
    b.run();
  }
}

void mousePressed()
{
  if(mouseButton == LEFT){
    ab.add(new Casa(random(0,width-30),random(0,height-30),random(2,10)));
  }
  
  if(mouseButton == RIGHT){
    ab.add(new Casetta(random(0,width-30),random(0,height-30),random(2,10)));
  }
}

void keyPressed()
{
  if(key == 'r'){
    ab.clear();
  }
}
