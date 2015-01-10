#include "myclass.h"

MyClass::MyClass()
{
    myValue = -1;
}

void MyClass::setValue(int v)
{
    if (v == myValue)
        return;
    myValue = v;
    emit valueChanged(myValue);
}

void MyClass::increment()
{
    emit valueChanged(++myValue);
}

void MyClass::decrement()
{
    emit valueChanged(--myValue);
}
