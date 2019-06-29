#-------------------------------------------------
#
# Project created by QtCreator 2019-05-23T13:42:02
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

TARGET = PN_SDR_ToolBox
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    complex.cpp \
    FftComplex.cpp \
    ../qcustomplot/qcustomplot.cpp

HEADERS  += mainwindow.h \
    complex.h \
    FftComplex.hpp \
    ../qcustomplot/qcustomplot.h

FORMS    += mainwindow.ui
