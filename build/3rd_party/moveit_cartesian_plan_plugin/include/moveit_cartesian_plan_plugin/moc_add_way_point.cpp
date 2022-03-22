/****************************************************************************
** Meta object code from reading C++ file 'add_way_point.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../3rd_party/moveit_cartesian_plan_plugin/include/moveit_cartesian_plan_plugin/add_way_point.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'add_way_point.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_moveit_cartesian_plan_plugin__AddWayPoint_t {
    QByteArrayData data[41];
    char stringdata0[596];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_moveit_cartesian_plan_plugin__AddWayPoint_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_moveit_cartesian_plan_plugin__AddWayPoint_t qt_meta_stringdata_moveit_cartesian_plan_plugin__AddWayPoint = {
    {
QT_MOC_LITERAL(0, 0, 41), // "moveit_cartesian_plan_plugin:..."
QT_MOC_LITERAL(1, 42, 8), // "initRviz"
QT_MOC_LITERAL(2, 51, 0), // ""
QT_MOC_LITERAL(3, 52, 15), // "pointDeleteRviz"
QT_MOC_LITERAL(4, 68, 14), // "marker_name_nr"
QT_MOC_LITERAL(5, 83, 12), // "addPointRViz"
QT_MOC_LITERAL(6, 96, 8), // "Waypoint"
QT_MOC_LITERAL(7, 105, 9), // "point_pos"
QT_MOC_LITERAL(8, 115, 5), // "count"
QT_MOC_LITERAL(9, 121, 20), // "pointPoseUpdatedRViz"
QT_MOC_LITERAL(10, 142, 5), // "index"
QT_MOC_LITERAL(11, 148, 16), // "wayPoints_signal"
QT_MOC_LITERAL(12, 165, 32), // "std::vector<geometry_msgs::Pose>"
QT_MOC_LITERAL(13, 198, 9), // "waypoints"
QT_MOC_LITERAL(14, 208, 26), // "onUpdatePosCheckIkValidity"
QT_MOC_LITERAL(15, 235, 19), // "geometry_msgs::Pose"
QT_MOC_LITERAL(16, 255, 8), // "waypoint"
QT_MOC_LITERAL(17, 264, 12), // "point_number"
QT_MOC_LITERAL(18, 277, 24), // "previewMarkerPoseUpdated"
QT_MOC_LITERAL(19, 302, 13), // "tf::Transform"
QT_MOC_LITERAL(20, 316, 12), // "pointDeleted"
QT_MOC_LITERAL(21, 329, 14), // "addPointFromUI"
QT_MOC_LITERAL(22, 344, 13), // "swapWaypoints"
QT_MOC_LITERAL(23, 358, 6), // "index1"
QT_MOC_LITERAL(24, 365, 6), // "index2"
QT_MOC_LITERAL(25, 372, 15), // "waypointUpdated"
QT_MOC_LITERAL(26, 388, 26), // "waypointPreviewPoseUpdated"
QT_MOC_LITERAL(27, 415, 4), // "pose"
QT_MOC_LITERAL(28, 420, 14), // "parseWayPoints"
QT_MOC_LITERAL(29, 435, 19), // "saveWayPointsToFile"
QT_MOC_LITERAL(30, 455, 18), // "clearAllPointsRViz"
QT_MOC_LITERAL(31, 474, 20), // "wayPointOutOfIK_slot"
QT_MOC_LITERAL(32, 495, 3), // "out"
QT_MOC_LITERAL(33, 499, 23), // "getRobotModelFrame_slot"
QT_MOC_LITERAL(34, 523, 11), // "std::string"
QT_MOC_LITERAL(35, 535, 17), // "robot_model_frame"
QT_MOC_LITERAL(36, 553, 12), // "end_effector"
QT_MOC_LITERAL(37, 566, 4), // "load"
QT_MOC_LITERAL(38, 571, 12), // "rviz::Config"
QT_MOC_LITERAL(39, 584, 6), // "config"
QT_MOC_LITERAL(40, 591, 4) // "save"

    },
    "moveit_cartesian_plan_plugin::AddWayPoint\0"
    "initRviz\0\0pointDeleteRviz\0marker_name_nr\0"
    "addPointRViz\0Waypoint\0point_pos\0count\0"
    "pointPoseUpdatedRViz\0index\0wayPoints_signal\0"
    "std::vector<geometry_msgs::Pose>\0"
    "waypoints\0onUpdatePosCheckIkValidity\0"
    "geometry_msgs::Pose\0waypoint\0point_number\0"
    "previewMarkerPoseUpdated\0tf::Transform\0"
    "pointDeleted\0addPointFromUI\0swapWaypoints\0"
    "index1\0index2\0waypointUpdated\0"
    "waypointPreviewPoseUpdated\0pose\0"
    "parseWayPoints\0saveWayPointsToFile\0"
    "clearAllPointsRViz\0wayPointOutOfIK_slot\0"
    "out\0getRobotModelFrame_slot\0std::string\0"
    "robot_model_frame\0end_effector\0load\0"
    "rviz::Config\0config\0save"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_moveit_cartesian_plan_plugin__AddWayPoint[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      19,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       7,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,  109,    2, 0x06 /* Public */,
       3,    1,  110,    2, 0x06 /* Public */,
       5,    2,  113,    2, 0x06 /* Public */,
       9,    2,  118,    2, 0x06 /* Public */,
      11,    1,  123,    2, 0x06 /* Public */,
      14,    2,  126,    2, 0x06 /* Public */,
      18,    1,  131,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      20,    1,  134,    2, 0x0a /* Public */,
      21,    1,  137,    2, 0x0a /* Public */,
      22,    2,  140,    2, 0x0a /* Public */,
      25,    2,  145,    2, 0x0a /* Public */,
      26,    1,  150,    2, 0x0a /* Public */,
      28,    0,  153,    2, 0x0a /* Public */,
      29,    0,  154,    2, 0x0a /* Public */,
      30,    0,  155,    2, 0x0a /* Public */,
      31,    2,  156,    2, 0x0a /* Public */,
      33,    2,  161,    2, 0x0a /* Public */,
      37,    1,  166,    2, 0x09 /* Protected */,
      40,    1,  169,    2, 0x09 /* Protected */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    4,
    QMetaType::Void, 0x80000000 | 6, QMetaType::Int,    7,    8,
    QMetaType::Void, 0x80000000 | 6, QMetaType::Int,    7,   10,
    QMetaType::Void, 0x80000000 | 12,   13,
    QMetaType::Void, 0x80000000 | 15, QMetaType::Int,   16,   17,
    QMetaType::Void, 0x80000000 | 19,    2,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,   10,
    QMetaType::Void, 0x80000000 | 6,    7,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,   23,   24,
    QMetaType::Void, 0x80000000 | 6, QMetaType::Int,    7,   10,
    QMetaType::Void, 0x80000000 | 19,   27,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,   17,   32,
    QMetaType::Void, 0x80000000 | 34, 0x80000000 | 19,   35,   36,
    QMetaType::Void, 0x80000000 | 38,   39,
    QMetaType::Void, 0x80000000 | 38,   39,

       0        // eod
};

void moveit_cartesian_plan_plugin::AddWayPoint::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<AddWayPoint *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->initRviz(); break;
        case 1: _t->pointDeleteRviz((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->addPointRViz((*reinterpret_cast< const Waypoint(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2]))); break;
        case 3: _t->pointPoseUpdatedRViz((*reinterpret_cast< const Waypoint(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2]))); break;
        case 4: _t->wayPoints_signal((*reinterpret_cast< std::vector<geometry_msgs::Pose>(*)>(_a[1]))); break;
        case 5: _t->onUpdatePosCheckIkValidity((*reinterpret_cast< const geometry_msgs::Pose(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2]))); break;
        case 6: _t->previewMarkerPoseUpdated((*reinterpret_cast< const tf::Transform(*)>(_a[1]))); break;
        case 7: _t->pointDeleted((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 8: _t->addPointFromUI((*reinterpret_cast< const Waypoint(*)>(_a[1]))); break;
        case 9: _t->swapWaypoints((*reinterpret_cast< const int(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2]))); break;
        case 10: _t->waypointUpdated((*reinterpret_cast< const Waypoint(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2]))); break;
        case 11: _t->waypointPreviewPoseUpdated((*reinterpret_cast< const tf::Transform(*)>(_a[1]))); break;
        case 12: _t->parseWayPoints(); break;
        case 13: _t->saveWayPointsToFile(); break;
        case 14: _t->clearAllPointsRViz(); break;
        case 15: _t->wayPointOutOfIK_slot((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 16: _t->getRobotModelFrame_slot((*reinterpret_cast< const std::string(*)>(_a[1])),(*reinterpret_cast< const tf::Transform(*)>(_a[2]))); break;
        case 17: _t->load((*reinterpret_cast< const rviz::Config(*)>(_a[1]))); break;
        case 18: _t->save((*reinterpret_cast< rviz::Config(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (AddWayPoint::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AddWayPoint::initRviz)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (AddWayPoint::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AddWayPoint::pointDeleteRviz)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (AddWayPoint::*)(const Waypoint & , const int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AddWayPoint::addPointRViz)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (AddWayPoint::*)(const Waypoint & , const int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AddWayPoint::pointPoseUpdatedRViz)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (AddWayPoint::*)(std::vector<geometry_msgs::Pose> );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AddWayPoint::wayPoints_signal)) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (AddWayPoint::*)(const geometry_msgs::Pose & , const int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AddWayPoint::onUpdatePosCheckIkValidity)) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (AddWayPoint::*)(const tf::Transform & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AddWayPoint::previewMarkerPoseUpdated)) {
                *result = 6;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject moveit_cartesian_plan_plugin::AddWayPoint::staticMetaObject = { {
    &rviz::Panel::staticMetaObject,
    qt_meta_stringdata_moveit_cartesian_plan_plugin__AddWayPoint.data,
    qt_meta_data_moveit_cartesian_plan_plugin__AddWayPoint,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *moveit_cartesian_plan_plugin::AddWayPoint::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *moveit_cartesian_plan_plugin::AddWayPoint::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_moveit_cartesian_plan_plugin__AddWayPoint.stringdata0))
        return static_cast<void*>(this);
    return rviz::Panel::qt_metacast(_clname);
}

int moveit_cartesian_plan_plugin::AddWayPoint::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 19)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 19;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 19)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 19;
    }
    return _id;
}

// SIGNAL 0
void moveit_cartesian_plan_plugin::AddWayPoint::initRviz()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void moveit_cartesian_plan_plugin::AddWayPoint::pointDeleteRviz(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void moveit_cartesian_plan_plugin::AddWayPoint::addPointRViz(const Waypoint & _t1, const int _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void moveit_cartesian_plan_plugin::AddWayPoint::pointPoseUpdatedRViz(const Waypoint & _t1, const int _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void moveit_cartesian_plan_plugin::AddWayPoint::wayPoints_signal(std::vector<geometry_msgs::Pose> _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void moveit_cartesian_plan_plugin::AddWayPoint::onUpdatePosCheckIkValidity(const geometry_msgs::Pose & _t1, const int _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void moveit_cartesian_plan_plugin::AddWayPoint::previewMarkerPoseUpdated(const tf::Transform & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
