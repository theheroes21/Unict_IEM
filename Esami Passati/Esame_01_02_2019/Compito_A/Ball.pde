class Ball
{
  float posX, posY, r, sy;
  
  Ball(float x, float y, float r, float sy)
  {
    this.posX = x;
    this.posY = y;
    this.r = r;
    this.sy = sy;
  }
  
  void display()
  {
    noStroke();
    fill(255,0,0);
    circle(posX,posY,r*2);
  }
  
  void move()
  {
    posY += sy;
  }
  
  void bounce()
  {
    if(posY < r || posY>height-r)
    {
      sy = -sy;
    }
  }
  
  void run()
  {
    display();
    move();
    bounce();
  }
};
