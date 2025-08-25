class Carattere extends Keyboard
{
  float r,g,b;
  
  Carattere(char c, float posX, float posY, float size, float ys,float r, float g, float b)
  {
  super(c,posX,posY,size,ys);
  this.r = r;
  this.g = g;
  this.b = b;
  }
  
  void display()
  {
    fill(255);
    triangle(posX-10,posY-15, posX,posY-30, posX+10,posY-15);
    textSize(size);
    textAlign(CENTER, CENTER);
    fill(r,g,b);
    text(c,posX,posY);
  }
  
  void move()
  {
    posY -= ys;
  }
  
  void bounce()
  {
    if(posY < 0)
     posY = height;
  }
  
};
