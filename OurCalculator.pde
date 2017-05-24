float answer; // Will hold previously computed answer.

void setup(){}
void draw(){}

//MATH FUNCTIONS BELOW
float add(float a, float b){
	return a+b;
}

float subtract(float a, float b){
	return a-b;
}

float multiply(float a, float b){
	return a*b;
}

float divide(float a, float b){
	if (b != 0) {
		return a/b;
	} else {
		throw new ArithmeticException("Cannot divide by zero");
}
