PImage Im, Is, IsS;

void setup()
{
  size(768,256);
  reset();
}

void draw(){}

PImage sBlock(PImage I, int h)
{
  PImage R = I.copy();
  
  int u = (int) random(h/2,I.width-h/2+1);
  int v = (int) random(h/2,I.height-h/2+1);
  
  int u1 = (int) random(h/2,I.width-h/2+1);
  int v1 = (int) random(h/2,I.height-h/2+1);
  
  int offset = h / 2; //per centrare il quadrato
  
  for(int x=0; x<h; x++)
    {
      for(int y=0; y<h; y++)
      {
        R.set(u - offset +x,v - offset +y,color(0,255,255));
        R.set(u1- offset +x,v1 - offset +y ,color(0,255,255));
      }
    }
    
    return R;
}

PImage sBlock(PImage I, int h, float s)
{
    PImage withBlock = sBlock(I,h);
    
    PImage R = createImage(I.width,I.height,RGB);
    
    float u, v, x1, y1;
    
    R.loadPixels();
    
    for(int i=0; i<R.pixels.length; i++)
    {
      R.pixels[i] = color(0);
    }
    
     R.updatePixels();
    
    for(int x=0; x<withBlock.width; x++)
    {
      for(int y=0; y<withBlock.height; y++)
      {
        x1 = x - I.width/2;
        y1 = y - I.height/2;
        
        u = x1 * s;
        v = y1 * s;
        
        u = u + I.width/2;
        v = v + I.height/2;
        
        R.set(round(u),round(v),withBlock.get(x,y));
      }
    }
    
    return R;
}

void reset()
{
  float s = random(0.5, 1.5);
  int h = (int) random(10,80);
  
  Im = loadImage("lena.png");
  Im.resize(256,256);
  
  Is = sBlock(Im,h);
  IsS = sBlock(Im,h,s);
  
  image(Im,0,0);
  image(Is,256,0);
  image(IsS,512,0);
}

void keyPressed()
{
  if(key == 'R' || key == 'r')
    reset();
}

