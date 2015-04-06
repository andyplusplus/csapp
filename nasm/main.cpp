#include <iostream>

using namespace std;

/*
int getValueFromASM(){
        asm("movl $254, %eax");
}
*/

extern "C" int getValueFromASM()


int main(){
        cout<<"ASM said "<<getValueFromASM()<<endl;
        return 0;
}
