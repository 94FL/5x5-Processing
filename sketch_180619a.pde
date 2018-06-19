//5x5 game
//by 94FL
//**********

Cell[][] grid;

int cols = 7;
int rows = 7;
int cellsize;
boolean mouseClicked = false;
int clickedCellX, clickedCellY = 0;

void setup() {
  
  //tábla
  size(490,490); 
  cellsize = width/cols;
  grid = new Cell[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Initialize each object
      grid[i][j] = new Cell(i*cellsize, j*cellsize, cellsize, cellsize, true);
    }
  }
}

void draw() {

  // The counter variables i and j are also the column and row numbers and 
  // are used as arguments to the constructor for each object in the grid.  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      int x = i*cellsize;
      int y = j*cellsize;
      
      //kitöltés
      if (i==0 || i==cols-1 || j==0 || j==rows-1) {
  
        
        //grid[i][j]. //TODO: RESULT CELL ************************************************
        
        
        fill(185);
      } else if (mouseX >= x && mouseX < x + cellsize && 
                 mouseY >= y && mouseY < y + cellsize) {
        grid[i][j].isMouseOver = true;
        fill(#04E0FF,25);
      } else {
        grid[i][j].isMouseOver = false; 
        fill(240);
      }
        
  stroke(150);
  strokeWeight(1.5); 
  rect(x, y, cellsize, cellsize);
  fill(100, 150, 200);
    }
  }


  //játéktér
  stroke(50);
  strokeWeight(3); 
  noFill();
  rect(cellsize, cellsize, cellsize*5, cellsize*5, 5);
}



void mouseClicked() {
  //grid[i][j].isMouseOver
  int i, j = 0;
  mouseClicked = true;
    for (i = 0; i < cols; i++) {
      for (j = 0; j < rows; j++) {
        if (grid[i][j].isMouseOver == true) {
          grid[i][j].isClicked = true;
          clickedCellX = i;
          clickedCellY = j;
        }
      }
    }
}


// A Cell object
class Cell {
  // A cell object knows about its location in the grid 
  // as well as its size with the variables x,y,w,h
  float x,y;   // x,y location
  float w,h;   // width and height
  boolean isMouseOver;
  boolean isClicked;
  int value;
  

  // Cell Constructor
  Cell(float tempX, float tempY, float tempW, float tempH, boolean tempIsMouseOver) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    isMouseOver = tempIsMouseOver;
  }
}
