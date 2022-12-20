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

    float sh,xn1,xn2,yn1,yn2;
    printf("\n Enter the Value for Shearing: ");
    scanf("%f",&sh);
    xn1=x1+sh*y1;
    yn1=y1;
    xn2=x2+sh*y2;
    yn2=y2;
    line(x1,y1,x2,y2);
    line(xn1,yn1,xn2,yn2);
    getch();
}