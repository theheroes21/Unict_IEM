PImage Im;

void setup()
{
   size(512,512);
   Im = loadImage("lena.jpg");
   Im.resize(512,512);
   
   color c = color(255,255,0);
   
   // Metodo 1 diagonale I
   for(int i=0; i<Im.width; i++)
   {
     Im.pixels[pos(i,i,Im.width)] = c;
   }
   
   // Metodo 2 diagonale II
   for(int i = 0; i < Im.width; i++) {
    Im.set(Im.width-i, i, c); 
  }
 
}

void draw()
{
   image(Im,0,0);
}

int pos(int x, int y, int w)
{
  return x+y*w;
}

