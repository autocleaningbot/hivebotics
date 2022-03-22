/****************************************************************************
** Meta object code from reading C++ file 'generate_cartesian_path.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../3rd_party/moveit_cartesian_plan_plugin/include/moveit_cartesian_plan_plugin/generate_cartesian_path.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'generate_cartesian_path.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_GenerateCartesianPath_t {
    QByteArrayData data[38];
    char stringdata0[629];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_GenerateCartesianPath_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_GenerateCartesianPath_t qt_meta_stringdata_GenerateCartesianPath = {
    {
QT_MOC_LITERAL(0, 0, 21), // "GenerateCartesianPath"
QT_MOC_LITERAL(1, 22, 15), // "wayPointOutOfIK"
QT_MOC_LITERAL(2, 38, 0), // ""
QT_MOC_LITERAL(3, 39, 12), // "point_number"
QT_MOC_LITERAL(4, 52, 12), // "out_of_range"
QT_MOC_LITERAL(5, 65, 25), // "getRobotModelFrame_signal"
QT_MOC_LITERAL(6, 91, 11), // "std::string"
QT_MOC_LITERAL(7, 103, 17), // "robot_model_frame"
QT_MOC_LITERAL(8, 121, 13), // "tf::Transform"
QT_MOC_LITERAL(9, 135, 12), // "end_effector"
QT_MOC_LITERAL(10, 148, 28), // "updateCurrentPosition_signal"
QT_MOC_LITERAL(11, 177, 27), // "cartesianPathExecuteStarted"
QT_MOC_LITERAL(12, 205, 28), // "cartesianPathExecuteFinished"
QT_MOC_LITERAL(13, 234, 22), // "cartesianPathCompleted"
QT_MOC_LITERAL(14, 257, 8), // "fraction"
QT_MOC_LITERAL(15, 266, 17), // "sendCartPlanGroup"
QT_MOC_LITERAL(16, 284, 24), // "std::vector<std::string>"
QT_MOC_LITERAL(17, 309, 11), // "group_names"
QT_MOC_LITERAL(18, 321, 17), // "moveToPose_signal"
QT_MOC_LITERAL(19, 339, 19), // "geometry_msgs::Pose"
QT_MOC_LITERAL(20, 359, 11), // "moveToPoses"
QT_MOC_LITERAL(21, 371, 32), // "std::vector<geometry_msgs::Pose>"
QT_MOC_LITERAL(22, 404, 9), // "waypoints"
QT_MOC_LITERAL(23, 414, 21), // "checkWayPointValidity"
QT_MOC_LITERAL(24, 436, 11), // "marker_name"
QT_MOC_LITERAL(25, 448, 12), // "initRvizDone"
QT_MOC_LITERAL(26, 461, 20), // "cartesianPathHandler"
QT_MOC_LITERAL(27, 482, 13), // "setCartParams"
QT_MOC_LITERAL(28, 496, 10), // "plan_time_"
QT_MOC_LITERAL(29, 507, 15), // "cart_step_size_"
QT_MOC_LITERAL(30, 523, 17), // "cart_jump_thresh_"
QT_MOC_LITERAL(31, 541, 14), // "moveit_replan_"
QT_MOC_LITERAL(32, 556, 17), // "avoid_collisions_"
QT_MOC_LITERAL(33, 574, 21), // "getSelectedGroupIndex"
QT_MOC_LITERAL(34, 596, 5), // "index"
QT_MOC_LITERAL(35, 602, 10), // "moveToHome"
QT_MOC_LITERAL(36, 613, 10), // "moveToPose"
QT_MOC_LITERAL(37, 624, 4) // "pose"

    },
    "GenerateCartesianPath\0wayPointOutOfIK\0"
    "\0point_number\0out_of_range\0"
    "getRobotModelFrame_signal\0std::string\0"
    "robot_model_frame\0tf::Transform\0"
    "end_effector\0updateCurrentPosition_signal\0"
    "cartesianPathExecuteStarted\0"
    "cartesianPathExecuteFinished\0"
    "cartesianPathCompleted\0fraction\0"
    "sendCartPlanGroup\0std::vector<std::string>\0"
    "group_names\0moveToPose_signal\0"
    "geometry_msgs::Pose\0moveToPoses\0"
    "std::vector<geometry_msgs::Pose>\0"
    "waypoints\0checkWayPointValidity\0"
    "marker_name\0initRvizDone\0cartesianPathHandler\0"
    "setCartParams\0plan_time_\0cart_step_size_\0"
    "cart_jump_thresh_\0moveit_replan_\0"
    "avoid_collisions_\0getSelectedGroupIndex\0"
    "index\0moveToHome\0moveToPose\0pose"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_GenerateCartesianPath[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      16,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       8,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    2,   94,    2, 0x06 /* Public */,
       5,    2,   99,    2, 0x06 /* Public */,
      10,    2,  104,    2, 0x06 /* Public */,
      11,    0,  109,    2, 0x06 /* Public */,
      12,    0,  110,    2, 0x06 /* Public */,
      13,    1,  111,    2, 0x06 /* Public */,
      15,    1,  114,    2, 0x06 /* Public */,
      18,    1,  117,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      20,    1,  120,    2, 0x0a /* Public */,
      23,    2,  123,    2, 0x0a /* Public */,
      25,    0,  128,    2, 0x0a /* Public */,
      26,    1,  129,    2, 0x0a /* Public */,
      27,    5,  132,    2, 0x0a /* Public */,
      33,    1,  143,    2, 0x0a /* Public */,
      35,    0,  146,    2, 0x0a /* Public */,
      36,    1,  147,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Int, QMetaType::Int,    3,    4,
    QMetaType::Void, 0x80000000 | 6, 0x80000000 | 8,    7,    9,
    QMetaType::Void, 0x80000000 | 6, 0x80000000 | 8,    7,    9,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Double,   14,
    QMetaType::Void, 0x80000000 | 16,   17,
    QMetaType::Void, 0x80000000 | 19,    2,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 21,   22,
    QMetaType::Void, 0x80000000 | 19, QMetaType::Int,   22,   24,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 21,   22,
    QMetaType::Void, QMetaType::Double, QMetaType::Double, QMetaType::Double, QMetaType::Bool, QMetaType::Bool,   28,   29,   30,   31,   32,
    QMetaType::Void, QMetaType::Int,   34,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 19,   37,

       0        // eod
};

void GenerateCartesianPath::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<GenerateCartesianPath *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->wayPointOutOfIK((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 1: _t->getRobotModelFrame_signal((*reinterpret_cast< const std::string(*)>(_a[1])),(*reinterpret_cast< const tf::Transform(*)>(_a[2]))); break;
        case 2: _t->updateCurrentPosition_signal((*reinterpret_cast< const std::string(*)>(_a[1])),(*reinterpret_cast< const tf::Transform(*)>(_a[2]))); break;
        case 3: _t->cartesianPathExecuteStarted(); break;
        case 4: _t->cartesianPathExecuteFinished(); break;
        case 5: _t->cartesianPathCompleted((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 6: _t->sendCartPlanGroup((*reinterpret_cast< std::vector<std::string>(*)>(_a[1]))); break;
        case 7: _t->moveToPose_signal((*reinterpret_cast< geometry_msgs::Pose(*)>(_a[1]))); break;
        case 8: _t->moveToPoses((*reinterpret_cast< std::vector<geometry_msgs::Pose>(*)>(_a[1]))); break;
        case 9: _t->checkWayPointValidity((*reinterpret_cast< const geometry_msgs::Pose(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2]))); break;
        case 10: _t->initRvizDone(); break;
        case 11: _t->cartesianPathHandler((*reinterpret_cast< std::vector<geometry_msgs::Pose>(*)>(_a[1]))); break;
        case 12: _t->setCartParams((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3])),(*reinterpret_cast< bool(*)>(_a[4])),(*reinterpret_cast< bool(*)>(_a[5]))); break;
        case 13: _t->getSelectedGroupIndex((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 14: _t->moveToHome(); break;
        case 15: _t->moveToPose((*reinterpret_cast< geometry_msgs::Pose(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (GenerateCartesianPath::*)(int , int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GenerateCartesianPath::wayPointOutOfIK)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (GenerateCartesianPath::*)(const std::string , const tf::Transform );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GenerateCartesianPath::getRobotModelFrame_signal)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (GenerateCartesianPath::*)(const std::string , const tf::Transform );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GenerateCartesianPath::updateCurrentPosition_signal)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (GenerateCartesianPath::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GenerateCartesianPath::cartesianPathExecuteStarted)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (GenerateCartesianPath::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GenerateCartesianPath::cartesianPathExecuteFinished)) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (GenerateCartesianPath::*)(double );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GenerateCartesianPath::cartesianPathCompleted)) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (GenerateCartesianPath::*)(std::vector<std::string> );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GenerateCartesianPath::sendCartPlanGroup)) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (GenerateCartesianPath::*)(geometry_msgs::Pose );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GenerateCartesianPath::moveToPose_signal)) {
                *result = 7;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject GenerateCartesianPath::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_GenerateCartesianPath.data,
    qt_meta_data_GenerateCartesianPath,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *GenerateCartesianPath::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *GenerateCartesianPath::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_GenerateCartesianPath.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int GenerateCartesianPath::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 16)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 16;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 16)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 16;
    }
    return _id;
}

// SIGNAL 0
void GenerateCartesianPath::wayPointOutOfIK(int _t1, int _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void GenerateCartesianPath::getRobotModelFrame_signal(const std::string _t1, const tf::Transform _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void GenerateCartesianPath::updateCurrentPosition_signal(const std::string _t1, const tf::Transform _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void GenerateCartesianPath::cartesianPathExecuteStarted()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void GenerateCartesianPath::cartesianPathExecuteFinished()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void GenerateCartesianPath::cartesianPathCompleted(double _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void GenerateCartesianPath::sendCartPlanGroup(std::vector<std::string> _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void GenerateCartesianPath::moveToPose_signal(geometry_msgs::Pose _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
