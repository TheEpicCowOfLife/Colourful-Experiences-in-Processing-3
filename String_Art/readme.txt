This is easily the coolest one, despite its crippling lack of RGB.
400 dots (determined by num_polygon_vertices) are equally spaced around the circle, and are given labels from 0 to n-1 inclusive.
For every point i, a line is drawn between point i and point (i*k) mod 400 (or num_polygon_vertices)
Cool patterns await.

You can drag your mouse to pan and use the mouse wheel to scroll in/out

Use q and w to increment/decrement the number of points
a/s to increment/decrement k
and z to switch to a mode displaying every single intersection point between lines.
Warning: Your computer may or may not like trying to display ~80k dots. You may want to decrease the number of vertices.