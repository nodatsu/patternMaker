void mouseDragged()
{
  // マウスの前位置と現在位置の差から移動、回転を決定
  if (mouseButton == LEFT) {
    // オブジェクトの位置移動(X, Y方向)
    objPos.x += mouseX - pmouseX;
    objPos.y += mouseY - pmouseY;
  } else {
    // オブジェクトの回転(X, Y, Z方向)
    if (keyPressed && keyCode == SHIFT) {
      objRotY += PI * (mouseX - pmouseX) / max(width, height);
    } else {
      objRotZ -= PI * (mouseX - pmouseX) / max(width, height);
      objRotX -= PI * (mouseY - pmouseY) / max(width, height);
    }
  }
}

void mouseWheel(MouseEvent ev) {
//  float e = ev.getCount();
//  println(e);
  if (ev.getCount() > 0) {
    // オブジェクトの位置移動(Z方向)
    objPos.z += 500;
  } else {
    // オブジェクトの位置移動(Z方向)
    objPos.z -= 500;
  }
}

