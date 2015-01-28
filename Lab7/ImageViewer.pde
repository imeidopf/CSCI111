class ImageViewer
{
  PImage img;
  int x;
  int y;
  int xpos;
  int ypos;
  float r;
  float zm;

  ImageViewer(String f)
  {
    x = 0;
    y = 0;
    xpos = 0;
    ypos = 0;
    r = 0.0;
    zm = 1;
    imageMode(CENTER);
    img = loadImage("img.jpg");
  }

  void draw()
  {
    translate(xpos, ypos);
    translate(width/2, height/2);
    rotate(r);
    scale(zm);
    image(img, x, y, 640, 400);
  }

  void rotateLeft()
  {
    r -= 0.1;
  }

  void rotateRight()
  {
    r += 0.1;
  }

  void zoom(float e)
  {
    zm += e/50;
  }

  void drag(int cx, int cy)
  {
    xpos += cx;
    ypos += cy;
  }

  void reset()
  {
    xpos = 0;
    ypos = 0;
    r = 0.0;
    zm = 1;
  }
}

