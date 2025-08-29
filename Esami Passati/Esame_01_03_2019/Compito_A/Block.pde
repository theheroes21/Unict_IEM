class Block
{
  float posX, posY, w, h, sx;
  
  Block(float x, float y, float sx, float w, float h)
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
    rectMode(CENTER);
    fill(0,255,0);
    rect(posX,posY,w,h);
  }
  
  void move()
  {
    posX += sx;
  }
  
  void bounce()
  {
    if(posX - w/2 <= 0 || posX + w/2 >=width)
      sx = -sx;
  }
  
  void run()
  {
    display();
    move();
    bounce();
  }


};
