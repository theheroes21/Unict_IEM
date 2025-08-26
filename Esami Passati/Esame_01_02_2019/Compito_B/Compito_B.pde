PImage Im, Ih, Imax;

void setup()
{
  size(768,256);
  reset();
}

void draw(){}

PImage hash(PImage I, int h, int k)
{
  PImage R = I.copy();
  
  R.loadPixels();
  for(int x=0; x<R.width; x++)
  {
    
    for(int y=0; y<R.height; y++)
    {
      int index = x + y * R.width;
      
      if(x == h || x == k)
      R.pixels[index] = color(0);
      
      if(y == h || y == k)
      R.pixels[index] = color(0);
        
    }
    
  }
  
  R.updatePixels();
  
  return R;
}

PImage hash(PImage I, int h, int k,int n)
{
  PImage R = I.copy();
  PImage tmp;
  int off =  n/2;
  float [] tmpF = new float [n*n];
  
  
  R.loadPixels();
  for(int x=0; x<I.width; x++)
  {
    
    for(int y=0; y<I.height; y++)
    {
      
      int xs = x - off;
      int ys = y - off;
      
      xs = constrain(xs, 0, I.width - n);
      ys = constrain(ys, 0, I.height - n);
      
      tmp = I.get(xs,ys,n,n);
      
      for(int i=0; i<tmp.pixels.length; i++)
      {
        tmpF[i] = brightness(tmp.pixels[i]);
      }
      
      R.set(x,y,color(max(tmpF)));
    }
  }
  
  
  for(int x=0; x<I.width; x++)
  {
    for(int y=0; y<I.height; y++)
    {
      int index = x + y * R.width;
      
      if(x == h || x == k)
      R.pixels[index] = color(0);
      
      if(y == h || y == k)
      R.pixels[index] = color(0);
    }
  }
  
  R.updatePixels();
  
  return R;
}

void reset()
{
  int h = (int) random(1,256);
  int k = (int) random(1,256);
  int n = (int) random(3,11);

  Im = loadImage("lena.png");
  Im.resize(256,256);
  Im.filter(GRAY);
  
  Ih= hash(Im,h,k);
  Imax = hash(Im,h,k,n);
  
  
  image(Im,0,0);
  image(Ih,256,0);
  image(Imax,512,0);
}


void keyPressed()
{
  if(key == 'R' || key == 'r')
  reset();
}
