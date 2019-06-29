#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget* parent) :
        QMainWindow(parent),
        ui(new Ui::MainWindow) {
        ui->setupUi(this);

        statusLabel = new QLabel();
           statusLabel->setText("Ready...");
     ui->statusBar->addPermanentWidget(statusLabel);

}

MainWindow::~MainWindow() {
        delete ui;
}


void MainWindow::on_pbQuit_clicked() {
        exit(0);
}

void MainWindow::on_pbCalc_clicked() {
        int compt1, iK;
        QVector<double> S0, S1;
        QVector<double> vdAx1, vdAx0;
        long double dh, df, dMagZ;
        QString sRapport, sTmp;
        //QTextDocument *tdRapport;
        long double dNoise;
        int iNbits;

        dFs = ui->leFSamp->text() .toDouble();
        dFc = ui->leFCut->text().toDouble();
        iR = ui->leR->text().toInt();
        iM =    ui->leM->text().toInt();
        iN = ui->leN->text().toInt();
        iNTap = ui->leNTap->text().toInt();

        if (dFc>dFs/(2*iR)) {  // Fc trop grand
                 ui->leFCut->setText(QString("Error"));
                 dFc=dFs/(2*iR);
        }

        dMagZ = powl(iM * iR, iN); // gain a f=0
        dMagZ = 20 * logl(dMagZ) / logl(10);
        iK = ( iM * iR) / 4; // Facteur d'echelle po avoir 4 lobes
        if (iK < 2) iK = 2;

        sRapport.sprintf("Out Sampling Freq : %7.0f Hz ; ", (double)(dFs / iR));
        //Nbr bts to add
        dh = logl(iR * iM) / logl(2.0);
        iNbits = iN * dh ;
        sTmp.sprintf("Add %d bits to register ; ", iNbits);
        sRapport += sTmp;

        //noise from aliasing
        dNoise = 0;

        S1 << MINPLOTDB;
        for(compt1 = 1; compt1 < ((iR * iM / 2) + 0.5); compt1++) { // considere qu'il y a un filtre antialias a Fs/2
                // les repliement ont 2 flancs
                df = (long double)compt1 / (long double)(iR * iM);
                df += dFc / dFs;
                dh = sinl(M_PIl * iM * iR * df) /  sinl(M_PIl * df);      //df est la freq de sortie normalisé
                dh = powl(dh, iN);
                dNoise += dh * dh;
                //autre flanc
                df = (long double)compt1 / (long double)(iR * iM);
                df -= dFc / dFs;
                dh = sinl(M_PIl * iM * iR * df) /  sinl(M_PIl * df);      //df est la freq de sortie normalisé
                dh = powl(dh, iN);
                dNoise += dh * dh;

                df = (long double)compt1 / (long double)(iR * iM);
                if (df < (1.0 / (long double) iK) ) {
                        df -= dFc / dFs;
                        S1 << MINPLOTDB;
                        vdAx1 << df* dFs;
                        df = (long double)compt1 / (long double)(iR * iM);
                        df += dFc / dFs;
                        S1 << MINPLOTDB;
                        vdAx1 << df* dFs;
                }
        }
        dNoise = sqrtl(dNoise);
        dNoise = 20 * logl(dNoise) / logl(10);
        dNoise -= dMagZ ;
        sTmp.sprintf("Noise from Aliasing : %.0f dB", (double)dNoise);
        sRapport += sTmp;

        //trace le graphe response cic
        for (compt1 = 1; compt1 < NGRAPHPTS; compt1++) {    //trace le resultat
                df = (long double)compt1  / (iK * NGRAPHPTS);

                dh = sinl(M_PIl * iM * iR * df) /  sinl(M_PIl * df);   // df freq de sortie normalisé
                dh = powl(dh, iN);
                dh = sqrtl(dh * dh);
                dh = 20 * logl(dh) / logl(10);
                dh -= dMagZ;
                if (dh < MINPLOTDB) dh = MINPLOTDB;

                S0 << dh;
                vdAx0 << df* dFs;
        }

        //Affiche le graphe
        //qsTmpa = "PNFilterNum : Response";
        ui->GraphView->clearGraphs();
        ui->GraphView->addGraph(ui->GraphView->xAxis, ui->GraphView->yAxis);
        ui->GraphView->graph(0)->setPen(QPen(Qt::blue)); // line color blue for first graph
        ui->GraphView->graph(0)->setBrush(QBrush(QColor(0, 0, 255, 20))); // first graph will be filled with translucent blue
        // ui->GraphView->graph(0)->setChannelFillGraph(ui->GraphView->graph(1));
        // ui->GraphView->graph(0)->setLineStyle(lsImpuse);
        ui->GraphView->addGraph(ui->GraphView->xAxis, ui->GraphView->yAxis);
        ui->GraphView->graph(1)->setPen(QPen(Qt::red)); // line color red second graph
        ui->GraphView->graph(1)->setBrush(QBrush(QColor(255, 0, 0, 20))); //second graph will be filled with translucent red
        ui->GraphView->graph(1)->setLineStyle(QCPGraph::lsImpulse  );


        //set title of plot:
        //ui->GraphView->plotLayout()->insertRow(0);
        //ui->GraphView->plotLayout()->addElblueement(0, 0, new QCPTextElement(    ui->GraphView, "Response", QFont("sans", 14, QFont::Bold)));
        ui->GraphView->xAxis2->setVisible(true);
        ui->GraphView->xAxis2->setTickLabels(true);
        ui->GraphView->yAxis2->setVisible(true);
        ui->GraphView->yAxis2->setTickLabels(true);
        //make left and bottom axes always transfer their ranges to right and top axes:
        connect(ui->GraphView->xAxis, SIGNAL(rangeChanged(QCPRange)), ui->GraphView->xAxis2, SLOT(setRange(QCPRange)));
        connect(ui->GraphView->yAxis, SIGNAL(rangeChanged(QCPRange)), ui->GraphView->yAxis2, SLOT(setRange(QCPRange)));
        //pass data points to graphs:
        ui->GraphView->graph(0)->setData(vdAx0, S0);
        ui->GraphView->graph(1)->setData(vdAx1, S1);
        ui->GraphView->graph(0)->rescaleAxes();
        ui->GraphView->graph(1)->rescaleAxes(true);
        //ui->GraphView->graph(1)->rescaleAxes(true);
        ui->GraphView->yAxis->setTickLabelColor(Qt::blue);
        ui->GraphView->yAxis2->setTickLabelColor(Qt::blue);
        ui->GraphView->setInteractions(QCP::iRangeDrag | QCP::iRangeZoom | QCP::iSelectPlottables);
        //ui->GraphView->graph(1)->setName("Phase");
        ui->GraphView->xAxis->setLabel("Frequency [Hz]");
        ui->GraphView->yAxis->setLabel("Magnitude [dB]");

    //   ui->GraphView->plotLayout()->insertRow(0);
   //    ui->GraphView->plotLayout()->addElement(0, 0, new QCPTextElement(  ui->GraphView, sRapport.toLatin1(), QFont("sans", 10, QFont::Normal)));

       //setWindowTitle(qsTmpa);
        ui->GraphView->replot();


        statusLabel->setText(sRapport);
}

void MainWindow::on_pbFilter_clicked() {
        int compt1, iK;
        QVector<double> S0, S1, S2;
        QVector<double> vdAx1, vdAx0;
        long double dh, df, dMagZ;
        QString sRapport, sTmp;
        Complex* cX;
        //long double dMin;
        long double* h;
        long double dFso;
        long double dCFir, dAmpl;
        Complex H;

        dFs = ui->leFSamp->text() .toDouble();
        dFc = ui->leFCut->text().toDouble();
        iR = ui->leR->text().toInt();
        iM =    ui->leM->text().toInt();
        iN = ui->leN->text().toInt();
        iNTap = ui->leNTap->text().toInt();
        iGain = ui->leGain->text().toInt();
        h = new long double[iNTap + 1];
        cX = new Complex[iNTap];

        if (dFc>dFs/(2*iR)) {  // Fc trop grand
                 ui->leFCut->setText(QString("Error"));
                 dFc=dFs/(2*iR);
        }

        dMagZ = powl((iM * iR), iN); // gain a f=0
        iK = 2 * ( iM * iR) ; // Facteur d'echelle po avoir le premier lobe a la freq de coupure

        //trace le graphe response cic
        for (compt1 = 1; compt1 < NGRAPHPTS; compt1++) {    //trace le resultat
                df = (long double)compt1  / (iK * NGRAPHPTS);

                dh = sinl(M_PIl * iM * iR * df) /  sinl(M_PIl * df);
                dh = powl(dh, iN);
                dh = sqrtl(dh * dh);
                dh /= dMagZ;
                dh = 20 * logl(dh) / logl(10);
                if (dh < MINPLOTDB) dh = MINPLOTDB;

                S0 << dh;
                vdAx0 << df* dFs;
        }
        // dMin = dh;

        //fill FIR compensation array
        dFso = dFs / (iM * iR);
        for (compt1 = 0; compt1 < iNTap / 2; compt1++) {
                df = (long double)(compt1) / (long double)(iNTap);

                if (compt1 == 0) dh =  dMagZ;
                else {
                        dh = sinl(M_PIl * df) /  sinl(M_PIl * df / (iM * iR));
                        dh = powl(dh, iN);
                }
                dh =  dMagZ / dh ;
                if (df * dFso > dFc) dh = 0;
                h[compt1] = dh;

                // S1 << dh;
                //  vdAx1 << df* dFso;
        }

        //coeff du filtre sont la fft de cX

        //coeff a partir de 0
         h[iNTap/2] =0;
        for (compt1 = 0; compt1 < iNTap / 2; compt1++) {
                cX[compt1] = Complex(h[compt1], 0);
                cX[iNTap - compt1 - 1] = Complex(h[compt1+1], 0);
        }

        fft(cX, iNTap);  //normalement ifft mais comme coeff reel
        // permute les demi spectres pour avoir les 2 extremités au centre
        for (compt1 = 0; compt1 < iNTap / 2; compt1++) {
                h[compt1] = cX[iNTap / 2 + compt1].re;
                h[iNTap / 2 + compt1] = cX[compt1].re;
        }
        //window de ponderation
        iK = iNTap - 1;
        for (compt1 = 0; compt1 < iNTap; compt1++) {
                h[compt1] = h[compt1] * (0.42 - 0.5 * cosl(2.0 * M_PIl * compt1 / iK) + 0.08 * cosl(4.0 * M_PIl * compt1 / iK));//Blakman window
        }
        // Normalise le gain
        dh = 0;
        for (compt1 = 0; compt1 < iNTap; compt1++) {
                dh += h[compt1] ;
        }
        dh = iGain/dh;
        for (compt1 = 0; compt1 < iNTap; compt1++) {
                h[compt1] *= dh;
        }

        WriteTheFile(h);

        //Plot Filter response

        for (compt1 = 0; compt1 < NGRAPHPTS / 2; compt1++) {
                df = (long double)(compt1) / (long double)(NGRAPHPTS);

                if (compt1 == 0) dh =  1.0;
                else {
                        dh = sinl(M_PIl * df) /  sinl(M_PIl * df / (iM * iR)); // Response CIC
                        dh = powl(dh, iN) / dMagZ;
                }

                H = Complex(0, 0);
                for (int n = 0; n < iNTap; n++) {  //response CFIR
                        H +=  Complex (h[n] * cosl(2.0 * M_PIl * df * n), h[n] * sinl( 2.0 * M_PIl * df * n ));
                }
                vdAx1 << df* dFso;
                dCFir = H.mag();
                //  if (dAmpl > dmax) dmax = dAmpl;
                dAmpl = 20 * logl(dCFir) / logl(10);
                if (dAmpl < MINPLOTDB) dAmpl = MINPLOTDB;
                S1 << dAmpl ;
                dAmpl = 20 * logl(dCFir * dh) / logl(10);
                if (dAmpl < MINPLOTDB) dAmpl = MINPLOTDB;
                S2 << dAmpl;

        }

        //Affiche le graphe
        //qsTmpa = "PNFilterNum : Response";
         ui->GraphView->clearGraphs();
        ui->GraphView->addGraph(ui->GraphView->xAxis, ui->GraphView->yAxis);
        ui->GraphView->graph(0)->setPen(QPen(Qt::blue)); // line color blue for first graph
        ui->GraphView->graph(0)->setBrush(QBrush(QColor(0, 0, 255, 20))); // first graph will be filled with translucent blue
        // ui->GraphView->graph(0)->setChannelFillGraph(ui->GraphView->graph(1));
        // ui->GraphView->graph(0)->setLineStyle(lsImpuse);
        ui->GraphView->addGraph(ui->GraphView->xAxis, ui->GraphView->yAxis);
        ui->GraphView->graph(1)->setPen(QPen(Qt::red)); // line color red second graph
        ui->GraphView->graph(1)->setBrush(QBrush(QColor(255, 0, 0, 20))); //second graph will be filled with translucent red
        ui->GraphView->graph(1)->setLineStyle(QCPGraph::lsLine  );
        ui->GraphView->addGraph(ui->GraphView->xAxis, ui->GraphView->yAxis);
        ui->GraphView->graph(2)->setPen(QPen(Qt::green)); // line color green third graph
        ui->GraphView->graph(2)->setBrush(QBrush(QColor(0, 255, 0, 20))); //third graph will be filled with translucent green


        //set title of plot:
        //ui->GraphView->plotLayout()->insertRow(0);
        //ui->GraphView->plotLayout()->addElblueement(0, 0, new QCPTextElement(    ui->GraphView, "Response", QFont("sans", 14, QFont::Bold)));
        ui->GraphView->xAxis2->setVisible(true);
        ui->GraphView->xAxis2->setTickLabels(true);
        ui->GraphView->yAxis2->setVisible(true);
        ui->GraphView->yAxis2->setTickLabels(true);
        //make left and bottom axes always transfer their ranges to right and top axes:
        connect(ui->GraphView->xAxis, SIGNAL(rangeChanged(QCPRange)), ui->GraphView->xAxis2, SLOT(setRange(QCPRange)));
        connect(ui->GraphView->yAxis, SIGNAL(rangeChanged(QCPRange)), ui->GraphView->yAxis2, SLOT(setRange(QCPRange)));
        //pass data points to graphs:
        ui->GraphView->graph(0)->setData(vdAx0, S0);
        ui->GraphView->graph(1)->setData(vdAx1, S1);
        ui->GraphView->graph(2)->setData(vdAx1, S2);
        ui->GraphView->graph(0)->rescaleAxes();
        ui->GraphView->graph(1)->rescaleAxes(true);
        ui->GraphView->graph(2)->rescaleAxes(true);
        //ui->GraphView->graph(1)->rescaleAxes(true);
        ui->GraphView->yAxis->setTickLabelColor(Qt::blue);
        ui->GraphView->yAxis2->setTickLabelColor(Qt::blue);
        ui->GraphView->setInteractions(QCP::iRangeDrag | QCP::iRangeZoom | QCP::iSelectPlottables);
        //ui->GraphView->graph(1)->setName("Phase");
        ui->GraphView->xAxis->setLabel("Frequency [Hz]");
        ui->GraphView->yAxis->setLabel("Magnitude [dB]");
        //ui->GraphView->yAxis2->setLabel("Phase");
        //ui->GraphView->graph(0)->setName("Magnitude");

        //setWindowTitle(qsTmpa);
        ui->GraphView->replot();

        free (cX);
        free(h);
}

void  MainWindow::WriteTheFile(long double* h) {
        QFile* mFilterFile;
        QFileDialog mFileDlg;
        QString input;

        qsFileName = mFileDlg.getSaveFileName(this, QString("*.*"), QDir::currentPath() + "/" + "Coeff.coe", QString("Xilinx COE (*.coe);Text files (*.txt)"));
        mFilterFile = new QFile(qsFileName);
        mFilterFile->open(QIODevice::WriteOnly | QIODevice::Text);

        input.sprintf("Radix=10;\r\n");   // po fichier .coe xilinx
        mFilterFile->write(input.toLatin1());
        input.sprintf("CoefData=\r\n");
        mFilterFile->write(input.toLatin1());

        for (int compt1 = 0; compt1 < iNTap; compt1++) {
                input.sprintf("%Lf", h[compt1]  );
                input += "\r\n";
                mFilterFile->write(input.toLatin1());
        }
        mFilterFile->close();
}



