int n = 16;
float time = 0;
void setup() {

  fullScreen();
  noFill();
  colorMode(HSB);
  smooth(8);
}

 

void draw() {

  background(0);
  smooth();

  for (float y = -400; y <= 400; y += n) {

    stroke(abs((time*3000+(y)*80)/1000 % 330+10), 255, 255,127);

    beginShape();
    
    for (float x = -400; x <= 400; x += n){ 
      float lx1 = x*sin(((4*time)/100)+y*PI/400)+width/2;
      float ly1 = y*sin(((3*time)/100)+x*PI/400)+height/2;
      curveVertex(lx1,ly1);
    }

    endShape();

  }
/*  for (float x = -400; x <= 400; x += n) {

    stroke(abs((time*5000+(x)*80)/1000 % 330+10), 255, 255, 100);

    beginShape();
    
    for (float y = -400; y <= 400; y += n){ 
      float lx1 = x*sin(((2*time)/100)+y*PI/400)+width/2;
      float ly1 = y*sin(((3*time)/100)+x*PI/400)+height/2;
      curveVertex(lx1,ly1);
    }

    endShape();

  }
  */
  time++;
}