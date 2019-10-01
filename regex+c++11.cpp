#include<regex>
using namespace std;
#include<iostream>

void printMatchesUsingRegexSearch(std::string str , std::regex reg)
{
    std::smatch matches;
    while(std::regex_search(str,matches,reg))
    {
        cout<< "matches length "<<matches.size()<<endl;
        if(matches.size()>=0)
        {
            //cout<<matches.str()<<" str " << str << endl;

            cout<<"printing matches using [] operator";

            cout<<" 1st match " << matches.str()<<endl;
            cout<< " 2nd match " << matches[0].str() <<endl; // to get the matches using the square brackets
                                                             // This returns the nth match string always.
            cout<< " 3rd match " << matches[1].str() <<endl;
            cout<< " 4th match " << matches[2].str() <<endl;                                                 //

            str = matches.suffix().str(); // this replaces the string without the match which matched the previous word.
                                          // suffix returns the string after the matched pattern.
                                          // There is something called prefix also which can be used.
        }
    }
}

void printMatchesUsingIterators(std::string str , std::regex reg)
{
    std::sregex_iterator currentMatch(str.begin(),str.end(),reg);
    std::sregex_iterator lastMatch; // this probably by default stores the end of the iterator sequence. (not yet explored)

    while(currentMatch != lastMatch)
    {
        std::smatch match = *currentMatch;  // if the iterator is dereferenced the state of it is always ready
        cout<< "match is " << match.str()<<endl;
        currentMatch++;
    }
}

void printMatchesUsingRegexMatches(std::string str , std::regex reg)
{
    std::smatch matches;
    std::regex_match(str,matches,reg);
    for(int i=0; i<= matches.size();i++)
        cout<<"match : " << matches[i]<<endl;
}

std::string replaceStrWithMatchedReg(std::regex reg, std::string mainString, std::string replacingString )
{
    return std::regex_replace(mainString , reg , replacingString);
}
int main()
{
    std::string str = "ape is sitting at the apex aper cxdef bxdf";
    std::regex reg = std::regex("((ape|cxde|bxd)[^ ]*)");
    // printMatchesUsingRegexSearch(str , reg);
    // printMatchesUsingIterators(str , reg);
    printMatchesUsingRegexMatches(str,reg);
    //cout<< "replacing some matches with owl ::::::: "<< replaceStrWithMatchedReg(reg,str,"owl");
}



// http://www.cplusplus.com/reference/regex/match_results/
// http://www.cplusplus.com/reference/regex/sub_match/
// http://www.cplusplus.com/reference/regex/regex_iterator/
// http://www.cplusplus.com/reference/regex/regex_match/
