PImage Im1,Im2,ImF,ImS;
float k = 0.5;

void setup()
{
  size(512,512);
  Im1 = loadImage("lena.png");
  Im2 = loadImage("lena.jpg");
  Im1.resize(256,256);
  Im2.resize(256,256);
  
  ImF = fusion(Im1,Im2,k);
  
  ImS = subtract(Im1,Im2,k);
  
  image(Im1,0,0);
  image(Im2,0,256);
  image(ImF,256,0);
  image(ImS,256,256);
 
}


void draw()
{}

void keyPressed()
{
  if(key == '+')
  {
    k += 0.05;
    println(k);
    k = min(k,1.0);
  }
  
  if(key == '-')
  {
    k -= 0.05;
    println(k);
    k = max(k,0.0);
  }
}



//Media Punto a Punto 
PImage fusion(PImage I1,PImage I2,float k)
{
  PImage R = createImage(I1.width,I1.height,RGB);
  float r1, g1, b1;
  float r2, g2, b2;
  
  int c1, c2;
  
 
  for(int x=0; x<R.width; x++)
   {
     for(int y=0; y<R.height; y++)
     {
       c1 = I1.get(x,y);
       c2 = I2.get(x,y);
       
       r1 = red(c1);
       g1 = green(c1);
       b1 = blue(c1);
       
       r2 = red(c2);
       g2 = green(c2);
       b2 = blue(c2);
       
       float newR = k * r1 + (1-k) * r2;
       float newG = k * g1 + (1-k) * g2;
       float newB = k * b1 + (1-k) * b2;
       
       color c = color(newR,newG,newB);
       
       R.set(x,y,c);
       
     }
     
   }
   
   return R;
   
}

//Sottrazione Punto a Punto
PImage subtract(PImage I1,PImage I2,float k)
{
  PImage R = createImage(I1.width,I1.height,RGB);
  float r1, g1, b1;
  float r2, g2, b2;
  
  int c1, c2;
  
 
  for(int x=0; x<R.width; x++)
   {
     for(int y=0; y<R.height; y++)
     {
       c1 = I1.get(x,y);
       c2 = I2.get(x,y);
       
       r1 = red(c1);
       g1 = green(c1);
       b1 = blue(c1);
       
       r2 = red(c2);
       g2 = green(c2);
       b2 = blue(c2);
       
       float newR = r1 - (k * r2);
       float newG = g1 - (k * g2);
       float newB = b1 - (k * b2);
       
       color c = color(newR,newG,newB);
       
       R.set(x,y,c);
       
     }
     
   }
   
   return R;
}
