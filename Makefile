#############################################################################
# Makefile for building: PN_SDR_ToolBox
# Generated by qmake (3.0) (Qt 5.5.1)
# Project:  ../PN_SDR_ToolBox/PN_SDR_ToolBox.pro
# Template: app
# Command: /usr/lib/x86_64-linux-gnu/qt5/bin/qmake -spec linux-g++-64 CONFIG+=debug -o Makefile ../PN_SDR_ToolBox/PN_SDR_ToolBox.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_PRINTSUPPORT_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -m64 -pipe -g -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -m64 -pipe -g -Wall -W -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I../PN_SDR_ToolBox -I. -isystem /usr/include/x86_64-linux-gnu/qt5 -isystem /usr/include/x86_64-linux-gnu/qt5/QtPrintSupport -isystem /usr/include/x86_64-linux-gnu/qt5/QtWidgets -isystem /usr/include/x86_64-linux-gnu/qt5/QtGui -isystem /usr/include/x86_64-linux-gnu/qt5/QtCore -I. -I. -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64
QMAKE         = /usr/lib/x86_64-linux-gnu/qt5/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = PN_SDR_ToolBox1.0.0
LINK          = g++
LFLAGS        = -m64
LIBS          = $(SUBLIBS) -L/usr/X11R6/lib64 -lQt5PrintSupport -lQt5Widgets -lQt5Gui -lQt5Core -lGL -lpthread 
AR            = ar cqs
RANLIB        = 
SED           = sed
STRIP         = strip

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = ../PN_SDR_ToolBox/main.cpp \
		../PN_SDR_ToolBox/mainwindow.cpp \
		../PN_SDR_ToolBox/complex.cpp \
		../PN_SDR_ToolBox/FftComplex.cpp \
		../qcustomplot/qcustomplot.cpp moc_mainwindow.cpp \
		moc_qcustomplot.cpp
OBJECTS       = main.o \
		mainwindow.o \
		complex.o \
		FftComplex.o \
		qcustomplot.o \
		moc_mainwindow.o \
		moc_qcustomplot.o
DIST          = /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Attica.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KAuth.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KBookmarks.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCodecs.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCompletion.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigGui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCoreAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KDBusAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGlobalAccel.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGuiAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KI18n.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIconThemes.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOFileWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KItemViews.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KJobWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KNTLM.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KService.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KTextWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWidgetsAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWindowSystem.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KXmlGui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_script.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_scripttools.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_serialport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_x11extras.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Solid.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetUi.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		../PN_SDR_ToolBox/PN_SDR_ToolBox.pro ../PN_SDR_ToolBox/mainwindow.h \
		../PN_SDR_ToolBox/complex.h \
		../PN_SDR_ToolBox/FftComplex.hpp \
		../qcustomplot/qcustomplot.h ../PN_SDR_ToolBox/main.cpp \
		../PN_SDR_ToolBox/mainwindow.cpp \
		../PN_SDR_ToolBox/complex.cpp \
		../PN_SDR_ToolBox/FftComplex.cpp \
		../qcustomplot/qcustomplot.cpp
QMAKE_TARGET  = PN_SDR_ToolBox
DESTDIR       = #avoid trailing-slash linebreak
TARGET        = PN_SDR_ToolBox


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

$(TARGET): ui_mainwindow.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: ../PN_SDR_ToolBox/PN_SDR_ToolBox.pro /usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Attica.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KAuth.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KBookmarks.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCodecs.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCompletion.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigGui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCoreAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KDBusAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGlobalAccel.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGuiAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KI18n.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIconThemes.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOFileWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KItemViews.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KJobWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KNTLM.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KService.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KTextWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWidgetsAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWindowSystem.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KXmlGui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_script.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_scripttools.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_serialport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_x11extras.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Solid.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetUi.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		../PN_SDR_ToolBox/PN_SDR_ToolBox.pro \
		/usr/lib/x86_64-linux-gnu/libQt5PrintSupport.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Widgets.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Gui.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Core.prl
	$(QMAKE) -spec linux-g++-64 CONFIG+=debug -o Makefile ../PN_SDR_ToolBox/PN_SDR_ToolBox.pro
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Attica.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KAuth.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KBookmarks.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCodecs.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCompletion.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigCore.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigGui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigWidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCoreAddons.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KDBusAddons.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGlobalAccel.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGuiAddons.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KI18n.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIconThemes.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOCore.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOFileWidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIOWidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KItemViews.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KJobWidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KNTLM.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KService.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KTextWidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWidgetsAddons.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWindowSystem.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KXmlGui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_multimedia.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qml.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qmltest.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quick.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quickwidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_script.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_scripttools.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_serialport.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_x11extras.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Solid.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetCore.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetUi.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf:
../PN_SDR_ToolBox/PN_SDR_ToolBox.pro:
/usr/lib/x86_64-linux-gnu/libQt5PrintSupport.prl:
/usr/lib/x86_64-linux-gnu/libQt5Widgets.prl:
/usr/lib/x86_64-linux-gnu/libQt5Gui.prl:
/usr/lib/x86_64-linux-gnu/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -spec linux-g++-64 CONFIG+=debug -o Makefile ../PN_SDR_ToolBox/PN_SDR_ToolBox.pro

qmake_all: FORCE


all: Makefile $(TARGET)

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/
	$(COPY_FILE) --parents ../PN_SDR_ToolBox/mainwindow.h ../PN_SDR_ToolBox/complex.h ../PN_SDR_ToolBox/FftComplex.hpp ../qcustomplot/qcustomplot.h $(DISTDIR)/
	$(COPY_FILE) --parents ../PN_SDR_ToolBox/main.cpp ../PN_SDR_ToolBox/mainwindow.cpp ../PN_SDR_ToolBox/complex.cpp ../PN_SDR_ToolBox/FftComplex.cpp ../qcustomplot/qcustomplot.cpp $(DISTDIR)/
	$(COPY_FILE) --parents ../PN_SDR_ToolBox/mainwindow.ui $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_moc_header_make_all: moc_mainwindow.cpp moc_qcustomplot.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp moc_qcustomplot.cpp
moc_mainwindow.cpp: ../PN_SDR_ToolBox/mainwindow.h
	/usr/lib/x86_64-linux-gnu/qt5/bin/moc $(DEFINES) -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64 -I/home/aura/Documents/QTProj/PN_SDR_ToolBox -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtPrintSupport -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I. -I/usr/include/c++/5 -I/usr/include/x86_64-linux-gnu/c++/5 -I/usr/include/c++/5/backward -I/usr/lib/gcc/x86_64-linux-gnu/5/include -I/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include ../PN_SDR_ToolBox/mainwindow.h -o moc_mainwindow.cpp

moc_qcustomplot.cpp: ../qcustomplot/qcustomplot.h
	/usr/lib/x86_64-linux-gnu/qt5/bin/moc $(DEFINES) -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64 -I/home/aura/Documents/QTProj/PN_SDR_ToolBox -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtPrintSupport -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I. -I/usr/include/c++/5 -I/usr/include/x86_64-linux-gnu/c++/5 -I/usr/include/c++/5/backward -I/usr/lib/gcc/x86_64-linux-gnu/5/include -I/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include ../qcustomplot/qcustomplot.h -o moc_qcustomplot.cpp

compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h
ui_mainwindow.h: ../PN_SDR_ToolBox/mainwindow.ui \
		../qcustomplot/qcustomplot.h
	/usr/lib/x86_64-linux-gnu/qt5/bin/uic ../PN_SDR_ToolBox/mainwindow.ui -o ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

main.o: ../PN_SDR_ToolBox/main.cpp ../PN_SDR_ToolBox/mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o ../PN_SDR_ToolBox/main.cpp

mainwindow.o: ../PN_SDR_ToolBox/mainwindow.cpp ../PN_SDR_ToolBox/mainwindow.h \
		ui_mainwindow.h \
		../qcustomplot/qcustomplot.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o ../PN_SDR_ToolBox/mainwindow.cpp

complex.o: ../PN_SDR_ToolBox/complex.cpp ../PN_SDR_ToolBox/complex.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o complex.o ../PN_SDR_ToolBox/complex.cpp

FftComplex.o: ../PN_SDR_ToolBox/FftComplex.cpp ../PN_SDR_ToolBox/FftComplex.hpp \
		../PN_SDR_ToolBox/complex.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o FftComplex.o ../PN_SDR_ToolBox/FftComplex.cpp

qcustomplot.o: ../qcustomplot/qcustomplot.cpp ../qcustomplot/qcustomplot.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qcustomplot.o ../qcustomplot/qcustomplot.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

moc_qcustomplot.o: moc_qcustomplot.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_qcustomplot.o moc_qcustomplot.cpp

####### Install

install:  FORCE

uninstall:  FORCE

FORCE:

