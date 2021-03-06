class Spirograph
{
  int[] values;
  int  centerX, centerY, fitness;

  Spirograph(){
    values = new int[13];
    for(int i = 0; i < values.length; i++) values[i] = (int)random(0, 600); 
    centerX = width/2;
    centerY = height/2;
  }
  
  Spirograph(int[] values){
    this.values = values;
    centerX = width/2;
    centerY = height/2;
  }

  void display(){
    background(values[0],values[1],values[2]);
    int a = values[3]; 
    int b = values[4]; 
    int h = values[5]; 
    int hue = values[6]; 
    int sat = values[7]; 
    int bright = values[8]; 
    int za = values[9];
    int zb = values[10];
    int oza = values[11];
    int ozb = values[12];

    for (int i=1; i<361; i+=1) {
      float t = radians(i);
      float oldt = radians(i-1);
      float oxpos = (a-b)*cos(a*oldt)+h*cos(a*oldt) + oza - ozb;
      float oypos = (a-b)*sin(a*oldt)+h*sin(a*oldt) + oza - ozb;    
      float xpos = (a-b)*cos(t)+h*cos(a*t) + za - zb;
      float ypos = (a-b)*sin(t)+h*sin(a*t) + za - zb;
      stroke(hue, sat, bright);
      line(centerX+oxpos, centerY+oypos, centerX+xpos, centerY+ypos);
    }
  }
}