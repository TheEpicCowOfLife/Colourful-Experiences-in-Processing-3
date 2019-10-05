int num_polygon_vertexes = 400;
float[][] polygon_vertexes = new float[1000][2];
float[][] intc = new float[500500][2];
int time = 0;
int mode = 0;
int k = 56;
float dmx;
float dmy;
float scaling = 100;


void setup() {
  //fullScreen();
  size(1024, 1024);
  colorMode(RGB);
  polygon_vertex_change();
  fill(255, 255, 255);
  stroke(255, 255, 255, 255);
  strokeWeight(1);
}




void polygon_vertex_change() {  
  //float[][] polygon_vertexes = new float[num_polygon_vertexes][2];

  for (int i = 0; i < num_polygon_vertexes; i ++) {
    polygon_vertexes[i][0] = sin((float(i)/num_polygon_vertexes)*TWO_PI)*300+width/2; 
    polygon_vertexes[i][1] = -cos((float(i)/num_polygon_vertexes)*TWO_PI)*300+height/2;
    //println(str(polygon_vertexes[i][0])+" "+str(polygon_vertexes[i][1]));
  }
}

void intercept_change() {
  int count = 0;
  for (int i = 0; i < num_polygon_vertexes; i ++) {
    float  x1 = polygon_vertexes[i][0];
    float  y1 = polygon_vertexes[i][1];
    float  x2 = polygon_vertexes[((i)*k) % (num_polygon_vertexes )][0];
    float  y2 = polygon_vertexes[((i)*k) % (num_polygon_vertexes )][1];
    for (int j = i+1; j < num_polygon_vertexes; j++) {
      float x3 = polygon_vertexes[j][0];
      float y3 = polygon_vertexes[j][1];
      float x4 = polygon_vertexes[((j)*k) % (num_polygon_vertexes )][0];
      float y4 = polygon_vertexes[((j)*k) % (num_polygon_vertexes )][1];
      float intercepts[] = line_int(x1, y1, x2, y2, x3, y3, x4, y4);
      intc[count] = intercepts;
      count ++;
      //println(count);
    }
  }
}

void mouseDragged(){
  dmx += mouseX-pmouseX;
  dmy += mouseY-pmouseY;
}
void mouseWheel(MouseEvent event) {
  scaling += event.getCount()*5;
}

void draw() {
  pushMatrix();

  translate(dmx,dmy);
  background(0);
  scale(scaling/100, scaling/100);
  
  if (mode == 2) {
    for (int i = 0; i < num_polygon_vertexes; i++) {
      int x1 = int(polygon_vertexes[i][0]);
      int y1 = int(polygon_vertexes[i][1]);
      for (int j = i+1; j < num_polygon_vertexes; j++) {
        int x2 = int(polygon_vertexes[(j)][0]);
        int y2 = int(polygon_vertexes[(j)][1]);
        line(x1, y1, x2, y2);
      }
    }
  }
  
  if (mode == 1) {
    for (int i = 0; i < (num_polygon_vertexes/2)*(num_polygon_vertexes+1); i ++) {
      point(intc[i][0], intc[i][1]);
    }
  }
  if (mode == 0) {
    for (int i = 0; i<num_polygon_vertexes; i++) {
      float x1 = polygon_vertexes[i][0];
      float y1 = polygon_vertexes[i][1];
      float x2 = polygon_vertexes[((i)*k) % (num_polygon_vertexes )][0];
      float y2 = polygon_vertexes[((i)*k) % (num_polygon_vertexes )][1];
      line(x1, y1, x2, y2);
      
    }
  }  

  time ++;
  popMatrix();
  text("Time: " + str(time), 0, 20);
  text("k: " + str(k), 0, 40);
  
}
