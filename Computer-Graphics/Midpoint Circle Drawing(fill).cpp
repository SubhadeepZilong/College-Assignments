#include<stdio.h>
#include<conio.h>
#include<graphics.h>
void draw_circle(int,int,int);
void draw_loop(int,int,int);
void symmetry(int,int,int,int);
int main()
{
int xc,yc,R;
int gd=DETECT,gm;
initgraph(&gd,&gm,"");
printf("Enter the center of the circle:\n");
printf("Xc =");
scanf("%d",&xc);
printf("Yc =");
scanf("%d",&yc);
printf("Enter the radius of the circle :");
scanf("%d",&R);
draw_loop(xc,yc,R);
getch();
closegraph();
}
void draw_loop(int xc,int yc,int R)
{
	while (R>0)
	{
		draw_circle(xc,yc,R);
		R--;
	}
}
void draw_circle(int xc,int yc,int rad)
{
int x = 0;
int y = rad;
int p = 1-rad;
symmetry(x,y,xc,yc);
for(x=0;y>x;x++)
 {
 if(p<0)
 p += 2*x + 3;
 else
 {
 p += 2*(x-y) + 5;
 y--;
 }
 symmetry(x,y,xc,yc);
 delay(50);
 }
}
void symmetry(int x,int y,int xc,int yc)
{
putpixel(xc+x,yc-y,RED); //For pixel (x,y)
delay(50);
putpixel(xc+y,yc-x, RED); //For pixel (y,x)
delay(50);
putpixel(xc+y,yc+x, RED); //For pixel (y,-x)
delay(50);
putpixel(xc+x,yc+y, RED); //For pixel (x,-y)
delay(50);
putpixel(xc-x,yc+y, RED); //For pixel (-x,-y)
delay(50);
putpixel(xc-y,yc+x, RED); //For pixel (-y,-x)
delay(50);
putpixel(xc-y,yc-x, RED); //For pixel (-y,x)
delay(50);
putpixel(xc-x,yc-y, RED); //For pixel (-x,y)
delay(50);
}
