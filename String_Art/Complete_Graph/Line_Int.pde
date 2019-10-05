
float[] line_int(float a, float b, float c, float d, float p, float q, float r, float s) {
  float t = a-c;

  if (t == 0) {
    float u = p-r;
    if (u == 0) {
      return new float[] {-999999, -999999};
    }
    float g = (q-s)/u;
    float y = g*a+q-p*g;
    return new float[] {a, y};
  }

  float u = p-r;
  if (u == 0) {
    if ( t == 0) {
      return new float[] {-999999, -999999};
    }
    float m = (b-d)/t;
    float y = m * p + b - a * m;
    return new float[] {p, y};
  }

  float m = (b-d)/t;
  float g = (q-s)/u;
  if (m == g) {
    return new float[] {-999999, -999999};
  }    
  float x = (q-b+a*m-p*g)/(m-g);
  float y = m*(x-a)+b;

  return new float[] {x, y};
}
/*
float a1 = 0;
float b1 = 5;
float c1 = 10;
float d1 = 5;
float p1 = 5;
float q1 = 0;
float r1 = 5;
float s1 = 10;
*/
