int number_of_shapes = int(random(40));
int[] rectSizes = new int[number_of_shapes];
int[] positionsX = new int[number_of_shapes];
int[] positionsY = new int[number_of_shapes];
float[] angles = new float[number_of_shapes];
int[] babiesPerElement = new int[number_of_shapes];

void setup() {
  fullScreen();

  // Instructs the squares to treat the x and y they receive as coordinates for their center not for the uper left corner
  rectMode(CENTER);

  stroke(random(255), random(255), random(255));
  strokeWeight(3);
  
  // Randomly generating positions, sizes, angles and baby elements count for each element
  for (int i = 0; i < number_of_shapes; i++) {
    positionsX[i] = int(random(0, width));
    positionsY[i] = int(random(0, height));
    rectSizes[i] = int(random(100, 200));
    angles[i] = 0;
    babiesPerElement[i] = int(random(10, 16));
  }
}

void draw() {
  background(0, 15, 30);

  // Keep drawing the elements slightly rotated each time by incrementing their anlge
  for (int i=0; i<number_of_shapes; i++) {
    drawSquare(positionsX[i], positionsY[i], rectSizes[i], angles[i], babiesPerElement[i]);
    angles[i] = angles[i] + 0.5;
  }
}

void drawSquare(int x, int y, int size, float angle, int babies) {

  // Set color mode to HSB
  colorMode(HSB, 360, 100, 100);

  // Create the element
  for (int k = 0; k < babies; k++) {
    
    // For each iteration keep creating smaller and smaller of the same element
    float babySquareSize = size / pow(1.2, k);

    
    pushMatrix(); // Isolate the current element to be drawn
    translate(x, y); // Translate to the position of the current square
    rotate(radians(angle * k)); // Rotate the square around itself

    // Set the fill color with varying hue but fixed saturation and brightness
    // That change with time to create a smooth transition between colors
    float hue = (frameCount * 0.5 + k * 30) % 360;
    fill(hue, 80, 80);

    // Other crazy way of coloring this thing
    // This one is cool but seizure inducing
      //fill(random(255),random(255),random(255));
    
    // Creates a smoothly changing angle for the sin function
    float sin_seed = radians((frameCount % 720)); 
    // Sin then returns a value between -1 and 1 which gets mapped between 0 and 100
    // Which will represent the amount of roundness added to our element
    float shape = map(sin(sin_seed), -1, 1, 0, 100);
    
    // Draw the rotated element
    rect(0, 0, babySquareSize, babySquareSize, shape);
    popMatrix();
  }
  
  // Reset color mode to RGB
  colorMode(RGB, 255);
}
