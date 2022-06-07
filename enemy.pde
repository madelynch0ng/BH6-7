class EnemyA extends GameObject {
  int Ecooldown, Ethreshold;

  EnemyA() {
    super(random(width), -20, 0, 3, 40, yellow2, 1);
    Ecooldown = 90;
    Ethreshold = Ecooldown;
  }

  void act() {
    super.act();
  

    
     // managing guns
    Ecooldown++;
    if ( Ecooldown>= Ethreshold) {
    //shoot
    objects.add(new EnemyBullet(x, y, 0, 10));
    objects.add(new EnemyBullet(x, y, 10, 0));
    objects.add(new EnemyBullet(x, y, 0, -10));
    objects.add(new EnemyBullet(x, y, -10, 0));
      Ecooldown = 0;
    }
  

  //collisions
  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i); 
    if (obj instanceof Bullet) {
      if (collidingWith(obj)) {
        lives--;
      }
    }
    i++;
  }
  if (offScreen()) lives = 0;
}

//if (lives==0){
//   explodes = new Explode[n];
//}
}
