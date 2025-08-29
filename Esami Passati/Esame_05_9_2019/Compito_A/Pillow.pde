class Pillow
{
  float posX, posY, sx, w, h;
  
  Pillow(float x, float y, float sx, float w, float h)
  {
    this.posX = x;
    this.posY = y;
    this.sx = sx;
    this.w = w;
    this.h = h;
  }
  
  void display()
  {
    noStroke();
    fill(255);
    rect(posX,posY,w,h);
  }
  
  void move()
  {
    posX += sx;
  }
  
  void bounce()
  {
    if(posX < 0 || posX > width-w)
    {
      sx = -sx;
    }
  }
  
  void run()
  {
    display();
    move();
    bounce();
  }
};
