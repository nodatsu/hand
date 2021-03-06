// object position
float phi = 0.0;
float zoom = 1.0;
float shiftX = 0.0;
float shiftY = 0.0;

Hand leftHand;

void setup() {
  size(800, 600, P3D);
  
  leftHand = new Hand();
}

void draw() {
  background(0);

  // Camera  
  camera(200, -300, 500, 0, 0, 0, 0, 1, 0);  

  // Light
  pointLight(255, 255, 255, 0, -500, 0);
  ambientLight(128, 128, 128);

  // translate rotate and scale
  translate(shiftX, shiftY, 0);
  rotateY(phi);
  scale(zoom);

  // Ground
  fill(0, 255, 255, 64);
  box(500, 0, 500);
  
  // Left Hand
  leftHand.update();
}

