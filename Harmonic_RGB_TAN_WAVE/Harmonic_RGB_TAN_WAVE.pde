float ypos = 0;

int time = 0;



void setup() {

  fullScreen();

  noStroke();

}

 

void draw() {

  background(0);

  for (float i = 0; i < 150; i += 2) {

    time ++;

    ypos = tan(radians((i+10)*time/8000))*200+256;
    
    colorMode(HSB);

    fill((time + i*100)/40 % 330+10, 255, 255);

    ellipse(16*(i-1), height/4+ypos, 16, 16);

  }
  for (float j = 1; j < 150; j += 2) {

    time ++;

    ypos = tan(radians((j+10)*time/8000))*-200+256;
    
    colorMode(HSB);

    fill((time + j*100)/40 % 330+10, 255, 255);

    ellipse(16*(j-1), height/4+ypos, 16, 16);

  }
}