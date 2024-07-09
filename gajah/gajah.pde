PImage img;
PImage[] elephant = new PImage[37]; 
ArrayList<Elephant> elephants = new ArrayList<Elephant>();
int numElephants = 3; 
float elephantScale = 0.2;  

void setup() {
  size(1000, 600);
  smooth();
  try {
    img = loadImage("pegunungan.jpg"); 
    if (img == null) {
      println("Background image failed to load");
    }

    for (int i = 0; i < 37; i++) {
      elephant[i] = loadImage("frame_" + nf(i, 2) + "_delay-0.02s.gif"); // Load elephant frames
      if (elephant[i] == null) {
        println("Elephant image " + i + " failed to load");
      }
    }

    for (int i = 0; i < numElephants; i++) {
      elephants.add(new Elephant(random(width), random(height * 0.75, height - 100), elephant, elephantScale));
    }

    frameRate(10);
  } catch (Exception e) {
    println("Exception during setup: " + e);
  }
}

void draw() {
  image(img, 0, 0, width, height);

  for (int i = elephants.size() - 1; i >= 0; i--) {
    Elephant e = elephants.get(i);
    e.update();
    e.display();
    if (e.isOffScreen()) {
      elephants.remove(i);
      elephants.add(new Elephant(random(width), random(height * 0.75, height - 100), elephant, elephantScale));
    }
  }
}

class Elephant {
  float x, y;
  PImage[] elephantImages;
  float scale;
  int direction;  
  float speed;

  Elephant(float startX, float startY, PImage[] images, float s) {
    x = startX;
    y = startY;
    elephantImages = images;
    scale = s;
    direction = random(1) > 0.5 ? 1 : -1;
    speed = random(2, 5);
  }

  void update() {
    x += speed * direction;
  }

  void display() {
    pushMatrix();
    translate(x, y);  
    if (direction == -1) {  
      scale(-scale, scale);  
      image(elephantImages[frameCount % 37], -elephantImages[frameCount % 37].width, 0);  
    } else {  
      scale(scale, scale);
      image(elephantImages[frameCount % 37], 0, 0);
    }
    popMatrix();
  }
  
  boolean isOffScreen() {
    return (direction == 1 && x > width) || (direction == -1 && x < -elephantImages[0].width * scale);
  }
}
