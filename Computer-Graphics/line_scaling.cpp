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

    int xn1,xn2,yn1,yn2;
    float sx,sy;
    printf("Enter the Scaling Factor: ");
    scanf("%f%f",&sx,&sy);
    xn1=x1*sx;
    yn1=y1*sy;
    xn2=x2*sx;
    yn2=y2*sy;
    line(x1,y1,x2,y2);
    line(xn1,yn1,xn2,yn2);
    getch();
}        