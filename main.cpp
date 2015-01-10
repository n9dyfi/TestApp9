#include <QtGui/QApplication>
#include <QtDeclarative/QDeclarativeContext>
#include "qmlapplicationviewer.h"
#include "myclass.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));
    MyClass *counter;

    QmlApplicationViewer viewer;

    counter = new MyClass;
    viewer.rootContext()->setContextProperty("counter",counter);

    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/TestApp9/main.qml"));
    viewer.showExpanded();

    counter->setValue(0);
    return app->exec();
}
