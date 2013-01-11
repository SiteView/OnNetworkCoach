#include <QApplication>
#include <QtDeclarative/QDeclarativeView>
#include <QtDeclarative/QDeclarativeContext>
#include <QString>
#include <QtWidgets/QMainWindow>
#include "mainwindow.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QDeclarativeView *qmlView = new QDeclarativeView;
    QMainWindow *window = new QMainWindow;    

    //QDeclarativeContext *context = qmlView->rootContext();
    qmlView->setSource(QUrl::fromLocalFile("qml/onnetworkscoach/main.qml"));

    window->setCentralWidget(qmlView);  //TODO:win8不能实现？
    qmlView->rootContext()->setContextProperty("mainwindow", window);
    window->setWindowFlags(Qt::FramelessWindowHint);
    window->setGeometry(QRect(50,50,800,600));

    window->show();

    app.setWindowIcon(QIcon("on.ico"));  //设置Qt图标

    return app.exec();
}


