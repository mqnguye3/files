/// @description Initialize Speed 
// You can write your code in this editor

//seperate total speed into the y and x vectors in order to accurately
//change image angle later on, and also the y speed due to gravity.
degrees = radtodeg(image_angle);
xSpeedArrow = cos(degrees) * speed;
ySpeedArrow = sin(degrees) * speed;
grav = 0.3;
maxRotation = 0;