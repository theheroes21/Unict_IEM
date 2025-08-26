class Casa{

  float  posX, posY, vx;
  
  Casa(float x, float y, float v_x)
  {
    this.posX = x;
    this.posY = y;
    this.vx = v_x;
  }
  
  void display()
  {
    fill(255,255,0);
    stroke(255);
    strokeWeight(2);
    triangle(posX,posY,posX+30/2,posY-30/2,posX+30,posY);
    square(posX,posY,30);
  }
  
  void move()
  {
    posX = posX + vx;
  }
  
  void bounce()
  {
     if (posX < 0) {
    posX = 30;    // riposiziona dentro il bordo sinistro
    vx *= -1;
    } else if (posX > width - 30) {
    posX = width - 30;  // riposiziona dentro il bordo destro
    vx *= -1;
  }
  }
  
  void run()
  {
    display();
    move();
    bounce();
  }
};
