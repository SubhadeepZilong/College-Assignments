#include <graphics.h>
#include <conio.h>
main()
{
    int gd = DETECT, gm;
    initgraph(&gd, &gm, ""); 
 	setfillstyle(SOLID_FILL,WHITE);
 	circle(150,150,35);
	line(150,185,150,300);
	line(150,200,120,230);
	line(150,200,180,230);
	line(150,300,120,330);
	line(150,300,180,330);
	floodfill(150,150,WHITE);
    getch();
    closegraph();
    return 0;
}