float ypos = 0;

int time = 0;

void setup() {

  fullScreen();

  noStroke();
  colorMode(HSB);
}

void draw() {

  background(0);

  for (float i = 0; i < 150; i += 2) {

    ypos = tan((i+10)*time/2000)*200+256;

    fill((time + i*100)/40 % 330+10, 255, 255);

    ellipse(16*(i-1), height/4+ypos, 16, 16);

  }
  for (float j = 1; j < 150; j += 2) {

    ypos = tan((j+10)*time/2000)*-200+256;

    fill((time + j*100)/40 % 330+10, 255, 255);

    ellipse(16*(j-1), height/4+ypos, 16, 16);

  }
  time ++;
}
