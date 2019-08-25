#include<iostream>
#include<stdio.h>
#include<conio.h>
using namespace std;
int main()
{
	int a,i,k,j,c1,c2,r1,r2;
	int m1[10][10],m2[10][10],m3[10][10];
	while(1)
	{
		
		cout<<"1. Transpose of Matrix:-\n";
		cout<<"\n 2. Addition of Matrix:-\n";
		cout<<"\n 3. Multiplication of Matrix:-\n";
		cout<<"\n 4. Exit\n";
		cout<<"\n Enter your choice:-";
		cin>>a;
		switch(a)
		{
		case 1 :
			cout<<"\n Enter the number of row and coloum:-";
			cin>>r1>>c1;
			cout<<"\n Enter the element :-";
			for(i=0;i<r1;i++)
			{
				for(j=0;j<c1;j++)
				{
					cin>>m1[i][j];
					m2[j][i]=m1[i][j];
				}
			}
			cout<<"\n Transpose of Matrix is:-\n";
			for(i=0;i<r1;i++)
			{
				for(j=0;j<c1;j++)
					cout<<m2[i][j];
				cout<<"\n";
			}
			break;
		case 2:
			cout<<"\n how many row and coloum in Matrix one:-";
			cin>>r1>>c1;
			cout<<"\n How amny row and coloum in Matrix two:-";
			cin>>r2>>c2;
			if((r1==r2)&&(c1==c2))
			{
				cout<<"\n Addition is possible:-";
				cout<<"\n Input Matrix one:-";
				for(i=0;i<r1;i++)
				{
					for(j=0;j<c1;j++)
						cin>>m1[i][j];
				}
				cout<<"\n Input Matrix two:-";
				for(i=0;i<r2;i++)
				{
					for(j=0;j<c2;j++)
						cin>>m2[i][j];
				}
				/* Addition of Matrix*/
				for(i=0;i<r1;i++)
				{
					for(j=0;j<c1;j++)
						m3[i][j]=m1[i][j]+ m2[i][j];
				}
				cout<<"\n The sum is:-\n";
				for(i=0;i<c1;i++)
				{
					for(j=0;j<r1;j++)
						cout<<m3[i][j];
					cout<<"\n";
				}
			}
			else
				cout<<"\n Addition is not possible:-";
			
			break;
		case 3:
			
			cout<<"\n Enter number of row and coloum in matrix one:-";
			cin>>r1>>c1;
			cout<<"\n Enter number of row and coloum in matrix two:-";
			cin>>r2>>c2;
			if(c1==r2)
			{
				cout<<"\n Multiplication is possible:-";
				cout<<"\n Input value of Matrix one:-";
				for(i=0;i<r1;i++)
				{
					for(j=0;j<c1;j++)
						cin>>m1[i][j];
				}
				cout<<"\n Input value of Matrix two:-";
				for(i=0;i<r2;i++)
				{
					for(j=0;j<c2;j++)
						cin>>m2[i][j];
				}
				for(i=0;i<r1;i++)
					for(j=0;j<c2;j++)
					{
						m3[i][j]=0;
						for(k=0;k<c1;k++)
							m3[i][j]=m3[i][j]+m1[i][k]*m2[k][j];
					}
					/*Displaying final matrix*/
					cout<<"\n Multiplication of Matrix:-\n";
					for(i=0;i<r1;i++)
					{
						for(j=0;j<c2;j++)
							cout<<m3[i][j];
						cout<<"\n";
					}
			}
			else
				cout<<"\n Multiplication is not possible";
			
			break;
		case 4:
			exit(0);
			break;
		}
		getch();
	}
}
