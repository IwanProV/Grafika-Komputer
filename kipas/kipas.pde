void setup() {
  size(400, 400, P3D);
  background(255);
}

void draw() {
  background(255);
  
  // Pagar
  stroke(101); // Warna garis hitam untuk pagar
  line(0, 200, 400, 200); // Garis horizontal atas sebagai pagar
  line(0, 250, 400, 250); // Garis horizontal bawah sebagai pagar
  
  // Badan
  fill(176); // Warna abu-abu untuk badan
  rect(200, 70, 20, 240);
  
  // As tengah
  fill(0); // Warna hitam untuk as tengah
  ellipse(210, 78, 30, 30);
  
  // Teks
  fill(0, 200, 112, 216); // Warna teks (hijau kebiruan semi-transparan)
  textSize(30);
  text("GRAFIKA KOMPUTER 2D", 70, 233); // Teks berada di belakang badan (batang)
  
  // Baling-baling kiri bawah
  fill(176); // Warna abu-abu untuk baling-baling
  pushMatrix();
  translate(210, 78);
  rotate(radians(frameCount));
  triangle(0, 0, -100, 10, -40, -10);
  popMatrix();
  
  // Baling-baling kanan bawah
  pushMatrix();
  translate(210, 78);
  rotate(radians(frameCount + 120));
  triangle(0, 0, -100, 10, -40, -10);
  popMatrix();
  
  // Baling-baling kiri atas
  pushMatrix();
  translate(210, 78);
  rotate(radians(frameCount + 240));
  triangle(0, 0, -100, 10, -40, -10);
  popMatrix();
  
  // Baling-baling kanan atas
  pushMatrix();
  translate(210, 78);
  rotate(radians(frameCount + 360));
  triangle(0, 0, -100, 10, -40, -10);
  popMatrix();
  
  // Penutupan pagar
  fill(10); // Warna abu-abu untuk penutupan pagar
  triangle(120, 350, 210, 338, 344, 350);
  triangle(120, 360, 210, 353, 344, 360);
}
