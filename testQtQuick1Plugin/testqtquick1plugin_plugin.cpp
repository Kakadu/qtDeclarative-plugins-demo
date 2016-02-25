#include "testqtquick1plugin_plugin.h"
#include "myitem.h"

#include <qdeclarative.h>

void TestQtQuick1PluginPlugin::registerTypes(const char *uri)
{
  // @uri cru.trik.qmlcomponents
  qmlRegisterType<MyItem>(uri, 1, 0, "MyItem");
}

#if QT_VERSION < 0x050000
Q_EXPORT_PLUGIN2(TestQtQuick1Plugin, TestQtQuick1PluginPlugin)
#endif

