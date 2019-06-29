#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QGraphicsTextItem>
#include <QProgressBar>
#include <QTextEdit>
#include <QLabel>

#include <qfile.h>
#include <qmath.h>
#include "complex.h"
#include "FftComplex.hpp"


#define NGRAPHPTS 4096
#define MINPLOTDB -200

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow {
                Q_OBJECT

        public:
                explicit MainWindow(QWidget* parent = 0);
                ~MainWindow();
                void WriteTheFile(long double* h);

        private slots:
                void on_pbQuit_clicked();
                void on_pbCalc_clicked();
                void on_pbFilter_clicked();

        private:
                Ui::MainWindow* ui;
                long double dFs, dFc;
                int iR, iN, iM, iNTap, iGain;
                QString qsFileName;
                QLabel* statusLabel;
};

#endif // MAINWINDOW_H
