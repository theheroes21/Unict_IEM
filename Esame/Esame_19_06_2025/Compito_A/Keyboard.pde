class Keyboard
{
  char c;
  float posX, posY, size, ys;
  
  Keyboard(char c, float x, float y, float size, float ys)
  {
    this.c = c;
    this.posX = x;
    this.posY = y;
    this.size = size;
    this.ys = ys;
  }
  
  void display()
  {
    
    textSize(size);
    fill(255);
    text(c,posX,posY);
  }
  
  void move()
  {
    posY += ys;
  }
  
  void bounce()
  {
    if(posY > height || posY < 20)
    {
      ys = -ys;
    }
    
  }
  
  void run()
  {
    display();
    move();
    bounce();
  }

};
