#include <iostream>
#include <tuple>
#include<unordered_map>
#include<list>
#include<functional> // contains the std::ref function

int main()
{
    ///basics of tuples
    std::tuple<int,std::string,char> tup0 = std::make_tuple(2,"abc",'K');
    std::get<0>(tup0) = 6; // To understand here is
    // get returns the reference of the element stored in the tuple.
    // get only expects compile time constants. Reason being compiler has to be type safe.
    // To access the data from the tuple at runtime one can use switch case.  Other ways are also there
    /// Links : https://stackoverflow.com/questions/43621098/c-stdgetvariable-fails ,,,
    /// https://www.justsoftwaresolutions.co.uk/cplusplus/getting-tuple-elements-with-runtime-index.html


    /// seeing that tuple can store even containers
    std::unordered_map<std::string , int> m;
    m["id"] = 2035;
    m["sim"] = 97865;
    std::tuple<int, std::string, char , std::unordered_map<std::string , int>> a = std::make_tuple(27,"amit",'A',m);

    /// seeing the concept of tie
    std::tuple<int,std::string,char> tup = std::make_tuple(2,"abc",'K');
    int ti;
    std::string ts;
    char tc;
    std::make_tuple(std::ref(ti), std::ref(ts) , std::ref(tc)) = tup;
    std::tie(ti,ts ,tc) = tup;


    /// Pushing pointer variable into list
    std::list<int*> b;
    int c = 2;
    b.push_back(&c);

    // Pushing reference variable into the list
    // std::list<int&> d; This is not allowed

    /// Use of reference wrapper
   // std::list<std::reference_wrapper<int>> d;
    //d.push_back(c);

    /// trying to push ref into the list but does not work. Still it makes the copy
    std::list<int> d;
    d.push_back(std::ref(c)); // the reference is not stored still. Still the copy is stored and thus the value inside the list does not change
    c = 4;
    std::cout << d.front();

    return 0;
}
