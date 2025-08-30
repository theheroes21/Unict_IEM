class Cifra
{
  char c;
  float posX, posY, size, sy;
  
  Cifra(float x, float y, float size, float sy, char c)
  {
    this.posX = x;
    this.posY = y;
    this.size = size;
    this.sy = sy;
    this.c = c;
  }
  
  void display()
  {
    noStroke();
    fill(255,255,0);
    textSize(size);
    text(c,posX,posY);
  }
  
  void move()
  {
    posY += sy;
  }
  
  void clamp()
  {
    if(posY >= height)
      posY = 0;
  }
  
  void run()
  {
    display();
    move();
    clamp();
  }
};
