

//You should implement your assign2 here.
final int Game_Start=0;
final int Game_Play=1;
final int Game_GG=2;

int Game_State;

boolean Up=false;
boolean Down=false;
boolean Left=false;
boolean Right=false;


PImage fighter;
PImage backgroungImg;
PImage backgroungImg1;


PImage enemy1;
PImage enemy2;
PImage enemy3;
PImage enemy4;
PImage enemy5;
PImage enemy6;
PImage enemy7;
PImage enemy8;
PImage enemy9;
PImage enemy10;
PImage enemy11;
PImage enemy12;
PImage enemy13;
PImage enemy14;
PImage enemy15;
PImage enemy16;
PImage enemy17;
PImage enemy18;


PImage hp;
PImage treasure;

PImage start1;
PImage start2;
PImage end1;
PImage end2;

int x;


int xe1;
int xe2;
int xe3;
int xe4;
int xe5;
int xe6;
int xe7;
int xe8;
int xe9;
int xe10;
int xe11;
int xe12;
int xe13;
int xe14;
int xe15;
int xe16;
int xe17;
int xe18;


int y;
int hpp;
int z; //treasure x
int x1;
int x2;
int EnemyY;

int fighterX;
int fighterY;
float fighterwidth;

float speed=5;
// new.






//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
void setup () {
  
  Game_State=Game_Start;
  EnemyY=floor(random(20,430));  
  hpp=97;
    
  y=floor(random(20,430));
  z=floor(random(20,400));
  size(640,480) ;  // must use this size.
  
  x1=1;
  x2=-639;
  
  
  start1=loadImage("start1.png");
  start2=loadImage("start2.png");
  end1=loadImage("end1.png");
  end2=loadImage("end2.png");
  
  backgroungImg=loadImage("bg1.png");
  backgroungImg1=loadImage("bg2.png");
  fighter=loadImage("fighter.png");
  
  
  enemy1=loadImage("enemy.png");
  enemy2=loadImage("enemy.png");
  enemy3=loadImage("enemy.png");
  enemy4=loadImage("enemy.png");
  enemy5=loadImage("enemy.png");
  enemy6=loadImage("enemy.png");
  enemy7=loadImage("enemy.png");
  enemy8=loadImage("enemy.png");
  enemy9=loadImage("enemy.png");
  enemy10=loadImage("enemy.png");
  enemy11=loadImage("enemy.png");
  enemy12=loadImage("enemy.png");
  enemy13=loadImage("enemy.png");
  enemy14=loadImage("enemy.png");
  enemy15=loadImage("enemy.png");
  enemy16=loadImage("enemy.png");
  enemy17=loadImage("enemy.png");
  enemy18=loadImage("enemy.png");
  
  
  hp=loadImage("hp.png");
  treasure=loadImage("treasure.png");
  // your code
  start1=loadImage("start1.png");
  start2=loadImage("start2.png");
  end1=loadImage("end1.png");
  end2=loadImage("end2.png");
  
  
  xe1=0;//0
  xe2=0;//
  xe3=0;//
  xe4=0;//
  xe5=0;//
  
  xe6=-640;//-640
  xe7=-670;//-20
  xe8=-700;//-40
  xe9=-730;//-60
  xe10=-760;//-80
                 //-1280
  xe11=-1280;//0
  xe12=-1250;//+20
  xe13=-1220;//+40
  xe14=-1250;//+20
  
  xe15=-1280;//0
  xe16=-1310;//-20
  xe17=-1340;//-40
  xe18=-1310;//-20
  
  
  
  
  fighterX=550;
  fighterY=240;
  fighterwidth=61;
  
  
}
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
void draw() {
  
  
  
  

     image(start2,0,0);  
     switch(Game_State){
     case Game_Start:
    
     if(mouseX>200&&mouseX<460&&mouseY>375&&mouseY<420){
      
     if (mousePressed){
     Game_State=Game_Play;
     }else{  
     noStroke();
     image(start1,0,0);}      
     }
     break;

  
    case Game_Play:
    
    
    if(xe17==640){
      xe1=0;//0
  xe2=0;//
  xe3=0;//
  xe4=0;//
  xe5=0;//
  
  xe6=-640;//-640
  xe7=-670;//-20
  xe8=-700;//-40
  xe9=-730;//-60
  xe10=-750;//-80
                 //-1280
  xe11=-1280;//0
  xe12=-1240;//+20
  xe13=-1200;//+40
  xe14=-1240;//+20
  
  xe15=-1280;//0
  xe16=-1320;//-20
  xe17=-1360;//-40
  xe18=-1320;//-20
    }
    if(x2==639){
       x2=-639;
    }
    
    if(x1==639){
    x1=-639;
    }
    
    image(backgroungImg,x2=x2+1,0);    
    image(backgroungImg1,x1=x1+1,0);     
    
    image(enemy1,xe1=xe1+4,100);
    image(enemy2,xe2=xe2+4,170);
    image(enemy3,xe3=xe3+4,240);
    image(enemy4,xe4=xe4+4,310);
    image(enemy5,xe5=xe5+4,380);
    
    image(enemy6,xe6=xe6+4,100);
    image(enemy7,xe7=xe7+4,170);
    image(enemy8,xe8=xe8+4,240);
    image(enemy9,xe9=xe9+4,310);
    image(enemy10,xe10=xe10+4,380);
    
    image(enemy11,xe11=xe11+4,180);
    image(enemy12,xe12=xe12+4,220);
    image(enemy13,xe13=xe13+4,260);
    image(enemy14,xe14=xe14+4,300);
    
    image(enemy15,xe15=xe15+4,340);
    image(enemy16,xe16=xe16+4,300);
    image(enemy17,xe17=xe17+4,260);
    image(enemy18,xe18=xe18+4,220);
    
    
    
    
    
    
    
    image(treasure,z,y);    
    rectMode(CORNERS);    
    fill(255,0,0);
    rect(57,20,hpp,50);    
    image(hp,50,20);    
    image(fighter,fighterX,fighterY);
    

    //                                      control
    
    if (Up){
      fighterY-=speed;
      if (fighterY<=0){
      fighterY=0;}
    }
    if (Down){
      fighterY+=speed;
      if (fighterY>=430){
      fighterY=430;}
    }
    if (Left){
      fighterX-=speed;
      if (fighterX<=0){
      fighterX=0;}
    }
    if (Right){
      fighterX+=speed;
      if (fighterX>=590){
      fighterX=590;}
    }
    
    
    //                                     touch Sth.dd
    
    if (((z+treasure.width>=fighterX) && (z+treasure.width<=(fighterX+fighter.width))) || ((z>=fighterX) && (z<=(fighterX+fighter.width))))

    if (((y+treasure.height>=fighterY) && (y+treasure.height<=(fighterY+fighter.height))) || ((y>=fighterY) && (y<=(fighterY+fighter.height))))
    {
    if(hpp>=255){hpp=255;}else{
    hpp=hpp+20;}
    y=floor(random(20,450));
    z=floor(random(20,400));  
    image(treasure,z,y);
    }
    

    if (((xe1+enemy1.width>=fighterX) && (xe1+enemy1.width<=(fighterX+fighter.width))) || ((xe1>=fighterX) && (xe1<=(fighterX+fighter.width))))

    if (((EnemyY+enemy1.height>=fighterY) && (EnemyY+enemy1.height<=(fighterY+fighter.height))) || ((EnemyY>=fighterY) && (EnemyY<=(fighterY+fighter.height))
    ||((EnemyY+10>=fighterY)&&(EnemyY+enemy1.height-10<=fighterY+fighter.height))
    ))
    {hpp=hpp-40;
     
    EnemyY=floor(random(20,450));
    } 

    
    
    if(hpp<=57){
      xe1=0;//0
  xe2=0;//
  xe3=0;//
  xe4=0;//
  xe5=0;//
  
  xe6=-640;//-640
  xe7=-670;//-20
  xe8=-700;//-40
  xe9=-730;//-60
  xe10=-750;//-80
                 //-1280
  xe11=-1280;//0
  xe12=-1240;//+20
  xe13=-1200;//+40
  xe14=-1240;//+20
  
  xe15=-1280;//0
  xe16=-1320;//-20
  xe17=-1360;//-40
  xe18=-1320;//-20
      Game_State=Game_GG;
    }
    break;
    case Game_GG:
    
    image(end2,0,0);  
    
     if(mouseX>200&&mouseX<445&&mouseY>310&&mouseY<345){
          
     if (mousePressed){
     Game_State=Game_Play;   
     
     hpp=97;
     
     
     
     
     
     
     }else{  
     noStroke();
     image(end1,0,0);}      
     }
      break; 
      
     }
     }
   
   
  

  
  // your code

void keyPressed(){
  if(key== CODED){
    switch (keyCode){
    case UP:
      Up=true;
      break;
    case DOWN:
      Down=true;
      break;
    case LEFT:
      Left=true;
      break;
    case RIGHT:
      Right=true;
      break;
    }
  }
}

void keyReleased(){
  if(key==CODED){
    switch (keyCode){
    case UP:
      Up=false;
      break;
    case DOWN:
      Down=false;
      break;
    case LEFT:
      Left=false;
      break;
    case RIGHT:
      Right=false;
      break;
    }
  }
}
