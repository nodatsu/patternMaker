PVector winSize = new PVector(800, 600);  // アプリケーションのウィンドサイズ

Camera camera;    // カメラ
Light  light;     // ライト
Plane  plane;     // 平面
PVector objPos;   // オブジェクトの位置
float objRotX, objRotY, objRotZ;  // オブジェクトの角度

void setup() {
  // アプリケーションの設定
  size((int)winSize.x, (int)winSize.y, P3D); // ウィンドサイズ
  
  // カメラの追加
  camera = new Camera();
  // ライトの追加
  light = new Light();
  // 地面の追加
  plane = new Plane();

  // オブジェクトの位置、角度
  objPos = new PVector(0, 0, 0);
  objRotX = 0;
  objRotY = 0;
  objRotZ = 0;
}

void draw() {
  background(128, 255, 255);

  // カメラの更新
  camera.update();

  // 光源の更新
  light.update();

  // オブジェクトの更新
  pushMatrix();
  translate(objPos.x, objPos.y, objPos.z);
  rotateX(objRotX);
  rotateY(objRotY);
  rotateZ(objRotZ);

  plane.update();

  popMatrix();
}

