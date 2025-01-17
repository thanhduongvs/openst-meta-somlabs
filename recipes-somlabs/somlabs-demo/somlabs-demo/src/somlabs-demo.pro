QT += quick gui-private
CONFIG += c++11

INCLUDEPATH += $$[QT_SYSROOT]/usr/include/gstreamer-1.0/
INCLUDEPATH += $$[QT_SYSROOT]/usr/include/glib-2.0/
INCLUDEPATH += $$[QT_SYSROOT]/usr/lib/glib-2.0/include/

LIBS += $$[QT_SYSROOT]/usr/lib/libgobject-2.0.so
#LIBS += $$[QT_SYSROOT]/usr/lib/libglib-2.0.so
LIBS += $$[QT_SYSROOT]/usr/lib/libgstreamer-1.0.so
LIBS += $$[QT_SYSROOT]/usr/lib/libgstvideo-1.0.so
LIBS += $$[QT_SYSROOT]/usr/lib/libgstwayland-1.0.so

#CONFIG -= no-pkg-config
#CONFIG += link_pkgconfig debug
#PKGCONFIG = \
#    gstreamer-1.0 \
#    gstreamer-video-1.0 \
#    gstreamer-wayland-1.0 \
#    gstreamer-plugins-base-1.0

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp \
    LedHandler.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    LedHandler.h
