//assignment7_ajhoward.pde
//Andrew Howard
//2014-12-09
//A very simplistic 3D scene with a rotating square, cube, and sphere.
//Was originally going to be a port of assignment 03b.

float x, y, z; //current point?

void setup()
{
	size(500, 500, P3D);
	background(0);
	
	x=width/2; y=width/2; z=0;
}


void draw()
{
	background(0);
	
	
	camera(50, 25, 120, 
		x, 500, 0,
		0, 1, 0);
	
	
	lights();
	
	//Draw floor?
	pushMatrix();
	translate(x,500,z);
	rectMode(CENTER);
	fill(123, 234, 101);
	stroke(120);
	scale(5);
	rotateX(90);
	rotateZ(frameCount/100);
	rect(0, 0, 100, 100);
	popMatrix();
	
	//draw a box
	pushMatrix();
	translate(0, 460, 0);
	rotateZ(frameCount/10);
	fill(200,0,0);
	box(40);
	popMatrix();
	
	//draw a sphere
	pushMatrix();
	rotateX(frameCount/200); //Odd how rotating the sphere also affects the light shining on it.
	translate(200, 400, 0);
	noStroke();
	fill(255);	
	sphere(10);
	popMatrix();
	
}