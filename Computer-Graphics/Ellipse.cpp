#include <graphics.h>
#include <conio.h>
main()
{
   int gd = DETECT, gm;
   initgraph(&gd, &gm, "");
   setfillstyle(SOLID_FILL,CYAN);
 	ellipse(420,350,0,360,100,50);  
 	floodfill(420,350,15);
   getch();
   closegraph();
   return 0;
}
