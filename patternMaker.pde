PVector winSize = new PVector(1600, 1000);  // アプリケーションのウィンドサイズ

int mode;  // 表示モード

Camera camera;
Light  light;
Plane  plane;
PVector objPos;
float objRotX, objRotY, objRotZ;

void setup() {
  size((int)winSize.x, (int)winSize.y, P3D);
  
  // 表示モード
  //   ライト設定、建物のストロークあり・なし
  mode = 0;
  
  camera = new Camera();
  light = new Light();
  plane = new Plane();

  objPos = new PVector(0, 0, 0);
  objRotX = 0;
  objRotY = 0;
  objRotZ = 0;
}

void draw() {
  background(128, 255, 255);
  camera.update();
  light.update();

  pushMatrix();
  translate(objPos.x, objPos.y, objPos.z);
  rotateX(objRotX);
  rotateY(objRotY);
  rotateZ(objRotZ);

  plane.update();

  popMatrix();
}

