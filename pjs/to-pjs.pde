color c = color(255);
int ellipseSize = 20;
boolean isButtonDown = false;
void setup(){
    size(640,480);
    background(0);
    println("setup");
}

void draw(){
    background(128,128,0);
    fill (c);
    if (isButtonDown){
        randomizeSize();
    }
    ellipse(mouseX, mouseY, ellipseSize, ellipseSize);
}

void buttonDown(boolean down){
    isButtonDown = down;
}

void randomizeSize(){
    ellipseSize = random(5,50);
}

void setColor(int r, int g, int b){
    c = color(r,g,b);
}