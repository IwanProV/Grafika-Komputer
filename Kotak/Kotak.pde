float a;                 // Sudut rotasi
float offset = PI/24.0;  // Selisih sudut antara kotak-kotak
int num = 12;            // Jumlah kotak

void setup() { 
  size(640, 360, P3D);
  noStroke();  
} 

void draw() {
  lights();
  
  background(0, 0, 26);
  translate(width/2, height/2); 
  
  for(int i = 0; i < num; i++) {
    float gradient = map(i, 0, num-1, 0, 1); // Gradient berdasarkan indeks
    
    pushMatrix();
    float hue = map(gradient, 0, 1, 0, 255); // Nilai hue berdasarkan gradient
    float saturation = 255; // Saturasi tetap maksimal
    float brightness = 255; // Kecerahan tetap maksimal
    fill(hue, saturation, brightness, 150); // Warna dengan transparansi
    
    // Rotasi dengan kecepatan berbeda berdasarkan gradient
    rotateY(a + offset*i * 1.5 * gradient); 
    rotateX(a/2 + offset*i * 1.5 * gradient); 
    
    box(100); // Ukuran kotak
    popMatrix();
    
    a += 0.01 * (1 + gradient); // Percepatan rotasi berdasarkan gradient
  }
}
