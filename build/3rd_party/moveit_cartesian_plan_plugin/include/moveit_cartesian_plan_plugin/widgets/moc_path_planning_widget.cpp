/****************************************************************************
** Meta object code from reading C++ file 'path_planning_widget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../3rd_party/moveit_cartesian_plan_plugin/include/moveit_cartesian_plan_plugin/widgets/path_planning_widget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'path_planning_widget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_moveit_cartesian_plan_plugin__PathPlanningWidget_t {
    QByteArrayData data[82];
    char stringdata0[1716];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_moveit_cartesian_plan_plugin__PathPlanningWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_moveit_cartesian_plan_plugin__PathPlanningWidget_t qt_meta_stringdata_moveit_cartesian_plan_plugin__PathPlanningWidget = {
    {
QT_MOC_LITERAL(0, 0, 48), // "moveit_cartesian_plan_plugin:..."
QT_MOC_LITERAL(1, 49, 8), // "addPoint"
QT_MOC_LITERAL(2, 58, 0), // ""
QT_MOC_LITERAL(3, 59, 8), // "Waypoint"
QT_MOC_LITERAL(4, 68, 9), // "point_pos"
QT_MOC_LITERAL(5, 78, 20), // "pointDeleteUI_signal"
QT_MOC_LITERAL(6, 99, 5), // "index"
QT_MOC_LITERAL(7, 105, 22), // "pointPosUpdated_signal"
QT_MOC_LITERAL(8, 128, 8), // "position"
QT_MOC_LITERAL(9, 137, 20), // "swapWaypoints_signal"
QT_MOC_LITERAL(10, 158, 6), // "index1"
QT_MOC_LITERAL(11, 165, 6), // "index2"
QT_MOC_LITERAL(12, 172, 23), // "parseWayPointBtn_signal"
QT_MOC_LITERAL(13, 196, 19), // "saveToFileBtn_press"
QT_MOC_LITERAL(14, 216, 27), // "copyCurrentPoseButton_press"
QT_MOC_LITERAL(15, 244, 21), // "clearAllPoints_signal"
QT_MOC_LITERAL(16, 266, 32), // "cartesianPathParamsFromUI_signal"
QT_MOC_LITERAL(17, 299, 10), // "plan_time_"
QT_MOC_LITERAL(18, 310, 15), // "cart_step_size_"
QT_MOC_LITERAL(19, 326, 17), // "cart_jump_thresh_"
QT_MOC_LITERAL(20, 344, 14), // "moveit_replan_"
QT_MOC_LITERAL(21, 359, 17), // "avoid_collisions_"
QT_MOC_LITERAL(22, 377, 23), // "moveToHomeFromUI_signal"
QT_MOC_LITERAL(23, 401, 17), // "moveToPose_signal"
QT_MOC_LITERAL(24, 419, 19), // "geometry_msgs::Pose"
QT_MOC_LITERAL(25, 439, 25), // "sendSendSelectedPlanGroup"
QT_MOC_LITERAL(26, 465, 36), // "setCartesianImpedanceParamsUI..."
QT_MOC_LITERAL(27, 502, 50), // "cartesian_impedance_msgs::Set..."
QT_MOC_LITERAL(28, 553, 21), // "cart_impedance_params"
QT_MOC_LITERAL(29, 575, 29), // "setCartesianFTParamsUI_signal"
QT_MOC_LITERAL(30, 605, 50), // "cartesian_impedance_msgs::Set..."
QT_MOC_LITERAL(31, 656, 14), // "cart_ft_params"
QT_MOC_LITERAL(32, 671, 28), // "newWaypointInputValueChanged"
QT_MOC_LITERAL(33, 700, 13), // "tf::Transform"
QT_MOC_LITERAL(34, 714, 4), // "pose"
QT_MOC_LITERAL(35, 719, 21), // "setAddPointUIStartPos"
QT_MOC_LITERAL(36, 741, 11), // "std::string"
QT_MOC_LITERAL(37, 753, 17), // "robot_model_frame"
QT_MOC_LITERAL(38, 771, 12), // "end_effector"
QT_MOC_LITERAL(39, 784, 12), // "initTreeView"
QT_MOC_LITERAL(40, 797, 9), // "insertRow"
QT_MOC_LITERAL(41, 807, 5), // "count"
QT_MOC_LITERAL(42, 813, 9), // "removeRow"
QT_MOC_LITERAL(43, 823, 20), // "pointPosUpdated_slot"
QT_MOC_LITERAL(44, 844, 8), // "waypoint"
QT_MOC_LITERAL(45, 853, 13), // "selectedPoint"
QT_MOC_LITERAL(46, 867, 11), // "QModelIndex"
QT_MOC_LITERAL(47, 879, 7), // "current"
QT_MOC_LITERAL(48, 887, 8), // "previous"
QT_MOC_LITERAL(49, 896, 19), // "treeViewDataChanged"
QT_MOC_LITERAL(50, 916, 4), // "item"
QT_MOC_LITERAL(51, 921, 5), // "value"
QT_MOC_LITERAL(52, 927, 31), // "on_deleteWaypointButton_clicked"
QT_MOC_LITERAL(53, 959, 31), // "on_addNewWaypointButton_clicked"
QT_MOC_LITERAL(54, 991, 28), // "on_executePathButton_clicked"
QT_MOC_LITERAL(55, 1020, 25), // "on_savePathButton_clicked"
QT_MOC_LITERAL(56, 1046, 25), // "on_loadPathButton_clicked"
QT_MOC_LITERAL(57, 1072, 31), // "on_clearAllPointsButton_clicked"
QT_MOC_LITERAL(58, 1104, 32), // "on_copyCurrentPoseButton_clicked"
QT_MOC_LITERAL(59, 1137, 40), // "on_addCurrentPositionPointBut..."
QT_MOC_LITERAL(60, 1178, 34), // "on_moveToNewPositionButton_cl..."
QT_MOC_LITERAL(61, 1213, 31), // "on_moveToWaypointButton_clicked"
QT_MOC_LITERAL(62, 1245, 31), // "on_moveWaypointUpButton_clicked"
QT_MOC_LITERAL(63, 1277, 33), // "on_moveWaypointDownButton_cli..."
QT_MOC_LITERAL(64, 1311, 31), // "on_moveToHomePoseButton_clicked"
QT_MOC_LITERAL(65, 1343, 33), // "on_setCartImpParamsButton_cli..."
QT_MOC_LITERAL(66, 1377, 22), // "on_setFTButton_clicked"
QT_MOC_LITERAL(67, 1400, 28), // "updateCurrentPositionDisplay"
QT_MOC_LITERAL(68, 1429, 27), // "cartesianPathStartedHandler"
QT_MOC_LITERAL(69, 1457, 28), // "cartesianPathFinishedHandler"
QT_MOC_LITERAL(70, 1486, 30), // "sendCartTrajectoryParamsFromUI"
QT_MOC_LITERAL(71, 1517, 22), // "cartPathCompleted_slot"
QT_MOC_LITERAL(72, 1540, 8), // "fraction"
QT_MOC_LITERAL(73, 1549, 16), // "getCartPlanGroup"
QT_MOC_LITERAL(74, 1566, 24), // "std::vector<std::string>"
QT_MOC_LITERAL(75, 1591, 11), // "group_names"
QT_MOC_LITERAL(76, 1603, 17), // "selectedPlanGroup"
QT_MOC_LITERAL(77, 1621, 29), // "withCartImpedanceStateChanged"
QT_MOC_LITERAL(78, 1651, 5), // "state"
QT_MOC_LITERAL(79, 1657, 13), // "withFTControl"
QT_MOC_LITERAL(80, 1671, 23), // "newWaypointValueChanged"
QT_MOC_LITERAL(81, 1695, 20) // "setNewWaypointInputs"

    },
    "moveit_cartesian_plan_plugin::PathPlanningWidget\0"
    "addPoint\0\0Waypoint\0point_pos\0"
    "pointDeleteUI_signal\0index\0"
    "pointPosUpdated_signal\0position\0"
    "swapWaypoints_signal\0index1\0index2\0"
    "parseWayPointBtn_signal\0saveToFileBtn_press\0"
    "copyCurrentPoseButton_press\0"
    "clearAllPoints_signal\0"
    "cartesianPathParamsFromUI_signal\0"
    "plan_time_\0cart_step_size_\0cart_jump_thresh_\0"
    "moveit_replan_\0avoid_collisions_\0"
    "moveToHomeFromUI_signal\0moveToPose_signal\0"
    "geometry_msgs::Pose\0sendSendSelectedPlanGroup\0"
    "setCartesianImpedanceParamsUI_signal\0"
    "cartesian_impedance_msgs::SetCartesianImpedancePtr\0"
    "cart_impedance_params\0"
    "setCartesianFTParamsUI_signal\0"
    "cartesian_impedance_msgs::SetCartesianForceCtrlPtr\0"
    "cart_ft_params\0newWaypointInputValueChanged\0"
    "tf::Transform\0pose\0setAddPointUIStartPos\0"
    "std::string\0robot_model_frame\0"
    "end_effector\0initTreeView\0insertRow\0"
    "count\0removeRow\0pointPosUpdated_slot\0"
    "waypoint\0selectedPoint\0QModelIndex\0"
    "current\0previous\0treeViewDataChanged\0"
    "item\0value\0on_deleteWaypointButton_clicked\0"
    "on_addNewWaypointButton_clicked\0"
    "on_executePathButton_clicked\0"
    "on_savePathButton_clicked\0"
    "on_loadPathButton_clicked\0"
    "on_clearAllPointsButton_clicked\0"
    "on_copyCurrentPoseButton_clicked\0"
    "on_addCurrentPositionPointButton_clicked\0"
    "on_moveToNewPositionButton_clicked\0"
    "on_moveToWaypointButton_clicked\0"
    "on_moveWaypointUpButton_clicked\0"
    "on_moveWaypointDownButton_clicked\0"
    "on_moveToHomePoseButton_clicked\0"
    "on_setCartImpParamsButton_clicked\0"
    "on_setFTButton_clicked\0"
    "updateCurrentPositionDisplay\0"
    "cartesianPathStartedHandler\0"
    "cartesianPathFinishedHandler\0"
    "sendCartTrajectoryParamsFromUI\0"
    "cartPathCompleted_slot\0fraction\0"
    "getCartPlanGroup\0std::vector<std::string>\0"
    "group_names\0selectedPlanGroup\0"
    "withCartImpedanceStateChanged\0state\0"
    "withFTControl\0newWaypointValueChanged\0"
    "setNewWaypointInputs"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_moveit_cartesian_plan_plugin__PathPlanningWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      48,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      15,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,  254,    2, 0x06 /* Public */,
       5,    1,  257,    2, 0x06 /* Public */,
       7,    2,  260,    2, 0x06 /* Public */,
       9,    2,  265,    2, 0x06 /* Public */,
      12,    0,  270,    2, 0x06 /* Public */,
      13,    0,  271,    2, 0x06 /* Public */,
      14,    0,  272,    2, 0x06 /* Public */,
      15,    0,  273,    2, 0x06 /* Public */,
      16,    5,  274,    2, 0x06 /* Public */,
      22,    0,  285,    2, 0x06 /* Public */,
      23,    1,  286,    2, 0x06 /* Public */,
      25,    1,  289,    2, 0x06 /* Public */,
      26,    1,  292,    2, 0x06 /* Public */,
      29,    1,  295,    2, 0x06 /* Public */,
      32,    1,  298,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      35,    2,  301,    2, 0x09 /* Protected */,
      39,    0,  306,    2, 0x09 /* Protected */,
      40,    2,  307,    2, 0x09 /* Protected */,
      42,    1,  312,    2, 0x09 /* Protected */,
      43,    2,  315,    2, 0x09 /* Protected */,
      45,    2,  320,    2, 0x09 /* Protected */,
      49,    2,  325,    2, 0x09 /* Protected */,
      52,    0,  330,    2, 0x09 /* Protected */,
      53,    0,  331,    2, 0x09 /* Protected */,
      54,    0,  332,    2, 0x09 /* Protected */,
      55,    0,  333,    2, 0x09 /* Protected */,
      56,    0,  334,    2, 0x09 /* Protected */,
      57,    0,  335,    2, 0x09 /* Protected */,
      58,    0,  336,    2, 0x09 /* Protected */,
      59,    0,  337,    2, 0x09 /* Protected */,
      60,    0,  338,    2, 0x09 /* Protected */,
      61,    0,  339,    2, 0x09 /* Protected */,
      62,    0,  340,    2, 0x09 /* Protected */,
      63,    0,  341,    2, 0x09 /* Protected */,
      64,    0,  342,    2, 0x09 /* Protected */,
      65,    0,  343,    2, 0x09 /* Protected */,
      66,    0,  344,    2, 0x09 /* Protected */,
      67,    2,  345,    2, 0x09 /* Protected */,
      68,    0,  350,    2, 0x09 /* Protected */,
      69,    0,  351,    2, 0x09 /* Protected */,
      70,    0,  352,    2, 0x09 /* Protected */,
      71,    1,  353,    2, 0x09 /* Protected */,
      73,    1,  356,    2, 0x09 /* Protected */,
      76,    1,  359,    2, 0x09 /* Protected */,
      77,    1,  362,    2, 0x09 /* Protected */,
      79,    1,  365,    2, 0x09 /* Protected */,
      80,    1,  368,    2, 0x09 /* Protected */,
      81,    1,  371,    2, 0x09 /* Protected */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, QMetaType::Int,    6,
    QMetaType::Void, 0x80000000 | 3, QMetaType::Int,    8,    6,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,   10,   11,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Double, QMetaType::Double, QMetaType::Double, QMetaType::Bool, QMetaType::Bool,   17,   18,   19,   20,   21,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 24,    2,
    QMetaType::Void, QMetaType::Int,    6,
    QMetaType::Void, 0x80000000 | 27,   28,
    QMetaType::Void, 0x80000000 | 30,   31,
    QMetaType::Void, 0x80000000 | 33,   34,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 36, 0x80000000 | 33,   37,   38,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 3, QMetaType::Int,    4,   41,
    QMetaType::Void, QMetaType::Int,    6,
    QMetaType::Void, 0x80000000 | 3, QMetaType::Int,   44,    6,
    QMetaType::Void, 0x80000000 | 46, 0x80000000 | 46,   47,   48,
    QMetaType::Void, 0x80000000 | 46, QMetaType::QVariant,   50,   51,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 36, 0x80000000 | 33,    2,   38,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Double,   72,
    QMetaType::Void, 0x80000000 | 74,   75,
    QMetaType::Void, QMetaType::Int,    6,
    QMetaType::Void, QMetaType::Int,   78,
    QMetaType::Void, QMetaType::Int,   78,
    QMetaType::Void, QMetaType::Double,    2,
    QMetaType::Void, 0x80000000 | 33,   34,

       0        // eod
};

void moveit_cartesian_plan_plugin::PathPlanningWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<PathPlanningWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->addPoint((*reinterpret_cast< const Waypoint(*)>(_a[1]))); break;
        case 1: _t->pointDeleteUI_signal((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->pointPosUpdated_signal((*reinterpret_cast< const Waypoint(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2]))); break;
        case 3: _t->swapWaypoints_signal((*reinterpret_cast< const int(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2]))); break;
        case 4: _t->parseWayPointBtn_signal(); break;
        case 5: _t->saveToFileBtn_press(); break;
        case 6: _t->copyCurrentPoseButton_press(); break;
        case 7: _t->clearAllPoints_signal(); break;
        case 8: _t->cartesianPathParamsFromUI_signal((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3])),(*reinterpret_cast< bool(*)>(_a[4])),(*reinterpret_cast< bool(*)>(_a[5]))); break;
        case 9: _t->moveToHomeFromUI_signal(); break;
        case 10: _t->moveToPose_signal((*reinterpret_cast< geometry_msgs::Pose(*)>(_a[1]))); break;
        case 11: _t->sendSendSelectedPlanGroup((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 12: _t->setCartesianImpedanceParamsUI_signal((*reinterpret_cast< cartesian_impedance_msgs::SetCartesianImpedancePtr(*)>(_a[1]))); break;
        case 13: _t->setCartesianFTParamsUI_signal((*reinterpret_cast< cartesian_impedance_msgs::SetCartesianForceCtrlPtr(*)>(_a[1]))); break;
        case 14: _t->newWaypointInputValueChanged((*reinterpret_cast< const tf::Transform(*)>(_a[1]))); break;
        case 15: _t->setAddPointUIStartPos((*reinterpret_cast< const std::string(*)>(_a[1])),(*reinterpret_cast< const tf::Transform(*)>(_a[2]))); break;
        case 16: _t->initTreeView(); break;
        case 17: _t->insertRow((*reinterpret_cast< const Waypoint(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2]))); break;
        case 18: _t->removeRow((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 19: _t->pointPosUpdated_slot((*reinterpret_cast< const Waypoint(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2]))); break;
        case 20: _t->selectedPoint((*reinterpret_cast< const QModelIndex(*)>(_a[1])),(*reinterpret_cast< const QModelIndex(*)>(_a[2]))); break;
        case 21: _t->treeViewDataChanged((*reinterpret_cast< const QModelIndex(*)>(_a[1])),(*reinterpret_cast< const QVariant(*)>(_a[2]))); break;
        case 22: _t->on_deleteWaypointButton_clicked(); break;
        case 23: _t->on_addNewWaypointButton_clicked(); break;
        case 24: _t->on_executePathButton_clicked(); break;
        case 25: _t->on_savePathButton_clicked(); break;
        case 26: _t->on_loadPathButton_clicked(); break;
        case 27: _t->on_clearAllPointsButton_clicked(); break;
        case 28: _t->on_copyCurrentPoseButton_clicked(); break;
        case 29: _t->on_addCurrentPositionPointButton_clicked(); break;
        case 30: _t->on_moveToNewPositionButton_clicked(); break;
        case 31: _t->on_moveToWaypointButton_clicked(); break;
        case 32: _t->on_moveWaypointUpButton_clicked(); break;
        case 33: _t->on_moveWaypointDownButton_clicked(); break;
        case 34: _t->on_moveToHomePoseButton_clicked(); break;
        case 35: _t->on_setCartImpParamsButton_clicked(); break;
        case 36: _t->on_setFTButton_clicked(); break;
        case 37: _t->updateCurrentPositionDisplay((*reinterpret_cast< const std::string(*)>(_a[1])),(*reinterpret_cast< const tf::Transform(*)>(_a[2]))); break;
        case 38: _t->cartesianPathStartedHandler(); break;
        case 39: _t->cartesianPathFinishedHandler(); break;
        case 40: _t->sendCartTrajectoryParamsFromUI(); break;
        case 41: _t->cartPathCompleted_slot((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 42: _t->getCartPlanGroup((*reinterpret_cast< std::vector<std::string>(*)>(_a[1]))); break;
        case 43: _t->selectedPlanGroup((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 44: _t->withCartImpedanceStateChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 45: _t->withFTControl((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 46: _t->newWaypointValueChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 47: _t->setNewWaypointInputs((*reinterpret_cast< const tf::Transform(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (PathPlanningWidget::*)(const Waypoint );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::addPoint)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::pointDeleteUI_signal)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)(const Waypoint & , const int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::pointPosUpdated_signal)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)(const int , const int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::swapWaypoints_signal)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::parseWayPointBtn_signal)) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::saveToFileBtn_press)) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::copyCurrentPoseButton_press)) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::clearAllPoints_signal)) {
                *result = 7;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)(double , double , double , bool , bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::cartesianPathParamsFromUI_signal)) {
                *result = 8;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::moveToHomeFromUI_signal)) {
                *result = 9;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)(geometry_msgs::Pose );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::moveToPose_signal)) {
                *result = 10;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::sendSendSelectedPlanGroup)) {
                *result = 11;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)(cartesian_impedance_msgs::SetCartesianImpedancePtr );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::setCartesianImpedanceParamsUI_signal)) {
                *result = 12;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)(cartesian_impedance_msgs::SetCartesianForceCtrlPtr );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::setCartesianFTParamsUI_signal)) {
                *result = 13;
                return;
            }
        }
        {
            using _t = void (PathPlanningWidget::*)(const tf::Transform & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PathPlanningWidget::newWaypointInputValueChanged)) {
                *result = 14;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject moveit_cartesian_plan_plugin::PathPlanningWidget::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_moveit_cartesian_plan_plugin__PathPlanningWidget.data,
    qt_meta_data_moveit_cartesian_plan_plugin__PathPlanningWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *moveit_cartesian_plan_plugin::PathPlanningWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *moveit_cartesian_plan_plugin::PathPlanningWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_moveit_cartesian_plan_plugin__PathPlanningWidget.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int moveit_cartesian_plan_plugin::PathPlanningWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 48)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 48;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 48)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 48;
    }
    return _id;
}

// SIGNAL 0
void moveit_cartesian_plan_plugin::PathPlanningWidget::addPoint(const Waypoint _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void moveit_cartesian_plan_plugin::PathPlanningWidget::pointDeleteUI_signal(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void moveit_cartesian_plan_plugin::PathPlanningWidget::pointPosUpdated_signal(const Waypoint & _t1, const int _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void moveit_cartesian_plan_plugin::PathPlanningWidget::swapWaypoints_signal(const int _t1, const int _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void moveit_cartesian_plan_plugin::PathPlanningWidget::parseWayPointBtn_signal()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void moveit_cartesian_plan_plugin::PathPlanningWidget::saveToFileBtn_press()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void moveit_cartesian_plan_plugin::PathPlanningWidget::copyCurrentPoseButton_press()
{
    QMetaObject::activate(this, &staticMetaObject, 6, nullptr);
}

// SIGNAL 7
void moveit_cartesian_plan_plugin::PathPlanningWidget::clearAllPoints_signal()
{
    QMetaObject::activate(this, &staticMetaObject, 7, nullptr);
}

// SIGNAL 8
void moveit_cartesian_plan_plugin::PathPlanningWidget::cartesianPathParamsFromUI_signal(double _t1, double _t2, double _t3, bool _t4, bool _t5)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)), const_cast<void*>(reinterpret_cast<const void*>(&_t5)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}

// SIGNAL 9
void moveit_cartesian_plan_plugin::PathPlanningWidget::moveToHomeFromUI_signal()
{
    QMetaObject::activate(this, &staticMetaObject, 9, nullptr);
}

// SIGNAL 10
void moveit_cartesian_plan_plugin::PathPlanningWidget::moveToPose_signal(geometry_msgs::Pose _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 10, _a);
}

// SIGNAL 11
void moveit_cartesian_plan_plugin::PathPlanningWidget::sendSendSelectedPlanGroup(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 11, _a);
}

// SIGNAL 12
void moveit_cartesian_plan_plugin::PathPlanningWidget::setCartesianImpedanceParamsUI_signal(cartesian_impedance_msgs::SetCartesianImpedancePtr _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 12, _a);
}

// SIGNAL 13
void moveit_cartesian_plan_plugin::PathPlanningWidget::setCartesianFTParamsUI_signal(cartesian_impedance_msgs::SetCartesianForceCtrlPtr _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 13, _a);
}

// SIGNAL 14
void moveit_cartesian_plan_plugin::PathPlanningWidget::newWaypointInputValueChanged(const tf::Transform & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 14, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
