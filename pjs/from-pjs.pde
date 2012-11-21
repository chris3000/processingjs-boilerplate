JavaScript js;

interface JavaScript {
     void showXYCoordinates(int x, int y);
}

void bindJavascript(JavaScript _js) {
     js = _js;
}

void setup(){
    size(640,480);
    background(0);
    println("setup");
}

void draw(){
    background(128,128,0);
    ellipse(mouseX, mouseY, 20, 20);
}

void mouseMoved(){
    if(js != null){
        js.showXYCoordinates(mouseX, mouseY);
    }
}