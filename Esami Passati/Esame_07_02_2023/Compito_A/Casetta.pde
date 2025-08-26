class Casetta extends Casa{

  
  Casetta(float x, float y, float _vx)
  {
    super(x,y,_vx);
  }
  
  void display()
  {
    fill(0);
    stroke(255);
    strokeWeight(2);
    triangle(posX,posY,posX+30/2,posY-30/2,posX+30,posY);
    square(posX,posY,30);
    fill(255);
    rect(posX+26/2,posY+40/2,4,10);
  }
  
  void bounce()
  {
     if (posX < 0) {
    posX = width+30;    // riposiziona dentro il bordo sinistro
    vx *= -1;
    } else if (posX > width - 30) {
    posX = width - 30;  // riposiziona dentro il bordo destro
    vx *= -1;
  }
  
  }


};
