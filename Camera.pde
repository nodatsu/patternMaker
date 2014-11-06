// カメラのクラス

class Camera {
  // カメラのパラメータ
  PVector cameraEye    = new PVector();  // カメラ位置
  PVector cameraCenter = new PVector();  // 視野中心
  PVector cameraUp     = new PVector();  // 上方向

  // コンストラクタ
  Camera() {
    this.reset();
  }

  // 更新
  void update() {
    // カメラの位置設定
    beginCamera();
    perspective(PI/3.0, width * 1.0/height, cameraEye.z/10.0, cameraEye.z*10.0);

    camera(cameraEye.x, cameraEye.y, cameraEye.z,
           cameraCenter.x, cameraCenter.y, cameraCenter.z,
           cameraUp.x, cameraUp.y, cameraUp.z);
    endCamera();
  }
  
  // リセット
  void reset()
  {
    // カメラの座標
    cameraEye.set(0, 0, 5000);
    cameraCenter.set(0, 0, 0);
    cameraUp.set(0, 1, 0);
  }
}
