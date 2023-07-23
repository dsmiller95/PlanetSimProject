
PVector planetAPosition;
PVector planetAVelocity;

PVector planetBPosition;
PVector planetBVelocity;

float GConst = 10;


  
void setup() {
  size(640, 360);
  var screenSizeVector = new PVector(width, height);
  
  var center = PVector.div(screenSizeVector, 2);
  
  planetAPosition = new PVector(100, 2).add(center);
  planetAVelocity = new PVector(-1, 0.5);
  
  planetBPosition = new PVector(-40, 30).add(center);
  planetBVelocity = new PVector(0.5, -1);
}



void draw() {
  background(0);
  
  circle(planetAPosition.x, planetAPosition.y, 10);
  circle(planetBPosition.x, planetBPosition.y, 10);
  
  planetAPosition = PVector.add(planetAPosition, planetAVelocity);
  planetBPosition = PVector.add(planetBPosition, planetBVelocity);
  
  
  var accelerationOnPlanetA = computeGravitationalAccelleration(planetAPosition, planetBPosition, 10, 10);
  planetAVelocity = PVector.add(planetAVelocity, accelerationOnPlanetA);
  
  var accelerationOnPlanetB = computeGravitationalAccelleration(planetBPosition, planetAPosition, 10, 10);
  planetBVelocity = PVector.add(planetBVelocity, accelerationOnPlanetB); 
}

PVector computeGravitationalAccelleration(PVector rootPosition, PVector pullingPosition, float rootMass, float pullingMass){
  var directional = PVector.sub(pullingPosition, rootPosition);
  var distance = directional.mag();
  var force = (GConst * rootMass * pullingMass) / (distance * distance);
  var acceleration = force / rootMass;
  
  
  var directionalNormalized = PVector.sub(pullingPosition, rootPosition).normalize();
  return directionalNormalized.setMag(acceleration);
}
