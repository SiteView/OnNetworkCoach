//#include <QtGui/QGuiApplication>
//#include <QApplication>
//#include "qtquick2applicationviewer.h"
//#include <QDeclarativeView>
//#include <QDeclarativeContext>
//#include <QMainWindow>

//int main(int argc, char *argv[])
//{
//    QGuiApplication app(argc, argv);

//    QtQuick2ApplicationViewer viewer;
//    viewer.setMainQmlFile(QStringLiteral("qml/windowmove/main.qml"));
//    viewer.showExpanded();

//    viewer.setWindowFlags(Qt::FramelessWindowHint); //隐藏边框和标题栏
//    viewer.setGeometry(QRect(100,20,850,600));  //设置窗体的位置和大小
//    viewer.setWindowTitle("on networks coach");

//    QMainWindow window;
//    QDeclarativeView* v = new QDeclarativeView;
//    //window.setCentralWidget(v);
//    v->setSource(QUrl::fromLocalFile(("qml/windowmove/Move.qml")));
//    // expose window object to QML
//    v->rootContext()->setContextProperty("mainwindow",&window);
//    window.setStyleSheet("background:transparent;");
//    window.setAttribute(Qt::WA_TranslucentBackground);
//    window.setWindowFlags(Qt::FramelessWindowHint);
//    window.show();

//    return app.exec();
//}


#include <QApplication>
#include <QDeclarativeView>
#include <QMainWindow>
#include <QDeclarativeContext>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QMainWindow window;

    QDeclarativeView* v = new QDeclarativeView;
    window.setCentralWidget(v);
    v->setSource(QUrl::fromLocalFile(("qml/on-networks_new/main.qml")));
    // expose window object to QML
    v->rootContext()->setContextProperty("mainwindow",&window);

//    window.setStyleSheet("background:transparent;");
//    window.setAttribute(Qt::WA_TranslucentBackground);
    window.setWindowFlags(Qt::FramelessWindowHint);
    window.show();

//    window.setWindowFlags(Qt::FramelessWindowHint); //隐藏边框和标题栏
      window.setGeometry(QRect(100,20,850,700));  //设置窗体的位置和大小
//    window.setWindowTitle("on networks coach");

    app.exec();
}




