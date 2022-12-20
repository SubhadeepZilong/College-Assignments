#include <graphics.h>
#include <conio.h>
main()
{
   int gd = DETECT, gm;
   initgraph(&gd, &gm, "");
	setfillstyle(SOLID_FILL,RED);
 	circle(200,200,50);
 	floodfill(202,202,15);
   getch();
   closegraph();
   return 0;
}