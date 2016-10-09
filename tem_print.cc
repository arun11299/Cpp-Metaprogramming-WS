#include <iostream>

struct func2{
    int a=3;

    template<typename T1, typename T2, typename T3>           
        void f1(T1 _t1, T2 _t2, T3 _t3){
            std::cout<<a<<"\t"<<_t1<<"\t"<<_t2<<"\t"<<_t3<<std::endl;
        }


    template<typename F1, typename T1, typename T2, typename T3>
        void f2(F1 _f1, T1 _t1, T2 _t2, T3 _t3){
            _f1(_t1, _t2, _t3);
            _f1(_t2, _t1, _t3);
            _f1(_t3, _t2, _t1);
        }

    void f3(){
        int a =1; 
        double b = 2.0;
        std::string c = "hello";
	std::function<void>
        f2([&](){this->f1();},a,b,c);// The goal is to get flexibility by modifying this line
    };
};

int main(){       
    func2().f3(); 
}
