#include <graphics.h>
#include <conio.h>
main()
{
   int gd = DETECT, gm;
   initgraph(&gd, &gm, "");
	setfillstyle(SOLID_FILL,CYAN);
 	int left = 150, top = 150;
   int right = 450, bottom = 450;
   rectangle(left, top, right, bottom);
 	floodfill(202,202,15);
   getch();
   closegraph();
   return 0;
}
