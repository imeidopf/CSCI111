Ball b1;
Ball b2;
Ball b3;
Ball b4;
Ball b5;
Paddle p1;


void setup()
{
  size(800, 400);
  b1 = new Ball();
  b2 = new Ball();
  b3 = new Ball();
  b4 = new Ball();
  b5 = new Ball();
  p1 = new Paddle();
}

void draw()
{
  background(0);
  fill(255);
  rect(300, 50, 25, 75);
  rect(500, 140, 100, 30);
  rect(250, 275, 60, 50);
  p1.draw();
  b1.update();
  b1.draw();
  b2.update();
  b2.draw();
  b3.update();
  b3.draw();
  b4.update();
  b4.draw();
  b5.update();
  b5.draw();
}

