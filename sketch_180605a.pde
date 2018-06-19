int boxsizeX;
int boxsizeY;
PFont f;
int cols = 7, rows = 7;
int player;

Cell[][] cell;
ResultCell[] resCell;



void setup() {
  size(500, 500);
  boxsizeX = width/cols;
  boxsizeY = height/rows;
  //cell = new Cell[5][5];
  //resCell = new ResultCell[24];
  
  f = createFont("Arial", 48);
  textFont(f, 10);
  textSize(30);
  textAlign(CENTER, CENTER);  
  
  //***Cellák deklarálása***
  for (int i = 1; i < 5; i++) {   //játéktér cellák
    for (int j = 1; j < 5; j++) { 
      
      //cell[i][j] = new Cell();
      //cell[i][j].value = 0;
      //cell[i][j].posX = i*boxsizeX+boxsizeX/2;
      //cell[i][j].posY = j*boxsizeY+boxsizeY/2;
    }
  }
  
  for (int i = 0; i < 24; i++) {   //eredmény cellák
    //resCell[i++] = new ResultCell();
    //resCell[i].result = 1;
    //resCell[i].player = (i < 12) ? 1 : 2;
  }
}




void draw() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      int x = i*boxsizeX;
      int y = j*boxsizeY;
        if (i==0 || i==cols-1 || j==0 || j==rows-1) {
          fill(185);
        }   else if (mouseX >= x && mouseX < x + boxsizeX &&
            mouseY >= y && mouseY < y + boxsizeY) {
        fill(#88FF88, 25);
        //overCell = true;
      } else {
        fill(240);
      }
      
      stroke(200);
      strokeWeight(1.5);  
      rect(x, y, boxsizeX, boxsizeY);
      
      fill(100, 150, 200);
      //text(str(j * cols + i + 1), x + boxsizeX / 2, y + boxsizeY / 2);
      //text(str(cell[i][j].posX) + " " + str(cell[i][j].posY), x + boxsizeX / 2, y + boxsizeY / 2);
      text(str(i) + " " + str(j), x + boxsizeX / 2, y + boxsizeY / 2);
    }
  }
  stroke(20);
  strokeWeight(3); 
  noFill();
  rect(boxsizeX, boxsizeY, boxsizeX*5, boxsizeY*5, 3);
}



void mouseClicked() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      int x = i*boxsizeX;
      int y = j*boxsizeY;
      if (mouseX >= x && mouseX < x + boxsizeX &&
            mouseY >= y && mouseY < y + boxsizeY) {
         
      }
    }
  }
}





class Cell {
  int value;
  int posX;
  int posY;
  int[] contains = { 1, 2, 3, 4, 5 };
  boolean overCell = false;
  boolean clicked = false;
}

class ResultCell {
  int index;
  int result;
  int player;
  boolean clicked = false;
  boolean overCell = false;
}
