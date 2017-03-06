QT += widgets core gui

TEMPLATE = lib
CONFIG += widget-buildlib
include(libwidget.pri)
TARGET = $$LIBWIDGET_NAME
DESTDIR = $$PROJECT_LIBDIR
win32{
    DLLDESTDIR = $$PROJECT_BINDIR
    QMAKE_DISTCLEAN += $$PROJECT_BINDIR/$${LIBWIDGET_NAME}.dll
}
CONFIG += debug_and_release build_all
DEFINES += LIBWIDGET_BUILD

