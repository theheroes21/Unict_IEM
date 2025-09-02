PImage Im,Ir;
int K = 10*3+1;

void setup()
{
  size(1024,512);
  Im = loadImage("lena.png");
  
  
}

void draw()
{
  image(Im,0,0);
  rectMode(CORNER);

 
 if(mouseX < Im.width) // Evita di calcolare quando mouse è a destra dell'immagine
 {
   color c = regionMean(Im, mouseX, mouseY, K);
   fill(c);
   noStroke();
   rect(Im.width,0,512,512);
   
   float rectX = constrain(mouseX, K/2, Im.width - K/2);
   float rectY = constrain(mouseY, K/2, Im.height - K/2);
  
 
   if(mouseX >= 0 && mouseX <= Im.width && mouseY >= 0 && mouseY <= Im.height)
   {
       rectMode(CENTER);
       noFill();
       stroke(255,255,0);
       rect(rectX,rectY,K,K);
   }

 }
   
}

color imMean(PImage I)
{
  PImage R = I.copy();
  float red=0;
  float green=0;
  float blue =0;
  
  color rgb=0;
  
  R.loadPixels();
  for(int i=0; i<R.pixels.length; i++)
  {
    red += red(R.pixels[i]);
    green += green(R.pixels[i]);
    blue += blue(R.pixels[i]);
  }
  
  red = red / R.pixels.length;
  green = green / R.pixels.length;
  blue = blue / R.pixels.length;
  
  rgb = color(red,green,blue);
  
  return rgb;
}

color regionMean(PImage I, int x, int y, int n)
{    
  
     int xs = x-n/2;
     int ys = y-n/2;
     
     xs = constrain(xs,0,I.width-n);
     ys = constrain(ys,0,I.height-n);
     
    int regionWidth = min(n, I.width - xs);
    int regionHeight = min(n, I.height - ys);
     
     
     PImage region = I.get(xs,ys,regionWidth,regionHeight);
     
     return imMean(region);
}


void keyPressed()
{
  if(key == '+' && K<=250)
  {
    K+= 10;
    K = min(K,250);
    println(K);
  }
  
  if(key == '-' && K>=10)
  {
    K-= 10;
    K = max(K,10);
    println(K);
  }
}
