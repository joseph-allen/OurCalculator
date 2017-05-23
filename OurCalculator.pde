float answer; // Will hold previously computed answer.

float aD = 5; //floats for divide
float bD = 0;

float aM = 5;//floats for multiply
float bM = 5;

float aA = 5;//floats for add
float bA = 5;

void setup(){}

void draw(){
 if(aD = 0 || bD == 0)
 {
   background(255,0,0);
 }
}

//Issue 1 Write Add function BELOW+++++++++++++++++++++++++++++++++++++++++++++++++
float add(float aA, float bA) {
	return aA + bA;
}
//Issue 1---------------------------------------------------------------------------

//Issue 2 Write Multiply function BELOW+++++++++++++++++++++++++++++++++++++++++++++++++
float multiply(float aM, float bM){
  return aM*bM;
}
//Issue 2---------------------------------------------------------------------------

//Issue 3 Write Divide function BELOW+++++++++++++++++++++++++++++++++++++++++++++++++
float divide(float aD, float bD){
  return aD/bD;
}
//Issue 2---------------------------------------------------------------------------
