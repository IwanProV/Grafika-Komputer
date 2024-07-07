void setup() {
  size(800, 800);
  background(255);
}

void draw() {
  background(255);

  // Telinga kiri
  fill(200);
  pushMatrix();
  translate(300, 270);
  rotate(-PI/4);
  ellipse(0, 0, 105, 150);
  popMatrix();
  fill(9);
  pushMatrix();
  translate(303, 270);
  rotate(-PI/4);
  ellipse(0, 0, 78, 120);
  popMatrix();

  
  // Telinga kanan
  fill(200);
  pushMatrix();
  translate(500, 270);
  rotate(PI/4);
  ellipse(0, 0, 100, 150);
  popMatrix();
  fill(9);
  pushMatrix();
  translate(500, 270);
  rotate(PI/4);
  ellipse(0, 0, 78, 120);
  popMatrix();

  // Wajah
  fill(255, 200, 200);
  ellipse(400, 400, 300, 300);

  // Mata kiri
  fill(255);
  ellipse(340, 350, 50, 50);
  
  fill(0);
  ellipse(340, 350, 20, 20);

  // Mata kanan
  fill(255);
  ellipse(460, 350, 50, 50);

  fill(0);
  ellipse(460, 350, 20, 20);

  // Hidung
  fill(255, 150, 150);
  triangle(400, 380, 380, 420, 420, 420);

  // Mulut
  noFill();
  arc(390, 430, 20, 20, 0, PI);
  arc(410, 430, 20, 20, 0, PI);

  // Kumis kiri
  line(280, 400, 360, 410);
  line(280, 420, 360, 420);
  line(280, 440, 360, 430);

  // Kumis kanan
  line(520, 400, 440, 410);
  line(520, 420, 440, 420);
  line(520, 440, 440, 430);

  // Hentikan penggambaran setelah satu kali
  noLoop();
}
