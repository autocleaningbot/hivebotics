/****************************************************************************
** Meta object code from reading C++ file 'point_tree_model.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../3rd_party/moveit_cartesian_plan_plugin/include/moveit_cartesian_plan_plugin/point_tree_model.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'point_tree_model.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_PointTreeModel_t {
    QByteArrayData data[9];
    char stringdata0[99];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_PointTreeModel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_PointTreeModel_t qt_meta_stringdata_PointTreeModel = {
    {
QT_MOC_LITERAL(0, 0, 14), // "PointTreeModel"
QT_MOC_LITERAL(1, 15, 16), // "itemValueChanged"
QT_MOC_LITERAL(2, 32, 0), // ""
QT_MOC_LITERAL(3, 33, 11), // "QModelIndex"
QT_MOC_LITERAL(4, 45, 5), // "value"
QT_MOC_LITERAL(5, 51, 20), // "treeItemValueChanged"
QT_MOC_LITERAL(6, 72, 14), // "PointTreeItem&"
QT_MOC_LITERAL(7, 87, 4), // "item"
QT_MOC_LITERAL(8, 92, 6) // "column"

    },
    "PointTreeModel\0itemValueChanged\0\0"
    "QModelIndex\0value\0treeItemValueChanged\0"
    "PointTreeItem&\0item\0column"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_PointTreeModel[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    2,   24,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       5,    3,   29,    2, 0x09 /* Protected */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3, QMetaType::QVariant,    2,    4,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 6, QMetaType::Int, QMetaType::QVariant,    7,    8,    4,

       0        // eod
};

void PointTreeModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<PointTreeModel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->itemValueChanged((*reinterpret_cast< const QModelIndex(*)>(_a[1])),(*reinterpret_cast< const QVariant(*)>(_a[2]))); break;
        case 1: _t->treeItemValueChanged((*reinterpret_cast< PointTreeItem(*)>(_a[1])),(*reinterpret_cast< const int(*)>(_a[2])),(*reinterpret_cast< const QVariant(*)>(_a[3]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (PointTreeModel::*)(const QModelIndex & , const QVariant & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PointTreeModel::itemValueChanged)) {
                *result = 0;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject PointTreeModel::staticMetaObject = { {
    &QAbstractItemModel::staticMetaObject,
    qt_meta_stringdata_PointTreeModel.data,
    qt_meta_data_PointTreeModel,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *PointTreeModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *PointTreeModel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_PointTreeModel.stringdata0))
        return static_cast<void*>(this);
    return QAbstractItemModel::qt_metacast(_clname);
}

int PointTreeModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QAbstractItemModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void PointTreeModel::itemValueChanged(const QModelIndex & _t1, const QVariant & _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
