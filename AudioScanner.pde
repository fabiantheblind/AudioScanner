// simple sketch that creates a sort of scanner

//These are unused but got to have if you want to see the 
//simple code where it comes from in the draw
//int x = 0;
int step = 100; // step is just used to for the circles in the background
//int radius = 300;
//float off = .0;

//Create some new scanners
ScannPoint scanner;
ScannPoint another_scanner;
// we also can have a list of scanners
ArrayList <ScannPoint> scanns;

void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100); // because HSB is cooler
  scanns = new ArrayList<ScannPoint>(); // init the list

  
  // ScannPoint(float _radius, color _c, float _w, float _amount, float _x)
  // radius is the radius of the orbit
  // color is the color of the ellipse
  // w is the width of the ellipse
  // amount is the amount the ellipse can differ from its orbit
  // x is the starting point of the ellipse

  scanner = new ScannPoint(300, color(162, 90, 90), 5, 100, 90);
  another_scanner = new ScannPoint(305, color(162, 90, 90), 5, 100, 90);
  
  // fill the list with new scan points
  for(int i = 100; i < 300; i+=5){
    scanns.add(new ScannPoint(i, color(160, 90, 90), 5, 10, 90));
  }
}
void draw() {

  bg_and_ranges(); // clear the bg and draw the circles
  for(int i = 0; i < scanns.size();i++){
    scanns.get(i).run();
  
  }
    scanner.run(); // run one scanner  
  another_scanner.run(); // run another

  
  // this is the origianl code where it came from
  //  off+=.01;
  //  x++;
  //  pushMatrix();
  //  translate(width/2, height/2);// bring zero point to the center 
  //  float n = noise(off) * 100;
  //  float px = sin(radians(x%360))*(radius + n); 
  //  float py = cos(radians(x%360))*(radius + n);
  //  fill(162, 90, 90);
  //  ellipse (px, py, 5, 5 );
  //  popMatrix();
}

