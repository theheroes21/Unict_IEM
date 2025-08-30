ArrayList <Cifra> ab;


void setup()
{
  size(500,500);
  ab = new ArrayList <Cifra> ();
}

void draw()
{
  background(0);
  for(Cifra b : ab)
    b.run();
}


void keyPressed()
{
  
  if(key >= '0' && key<= '4')
    ab.add(new Cifra(random(32,width-32),random(0,height),32,random(2,10),key));
  
  if(key >= '5' && key<= '9')
    ab.add(new Cifrotta(random(32,width-32),random(0,height),32,random(2,10),key));
}

void mousePressed()
{
  if(mouseButton == RIGHT)
  {
    ab.clear();
  }
}
