#include<iostream>
using namespace std;
#include<vector>
#include<algorithm>

//Unary Predicate
bool isEven(int x) {
	return !(x % 2);
}

//Functor
struct isOdd {
	bool operator() (int x) {
		return x % 2;
	}
};

int main()
{
	vector<int> v = { 1,2,3,4,5,6,7,8,9 };
	cout << "even Values: " << count_if(v.begin(), v.end(), isEven) << endl;
	cout << "Odd Values: " << count_if(v.begin(), v.end(), isOdd()) << endl;
	cout << "Odd Values: " << count_if(v.begin(), v.end(), [](int x){return x%2;})<<endl;
	}
