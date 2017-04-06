/* 
  @autor: itaoadler 2017
  @simple editor of movies.
*/

import processing.video.*;

Movie movie;

void setup() {
  size(854, 480);
  movie = new Movie(this, "filme.mov");
  movie.loop();
}

void draw() {
  image(movie, 0, 0);
  saveFrame("saved/#########.png");
}

void movieEvent(Movie m) {
  m.read();
}
