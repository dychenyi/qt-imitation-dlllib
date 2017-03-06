#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>

#if defined(LIBWIDGET_BUILD)
#  define WIDGET_API Q_DECL_EXPORT
#else
#  define WIDGET_API Q_DECL_IMPORT
#endif

class WIDGET_API Widget:public QWidget
{
public:
    Widget(QWidget * parent=0);
};

#endif // WIDGET_H
