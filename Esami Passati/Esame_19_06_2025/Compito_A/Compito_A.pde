ArrayList <Keyboard> ab;

void setup()
{
  size(500,500);
  ab = new ArrayList <Keyboard> ();

}

void draw()
{
    background(0);
    
    for(Keyboard b : ab)
    {
      b.run();
    }
}

void keyPressed()
{
   if(key >= 'A' && key <='Z' || key >= 'a' && key <='z')
   ab.add(new Keyboard(key,random(20,width-20), 20 ,40,random(4,8)));
   else
   ab.add(new Carattere(key, random(20,width-20), 20 , 40, random(4,8), random(50,205), random(50,205), random(50,205)));
   // range 50-205 cosi evitiamo il bianco e il nero al 100%
}


void mousePressed()
{
  if(mouseButton == RIGHT)
  ab.clear();
}
