#include<iostream> 
using namespace std; 
void mergeArrays(int arr1[], int arr2[], int n1, 
                             int n2, int arr3[]) 
{ 
    int i = 0, j = 0, k = 0;  
    while (i<n1 && j <n2) 
    {  
        if (arr1[i] < arr2[j]) 
            arr3[k++] = arr1[i++]; 
        else
            arr3[k++] = arr2[j++]; 
    } 
    while (i < n1) 
        arr3[k++] = arr1[i++];  
    while (j < n2) 
        arr3[k++] = arr2[j++]; 
} 
int main() 
{ 
    int arr1[10],n;
	cout<<"enter the size of array1";
	cin>>n;
	cout<<"enter the element of array1";
	for(int i=0;i<n;i++)
	cin>>arr1[i]; 
    int n1 = sizeof(arr1) / sizeof(arr1[0]); 
  
    int arr2[10],m;
    cout<<"enter the size of array2";
	cin>>m;
	cout<<"enter the element of array2";
	for(int i=0;i<m;i++)
	cin>>arr2[i]; 
	 
    int n2 = sizeof(arr2) / sizeof(arr2[0]); 
  
    int arr3[n1+n2]; 
    mergeArrays(arr1, arr2, n1, n2, arr3); 
  
    cout << "Array after merging" <<endl; 
    for (int i=0; i < n1+n2; i++) 
        cout << arr3[i] << " "; 
  
    return 0; 
} 
