void keyPressed() {
  if (key == 'q' && num_polygon_vertexes < 1000) {
    num_polygon_vertexes ++;
    polygon_vertex_change();
    if (mode == 1) {
      intercept_change();
    }
  } else {
    if (key == 'w' && num_polygon_vertexes > 3) {
      num_polygon_vertexes --;
      polygon_vertex_change();
      if (mode == 1) {
        intercept_change();
      }
    }
  }
  if (key == 'a') {
    k ++;
    if (mode == 1) {
      intercept_change();
    }
  }
  if (key == 's') {
    k --;
    if (mode == 1) {
      intercept_change();
    }
  }
  if (key == 'z') {
    mode = (mode+1) % 2;
    if (mode == 1) {
      intercept_change();
    }
  }
}