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

    int tx,ty,xn1,xn2,yn1,yn2;
    printf("\n Enter the Translation Vector: ");
    scanf("%d%d",&tx,&ty);
    xn1=x1+tx;
    yn1=y1+ty;
    xn2=x2+tx;
    yn2=y2+ty;
    line(x1,y1,x2,y2);
    line(xn1,yn1,xn2,yn2);
    getch();
}