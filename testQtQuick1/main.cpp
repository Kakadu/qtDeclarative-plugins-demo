#include "mainwindow.h"
#include <QApplication>
#include <QtDeclarative/QDeclarativeView>
#include <QtDeclarative/QDeclarativeEngine>

int main(int argc, char *argv[])
{
  QApplication a(argc, argv);
  //MainWindow w;
  //w.show();

  QDeclarativeView v;
  v.engine()->addImportPath("/home/kakadu/testQtQuick1Plugin");
  v.engine()->addImportPath("/home/kakadu/");
  v.setSource(QUrl("qrc:/MainQml1.qml"));


  v.show();

  return a.exec();
}
