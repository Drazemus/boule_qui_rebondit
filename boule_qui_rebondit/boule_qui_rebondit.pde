int x;
int y;
int depx;
int depy;
int depRecx;

color cl = color(0,0,255);
int x1;
int y1;

void setup() {
  size(400,400);
  background(0);
  fill(0,255,0);
  x=50;
  y=100;
  depx=1;
  depy=1;
  depRecx=200-20;
  ellipse(x,y,20,20);
}

void draw() {
  rectMode(CENTER);
  fill(0);
  rect(mouseX+40,385,500,10);
  rectMode(CORNER);
  fill(0,0,255);
  rect(mouseX,380,80,10);
  if ((x>390) || (x<10)){
    depx=-depx;
  }
  if (y<10){
    depy=-depy;
  }
  fill(x,y,y);
  ellipse(x,y,20,20);
  x=x+2*depx;
  y=y+2*depy;
  
  x1=x;
  y1=y+11;
  
  if (cl==color(get(x1,y1))){
    depy=depy-1;
  }
  
  if (y>390){
    depy=0;
    y=390;
    depx=0;
    textSize(32);
    fill(255);
    text("PERDU",100,50);
  }
}