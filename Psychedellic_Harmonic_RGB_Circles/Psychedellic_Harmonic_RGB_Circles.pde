float ypos = 0;

float time = 5000000;



void setup() {

  fullScreen();

  noStroke();

}

 

void draw() {

  background(0);

  for (float i = 0; i < 600; i += 1) {

    time ++;
    
    colorMode(HSB);

    fill(abs((time + i*40)/80 % 330+10), 255, 255);

    ellipse(i*cos(time*i/1800000)+width/2, i*sin(time*i/1800000)+height/2, 8, 8);

  }
}
