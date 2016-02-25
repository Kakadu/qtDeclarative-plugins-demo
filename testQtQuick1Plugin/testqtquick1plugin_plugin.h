#ifndef TESTQTQUICK1PLUGIN_PLUGIN_H
#define TESTQTQUICK1PLUGIN_PLUGIN_H

#include <QDeclarativeExtensionPlugin>

class TestQtQuick1PluginPlugin : public QDeclarativeExtensionPlugin
{
  Q_OBJECT
#if QT_VERSION >= 0x050000
  Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")
#endif

public:
  void registerTypes(const char *uri);
};

#endif // TESTQTQUICK1PLUGIN_PLUGIN_H

