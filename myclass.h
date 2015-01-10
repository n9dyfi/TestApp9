#ifndef MYCLASS_H
#define MYCLASS_H

#include <QObject>

class MyClass : public QObject
{
    Q_OBJECT
public:
    MyClass();

signals:
    void valueChanged(int value);

public slots:
    void setValue(int v);
    void increment();
    void decrement();

private:
    int myValue;
};

#endif // MYCLASS_H
