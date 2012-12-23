#include <QtGui/QGuiApplication>
#include "qtquick2applicationviewer.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QtQuick2ApplicationViewer viewer;
    viewer.setMainQmlFile(QStringLiteral("qml/on-networks_new/main.qml"));
    viewer.showExpanded();

//    viewer.setWindowFlags(Qt::FramelessWindowHint); //隐藏边框和标题栏
//    viewer.setGeometry(QRect(100,20,850,600));  //设置窗体的位置和大小
//    viewer.setWindowTitle("on networks coach");
    return app.exec();
}
