#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QObject>
#include <QMainWindow>

class mainwindow : public QObject
{
    Q_OBJECT
public:
    explicit mainwindow(QObject *parent = 0);

    Q_INVOKABLE void setWindowMin();

    
signals:
    
public slots:
    
};

#endif // MAINWINDOW_H
