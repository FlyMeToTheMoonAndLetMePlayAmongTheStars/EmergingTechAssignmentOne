void setup() {
  size(500, 500);
}

void draw() {
  background(#ffffff);

  // FACE
  pushMatrix();
  fill(#ffd700);
  strokeWeight(width/125+height/125);
  ellipse(width/2, height/2, width/2, height/2);
  popMatrix();

  // EYES
  pushMatrix();
  int offset = 32;
  //int offset = width/32+height/32; // ~32
  //int eyeWidth = 4;
  int eyeHeight = 64;
  //int eyeHeight = height/8; // ~64  
  line(width/2-offset, height/2-offset-eyeHeight/2, width/2-offset, height/2+offset-eyeHeight/2);
  line(width/2+offset, height/2-offset-eyeHeight/2, width/2+offset, height/2+offset-eyeHeight/2);  

  //rectMode(CENTER);
  //rect(width/2-offset,height/2-offset,eyeWidth,eyeHeight);
  //ellipse(width/2-offset,height/2-offset-eyeHeight/2,eyeWidth,eyeWidth);
  //ellipse(width/2-offset,height/2+offset-eyeHeight/2,eyeWidth,eyeWidth);

  //rectMode(CENTER);
  //rect(width/2+offset,height/2-offset,eyeWidth,eyeHeight);
  //ellipse(width/2+offset,height/2-offset-eyeHeight/2,eyeWidth,eyeWidth);
  //ellipse(width/2+offset,height/2+offset-eyeHeight/2,eyeWidth,eyeWidth);
  popMatrix();

  // MOUTH

  //pushMatrix();
  //if (mouseY < height/3){
  //  noFill();
  //  bezier(width/2-60,height/2+40,width/2-30,height/2+80,width/2+30,height/2+80,width/2+60,height/2+40); 
  //} else if (mouseY > height/3 && mouseY < height/1.5){
  //  noFill();
  //  line(width/2-60,310,width/2+60,310);
  //} else {
  //  noFill();
  //  bezier(width/2-60,height/2+80,width/2-30,height/2+40,width/2+30,height/2+40,width/2+60,height/2+80);
  //}
  //popMatrix();

  pushMatrix();
  if (frameCount > 0 && frameCount < 180) {
    noFill();
    bezier(width/2-60, height/2+40, width/2-30, height/2+80, width/2+30, height/2+80, width/2+60, height/2+40);
  } else if (frameCount > 180 && frameCount < 360) {
    noFill();
    line(width/2-60, 310, width/2+60, 310);
  } else if (frameCount > 360) {
    noFill();
    bezier(width/2-60, height/2+80, width/2-30, height/2+40, width/2+30, height/2+40, width/2+60, height/2+80);
  }
  popMatrix();

  // UNUSED/REFERENCE
  //pushMatrix();
  //int arcWidth = 30;
  //int arcHeight = arcWidth;
  //int tearHeight = arcWidth * 2;

  //strokeWeight(2);
  //noFill();

  //for (int i = 0; i < 500; i += 50){
  //  line(i-arcWidth/2, tearHeight, i, 10);
  //  line(i+arcWidth/2, tearHeight, i, 10);
  //  arc(i, tearHeight, arcWidth, arcHeight, 0, PI);
  //}
  ////line(width/2-arcWidth/2, tearHeight, width/2, 10);
  ////line(width/2+arcWidth/2, tearHeight, width/2, 10);
  ////arc(width/2, tearHeight, arcWidth, arcHeight, 0, PI);
  //popMatrix();

  //for (int i = 0; i < 500; i += 50){
  //  line(0, i, 500, i);
  //  line(i,0, i, 500);
  //}
}
