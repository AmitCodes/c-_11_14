#include<iostream>
using namespace std;

class moveCtor {
    int *p;
        int size;
        public:
            moveCtor(int s) { //ctor
            cout << "ctor" << endl;
            size = s;
            p = new int[size];
         }
            ~moveCtor() { //dtor
                                                    cout << "dtor" << endl;
                                                            delete[] p;
                                                                }
                                                                    moveCtor(const moveCtor& rhs) { //copy ctor
                                                                            cout << "copy ctor" << endl;
                                                                                    size = rhs.size;
                                                                                            p = new int[size];
                                                                                                    for (int i = 0; i < size; i++) {
                                                                                                                p[i] = (rhs.p)[i];
                                                                                                                        }
                                                                                                                            }

moveCtor(moveCtor&& rhs) { //move ctor
cout << "move ctor" << endl;
size = rhs.size;
p = rhs.p;
rhs.p = nullptr;
}

                                                                                                                                                        moveCtor& operator=(const moveCtor& rhs) {
                                                                                                                                                                cout << "operator=(&)" << endl;
                                                                                                                                                                        if (&rhs == this) return *this; //check for self assignment

                                                                                                                                                                                delete[] p;
                                                                                                                                                                                        size = rhs.size;
                                                                                                                                                                                                for (int i = 0; i < size; i++) {
                                                                                                                                                                                                            p[i] = (rhs.p)[i];
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                            return *this;
                                                                                                                                                                                                                                }
moveCtor& operator=(moveCtor&& rhs) {
cout << "operator=(&&)" << endl;
if (&rhs == this) return *this; //check for self assignment
   delete[] p;
    size = rhs.size;
    p = rhs.p;
   rhs.p = nullptr;
   return *this;
}

                                                                                                                                                                                                                                                                    };

                                                                                                                                                                                                                                                                    moveCtor creatObject() {
                                                                                                                                                                                                                                                                        moveCtor obj(5);
                                                                                                                                                                                                                                                                            return obj;
                                                                                                                                                                                                                                                                                //return (moveCtor(5));
                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                int main() {
                         moveCtor reusable(5);
                         reusable = creatObject();

                                                                                                                                                                                                                                                                                        //cin.get();
                                                                                                                                                                                                                                                                                            return 0;
                                                                                                                                                                                                                                                                                            }
