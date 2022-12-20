#include <graphics.h>
#include <conio.h>
#include <stdlib.h>
#include <math.h>
#include <stdio.h>
main()
{
    int gd = DETECT, gm;
    initgraph(&gd, &gm, "");
    
    int x1,y1,x2,y2; 
    printf("\n Enter the coordinates for x1,y1,x2,y2: ");
    scanf("%d%d%d%d",&x1,&y1,&x2,&y2);
    line(x1,y1,x2,y2);

    int r;
    float rx,xn1,xn2,yn1,yn2;
    printf("\n Enter the Angle for Rotation: ");
    scanf("%d",&r);
    rx=(r*3.14)/180;
    xn1=x1*cos(rx)-y1*sin(rx);
    yn1=y1*cos(rx)+x1*sin(rx);
    xn2=x2*cos(rx)-y2*sin(rx);
    yn2=y2*cos(rx)+x2*sin(rx);
    line(x1,y1,x2,y2);
    line(xn1,yn1,xn2,yn2);
    getch();
}     
