void setup()
{
  size(300, 300);
  rectMode(CENTER);
}

void draw()
{
  background(255);
  //f1();
  //f2();
  //f3();
  //f4();
  //f5();
}

void f1()
{
  translate(250, 250);
  rotate(PI/4);
  fill(0);
  rect(0, 0, 20, 100);
}

void f2()
{
  translate(270, 150);
  scale(2.0);
  fill(0);
  rect(0, 0, 20, 100);
}

void f3()
{
  translate(width/2, height/2);
  for (int i = 0; i < 5; i++)
  {
    pushMatrix();
    rotate(i * PI/2.5);
    translate(100, 0);
    fill(0);
    rect(0, 0, 20, 100);
    popMatrix();
  }
}

void f4()
{
  fill(0);
  translate(width/2, height/2);
  for (int i = 0; i < 100; i++)
  {
    pushMatrix();
    rotate(i*2*PI/20);
    translate(i*5, 0);
    rotate(-i*2*PI/20);
    scale(0.2);
    rect(0, 0, 20, 100);
    popMatrix();
  }
}

void f5()
{
  fill(0);
  translate(0, height/2);
  for (int i = 0; i < 10; i++)
  {
    pushMatrix();
    translate(i*35, 10);
    scale(i*0.15);
    rect(0, 0, 20, 100);
    popMatrix();
  }
}

