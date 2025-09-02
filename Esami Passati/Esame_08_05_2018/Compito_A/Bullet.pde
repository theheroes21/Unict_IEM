class Bullet
{
  float posX, posY, sy;
  
  Bullet(float x, float y, float sy)
  {
    this.posX = x;
    this.posY = y;
    this.sy = sy;
  }
  
  void display()
  {
    stroke(random(255),random(255),random(255));
    fill(200,255,0);
    circle(posX,posY,10);
  }
  
  void move()
  {
    posY -= sy;
  }
  
  void run()
  {
    display();
    move();
  }
  
};
