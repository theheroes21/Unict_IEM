
void setup()
{
  size(768,256);
  reset();
  
}

void draw()
{}




PImage logOp(PImage I)
{
  PImage R = I.copy();
  float r, g , b;
  float C = 256/log(256);
  
  R.loadPixels();
  
  for(int i=0; i<R.pixels.length; i++)
  {
    r = C * log(1+red(R.pixels[i]));
    g = C * log(1+green(R.pixels[i]));
    b = C* log(1+blue(R.pixels[i]));
    
    R.pixels[i] = color(r,g,b);
  }
  
  R.updatePixels();
  
  return R;
}

PImage logOp(PImage I,int h, int k)
{
  PImage R = I.copy();
  
  int x1 = (int) random(0,I.width-h+1);
  int y1 = (int) random(0,I.height-k+1);
  
  
  for(int x=0; x<h; x++)
  {
    for(int y=0; y<k; y++)
    {
       R.set(x+x1, y+y1,color(0));
    }
  }
  
  
  
  float r, g , b;
  float C = 256/log(256);
  
  R.loadPixels();
  
  for(int i=0; i<R.pixels.length; i++)
  {
    r = C * log(1+red(R.pixels[i]));
    g = C * log(1+green(R.pixels[i]));
    b = C* log(1+blue(R.pixels[i]));
    
    R.pixels[i] = color(r,g,b);
  }
  
  R.updatePixels();
  
  return R;
}

void reset()
{
  PImage Im, Ilog, Ilogp;
  int h = (int) random(10,70);
  int k = (int) random(10,70);

  Im = loadImage("lena.png");
  Im.resize(256,256);
  Im.filter(GRAY);
  
  Ilog = logOp(Im);
  Ilogp = logOp(Im,h,k);
  
  
  image(Im,0,0);
  image(Ilog,256,0);
  image(Ilogp,512,0);
}

void keyPressed()
{
  if(key == 'r' || key == 'R')
  {
    reset();
  }
}
