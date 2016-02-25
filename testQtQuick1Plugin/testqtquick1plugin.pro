TEMPLATE = lib
TARGET = testQtQuick1Plugin
QT += declarative
CONFIG += qt plugin

DESTDIR = ../bin/
OUT_PWD = $$DESTDIR

TARGET = $$qtLibraryTarget($$TARGET)
uri = cru.trik.qmlcomponents

# Input
SOURCES += \
    testqtquick1plugin_plugin.cpp \
    myitem.cpp

HEADERS += \
    testqtquick1plugin_plugin.h \
    myitem.h

DISTFILES = qmldir

##!equals(_PRO_FILE_PWD_, $$OUT_PWD) {
message($$replace(uri, \\., $$QMAKE_DIR_SEP) )
copy_qmldir.target = $$OUT_PWD/$$replace(uri, \\., $$QMAKE_DIR_SEP)/qmldir
copy_qmldir.depends = $$_PRO_FILE_PWD_/qmldir
copy_qmldir.commands = mkdir -p $$OUT_PWD$$replace(uri, \\., $$QMAKE_DIR_SEP) && $(COPY_FILE) \"$$replace(copy_qmldir.depends, /, $$QMAKE_DIR_SEP)\" \"$$replace(copy_qmldir.target, /, $$QMAKE_DIR_SEP)\"
message( $$copy_qmldir.commands  )
message( $$[QT_INSTALL_IMPORTS]  )

QMAKE_EXTRA_TARGETS += copy_qmldir
PRE_TARGETDEPS += $$copy_qmldir.target

qmldir.files = qmldir
unix {

		installPath = $$DESTDIR/$$replace(uri, \\., $$QMAKE_DIR_SEP)

		#qmldir.path = $$installPath
		target.path = $$installPath
		INSTALLS += target #qmldir
}

