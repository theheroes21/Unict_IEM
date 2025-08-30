
void setup()
{
  size(768,256);
  reset();
}

void draw(){}

PImage wow(PImage I)
{
  PImage R = I.copy();
  
  PImage top = I.get(0,0,I.width,I.height/2);  //parte superiore
  PImage bottom = I.get(0,I.height/2,I.width,I.height);   //parte inferiore
  
  R.set(0,0,bottom);
  R.set(0,I.height/2,top);
  
  color c = color(255);
  
  R.loadPixels();
  for(int i=I.width/2; i<I.width; i++)
  {
    R.set(i,i,c);
  }
  R.updatePixels();
  
  return R;
}


PImage mas(PImage I, int n)
{
  PImage R = I.copy();
  
  int off = n/2;
  PImage tmp;
  float [] tmpF = new float [n*n];
  
  for(int x=0; x<I.width; x++)
  {
    for(int y=0; y<I.height; y++)
    {
      int xs = x-off;
      int ys = y-off;
      
      xs = constrain(xs,0,I.width-n);
      ys = constrain(ys,0,I.height-n);
      
      tmp = I.get(xs,ys,n,n);
      tmp.loadPixels();
      
      for(int i=0; i<tmp.pixels.length; i++)
      {
        tmpF[i] = brightness(tmp.pixels[i]);
      }
      
      R.set(x,y,color(max(tmpF)));
      
    }
  }
  
  return R;
}

void reset()
{
  PImage Im, Iw, Imas;
  int n = (int) random(5,15);
  Im = loadImage("lena.png");
  Im.resize(256,256);
  Im.filter(GRAY);
  
  Iw = wow(Im);
  Imas = mas(Iw,n);
  
  image(Im,0,0);
  image(Iw,256,0);
  image(Imas,512,0);
}

void keyPressed()
{
  if(key=='r' || key == 'R')
    reset();
}
