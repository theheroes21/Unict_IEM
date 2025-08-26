PImage Im, If;

void setup()
{
  size(512,256);
  resetImage();
}


void draw()
{}

PImage wow(PImage I)
{
  PImage R = I.copy();
  PImage get_sx;
  PImage get_dx;
  
  
  get_sx = I.get(0,0,R.width/2,R.height);
  R.set(R.width/2,0,get_sx);
  
  get_dx = I.get(R.width/2,0,R.width/2,R.height);
  R.set(0,0,get_dx);
  
  
  float percentuale = random(0, 100);
  int div = (int) (R.height * percentuale/ 100.0);
  
  for(int x=0; x<R.width; x++)
  {
    for(int y=0; y<div; y++)
    {
      color c = R.get(x,y);
      
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      
      R.set(x,y,color(b,g,r));
    }
  }
  
  for(int x=0; x<R.width; x++)
  {
    for(int y=div; y<R.height; y++)
    {
      color c = R.get(x,y);
      
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      
      R.set(x,y,color(r,b,g));
    }
  }
  
  return R; 
}

void resetImage()
{
  Im = loadImage("lena.png");
  Im.resize(256,256);
  
  If = wow(Im);
  
  image(Im,0,0);
  image(If,256,0);
}

void keyPressed()
{
  if(key == 'R' || key == 'r')
  {
   resetImage();
  }
}
