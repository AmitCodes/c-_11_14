#include<iostream>
using namespace std;
#include<string.h>

class myClass{
    char *ptr;
    public:
    myClass(char* p = NULL):ptr(p)
    {
        cout<< "argumented constructor"<<endl;
        if(p != NULL)
        {
            ptr = new char[strlen(p)+1];
            strcpy(ptr,p);
        }
    }
    ~myClass()
    {
        cout<<"Destructor";
        delete []ptr;
    }
};

int main()
{
    myClass obj1; // Default constructor
}
