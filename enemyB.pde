class EnemyB extends GameObject {
  
    int Ecooldown, Ethreshold;

  EnemyB() {
    super(random(width), -20, 0, 3, 40, yellow2, 1);
        Ecooldown = 90;
    Ethreshold = Ecooldown;
  }

  void act() {
    super.act();

    //shoot
    
     Ecooldown++;
    if ( Ecooldown>= Ethreshold) {
    //shoot
       objects.add(new EnemyBullet(x, y, 1, 1));
      Ecooldown = 0;
    }
  
    objects.add(new EnemyBullet(x, y, x, y));
   
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
    if(offScreen()) lives = 0;
  }
}
