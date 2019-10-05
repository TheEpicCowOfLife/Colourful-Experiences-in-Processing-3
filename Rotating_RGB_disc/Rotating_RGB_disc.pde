float time = 0;
void setup() {

  fullScreen();

  noStroke();

}

 

void draw() {

  background(0);

  for (float lat = 0; lat <= 800; lat += 16) {
    for (float lon = -0; lon <= 800; lon += 16){
      colorMode(HSB);
      fill(abs((time+(lon+lat)*80)/300 % 330+10), 255, 255);
      ellipse(lat*sin(((2*time)/300000)+lon*PI/400)+width/2,lat*sin(((3*time)/300000)+lon*PI/400)+height/2,8, 8);
      time ++;
    }
  }
}

//sqrt(160000-pow(lat,2))