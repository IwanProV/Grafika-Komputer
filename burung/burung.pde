PImage img;
PImage[] bird = new PImage[14];
ArrayList<Bird> birds = new ArrayList<Bird>();
int numBirds = 3; // Jumlah burung yang akan dibuat
float birdScale = 0.2;  // Skala ukuran burung

void setup() {
  size(400, 400);
  smooth(2);
  img = loadImage("laut.gif"); 
  bird[0] = loadImage("frame_00_delay-0.1s.gif");
  bird[1] = loadImage("frame_01_delay-0.1s.gif");
  bird[2] = loadImage("frame_02_delay-0.1s.gif");
  bird[3] = loadImage("frame_03_delay-0.1s.gif");
  bird[4] = loadImage("frame_04_delay-0.1s.gif");
  bird[5] = loadImage("frame_05_delay-0.1s.gif");
  bird[6] = loadImage("frame_06_delay-0.1s.gif");
  bird[7] = loadImage("frame_07_delay-0.1s.gif");
  bird[8] = loadImage("frame_08_delay-0.1s.gif");
  bird[9] = loadImage("frame_09_delay-0.1s.gif");
  bird[10] = loadImage("frame_10_delay-0.1s.gif");
  bird[11] = loadImage("frame_11_delay-0.1s.gif");
  bird[12] = loadImage("frame_12_delay-0.1s.gif");
  bird[13] = loadImage("frame_13_delay-0.1s.gif");
  
  // Membuat banyak burung
  for (int i = 0; i < numBirds; i++) {
    birds.add(new Bird(random(width), random(height), bird, birdScale));
  }

  frameRate(10);
}

void draw() {
  image(img, 0, 0, width, height);

  // Update dan gambar setiap burung
  for (int i = birds.size() - 1; i >= 0; i--) {
    Bird b = birds.get(i);
    b.update();
    b.display();
    
    // Jika burung keluar dari layar, hapus dari daftar dan tambahkan burung baru
    if (b.isOutOfScreen()) {
      birds.remove(i);
      birds.add(new Bird(random(width), random(height), bird, birdScale));
    }
  }
}

// Kelas Bird untuk merepresentasikan burung
class Bird {
  float x, y;
  PImage[] birdImages;
  float scale;
  int direction;  // 1 untuk ke kanan, -1 untuk ke kiri
  float speed;

  Bird(float startX, float startY, PImage[] images, float s) {
    x = startX;
    y = startY;
    birdImages = images;
    scale = s;
    direction = random(1) > 0.5 ? 1 : -1;
    speed = random(5, 9);
  }

  void update() {
    x += speed * direction;
  }

  void display() {
    pushMatrix();
    translate(x, y);  // Terjemahkan posisi burung
    if (direction == -1) {  // Balik gambar burung jika arahnya ke kiri
      scale(-scale, scale);  // Skala negatif untuk membalik secara horizontal
      image(birdImages[frameCount % birdImages.length], -birdImages[frameCount % birdImages.length].width, 0);  // Atur posisi gambar
    } else {  // Gambar burung normal jika arahnya ke kanan
      scale(scale, scale);
      image(birdImages[frameCount % birdImages.length], 0, 0);
    }
    popMatrix();
  }

  boolean isOutOfScreen() {
    return (x > width || x < -birdImages[0].width * scale);
  }
}
