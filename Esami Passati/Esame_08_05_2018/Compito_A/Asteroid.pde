class Asteroid
{
  float posX, posY, sx, sy;
  boolean on = true;
  
  Asteroid(float x, float y, float sx, float sy)
  {
    this.posX = x;
    this.posY = y;
    this.sx = sx;
    this.sy = sy;
  }
  
  void display()
  {
    stroke(255,255,0);
    strokeWeight(5);
    if(on)
      fill(255,0,0);
    else
      fill(125);
      
    circle(posX,posY,50);
  }
  
  void move()
  {
    posX += sx;
    posY += sy;
    if(on == false)
      sy +=0.2;
  }
  
  void hit(Bullet b)
  {
    float d = dist(b.posX, b.posY, posX, posY);
    if(d < 25)
    {
      if(on)
        on = false;
    }
  }
  
  void run()
  {
    display();
    move();
  }
  

};
