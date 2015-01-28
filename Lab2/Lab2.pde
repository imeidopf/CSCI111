//Used Source
//Background Image: http://farm4.staticflickr.com/3238/3056041922_7acd3917ae_z.jpg
//Audio Clip: http://www.flashkit.com/soundfx/Nature/Storm/Lightnin-Dylan_Hi-8584/index.php
//Lightning PNGs: http://svn.gna.org/svn/wesnoth/branches/1.4/data/core/images/halo/

//Variables

import ddf.minim.*;

AudioPlayer alert;
Minim minim;

PImage bg, l1, l2;
PFont f;
int catx1 = -100;
int caty1 = -100;
int catx2 = -100;
int caty2 = -100;
int dogx1 = 320;
int dogy1 = 320;
int dogx2 = -100;
int dogy2 = -100;

void setup()
{
  size(640, 640);
  frameRate(60);
  smooth();
  bg = loadImage("imgs/storm.jpg");
  l1 = loadImage("imgs/light1.png");
  l2 = loadImage("imgs/light2.png");
  f = loadFont("SegUI20.vlw");

  minim = new Minim(this);
  alert = minim.loadFile("thunder.wav", 2048);
}

void draw()
{
  background(bg);

  //Cat #1
  noStroke();
  fill(75, 75, 75);
  rect(catx1-45, caty1+15, 8, 25);
  rect(catx1-35, caty1+12, 8, 25);
  rect(catx1+30, caty1+12, 8, 25);
  rect(catx1+20, caty1+15, 8, 25);
  fill(50, 50, 50);
  ellipse(catx1-5, caty1+5, 100, 50);
  ellipse(catx1+40, caty1-10, 40, 40);
  triangle(catx1+25, caty1-40, catx1+28, caty1-25, catx1+37, caty1-28);
  triangle(catx1+41, caty1-40, catx1+41, caty1-24, catx1+50, caty1-27);
  fill(255);
  ellipse(catx1 + 35, caty1 - 15, 9, 9);
  ellipse(catx1 + 45, caty1 - 15, 9, 9);
  fill(115, 180, 65);
  ellipse(catx1 + 35, caty1 - 15, 5, 5);
  ellipse(catx1 + 45, caty1 - 15, 5, 5);
  stroke(255);
  line(catx1 + 40, caty1 - 5, catx1 + 30, caty1 - 1);
  line(catx1 + 40, caty1 - 5, catx1 + 30, caty1 - 5);
  line(catx1 + 40, caty1 - 5, catx1 + 30, caty1 - 9);
  line(catx1 + 40, caty1 - 5, catx1 + 50, caty1 - 1);
  line(catx1 + 40, caty1 - 5, catx1 + 50, caty1 - 5);
  line(catx1 + 40, caty1 - 5, catx1 + 50, caty1 - 9);
  catx1 = catx1 + 5;
  catx1 = catx1 % 750;
  caty1 = caty1 + 9;
  caty1 = caty1 % 750;

  //Cat #2
  noStroke();
  fill(225);
  rect(catx2-45, caty2+15, 8, 25);
  rect(catx2-35, caty2+12, 8, 25);
  rect(catx2+30, caty2+12, 8, 25);
  rect(catx2+20, caty2+15, 8, 25);
  fill(225);
  ellipse(catx2-5, caty2+5, 100, 50);
  ellipse(catx2+40, caty2-10, 40, 40);
  triangle(catx2+25, caty2-40, catx2+28, caty2-25, catx2+37, caty2-28);
  triangle(catx2+41, caty2-40, catx2+41, caty2-24, catx2+50, caty2-27);
  fill(255);
  ellipse(catx2 + 35, caty2 - 15, 9, 9);
  ellipse(catx2 + 45, caty2 - 15, 9, 9);
  fill(115, 180, 65);
  ellipse(catx2 + 35, caty2 - 15, 5, 5);
  ellipse(catx2 + 45, caty2 - 15, 5, 5);
  stroke(255);
  line(catx2 + 40, caty2 - 5, catx2 + 30, caty2 - 1);
  line(catx2 + 40, caty2 - 5, catx2 + 30, caty2 - 5);
  line(catx2 + 40, caty2 - 5, catx2 + 30, caty2 - 9);
  line(catx2 + 40, caty2 - 5, catx2 + 50, caty2 - 1);
  line(catx2 + 40, caty2 - 5, catx2 + 50, caty2 - 5);
  line(catx2 + 40, caty2 - 5, catx2 + 50, caty2 - 9);
  catx2 = catx2 + 13;
  catx2 = catx2 % 750;
  caty2 = caty2 + 16;
  caty2 = caty2 % 750;

  //Dog #1
  noFill();
  stroke(245, 180, 80);
  arc(dogx1 + 30, dogy1 + 23, 50, 50, -1.25, 0);
  arc(dogx1 + 31, dogy1 + 23, 50, 50, -1.25, 0);
  arc(dogx1 + 32, dogy1 + 23, 50, 50, -1.25, 0);
  noStroke();
  fill(240, 215, 120);
  rect(dogx1 - 45, dogy1 + 15, 8, 25);
  rect(dogx1 - 35, dogy1 + 12, 8, 25);
  rect(dogx1 + 30, dogy1 + 12, 8, 25);
  rect(dogx1 + 20, dogy1 + 15, 8, 25);
  fill(245, 180, 80);
  ellipse(dogx1 - 5, dogy1 + 5, 100, 50);
  stroke(240, 215, 120);
  ellipse(dogx1 - 50, dogy1 - 10, 40, 40);
  fill(255);
  ellipse(dogx1 - 55, dogy1 - 15, 9, 9);
  ellipse(dogx1 - 45, dogy1 - 15, 9, 9);
  fill(50);
  ellipse(dogx1 - 55, dogy1 - 15, 5, 5);
  ellipse(dogx1 - 45, dogy1 - 15, 5, 5);
  fill(250, 115, 190);
  stroke(250, 115, 190);
  arc(dogx1 - 50, dogy1 + 3, 10, 25, 0, PI, CHORD);
  dogx1 = dogx1 + 14;
  dogx1 = dogx1 % 750;
  dogy1 = dogy1 + 25;
  dogy1 = dogy1 % 750;

  //Dog #2
  noFill();
  stroke(135, 70, 40);
  arc(dogx2 + 30, dogy2 + 23, 50, 50, -1.25, 0);
  arc(dogx2 + 31, dogy2 + 23, 50, 50, -1.25, 0);
  arc(dogx2 + 32, dogy2 + 23, 50, 50, -1.25, 0);
  noStroke();
  fill(135, 70, 40);
  rect(dogx2 - 45, dogy2 + 15, 8, 25);
  rect(dogx2 - 35, dogy2 + 12, 8, 25);
  rect(dogx2 + 30, dogy2 + 12, 8, 25);
  rect(dogx2 + 20, dogy2 + 15, 8, 25);
  fill(82, 51, 37);
  ellipse(dogx2 - 5, dogy2 + 5, 100, 50);
  stroke(167, 81, 44);
  ellipse(dogx2 - 50, dogy2 - 10, 40, 40);
  fill(255);
  noStroke();
  ellipse(dogx2 - 55, dogy2 - 15, 9, 9);
  ellipse(dogx2 - 45, dogy2 - 15, 9, 9);
  fill(50);
  ellipse(dogx2 - 55, dogy2 - 15, 5, 5);
  ellipse(dogx2 - 45, dogy2 - 15, 5, 5);
  fill(250, 115, 190);
  stroke(250, 115, 190);
  arc(dogx2 - 50, dogy2 + 3, 10, 25, 0, PI, CHORD);
  dogx2 = dogx2 + 4;
  dogx2 = dogx2 % 750;
  dogy2 = dogy2 + 7;
  dogy2 = dogy2 % 750;

  //Text
  stroke(255);
  textFont(f, 20);
  fill(255, 0, 255);
  text("CLICK SOMEWHERE!", 450, 30);
}

void mousePressed()
{
  image(l1, 200, -25);
  image(l1, 175, 150);
  if (mousePressed) {
    alert.play();
    alert.rewind();
  }
}

void mouseReleased()
{
  image(l2, 200, -25);
}

