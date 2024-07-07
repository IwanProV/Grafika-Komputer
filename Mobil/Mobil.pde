void setup() {
  size(900, 400);
}

void draw() {
  background(255);
  
  // Gambar badan mobil (body)
  fill(192, 192, 192); // Warna silver
  rect(270, 160, 127, 40, 0, 0, 8, 8); // body
  fill(192, 192, 192); // Warna silver
  rect(20, 160, 230, 40, 0, 0, 8, 8); // body
  
  // Kotak kepala
  fill(255, 0, 0); // Warna merah
  rect(310, 90, 80, 68, 0, 30, 0, 0); // kotak kepala
  
  // Kotak pintu sem
  fill(192); // Warna abu-abu
  rect(350, 104, 30, 48, 0, 30, 0, 0);   //kotak pintu sem
  
  // Kotak pintu kotak
  fill(192); // Warna abu-abu
  rect(318, 104, 20, 48);   //kotak pintu kotak
  
  // Kotak pintu kotak
  fill(192); // Warna abu-abu
  rect(278, 98, 8, 62);   //kotak pintu kotak
  
  // Gambar kontainer
  fill(0, 128, 0); // Warna hijau
  rect(25, 98, 212, 60); // kontainer
  
  // Teks "EVERGEEN"
  textSize(44);
  fill(255);
  text("EVERGEEN", 34, 140);
  
  // Pusat roda kiri depan
  float wheelCenterX1 = 45;
  float wheelCenterY = 203;
  
  // Pusat roda kanan depan
  float wheelCenterX2 = 220; 
  
  // Pusat roda kanan depan
  float wheelCenterX3 = 360;
  
  // Pusat roda kanan depan
  float wheelCenterX4 = 300;
  
  // Gambar roda kiri depan
  pushMatrix();
  translate(wheelCenterX1, wheelCenterY);
  rotate(radians(frameCount)); // Rotasi roda berdasarkan frameCount
  fill(0); // Warna hitam
  ellipse(0, 0, 40, 40); // Lingkaran untuk roda
  fill(200); // Warna abu-abu
  ellipse(0, 0, 20, 20); // Lingkaran untuk roda
  popMatrix();
  
  // Gambar roda kanan depan
  pushMatrix();
  translate(wheelCenterX2, wheelCenterY);
  rotate(radians(frameCount)); // Rotasi roda berdasarkan frameCount
  fill(0); // Warna hitam
  ellipse(0, 0, 40, 40); // Lingkaran untuk roda
  fill(200); // Warna abu-abu
  ellipse(0, 0, 20, 20); // Lingkaran untuk roda
  popMatrix();
  
  // Gambar roda kanan depan
  pushMatrix();
  translate(wheelCenterX3, wheelCenterY);
  rotate(radians(frameCount)); // Rotasi roda berdasarkan frameCount
  fill(0); // Warna hitam
  ellipse(0, 0, 40, 40); // Lingkaran untuk roda
  fill(200); // Warna abu-abu
  ellipse(0, 0, 20, 20); // Lingkaran untuk roda
  popMatrix();
  
  // Gambar roda kanan depan
  pushMatrix();
  translate(wheelCenterX4, wheelCenterY);
  rotate(radians(frameCount)); // Rotasi roda berdasarkan frameCount
  fill(0); // Warna hitam
  ellipse(0, 0, 40, 40); // Lingkaran untuk roda
  fill(200); // Warna abu-abu
  ellipse(0, 0, 20, 20); // Lingkaran untuk roda
  popMatrix();
}
