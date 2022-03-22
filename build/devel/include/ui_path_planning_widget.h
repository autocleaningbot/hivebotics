/********************************************************************************
** Form generated from reading UI file 'path_planning_widget.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_PATH_PLANNING_WIDGET_H
#define UI_PATH_PLANNING_WIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QProgressBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QTreeView>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_PathPlanningWidget
{
public:
    QVBoxLayout *verticalLayout;
    QTabWidget *tabWidget;
    QWidget *tab_MakePlan;
    QVBoxLayout *verticalLayout_7;
    QLabel *label_32;
    QGridLayout *gridLayout_8;
    QLabel *planningGroupLabel;
    QComboBox *combo_planGroup;
    QSpacerItem *horizontalSpacer_2;
    QLineEdit *referenceFrameInput;
    QLabel *referenceFrameLabel;
    QFrame *line_2;
    QLabel *label_3;
    QLabel *label;
    QTreeView *treeView;
    QGridLayout *gridLayout_7;
    QPushButton *moveWaypointUpButton;
    QPushButton *moveToWaypointButton;
    QPushButton *moveWaypointDownButton;
    QPushButton *deleteWaypointButton;
    QSpacerItem *horizontalSpacer;
    QFrame *line_3;
    QLabel *label_31;
    QGridLayout *gridLayout_3;
    QPushButton *addCurrentPositionPointButton;
    QPushButton *addNewWaypointButton;
    QGridLayout *gridLayout_5;
    QDoubleSpinBox *currentPositionX;
    QLabel *labelX;
    QLabel *labelY;
    QLabel *labelZ;
    QLabel *labelRx;
    QLabel *labelRy;
    QLabel *labelRz;
    QDoubleSpinBox *currentPositionY;
    QDoubleSpinBox *currentPositionZ;
    QDoubleSpinBox *currentPositionRy;
    QDoubleSpinBox *currentPositionRz;
    QDoubleSpinBox *currentPositionRx;
    QPushButton *moveToNewPositionButton;
    QLabel *label_2;
    QGridLayout *gridLayout_4;
    QDoubleSpinBox *newWaypointX;
    QDoubleSpinBox *newWaypointY;
    QLabel *zLabel;
    QLabel *ryLabel;
    QLabel *xLabel;
    QLabel *rzLabel;
    QLabel *rxLabel;
    QLabel *yLabel;
    QDoubleSpinBox *newWaypointZ;
    QDoubleSpinBox *newWaypointRx;
    QDoubleSpinBox *newWaypointRz;
    QDoubleSpinBox *newWaypointRy;
    QVBoxLayout *verticalLayout_13;
    QPushButton *copyCurrentPoseButton;
    QLabel *label_35;
    QFrame *line;
    QPushButton *clearAllPointsButton;
    QPushButton *savePathButton;
    QPushButton *loadPathButton;
    QSpacerItem *verticalSpacer_2;
    QWidget *tab_ExecutePlan;
    QVBoxLayout *verticalLayout_6;
    QGridLayout *gridLayout;
    QLabel *label_4;
    QCheckBox *chk_AllowReplanning;
    QSpacerItem *horizontalSpacer_3;
    QDoubleSpinBox *spin_PlanTime;
    QFrame *frame;
    QVBoxLayout *verticalLayout_8;
    QLabel *label_24;
    QGridLayout *gridLayout_2;
    QLabel *label_6;
    QCheckBox *chk_AvoidColl;
    QLabel *label_5;
    QDoubleSpinBox *spin_JmpThresh;
    QDoubleSpinBox *spin_StepSize;
    QSpacerItem *horizontalSpacer_4;
    QFrame *frame_2;
    QVBoxLayout *verticalLayout_10;
    QLabel *serCartesianForceControlLabel;
    QGridLayout *gridLayout_6;
    QComboBox *combo_DOF_FT;
    QLabel *label_29;
    QLabel *label_30;
    QLabel *label_26;
    QLabel *label_27;
    QLabel *label_28;
    QCheckBox *chk_EnableFT;
    QSpacerItem *horizontalSpacer_5;
    QDoubleSpinBox *spin_FTValue;
    QDoubleSpinBox *spin_FTStiffness;
    QPushButton *setFTButton;
    QPushButton *moveToHomePoseButton;
    QPushButton *executePathButton;
    QSpacerItem *verticalSpacer_5;
    QLabel *lbl_cartPathCompleted;
    QWidget *tab_SetImpedance;
    QVBoxLayout *verticalLayout_5;
    QCheckBox *chk_CartImpedance;
    QVBoxLayout *verticalLayout_2;
    QLabel *label_12;
    QGridLayout *group_Impedance;
    QLabel *label_8;
    QDoubleSpinBox *spin_Stiffness_RZ;
    QLabel *label_7;
    QDoubleSpinBox *spin_Stiffness_RX;
    QDoubleSpinBox *spin_Stiffness_Y;
    QDoubleSpinBox *spin_Stiffness_Z;
    QDoubleSpinBox *spin_Stiffness_X;
    QDoubleSpinBox *spin_Stiffness_RY;
    QSpacerItem *horizontalSpacer_6;
    QLabel *label_11;
    QGridLayout *gridLayout_9;
    QDoubleSpinBox *spin_Damping_RY;
    QLabel *label_9;
    QDoubleSpinBox *spin_Damping_X;
    QDoubleSpinBox *spin_Damping_RZ;
    QDoubleSpinBox *spin_Damping_RX;
    QDoubleSpinBox *spin_Damping_Y;
    QDoubleSpinBox *spin_Damping_Z;
    QLabel *label_10;
    QSpacerItem *horizontalSpacer_7;
    QLabel *label_15;
    QGridLayout *gridLayout_10;
    QDoubleSpinBox *spin_MaxVel_Y;
    QDoubleSpinBox *spin_MaxVel_X;
    QLabel *label_14;
    QDoubleSpinBox *spin_MaxVel_Z;
    QLabel *label_13;
    QDoubleSpinBox *spin_MaxVel_RX;
    QDoubleSpinBox *spin_MaxVel_RZ;
    QDoubleSpinBox *spin_MaxVel_RY;
    QSpacerItem *horizontalSpacer_8;
    QLabel *label_18;
    QGridLayout *gridLayout_11;
    QLabel *label_17;
    QDoubleSpinBox *spin_MaxCtrlForce_X;
    QDoubleSpinBox *spin_MaxPathDev_RZ;
    QDoubleSpinBox *spin_MaxCtrlForce_RY;
    QDoubleSpinBox *spin_MaxPathDev_Y;
    QDoubleSpinBox *spin_MaxCtrlForce_Z;
    QLabel *label_19;
    QLabel *label_20;
    QDoubleSpinBox *spin_MaxCtrlForce_Y;
    QLabel *label_16;
    QDoubleSpinBox *spin_MaxPathDev_RX;
    QDoubleSpinBox *spin_MaxPathDev_Z;
    QDoubleSpinBox *spin_MaxPathDev_X;
    QDoubleSpinBox *spin_MaxCtrlForce_RX;
    QDoubleSpinBox *spin_MaxCtrlForce_RZ;
    QDoubleSpinBox *spin_MaxPathDev_RY;
    QSpacerItem *horizontalSpacer_9;
    QLabel *label_21;
    QGridLayout *gridLayout_12;
    QDoubleSpinBox *spin_NullSpace_Damping;
    QLabel *label_22;
    QDoubleSpinBox *spin_NullSpace_Stiffness;
    QLabel *label_23;
    QSpacerItem *horizontalSpacer_10;
    QPushButton *setCartImpParamsButton;
    QSpacerItem *verticalSpacer_6;
    QProgressBar *progressBar;

    void setupUi(QWidget *PathPlanningWidget)
    {
        if (PathPlanningWidget->objectName().isEmpty())
            PathPlanningWidget->setObjectName(QString::fromUtf8("PathPlanningWidget"));
        PathPlanningWidget->resize(433, 946);
        verticalLayout = new QVBoxLayout(PathPlanningWidget);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        tabWidget = new QTabWidget(PathPlanningWidget);
        tabWidget->setObjectName(QString::fromUtf8("tabWidget"));
        tabWidget->setContextMenuPolicy(Qt::CustomContextMenu);
        tab_MakePlan = new QWidget();
        tab_MakePlan->setObjectName(QString::fromUtf8("tab_MakePlan"));
        verticalLayout_7 = new QVBoxLayout(tab_MakePlan);
        verticalLayout_7->setObjectName(QString::fromUtf8("verticalLayout_7"));
        label_32 = new QLabel(tab_MakePlan);
        label_32->setObjectName(QString::fromUtf8("label_32"));
        QFont font;
        font.setPointSize(11);
        font.setBold(true);
        font.setWeight(75);
        label_32->setFont(font);

        verticalLayout_7->addWidget(label_32);

        gridLayout_8 = new QGridLayout();
        gridLayout_8->setContentsMargins(0, 0, 0, 0);
        gridLayout_8->setObjectName(QString::fromUtf8("gridLayout_8"));
        planningGroupLabel = new QLabel(tab_MakePlan);
        planningGroupLabel->setObjectName(QString::fromUtf8("planningGroupLabel"));

        gridLayout_8->addWidget(planningGroupLabel, 0, 0, 1, 1);

        combo_planGroup = new QComboBox(tab_MakePlan);
        combo_planGroup->setObjectName(QString::fromUtf8("combo_planGroup"));

        gridLayout_8->addWidget(combo_planGroup, 0, 2, 1, 1);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_8->addItem(horizontalSpacer_2, 0, 1, 1, 1);

        referenceFrameInput = new QLineEdit(tab_MakePlan);
        referenceFrameInput->setObjectName(QString::fromUtf8("referenceFrameInput"));
        referenceFrameInput->setEnabled(false);

        gridLayout_8->addWidget(referenceFrameInput, 1, 2, 1, 1);

        referenceFrameLabel = new QLabel(tab_MakePlan);
        referenceFrameLabel->setObjectName(QString::fromUtf8("referenceFrameLabel"));

        gridLayout_8->addWidget(referenceFrameLabel, 1, 0, 1, 1);

        gridLayout_8->setColumnStretch(0, 48);
        gridLayout_8->setColumnStretch(1, 4);
        gridLayout_8->setColumnStretch(2, 48);

        verticalLayout_7->addLayout(gridLayout_8);

        line_2 = new QFrame(tab_MakePlan);
        line_2->setObjectName(QString::fromUtf8("line_2"));
        line_2->setFrameShape(QFrame::HLine);
        line_2->setFrameShadow(QFrame::Sunken);

        verticalLayout_7->addWidget(line_2);

        label_3 = new QLabel(tab_MakePlan);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setFont(font);

        verticalLayout_7->addWidget(label_3);

        label = new QLabel(tab_MakePlan);
        label->setObjectName(QString::fromUtf8("label"));

        verticalLayout_7->addWidget(label);

        treeView = new QTreeView(tab_MakePlan);
        treeView->setObjectName(QString::fromUtf8("treeView"));
        treeView->setRootIsDecorated(true);
        treeView->setUniformRowHeights(true);
        treeView->header()->setDefaultSectionSize(100);

        verticalLayout_7->addWidget(treeView);

        gridLayout_7 = new QGridLayout();
        gridLayout_7->setObjectName(QString::fromUtf8("gridLayout_7"));
        moveWaypointUpButton = new QPushButton(tab_MakePlan);
        moveWaypointUpButton->setObjectName(QString::fromUtf8("moveWaypointUpButton"));

        gridLayout_7->addWidget(moveWaypointUpButton, 1, 2, 1, 1);

        moveToWaypointButton = new QPushButton(tab_MakePlan);
        moveToWaypointButton->setObjectName(QString::fromUtf8("moveToWaypointButton"));

        gridLayout_7->addWidget(moveToWaypointButton, 1, 0, 1, 1);

        moveWaypointDownButton = new QPushButton(tab_MakePlan);
        moveWaypointDownButton->setObjectName(QString::fromUtf8("moveWaypointDownButton"));

        gridLayout_7->addWidget(moveWaypointDownButton, 2, 2, 1, 1);

        deleteWaypointButton = new QPushButton(tab_MakePlan);
        deleteWaypointButton->setObjectName(QString::fromUtf8("deleteWaypointButton"));

        gridLayout_7->addWidget(deleteWaypointButton, 2, 0, 1, 1);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_7->addItem(horizontalSpacer, 1, 1, 1, 1);

        gridLayout_7->setColumnStretch(0, 48);
        gridLayout_7->setColumnStretch(1, 4);
        gridLayout_7->setColumnStretch(2, 48);

        verticalLayout_7->addLayout(gridLayout_7);

        line_3 = new QFrame(tab_MakePlan);
        line_3->setObjectName(QString::fromUtf8("line_3"));
        line_3->setFrameShape(QFrame::HLine);
        line_3->setFrameShadow(QFrame::Sunken);

        verticalLayout_7->addWidget(line_3);

        label_31 = new QLabel(tab_MakePlan);
        label_31->setObjectName(QString::fromUtf8("label_31"));
        label_31->setFont(font);

        verticalLayout_7->addWidget(label_31);

        gridLayout_3 = new QGridLayout();
        gridLayout_3->setObjectName(QString::fromUtf8("gridLayout_3"));
        addCurrentPositionPointButton = new QPushButton(tab_MakePlan);
        addCurrentPositionPointButton->setObjectName(QString::fromUtf8("addCurrentPositionPointButton"));

        gridLayout_3->addWidget(addCurrentPositionPointButton, 2, 2, 1, 1);

        addNewWaypointButton = new QPushButton(tab_MakePlan);
        addNewWaypointButton->setObjectName(QString::fromUtf8("addNewWaypointButton"));

        gridLayout_3->addWidget(addNewWaypointButton, 2, 0, 1, 1);

        gridLayout_5 = new QGridLayout();
        gridLayout_5->setObjectName(QString::fromUtf8("gridLayout_5"));
        currentPositionX = new QDoubleSpinBox(tab_MakePlan);
        currentPositionX->setObjectName(QString::fromUtf8("currentPositionX"));
        currentPositionX->setEnabled(false);
        currentPositionX->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        currentPositionX->setDecimals(4);
        currentPositionX->setMinimum(-9.999900000000000);
        currentPositionX->setMaximum(9.999900000000000);
        currentPositionX->setSingleStep(0.001000000000000);

        gridLayout_5->addWidget(currentPositionX, 1, 1, 1, 1);

        labelX = new QLabel(tab_MakePlan);
        labelX->setObjectName(QString::fromUtf8("labelX"));

        gridLayout_5->addWidget(labelX, 1, 0, 1, 1);

        labelY = new QLabel(tab_MakePlan);
        labelY->setObjectName(QString::fromUtf8("labelY"));

        gridLayout_5->addWidget(labelY, 2, 0, 1, 1);

        labelZ = new QLabel(tab_MakePlan);
        labelZ->setObjectName(QString::fromUtf8("labelZ"));

        gridLayout_5->addWidget(labelZ, 3, 0, 1, 1);

        labelRx = new QLabel(tab_MakePlan);
        labelRx->setObjectName(QString::fromUtf8("labelRx"));

        gridLayout_5->addWidget(labelRx, 4, 0, 1, 1);

        labelRy = new QLabel(tab_MakePlan);
        labelRy->setObjectName(QString::fromUtf8("labelRy"));

        gridLayout_5->addWidget(labelRy, 5, 0, 1, 1);

        labelRz = new QLabel(tab_MakePlan);
        labelRz->setObjectName(QString::fromUtf8("labelRz"));

        gridLayout_5->addWidget(labelRz, 6, 0, 1, 1);

        currentPositionY = new QDoubleSpinBox(tab_MakePlan);
        currentPositionY->setObjectName(QString::fromUtf8("currentPositionY"));
        currentPositionY->setEnabled(false);
        currentPositionY->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        currentPositionY->setDecimals(4);
        currentPositionY->setMinimum(-9.999900000000000);
        currentPositionY->setMaximum(9.999900000000000);
        currentPositionY->setSingleStep(0.001000000000000);
        currentPositionY->setValue(0.000000000000000);

        gridLayout_5->addWidget(currentPositionY, 2, 1, 1, 1);

        currentPositionZ = new QDoubleSpinBox(tab_MakePlan);
        currentPositionZ->setObjectName(QString::fromUtf8("currentPositionZ"));
        currentPositionZ->setEnabled(false);
        currentPositionZ->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        currentPositionZ->setDecimals(4);
        currentPositionZ->setMinimum(-9.999900000000000);
        currentPositionZ->setMaximum(9.999900000000000);
        currentPositionZ->setSingleStep(0.001000000000000);
        currentPositionZ->setValue(0.000000000000000);

        gridLayout_5->addWidget(currentPositionZ, 3, 1, 1, 1);

        currentPositionRy = new QDoubleSpinBox(tab_MakePlan);
        currentPositionRy->setObjectName(QString::fromUtf8("currentPositionRy"));
        currentPositionRy->setEnabled(false);
        currentPositionRy->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        currentPositionRy->setDecimals(3);
        currentPositionRy->setMinimum(-360.000000000000000);
        currentPositionRy->setMaximum(360.000000000000000);

        gridLayout_5->addWidget(currentPositionRy, 5, 1, 1, 1);

        currentPositionRz = new QDoubleSpinBox(tab_MakePlan);
        currentPositionRz->setObjectName(QString::fromUtf8("currentPositionRz"));
        currentPositionRz->setEnabled(false);
        currentPositionRz->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        currentPositionRz->setDecimals(3);
        currentPositionRz->setMinimum(-360.000000000000000);
        currentPositionRz->setMaximum(360.000000000000000);
        currentPositionRz->setValue(0.000000000000000);

        gridLayout_5->addWidget(currentPositionRz, 6, 1, 1, 1);

        currentPositionRx = new QDoubleSpinBox(tab_MakePlan);
        currentPositionRx->setObjectName(QString::fromUtf8("currentPositionRx"));
        currentPositionRx->setEnabled(false);
        currentPositionRx->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        currentPositionRx->setDecimals(3);
        currentPositionRx->setMinimum(-360.000000000000000);
        currentPositionRx->setMaximum(360.000000000000000);

        gridLayout_5->addWidget(currentPositionRx, 4, 1, 1, 1);


        gridLayout_3->addLayout(gridLayout_5, 1, 2, 1, 1);

        moveToNewPositionButton = new QPushButton(tab_MakePlan);
        moveToNewPositionButton->setObjectName(QString::fromUtf8("moveToNewPositionButton"));

        gridLayout_3->addWidget(moveToNewPositionButton, 3, 0, 1, 1);

        label_2 = new QLabel(tab_MakePlan);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setMinimumSize(QSize(165, 0));

        gridLayout_3->addWidget(label_2, 0, 0, 1, 1);

        gridLayout_4 = new QGridLayout();
        gridLayout_4->setObjectName(QString::fromUtf8("gridLayout_4"));
        newWaypointX = new QDoubleSpinBox(tab_MakePlan);
        newWaypointX->setObjectName(QString::fromUtf8("newWaypointX"));
        newWaypointX->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        newWaypointX->setDecimals(4);
        newWaypointX->setMinimum(-9.999900000000000);
        newWaypointX->setMaximum(9.999900000000000);
        newWaypointX->setSingleStep(0.001000000000000);

        gridLayout_4->addWidget(newWaypointX, 0, 1, 1, 1);

        newWaypointY = new QDoubleSpinBox(tab_MakePlan);
        newWaypointY->setObjectName(QString::fromUtf8("newWaypointY"));
        newWaypointY->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        newWaypointY->setDecimals(4);
        newWaypointY->setMinimum(-9.999900000000000);
        newWaypointY->setMaximum(9.999900000000000);
        newWaypointY->setSingleStep(0.001000000000000);

        gridLayout_4->addWidget(newWaypointY, 1, 1, 1, 1);

        zLabel = new QLabel(tab_MakePlan);
        zLabel->setObjectName(QString::fromUtf8("zLabel"));

        gridLayout_4->addWidget(zLabel, 2, 0, 1, 1);

        ryLabel = new QLabel(tab_MakePlan);
        ryLabel->setObjectName(QString::fromUtf8("ryLabel"));

        gridLayout_4->addWidget(ryLabel, 4, 0, 1, 1);

        xLabel = new QLabel(tab_MakePlan);
        xLabel->setObjectName(QString::fromUtf8("xLabel"));

        gridLayout_4->addWidget(xLabel, 0, 0, 1, 1);

        rzLabel = new QLabel(tab_MakePlan);
        rzLabel->setObjectName(QString::fromUtf8("rzLabel"));

        gridLayout_4->addWidget(rzLabel, 5, 0, 1, 1);

        rxLabel = new QLabel(tab_MakePlan);
        rxLabel->setObjectName(QString::fromUtf8("rxLabel"));

        gridLayout_4->addWidget(rxLabel, 3, 0, 1, 1);

        yLabel = new QLabel(tab_MakePlan);
        yLabel->setObjectName(QString::fromUtf8("yLabel"));

        gridLayout_4->addWidget(yLabel, 1, 0, 1, 1);

        newWaypointZ = new QDoubleSpinBox(tab_MakePlan);
        newWaypointZ->setObjectName(QString::fromUtf8("newWaypointZ"));
        newWaypointZ->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        newWaypointZ->setDecimals(4);
        newWaypointZ->setMinimum(-9.999900000000000);
        newWaypointZ->setMaximum(9.999900000000000);
        newWaypointZ->setSingleStep(0.001000000000000);

        gridLayout_4->addWidget(newWaypointZ, 2, 1, 1, 1);

        newWaypointRx = new QDoubleSpinBox(tab_MakePlan);
        newWaypointRx->setObjectName(QString::fromUtf8("newWaypointRx"));
        newWaypointRx->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        newWaypointRx->setDecimals(3);
        newWaypointRx->setMinimum(-360.000000000000000);
        newWaypointRx->setMaximum(360.000000000000000);

        gridLayout_4->addWidget(newWaypointRx, 3, 1, 1, 1);

        newWaypointRz = new QDoubleSpinBox(tab_MakePlan);
        newWaypointRz->setObjectName(QString::fromUtf8("newWaypointRz"));
        newWaypointRz->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        newWaypointRz->setDecimals(3);
        newWaypointRz->setMinimum(-360.000000000000000);
        newWaypointRz->setMaximum(360.000000000000000);

        gridLayout_4->addWidget(newWaypointRz, 5, 1, 1, 1);

        newWaypointRy = new QDoubleSpinBox(tab_MakePlan);
        newWaypointRy->setObjectName(QString::fromUtf8("newWaypointRy"));
        newWaypointRy->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        newWaypointRy->setDecimals(3);
        newWaypointRy->setMinimum(-360.000000000000000);
        newWaypointRy->setMaximum(360.000000000000000);

        gridLayout_4->addWidget(newWaypointRy, 4, 1, 1, 1);


        gridLayout_3->addLayout(gridLayout_4, 1, 0, 1, 1);

        verticalLayout_13 = new QVBoxLayout();
        verticalLayout_13->setObjectName(QString::fromUtf8("verticalLayout_13"));
        copyCurrentPoseButton = new QPushButton(tab_MakePlan);
        copyCurrentPoseButton->setObjectName(QString::fromUtf8("copyCurrentPoseButton"));
        copyCurrentPoseButton->setEnabled(true);
        QSizePolicy sizePolicy(QSizePolicy::Minimum, QSizePolicy::MinimumExpanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(copyCurrentPoseButton->sizePolicy().hasHeightForWidth());
        copyCurrentPoseButton->setSizePolicy(sizePolicy);
        copyCurrentPoseButton->setMinimumSize(QSize(20, 0));
        copyCurrentPoseButton->setMaximumSize(QSize(24, 128));
        copyCurrentPoseButton->setBaseSize(QSize(0, 0));

        verticalLayout_13->addWidget(copyCurrentPoseButton);


        gridLayout_3->addLayout(verticalLayout_13, 1, 1, 1, 1);

        label_35 = new QLabel(tab_MakePlan);
        label_35->setObjectName(QString::fromUtf8("label_35"));
        label_35->setMinimumSize(QSize(165, 0));

        gridLayout_3->addWidget(label_35, 0, 2, 1, 1);

        gridLayout_3->setColumnStretch(0, 48);
        gridLayout_3->setColumnStretch(1, 4);
        gridLayout_3->setColumnStretch(2, 48);

        verticalLayout_7->addLayout(gridLayout_3);

        line = new QFrame(tab_MakePlan);
        line->setObjectName(QString::fromUtf8("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout_7->addWidget(line);

        clearAllPointsButton = new QPushButton(tab_MakePlan);
        clearAllPointsButton->setObjectName(QString::fromUtf8("clearAllPointsButton"));

        verticalLayout_7->addWidget(clearAllPointsButton);

        savePathButton = new QPushButton(tab_MakePlan);
        savePathButton->setObjectName(QString::fromUtf8("savePathButton"));

        verticalLayout_7->addWidget(savePathButton);

        loadPathButton = new QPushButton(tab_MakePlan);
        loadPathButton->setObjectName(QString::fromUtf8("loadPathButton"));

        verticalLayout_7->addWidget(loadPathButton);

        verticalSpacer_2 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_7->addItem(verticalSpacer_2);

        tabWidget->addTab(tab_MakePlan, QString());
        tab_ExecutePlan = new QWidget();
        tab_ExecutePlan->setObjectName(QString::fromUtf8("tab_ExecutePlan"));
        verticalLayout_6 = new QVBoxLayout(tab_ExecutePlan);
        verticalLayout_6->setObjectName(QString::fromUtf8("verticalLayout_6"));
        gridLayout = new QGridLayout();
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        label_4 = new QLabel(tab_ExecutePlan);
        label_4->setObjectName(QString::fromUtf8("label_4"));

        gridLayout->addWidget(label_4, 0, 0, 1, 1);

        chk_AllowReplanning = new QCheckBox(tab_ExecutePlan);
        chk_AllowReplanning->setObjectName(QString::fromUtf8("chk_AllowReplanning"));

        gridLayout->addWidget(chk_AllowReplanning, 1, 2, 1, 1);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout->addItem(horizontalSpacer_3, 0, 1, 1, 1);

        spin_PlanTime = new QDoubleSpinBox(tab_ExecutePlan);
        spin_PlanTime->setObjectName(QString::fromUtf8("spin_PlanTime"));
        spin_PlanTime->setMinimumSize(QSize(100, 0));
        spin_PlanTime->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_PlanTime->setDecimals(1);
        spin_PlanTime->setMinimum(0.100000000000000);
        spin_PlanTime->setMaximum(60.000000000000000);
        spin_PlanTime->setValue(5.000000000000000);

        gridLayout->addWidget(spin_PlanTime, 0, 2, 1, 1);


        verticalLayout_6->addLayout(gridLayout);

        frame = new QFrame(tab_ExecutePlan);
        frame->setObjectName(QString::fromUtf8("frame"));
        frame->setFrameShape(QFrame::StyledPanel);
        frame->setFrameShadow(QFrame::Raised);
        verticalLayout_8 = new QVBoxLayout(frame);
        verticalLayout_8->setObjectName(QString::fromUtf8("verticalLayout_8"));
        label_24 = new QLabel(frame);
        label_24->setObjectName(QString::fromUtf8("label_24"));
        label_24->setFont(font);

        verticalLayout_8->addWidget(label_24);

        gridLayout_2 = new QGridLayout();
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        label_6 = new QLabel(frame);
        label_6->setObjectName(QString::fromUtf8("label_6"));

        gridLayout_2->addWidget(label_6, 1, 0, 1, 1);

        chk_AvoidColl = new QCheckBox(frame);
        chk_AvoidColl->setObjectName(QString::fromUtf8("chk_AvoidColl"));

        gridLayout_2->addWidget(chk_AvoidColl, 2, 2, 1, 1);

        label_5 = new QLabel(frame);
        label_5->setObjectName(QString::fromUtf8("label_5"));
        QFont font1;
        font1.setBold(false);
        font1.setWeight(50);
        label_5->setFont(font1);

        gridLayout_2->addWidget(label_5, 0, 0, 1, 1);

        spin_JmpThresh = new QDoubleSpinBox(frame);
        spin_JmpThresh->setObjectName(QString::fromUtf8("spin_JmpThresh"));
        spin_JmpThresh->setMinimumSize(QSize(100, 0));
        spin_JmpThresh->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_JmpThresh->setDecimals(3);
        spin_JmpThresh->setMinimum(0.000000000000000);
        spin_JmpThresh->setMaximum(9.999000000000001);
        spin_JmpThresh->setSingleStep(0.010000000000000);
        spin_JmpThresh->setValue(0.000000000000000);

        gridLayout_2->addWidget(spin_JmpThresh, 1, 2, 1, 1);

        spin_StepSize = new QDoubleSpinBox(frame);
        spin_StepSize->setObjectName(QString::fromUtf8("spin_StepSize"));
        spin_StepSize->setMinimumSize(QSize(100, 0));
        spin_StepSize->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_StepSize->setDecimals(3);
        spin_StepSize->setMinimum(0.001000000000000);
        spin_StepSize->setMaximum(9.999000000000001);
        spin_StepSize->setSingleStep(0.010000000000000);
        spin_StepSize->setValue(0.010000000000000);

        gridLayout_2->addWidget(spin_StepSize, 0, 2, 1, 1);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer_4, 0, 1, 1, 1);


        verticalLayout_8->addLayout(gridLayout_2);


        verticalLayout_6->addWidget(frame);

        frame_2 = new QFrame(tab_ExecutePlan);
        frame_2->setObjectName(QString::fromUtf8("frame_2"));
        frame_2->setFrameShape(QFrame::StyledPanel);
        frame_2->setFrameShadow(QFrame::Raised);
        verticalLayout_10 = new QVBoxLayout(frame_2);
        verticalLayout_10->setObjectName(QString::fromUtf8("verticalLayout_10"));
        serCartesianForceControlLabel = new QLabel(frame_2);
        serCartesianForceControlLabel->setObjectName(QString::fromUtf8("serCartesianForceControlLabel"));
        serCartesianForceControlLabel->setFont(font);

        verticalLayout_10->addWidget(serCartesianForceControlLabel);

        gridLayout_6 = new QGridLayout();
        gridLayout_6->setObjectName(QString::fromUtf8("gridLayout_6"));
        combo_DOF_FT = new QComboBox(frame_2);
        combo_DOF_FT->setObjectName(QString::fromUtf8("combo_DOF_FT"));
        combo_DOF_FT->setMaxVisibleItems(6);
        combo_DOF_FT->setMaxCount(6);

        gridLayout_6->addWidget(combo_DOF_FT, 1, 2, 1, 1);

        label_29 = new QLabel(frame_2);
        label_29->setObjectName(QString::fromUtf8("label_29"));
        QFont font2;
        font2.setBold(true);
        font2.setWeight(75);
        label_29->setFont(font2);

        gridLayout_6->addWidget(label_29, 2, 0, 1, 1);

        label_30 = new QLabel(frame_2);
        label_30->setObjectName(QString::fromUtf8("label_30"));

        gridLayout_6->addWidget(label_30, 5, 0, 1, 1);

        label_26 = new QLabel(frame_2);
        label_26->setObjectName(QString::fromUtf8("label_26"));
        label_26->setFont(font2);

        gridLayout_6->addWidget(label_26, 4, 0, 1, 1);

        label_27 = new QLabel(frame_2);
        label_27->setObjectName(QString::fromUtf8("label_27"));

        gridLayout_6->addWidget(label_27, 1, 0, 1, 1);

        label_28 = new QLabel(frame_2);
        label_28->setObjectName(QString::fromUtf8("label_28"));

        gridLayout_6->addWidget(label_28, 3, 0, 1, 1);

        chk_EnableFT = new QCheckBox(frame_2);
        chk_EnableFT->setObjectName(QString::fromUtf8("chk_EnableFT"));
        chk_EnableFT->setFont(font2);
        chk_EnableFT->setChecked(true);

        gridLayout_6->addWidget(chk_EnableFT, 0, 0, 1, 1);

        horizontalSpacer_5 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_6->addItem(horizontalSpacer_5, 0, 1, 1, 1);

        spin_FTValue = new QDoubleSpinBox(frame_2);
        spin_FTValue->setObjectName(QString::fromUtf8("spin_FTValue"));
        spin_FTValue->setMinimumSize(QSize(100, 0));
        spin_FTValue->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_FTValue->setDecimals(0);
        spin_FTValue->setMaximum(10000.000000000000000);
        spin_FTValue->setValue(5.000000000000000);

        gridLayout_6->addWidget(spin_FTValue, 3, 2, 1, 1);

        spin_FTStiffness = new QDoubleSpinBox(frame_2);
        spin_FTStiffness->setObjectName(QString::fromUtf8("spin_FTStiffness"));
        spin_FTStiffness->setMinimumSize(QSize(100, 0));
        spin_FTStiffness->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_FTStiffness->setDecimals(0);
        spin_FTStiffness->setMaximum(10000.000000000000000);
        spin_FTStiffness->setValue(1000.000000000000000);

        gridLayout_6->addWidget(spin_FTStiffness, 5, 2, 1, 1);


        verticalLayout_10->addLayout(gridLayout_6);

        setFTButton = new QPushButton(frame_2);
        setFTButton->setObjectName(QString::fromUtf8("setFTButton"));

        verticalLayout_10->addWidget(setFTButton);


        verticalLayout_6->addWidget(frame_2);

        moveToHomePoseButton = new QPushButton(tab_ExecutePlan);
        moveToHomePoseButton->setObjectName(QString::fromUtf8("moveToHomePoseButton"));

        verticalLayout_6->addWidget(moveToHomePoseButton);

        executePathButton = new QPushButton(tab_ExecutePlan);
        executePathButton->setObjectName(QString::fromUtf8("executePathButton"));

        verticalLayout_6->addWidget(executePathButton);

        verticalSpacer_5 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_6->addItem(verticalSpacer_5);

        lbl_cartPathCompleted = new QLabel(tab_ExecutePlan);
        lbl_cartPathCompleted->setObjectName(QString::fromUtf8("lbl_cartPathCompleted"));
        QFont font3;
        font3.setPointSize(12);
        font3.setBold(true);
        font3.setWeight(75);
        lbl_cartPathCompleted->setFont(font3);

        verticalLayout_6->addWidget(lbl_cartPathCompleted);

        tabWidget->addTab(tab_ExecutePlan, QString());
        tab_SetImpedance = new QWidget();
        tab_SetImpedance->setObjectName(QString::fromUtf8("tab_SetImpedance"));
        verticalLayout_5 = new QVBoxLayout(tab_SetImpedance);
        verticalLayout_5->setObjectName(QString::fromUtf8("verticalLayout_5"));
        chk_CartImpedance = new QCheckBox(tab_SetImpedance);
        chk_CartImpedance->setObjectName(QString::fromUtf8("chk_CartImpedance"));
        chk_CartImpedance->setFont(font2);
        chk_CartImpedance->setChecked(true);

        verticalLayout_5->addWidget(chk_CartImpedance);

        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        label_12 = new QLabel(tab_SetImpedance);
        label_12->setObjectName(QString::fromUtf8("label_12"));
        QFont font4;
        font4.setPointSize(11);
        font4.setBold(true);
        font4.setWeight(75);
        font4.setKerning(true);
        label_12->setFont(font4);

        verticalLayout_2->addWidget(label_12);

        group_Impedance = new QGridLayout();
        group_Impedance->setObjectName(QString::fromUtf8("group_Impedance"));
        label_8 = new QLabel(tab_SetImpedance);
        label_8->setObjectName(QString::fromUtf8("label_8"));

        group_Impedance->addWidget(label_8, 2, 0, 1, 1);

        spin_Stiffness_RZ = new QDoubleSpinBox(tab_SetImpedance);
        spin_Stiffness_RZ->setObjectName(QString::fromUtf8("spin_Stiffness_RZ"));
        spin_Stiffness_RZ->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_Stiffness_RZ->setDecimals(0);
        spin_Stiffness_RZ->setMaximum(999.000000000000000);
        spin_Stiffness_RZ->setValue(200.000000000000000);

        group_Impedance->addWidget(spin_Stiffness_RZ, 2, 4, 1, 1);

        label_7 = new QLabel(tab_SetImpedance);
        label_7->setObjectName(QString::fromUtf8("label_7"));

        group_Impedance->addWidget(label_7, 1, 0, 1, 1);

        spin_Stiffness_RX = new QDoubleSpinBox(tab_SetImpedance);
        spin_Stiffness_RX->setObjectName(QString::fromUtf8("spin_Stiffness_RX"));
        spin_Stiffness_RX->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_Stiffness_RX->setDecimals(0);
        spin_Stiffness_RX->setMaximum(999.000000000000000);
        spin_Stiffness_RX->setValue(200.000000000000000);

        group_Impedance->addWidget(spin_Stiffness_RX, 2, 2, 1, 1);

        spin_Stiffness_Y = new QDoubleSpinBox(tab_SetImpedance);
        spin_Stiffness_Y->setObjectName(QString::fromUtf8("spin_Stiffness_Y"));
        spin_Stiffness_Y->setMinimumSize(QSize(100, 0));
        spin_Stiffness_Y->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_Stiffness_Y->setDecimals(0);
        spin_Stiffness_Y->setMaximum(10000.000000000000000);
        spin_Stiffness_Y->setValue(1000.000000000000000);

        group_Impedance->addWidget(spin_Stiffness_Y, 1, 3, 1, 1);

        spin_Stiffness_Z = new QDoubleSpinBox(tab_SetImpedance);
        spin_Stiffness_Z->setObjectName(QString::fromUtf8("spin_Stiffness_Z"));
        spin_Stiffness_Z->setMinimumSize(QSize(100, 0));
        spin_Stiffness_Z->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_Stiffness_Z->setDecimals(0);
        spin_Stiffness_Z->setMaximum(10000.000000000000000);
        spin_Stiffness_Z->setValue(1000.000000000000000);

        group_Impedance->addWidget(spin_Stiffness_Z, 1, 4, 1, 1);

        spin_Stiffness_X = new QDoubleSpinBox(tab_SetImpedance);
        spin_Stiffness_X->setObjectName(QString::fromUtf8("spin_Stiffness_X"));
        spin_Stiffness_X->setMinimumSize(QSize(100, 0));
        spin_Stiffness_X->setBaseSize(QSize(0, 0));
        spin_Stiffness_X->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_Stiffness_X->setDecimals(0);
        spin_Stiffness_X->setMaximum(10000.000000000000000);
        spin_Stiffness_X->setValue(1000.000000000000000);

        group_Impedance->addWidget(spin_Stiffness_X, 1, 2, 1, 1);

        spin_Stiffness_RY = new QDoubleSpinBox(tab_SetImpedance);
        spin_Stiffness_RY->setObjectName(QString::fromUtf8("spin_Stiffness_RY"));
        spin_Stiffness_RY->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_Stiffness_RY->setDecimals(0);
        spin_Stiffness_RY->setMaximum(999.000000000000000);
        spin_Stiffness_RY->setValue(200.000000000000000);

        group_Impedance->addWidget(spin_Stiffness_RY, 2, 3, 1, 1);

        horizontalSpacer_6 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        group_Impedance->addItem(horizontalSpacer_6, 1, 1, 1, 1);


        verticalLayout_2->addLayout(group_Impedance);

        label_11 = new QLabel(tab_SetImpedance);
        label_11->setObjectName(QString::fromUtf8("label_11"));
        label_11->setFont(font);

        verticalLayout_2->addWidget(label_11);

        gridLayout_9 = new QGridLayout();
        gridLayout_9->setObjectName(QString::fromUtf8("gridLayout_9"));
        spin_Damping_RY = new QDoubleSpinBox(tab_SetImpedance);
        spin_Damping_RY->setObjectName(QString::fromUtf8("spin_Damping_RY"));
        spin_Damping_RY->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_Damping_RY->setDecimals(0);
        spin_Damping_RY->setMinimum(1.000000000000000);
        spin_Damping_RY->setValue(30.000000000000000);

        gridLayout_9->addWidget(spin_Damping_RY, 1, 3, 1, 1);

        label_9 = new QLabel(tab_SetImpedance);
        label_9->setObjectName(QString::fromUtf8("label_9"));

        gridLayout_9->addWidget(label_9, 0, 0, 1, 1);

        spin_Damping_X = new QDoubleSpinBox(tab_SetImpedance);
        spin_Damping_X->setObjectName(QString::fromUtf8("spin_Damping_X"));
        spin_Damping_X->setMinimumSize(QSize(100, 0));
        spin_Damping_X->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_Damping_X->setDecimals(0);
        spin_Damping_X->setMinimum(1.000000000000000);
        spin_Damping_X->setMaximum(100.000000000000000);
        spin_Damping_X->setValue(30.000000000000000);

        gridLayout_9->addWidget(spin_Damping_X, 0, 2, 1, 1);

        spin_Damping_RZ = new QDoubleSpinBox(tab_SetImpedance);
        spin_Damping_RZ->setObjectName(QString::fromUtf8("spin_Damping_RZ"));
        spin_Damping_RZ->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_Damping_RZ->setDecimals(0);
        spin_Damping_RZ->setMinimum(1.000000000000000);
        spin_Damping_RZ->setValue(30.000000000000000);

        gridLayout_9->addWidget(spin_Damping_RZ, 1, 4, 1, 1);

        spin_Damping_RX = new QDoubleSpinBox(tab_SetImpedance);
        spin_Damping_RX->setObjectName(QString::fromUtf8("spin_Damping_RX"));
        spin_Damping_RX->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_Damping_RX->setDecimals(0);
        spin_Damping_RX->setMinimum(1.000000000000000);
        spin_Damping_RX->setValue(30.000000000000000);

        gridLayout_9->addWidget(spin_Damping_RX, 1, 2, 1, 1);

        spin_Damping_Y = new QDoubleSpinBox(tab_SetImpedance);
        spin_Damping_Y->setObjectName(QString::fromUtf8("spin_Damping_Y"));
        spin_Damping_Y->setMinimumSize(QSize(100, 0));
        spin_Damping_Y->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_Damping_Y->setDecimals(0);
        spin_Damping_Y->setMinimum(1.000000000000000);
        spin_Damping_Y->setMaximum(100.000000000000000);
        spin_Damping_Y->setValue(30.000000000000000);

        gridLayout_9->addWidget(spin_Damping_Y, 0, 3, 1, 1);

        spin_Damping_Z = new QDoubleSpinBox(tab_SetImpedance);
        spin_Damping_Z->setObjectName(QString::fromUtf8("spin_Damping_Z"));
        spin_Damping_Z->setMinimumSize(QSize(100, 0));
        spin_Damping_Z->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_Damping_Z->setDecimals(0);
        spin_Damping_Z->setMinimum(1.000000000000000);
        spin_Damping_Z->setMaximum(100.000000000000000);
        spin_Damping_Z->setValue(30.000000000000000);

        gridLayout_9->addWidget(spin_Damping_Z, 0, 4, 1, 1);

        label_10 = new QLabel(tab_SetImpedance);
        label_10->setObjectName(QString::fromUtf8("label_10"));

        gridLayout_9->addWidget(label_10, 1, 0, 1, 1);

        horizontalSpacer_7 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_9->addItem(horizontalSpacer_7, 0, 1, 1, 1);


        verticalLayout_2->addLayout(gridLayout_9);

        label_15 = new QLabel(tab_SetImpedance);
        label_15->setObjectName(QString::fromUtf8("label_15"));
        label_15->setFont(font);

        verticalLayout_2->addWidget(label_15);

        gridLayout_10 = new QGridLayout();
        gridLayout_10->setObjectName(QString::fromUtf8("gridLayout_10"));
        spin_MaxVel_Y = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxVel_Y->setObjectName(QString::fromUtf8("spin_MaxVel_Y"));
        spin_MaxVel_Y->setMinimumSize(QSize(100, 0));
        spin_MaxVel_Y->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxVel_Y->setMaximum(9.990000000000000);
        spin_MaxVel_Y->setSingleStep(0.010000000000000);
        spin_MaxVel_Y->setValue(1.000000000000000);

        gridLayout_10->addWidget(spin_MaxVel_Y, 0, 3, 1, 1);

        spin_MaxVel_X = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxVel_X->setObjectName(QString::fromUtf8("spin_MaxVel_X"));
        spin_MaxVel_X->setMinimumSize(QSize(100, 0));
        spin_MaxVel_X->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxVel_X->setMaximum(9.990000000000000);
        spin_MaxVel_X->setSingleStep(0.010000000000000);
        spin_MaxVel_X->setValue(1.000000000000000);

        gridLayout_10->addWidget(spin_MaxVel_X, 0, 2, 1, 1);

        label_14 = new QLabel(tab_SetImpedance);
        label_14->setObjectName(QString::fromUtf8("label_14"));

        gridLayout_10->addWidget(label_14, 0, 0, 1, 1);

        spin_MaxVel_Z = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxVel_Z->setObjectName(QString::fromUtf8("spin_MaxVel_Z"));
        spin_MaxVel_Z->setMinimumSize(QSize(100, 0));
        spin_MaxVel_Z->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxVel_Z->setMaximum(9.990000000000000);
        spin_MaxVel_Z->setSingleStep(0.010000000000000);
        spin_MaxVel_Z->setValue(1.000000000000000);

        gridLayout_10->addWidget(spin_MaxVel_Z, 0, 4, 1, 1);

        label_13 = new QLabel(tab_SetImpedance);
        label_13->setObjectName(QString::fromUtf8("label_13"));

        gridLayout_10->addWidget(label_13, 1, 0, 1, 1);

        spin_MaxVel_RX = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxVel_RX->setObjectName(QString::fromUtf8("spin_MaxVel_RX"));
        spin_MaxVel_RX->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxVel_RX->setDecimals(1);
        spin_MaxVel_RX->setSingleStep(0.100000000000000);
        spin_MaxVel_RX->setValue(6.300000000000000);

        gridLayout_10->addWidget(spin_MaxVel_RX, 1, 2, 1, 1);

        spin_MaxVel_RZ = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxVel_RZ->setObjectName(QString::fromUtf8("spin_MaxVel_RZ"));
        spin_MaxVel_RZ->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxVel_RZ->setDecimals(1);
        spin_MaxVel_RZ->setSingleStep(0.100000000000000);
        spin_MaxVel_RZ->setValue(6.300000000000000);

        gridLayout_10->addWidget(spin_MaxVel_RZ, 1, 4, 1, 1);

        spin_MaxVel_RY = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxVel_RY->setObjectName(QString::fromUtf8("spin_MaxVel_RY"));
        spin_MaxVel_RY->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxVel_RY->setDecimals(1);
        spin_MaxVel_RY->setSingleStep(0.100000000000000);
        spin_MaxVel_RY->setValue(6.300000000000000);

        gridLayout_10->addWidget(spin_MaxVel_RY, 1, 3, 1, 1);

        horizontalSpacer_8 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_10->addItem(horizontalSpacer_8, 0, 1, 1, 1);


        verticalLayout_2->addLayout(gridLayout_10);

        label_18 = new QLabel(tab_SetImpedance);
        label_18->setObjectName(QString::fromUtf8("label_18"));
        label_18->setFont(font);

        verticalLayout_2->addWidget(label_18);

        gridLayout_11 = new QGridLayout();
        gridLayout_11->setObjectName(QString::fromUtf8("gridLayout_11"));
        label_17 = new QLabel(tab_SetImpedance);
        label_17->setObjectName(QString::fromUtf8("label_17"));

        gridLayout_11->addWidget(label_17, 0, 0, 1, 1);

        spin_MaxCtrlForce_X = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxCtrlForce_X->setObjectName(QString::fromUtf8("spin_MaxCtrlForce_X"));
        spin_MaxCtrlForce_X->setMinimumSize(QSize(100, 0));
        spin_MaxCtrlForce_X->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxCtrlForce_X->setDecimals(0);
        spin_MaxCtrlForce_X->setMaximum(999.000000000000000);
        spin_MaxCtrlForce_X->setValue(200.000000000000000);

        gridLayout_11->addWidget(spin_MaxCtrlForce_X, 0, 2, 1, 1);

        spin_MaxPathDev_RZ = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxPathDev_RZ->setObjectName(QString::fromUtf8("spin_MaxPathDev_RZ"));
        spin_MaxPathDev_RZ->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxPathDev_RZ->setDecimals(1);
        spin_MaxPathDev_RZ->setMaximum(99.900000000000006);
        spin_MaxPathDev_RZ->setSingleStep(0.100000000000000);
        spin_MaxPathDev_RZ->setValue(5.000000000000000);

        gridLayout_11->addWidget(spin_MaxPathDev_RZ, 3, 4, 1, 1);

        spin_MaxCtrlForce_RY = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxCtrlForce_RY->setObjectName(QString::fromUtf8("spin_MaxCtrlForce_RY"));
        spin_MaxCtrlForce_RY->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxCtrlForce_RY->setDecimals(0);
        spin_MaxCtrlForce_RY->setMaximum(999.000000000000000);
        spin_MaxCtrlForce_RY->setValue(200.000000000000000);

        gridLayout_11->addWidget(spin_MaxCtrlForce_RY, 1, 3, 1, 1);

        spin_MaxPathDev_Y = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxPathDev_Y->setObjectName(QString::fromUtf8("spin_MaxPathDev_Y"));
        spin_MaxPathDev_Y->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxPathDev_Y->setSingleStep(0.010000000000000);
        spin_MaxPathDev_Y->setValue(1.000000000000000);

        gridLayout_11->addWidget(spin_MaxPathDev_Y, 2, 3, 1, 1);

        spin_MaxCtrlForce_Z = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxCtrlForce_Z->setObjectName(QString::fromUtf8("spin_MaxCtrlForce_Z"));
        spin_MaxCtrlForce_Z->setMinimumSize(QSize(100, 0));
        spin_MaxCtrlForce_Z->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxCtrlForce_Z->setDecimals(0);
        spin_MaxCtrlForce_Z->setMaximum(999.000000000000000);
        spin_MaxCtrlForce_Z->setValue(200.000000000000000);

        gridLayout_11->addWidget(spin_MaxCtrlForce_Z, 0, 4, 1, 1);

        label_19 = new QLabel(tab_SetImpedance);
        label_19->setObjectName(QString::fromUtf8("label_19"));

        gridLayout_11->addWidget(label_19, 3, 0, 1, 1);

        label_20 = new QLabel(tab_SetImpedance);
        label_20->setObjectName(QString::fromUtf8("label_20"));

        gridLayout_11->addWidget(label_20, 2, 0, 1, 1);

        spin_MaxCtrlForce_Y = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxCtrlForce_Y->setObjectName(QString::fromUtf8("spin_MaxCtrlForce_Y"));
        spin_MaxCtrlForce_Y->setMinimumSize(QSize(100, 0));
        spin_MaxCtrlForce_Y->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxCtrlForce_Y->setDecimals(0);
        spin_MaxCtrlForce_Y->setMaximum(999.000000000000000);
        spin_MaxCtrlForce_Y->setValue(200.000000000000000);

        gridLayout_11->addWidget(spin_MaxCtrlForce_Y, 0, 3, 1, 1);

        label_16 = new QLabel(tab_SetImpedance);
        label_16->setObjectName(QString::fromUtf8("label_16"));

        gridLayout_11->addWidget(label_16, 1, 0, 1, 1);

        spin_MaxPathDev_RX = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxPathDev_RX->setObjectName(QString::fromUtf8("spin_MaxPathDev_RX"));
        spin_MaxPathDev_RX->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxPathDev_RX->setDecimals(1);
        spin_MaxPathDev_RX->setMaximum(99.900000000000006);
        spin_MaxPathDev_RX->setSingleStep(0.100000000000000);
        spin_MaxPathDev_RX->setValue(5.000000000000000);

        gridLayout_11->addWidget(spin_MaxPathDev_RX, 3, 2, 1, 1);

        spin_MaxPathDev_Z = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxPathDev_Z->setObjectName(QString::fromUtf8("spin_MaxPathDev_Z"));
        spin_MaxPathDev_Z->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxPathDev_Z->setSingleStep(0.010000000000000);
        spin_MaxPathDev_Z->setValue(1.000000000000000);

        gridLayout_11->addWidget(spin_MaxPathDev_Z, 2, 4, 1, 1);

        spin_MaxPathDev_X = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxPathDev_X->setObjectName(QString::fromUtf8("spin_MaxPathDev_X"));
        spin_MaxPathDev_X->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxPathDev_X->setSingleStep(0.010000000000000);
        spin_MaxPathDev_X->setValue(1.000000000000000);

        gridLayout_11->addWidget(spin_MaxPathDev_X, 2, 2, 1, 1);

        spin_MaxCtrlForce_RX = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxCtrlForce_RX->setObjectName(QString::fromUtf8("spin_MaxCtrlForce_RX"));
        spin_MaxCtrlForce_RX->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxCtrlForce_RX->setDecimals(0);
        spin_MaxCtrlForce_RX->setMaximum(999.000000000000000);
        spin_MaxCtrlForce_RX->setValue(200.000000000000000);

        gridLayout_11->addWidget(spin_MaxCtrlForce_RX, 1, 2, 1, 1);

        spin_MaxCtrlForce_RZ = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxCtrlForce_RZ->setObjectName(QString::fromUtf8("spin_MaxCtrlForce_RZ"));
        spin_MaxCtrlForce_RZ->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxCtrlForce_RZ->setDecimals(0);
        spin_MaxCtrlForce_RZ->setMaximum(999.000000000000000);
        spin_MaxCtrlForce_RZ->setValue(200.000000000000000);

        gridLayout_11->addWidget(spin_MaxCtrlForce_RZ, 1, 4, 1, 1);

        spin_MaxPathDev_RY = new QDoubleSpinBox(tab_SetImpedance);
        spin_MaxPathDev_RY->setObjectName(QString::fromUtf8("spin_MaxPathDev_RY"));
        spin_MaxPathDev_RY->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_MaxPathDev_RY->setDecimals(1);
        spin_MaxPathDev_RY->setMaximum(99.900000000000006);
        spin_MaxPathDev_RY->setSingleStep(0.100000000000000);
        spin_MaxPathDev_RY->setValue(5.000000000000000);

        gridLayout_11->addWidget(spin_MaxPathDev_RY, 3, 3, 1, 1);

        horizontalSpacer_9 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_11->addItem(horizontalSpacer_9, 0, 1, 1, 1);


        verticalLayout_2->addLayout(gridLayout_11);

        label_21 = new QLabel(tab_SetImpedance);
        label_21->setObjectName(QString::fromUtf8("label_21"));
        label_21->setFont(font);

        verticalLayout_2->addWidget(label_21);

        gridLayout_12 = new QGridLayout();
        gridLayout_12->setObjectName(QString::fromUtf8("gridLayout_12"));
        spin_NullSpace_Damping = new QDoubleSpinBox(tab_SetImpedance);
        spin_NullSpace_Damping->setObjectName(QString::fromUtf8("spin_NullSpace_Damping"));
        spin_NullSpace_Damping->setMinimumSize(QSize(100, 0));
        spin_NullSpace_Damping->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_NullSpace_Damping->setDecimals(0);
        spin_NullSpace_Damping->setValue(70.000000000000000);

        gridLayout_12->addWidget(spin_NullSpace_Damping, 1, 3, 1, 1);

        label_22 = new QLabel(tab_SetImpedance);
        label_22->setObjectName(QString::fromUtf8("label_22"));

        gridLayout_12->addWidget(label_22, 1, 0, 1, 1);

        spin_NullSpace_Stiffness = new QDoubleSpinBox(tab_SetImpedance);
        spin_NullSpace_Stiffness->setObjectName(QString::fromUtf8("spin_NullSpace_Stiffness"));
        spin_NullSpace_Stiffness->setMinimumSize(QSize(100, 0));
        spin_NullSpace_Stiffness->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spin_NullSpace_Stiffness->setDecimals(0);
        spin_NullSpace_Stiffness->setMaximum(999.000000000000000);
        spin_NullSpace_Stiffness->setValue(100.000000000000000);

        gridLayout_12->addWidget(spin_NullSpace_Stiffness, 1, 2, 1, 1);

        label_23 = new QLabel(tab_SetImpedance);
        label_23->setObjectName(QString::fromUtf8("label_23"));

        gridLayout_12->addWidget(label_23, 0, 0, 1, 1);

        horizontalSpacer_10 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_12->addItem(horizontalSpacer_10, 0, 1, 1, 1);


        verticalLayout_2->addLayout(gridLayout_12);


        verticalLayout_5->addLayout(verticalLayout_2);

        setCartImpParamsButton = new QPushButton(tab_SetImpedance);
        setCartImpParamsButton->setObjectName(QString::fromUtf8("setCartImpParamsButton"));

        verticalLayout_5->addWidget(setCartImpParamsButton);

        verticalSpacer_6 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_5->addItem(verticalSpacer_6);

        tabWidget->addTab(tab_SetImpedance, QString());

        verticalLayout->addWidget(tabWidget);

        progressBar = new QProgressBar(PathPlanningWidget);
        progressBar->setObjectName(QString::fromUtf8("progressBar"));
        progressBar->setValue(24);

        verticalLayout->addWidget(progressBar);

        QWidget::setTabOrder(tabWidget, combo_planGroup);
        QWidget::setTabOrder(combo_planGroup, referenceFrameInput);
        QWidget::setTabOrder(referenceFrameInput, treeView);
        QWidget::setTabOrder(treeView, moveToWaypointButton);
        QWidget::setTabOrder(moveToWaypointButton, deleteWaypointButton);
        QWidget::setTabOrder(deleteWaypointButton, moveWaypointUpButton);
        QWidget::setTabOrder(moveWaypointUpButton, moveWaypointDownButton);
        QWidget::setTabOrder(moveWaypointDownButton, newWaypointX);
        QWidget::setTabOrder(newWaypointX, newWaypointY);
        QWidget::setTabOrder(newWaypointY, newWaypointZ);
        QWidget::setTabOrder(newWaypointZ, newWaypointRx);
        QWidget::setTabOrder(newWaypointRx, newWaypointRy);
        QWidget::setTabOrder(newWaypointRy, newWaypointRz);
        QWidget::setTabOrder(newWaypointRz, addNewWaypointButton);
        QWidget::setTabOrder(addNewWaypointButton, moveToNewPositionButton);
        QWidget::setTabOrder(moveToNewPositionButton, copyCurrentPoseButton);
        QWidget::setTabOrder(copyCurrentPoseButton, currentPositionX);
        QWidget::setTabOrder(currentPositionX, currentPositionY);
        QWidget::setTabOrder(currentPositionY, currentPositionZ);
        QWidget::setTabOrder(currentPositionZ, currentPositionRx);
        QWidget::setTabOrder(currentPositionRx, currentPositionRy);
        QWidget::setTabOrder(currentPositionRy, currentPositionRz);
        QWidget::setTabOrder(currentPositionRz, addCurrentPositionPointButton);
        QWidget::setTabOrder(addCurrentPositionPointButton, clearAllPointsButton);
        QWidget::setTabOrder(clearAllPointsButton, savePathButton);
        QWidget::setTabOrder(savePathButton, loadPathButton);
        QWidget::setTabOrder(loadPathButton, spin_PlanTime);
        QWidget::setTabOrder(spin_PlanTime, chk_AllowReplanning);
        QWidget::setTabOrder(chk_AllowReplanning, spin_StepSize);
        QWidget::setTabOrder(spin_StepSize, spin_JmpThresh);
        QWidget::setTabOrder(spin_JmpThresh, chk_AvoidColl);
        QWidget::setTabOrder(chk_AvoidColl, chk_EnableFT);
        QWidget::setTabOrder(chk_EnableFT, combo_DOF_FT);
        QWidget::setTabOrder(combo_DOF_FT, spin_FTValue);
        QWidget::setTabOrder(spin_FTValue, spin_FTStiffness);
        QWidget::setTabOrder(spin_FTStiffness, setFTButton);
        QWidget::setTabOrder(setFTButton, moveToHomePoseButton);
        QWidget::setTabOrder(moveToHomePoseButton, executePathButton);
        QWidget::setTabOrder(executePathButton, chk_CartImpedance);
        QWidget::setTabOrder(chk_CartImpedance, spin_Stiffness_X);
        QWidget::setTabOrder(spin_Stiffness_X, spin_Stiffness_Y);
        QWidget::setTabOrder(spin_Stiffness_Y, spin_Stiffness_Z);
        QWidget::setTabOrder(spin_Stiffness_Z, spin_Stiffness_RX);
        QWidget::setTabOrder(spin_Stiffness_RX, spin_Stiffness_RY);
        QWidget::setTabOrder(spin_Stiffness_RY, spin_Stiffness_RZ);
        QWidget::setTabOrder(spin_Stiffness_RZ, spin_Damping_X);
        QWidget::setTabOrder(spin_Damping_X, spin_Damping_Y);
        QWidget::setTabOrder(spin_Damping_Y, spin_Damping_Z);
        QWidget::setTabOrder(spin_Damping_Z, spin_Damping_RX);
        QWidget::setTabOrder(spin_Damping_RX, spin_Damping_RY);
        QWidget::setTabOrder(spin_Damping_RY, spin_Damping_RZ);
        QWidget::setTabOrder(spin_Damping_RZ, spin_MaxVel_X);
        QWidget::setTabOrder(spin_MaxVel_X, spin_MaxVel_Y);
        QWidget::setTabOrder(spin_MaxVel_Y, spin_MaxVel_Z);
        QWidget::setTabOrder(spin_MaxVel_Z, spin_MaxVel_RX);
        QWidget::setTabOrder(spin_MaxVel_RX, spin_MaxVel_RY);
        QWidget::setTabOrder(spin_MaxVel_RY, spin_MaxVel_RZ);
        QWidget::setTabOrder(spin_MaxVel_RZ, spin_MaxCtrlForce_X);
        QWidget::setTabOrder(spin_MaxCtrlForce_X, spin_MaxCtrlForce_Y);
        QWidget::setTabOrder(spin_MaxCtrlForce_Y, spin_MaxCtrlForce_Z);
        QWidget::setTabOrder(spin_MaxCtrlForce_Z, spin_MaxCtrlForce_RX);
        QWidget::setTabOrder(spin_MaxCtrlForce_RX, spin_MaxCtrlForce_RY);
        QWidget::setTabOrder(spin_MaxCtrlForce_RY, spin_MaxCtrlForce_RZ);
        QWidget::setTabOrder(spin_MaxCtrlForce_RZ, spin_MaxPathDev_X);
        QWidget::setTabOrder(spin_MaxPathDev_X, spin_MaxPathDev_Y);
        QWidget::setTabOrder(spin_MaxPathDev_Y, spin_MaxPathDev_Z);
        QWidget::setTabOrder(spin_MaxPathDev_Z, spin_MaxPathDev_RX);
        QWidget::setTabOrder(spin_MaxPathDev_RX, spin_MaxPathDev_RY);
        QWidget::setTabOrder(spin_MaxPathDev_RY, spin_MaxPathDev_RZ);
        QWidget::setTabOrder(spin_MaxPathDev_RZ, spin_NullSpace_Stiffness);
        QWidget::setTabOrder(spin_NullSpace_Stiffness, spin_NullSpace_Damping);
        QWidget::setTabOrder(spin_NullSpace_Damping, setCartImpParamsButton);

        retranslateUi(PathPlanningWidget);

        tabWidget->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(PathPlanningWidget);
    } // setupUi

    void retranslateUi(QWidget *PathPlanningWidget)
    {
        PathPlanningWidget->setWindowTitle(QApplication::translate("PathPlanningWidget", "Form", nullptr));
        label_32->setText(QApplication::translate("PathPlanningWidget", "Planning Environment", nullptr));
        planningGroupLabel->setText(QApplication::translate("PathPlanningWidget", "Move Group", nullptr));
#ifndef QT_NO_TOOLTIP
        combo_planGroup->setToolTip(QApplication::translate("PathPlanningWidget", "Select a planning group for MoveIt!", nullptr));
#endif // QT_NO_TOOLTIP
        referenceFrameInput->setText(QApplication::translate("PathPlanningWidget", "base_link", nullptr));
        referenceFrameLabel->setText(QApplication::translate("PathPlanningWidget", "Reference Frame", nullptr));
        label_3->setText(QApplication::translate("PathPlanningWidget", "Way Points", nullptr));
        label->setText(QApplication::translate("PathPlanningWidget", "Path Way Points", nullptr));
#ifndef QT_NO_TOOLTIP
        moveWaypointUpButton->setToolTip(QApplication::translate("PathPlanningWidget", "Move selected waypoint up", nullptr));
#endif // QT_NO_TOOLTIP
        moveWaypointUpButton->setText(QApplication::translate("PathPlanningWidget", "\342\226\263", nullptr));
#ifndef QT_NO_TOOLTIP
        moveToWaypointButton->setToolTip(QApplication::translate("PathPlanningWidget", "Move arm to selected waypoint", nullptr));
#endif // QT_NO_TOOLTIP
        moveToWaypointButton->setText(QApplication::translate("PathPlanningWidget", "Move to Waypoint", nullptr));
#ifndef QT_NO_TOOLTIP
        moveWaypointDownButton->setToolTip(QApplication::translate("PathPlanningWidget", "Move selected waypoint down", nullptr));
#endif // QT_NO_TOOLTIP
        moveWaypointDownButton->setText(QApplication::translate("PathPlanningWidget", "\342\226\275", nullptr));
#ifndef QT_NO_TOOLTIP
        deleteWaypointButton->setToolTip(QApplication::translate("PathPlanningWidget", "Delete selected waypoint", nullptr));
#endif // QT_NO_TOOLTIP
        deleteWaypointButton->setText(QApplication::translate("PathPlanningWidget", "Delete Waypoint", nullptr));
        label_31->setText(QApplication::translate("PathPlanningWidget", "Add New Way-Point", nullptr));
        addCurrentPositionPointButton->setText(QApplication::translate("PathPlanningWidget", "Add Point", nullptr));
#ifndef QT_NO_TOOLTIP
        addNewWaypointButton->setToolTip(QApplication::translate("PathPlanningWidget", "Add a new Way-Point", nullptr));
#endif // QT_NO_TOOLTIP
        addNewWaypointButton->setText(QApplication::translate("PathPlanningWidget", "Add Point", nullptr));
        currentPositionX->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m", nullptr));
        labelX->setText(QApplication::translate("PathPlanningWidget", "x", nullptr));
        labelY->setText(QApplication::translate("PathPlanningWidget", "y", nullptr));
        labelZ->setText(QApplication::translate("PathPlanningWidget", "z", nullptr));
        labelRx->setText(QApplication::translate("PathPlanningWidget", "Rx", nullptr));
        labelRy->setText(QApplication::translate("PathPlanningWidget", "Ry", nullptr));
        labelRz->setText(QApplication::translate("PathPlanningWidget", "Rz", nullptr));
        currentPositionY->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m", nullptr));
        currentPositionZ->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m", nullptr));
        currentPositionRy->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211\302\260", nullptr));
        currentPositionRz->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211\302\260", nullptr));
        currentPositionRx->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211\302\260", nullptr));
        moveToNewPositionButton->setText(QApplication::translate("PathPlanningWidget", "Move to Pose", nullptr));
        label_2->setText(QApplication::translate("PathPlanningWidget", "Set Position/Orientation", nullptr));
        newWaypointX->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m", nullptr));
        newWaypointY->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m", nullptr));
        zLabel->setText(QApplication::translate("PathPlanningWidget", "z", nullptr));
        ryLabel->setText(QApplication::translate("PathPlanningWidget", "Ry", nullptr));
        xLabel->setText(QApplication::translate("PathPlanningWidget", "x", nullptr));
        rzLabel->setText(QApplication::translate("PathPlanningWidget", "Rz", nullptr));
        rxLabel->setText(QApplication::translate("PathPlanningWidget", "Rx", nullptr));
        yLabel->setText(QApplication::translate("PathPlanningWidget", "y", nullptr));
        newWaypointZ->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m", nullptr));
        newWaypointRx->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211\302\260", nullptr));
        newWaypointRz->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211\302\260", nullptr));
        newWaypointRy->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211\302\260", nullptr));
#ifndef QT_NO_TOOLTIP
        copyCurrentPoseButton->setToolTip(QApplication::translate("PathPlanningWidget", "Copy values from current position/orientation", nullptr));
#endif // QT_NO_TOOLTIP
        copyCurrentPoseButton->setText(QApplication::translate("PathPlanningWidget", "\342\227\201", nullptr));
        label_35->setText(QApplication::translate("PathPlanningWidget", "Current Position/Orientation", nullptr));
        clearAllPointsButton->setText(QApplication::translate("PathPlanningWidget", "Clear All Points", nullptr));
#ifndef QT_NO_TOOLTIP
        savePathButton->setToolTip(QApplication::translate("PathPlanningWidget", "Save Way-Points to a file", nullptr));
#endif // QT_NO_TOOLTIP
        savePathButton->setText(QApplication::translate("PathPlanningWidget", "Save Path", nullptr));
#ifndef QT_NO_TOOLTIP
        loadPathButton->setToolTip(QApplication::translate("PathPlanningWidget", "Load Way-Points from a file", nullptr));
#endif // QT_NO_TOOLTIP
        loadPathButton->setText(QApplication::translate("PathPlanningWidget", "Load Path", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab_MakePlan), QApplication::translate("PathPlanningWidget", "Path Design", nullptr));
        label_4->setText(QApplication::translate("PathPlanningWidget", "Planning Time:", nullptr));
        chk_AllowReplanning->setText(QApplication::translate("PathPlanningWidget", "Allow Replanning", nullptr));
        spin_PlanTime->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211s", nullptr));
        label_24->setText(QApplication::translate("PathPlanningWidget", "Cartesian Path Parameters", nullptr));
        label_6->setText(QApplication::translate("PathPlanningWidget", "Jump Threshold (m) :", nullptr));
        chk_AvoidColl->setText(QApplication::translate("PathPlanningWidget", "Avoid Collisions", nullptr));
        label_5->setText(QApplication::translate("PathPlanningWidget", "Step size (m) :", nullptr));
        spin_JmpThresh->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m", nullptr));
        spin_StepSize->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m", nullptr));
        serCartesianForceControlLabel->setText(QApplication::translate("PathPlanningWidget", "Set Cartesian Force Control", nullptr));
        label_29->setText(QApplication::translate("PathPlanningWidget", "Force", nullptr));
        label_30->setText(QApplication::translate("PathPlanningWidget", "Trans [N/m], Rot [Nm/rad]:", nullptr));
        label_26->setText(QApplication::translate("PathPlanningWidget", "Stiffness", nullptr));
        label_27->setText(QApplication::translate("PathPlanningWidget", "Cart DOF", nullptr));
        label_28->setText(QApplication::translate("PathPlanningWidget", "Trans[N], Rot: [Nm]: ", nullptr));
        chk_EnableFT->setText(QApplication::translate("PathPlanningWidget", "Enable F/T", nullptr));
        setFTButton->setText(QApplication::translate("PathPlanningWidget", "Set F/T Control", nullptr));
        moveToHomePoseButton->setText(QApplication::translate("PathPlanningWidget", "Move to Home", nullptr));
        executePathButton->setText(QApplication::translate("PathPlanningWidget", "Execute Cartesian Path", nullptr));
        lbl_cartPathCompleted->setText(QString());
        tabWidget->setTabText(tabWidget->indexOf(tab_ExecutePlan), QApplication::translate("PathPlanningWidget", "Path Execution", nullptr));
        chk_CartImpedance->setText(QApplication::translate("PathPlanningWidget", "Enable Cartesian Impedance", nullptr));
        label_12->setText(QApplication::translate("PathPlanningWidget", "Stiffness", nullptr));
        label_8->setText(QApplication::translate("PathPlanningWidget", "Rx, Ry, Rz:", nullptr));
        spin_Stiffness_RZ->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211Nm/rad", nullptr));
        label_7->setText(QApplication::translate("PathPlanningWidget", "Tx, Ty, Tz:", nullptr));
        spin_Stiffness_RX->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211Nm/rad", nullptr));
        spin_Stiffness_Y->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211N/m", nullptr));
        spin_Stiffness_Z->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211N/m", nullptr));
        spin_Stiffness_X->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211N/m", nullptr));
        spin_Stiffness_RY->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211Nm/rad", nullptr));
        label_11->setText(QApplication::translate("PathPlanningWidget", "Damping", nullptr));
        spin_Damping_RY->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211%", nullptr));
        label_9->setText(QApplication::translate("PathPlanningWidget", "Tx, Ty, Tz:", nullptr));
        spin_Damping_X->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211%", nullptr));
        spin_Damping_RZ->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211%", nullptr));
        spin_Damping_RX->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211%", nullptr));
        spin_Damping_Y->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211%", nullptr));
        spin_Damping_Z->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211%", nullptr));
        label_10->setText(QApplication::translate("PathPlanningWidget", "Rx, Ry, Rz: ", nullptr));
        label_15->setText(QApplication::translate("PathPlanningWidget", "Max Cartesian Velocity", nullptr));
        spin_MaxVel_Y->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m/s", nullptr));
        spin_MaxVel_X->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m/s", nullptr));
        label_14->setText(QApplication::translate("PathPlanningWidget", "Tx, Ty, Tz:", nullptr));
        spin_MaxVel_Z->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m/s", nullptr));
        label_13->setText(QApplication::translate("PathPlanningWidget", "Rx, Ry, Rz:", nullptr));
        spin_MaxVel_RX->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211rad/s", nullptr));
        spin_MaxVel_RZ->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211rad/s", nullptr));
        spin_MaxVel_RY->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211rad/s", nullptr));
        label_18->setText(QApplication::translate("PathPlanningWidget", "Max Control Force", nullptr));
        label_17->setText(QApplication::translate("PathPlanningWidget", "Tx, Ty, Tz:", nullptr));
        spin_MaxCtrlForce_X->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211N", nullptr));
        spin_MaxPathDev_RZ->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211rad", nullptr));
        spin_MaxCtrlForce_RY->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211Nm", nullptr));
        spin_MaxPathDev_Y->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m", nullptr));
        spin_MaxCtrlForce_Z->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211N", nullptr));
        label_19->setText(QApplication::translate("PathPlanningWidget", "Rx, Ry, Rz:", nullptr));
        label_20->setText(QApplication::translate("PathPlanningWidget", "Tx, Ty, Tz:", nullptr));
        spin_MaxCtrlForce_Y->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211N", nullptr));
        label_16->setText(QApplication::translate("PathPlanningWidget", "Rx, Ry, Rz:", nullptr));
        spin_MaxPathDev_RX->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211rad", nullptr));
        spin_MaxPathDev_Z->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m", nullptr));
        spin_MaxPathDev_X->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211m", nullptr));
        spin_MaxCtrlForce_RX->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211Nm", nullptr));
        spin_MaxCtrlForce_RZ->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211Nm", nullptr));
        spin_MaxPathDev_RY->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211rad", nullptr));
        label_21->setText(QApplication::translate("PathPlanningWidget", "Null Space Parameters", nullptr));
        spin_NullSpace_Damping->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211%", nullptr));
        label_22->setText(QApplication::translate("PathPlanningWidget", "Stiffness, Damping", nullptr));
        spin_NullSpace_Stiffness->setSuffix(QApplication::translate("PathPlanningWidget", "\342\200\211Nm/rad", nullptr));
        label_23->setText(QApplication::translate("PathPlanningWidget", "Joints: ", nullptr));
        setCartImpParamsButton->setText(QApplication::translate("PathPlanningWidget", "Set", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab_SetImpedance), QApplication::translate("PathPlanningWidget", "Cartesian Impedance", nullptr));
    } // retranslateUi

};

namespace Ui {
    class PathPlanningWidget: public Ui_PathPlanningWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_PATH_PLANNING_WIDGET_H
