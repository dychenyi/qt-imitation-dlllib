INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD
TEMPLATE += fakelib
LIBWIDGET_NAME = $$qtLibraryTarget(widget)
TEMPLATE -= fakelib
include(../common.pri)
!widget-buildlib{
    LIBS += -L$$PROJECT_LIBDIR -l$$LIBWIDGET_NAME
}else{
    SOURCES += widget.cpp
    HEADERS += widget.h
}
