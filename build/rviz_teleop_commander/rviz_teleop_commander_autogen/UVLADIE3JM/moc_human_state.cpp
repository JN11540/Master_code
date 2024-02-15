/****************************************************************************
** Meta object code from reading C++ file 'human_state.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/rviz_teleop_commander/src/human_state.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'human_state.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_humanState__Human_t {
    QByteArrayData data[6];
    char stringdata0[94];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_humanState__Human_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_humanState__Human_t qt_meta_stringdata_humanState__Human = {
    {
QT_MOC_LITERAL(0, 0, 17), // "humanState::Human"
QT_MOC_LITERAL(1, 18, 8), // "callback"
QT_MOC_LITERAL(2, 27, 0), // ""
QT_MOC_LITERAL(3, 28, 39), // "visualization_msgs::MarkerArr..."
QT_MOC_LITERAL(4, 68, 15), // "human_array_msg"
QT_MOC_LITERAL(5, 84, 9) // "initTable"

    },
    "humanState::Human\0callback\0\0"
    "visualization_msgs::MarkerArrayConstPtr\0"
    "human_array_msg\0initTable"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_humanState__Human[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   24,    2, 0x09 /* Protected */,
       5,    0,   27,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void,

       0        // eod
};

void humanState::Human::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Human *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->callback((*reinterpret_cast< const visualization_msgs::MarkerArrayConstPtr(*)>(_a[1]))); break;
        case 1: _t->initTable(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject humanState::Human::staticMetaObject = { {
    &rviz::Panel::staticMetaObject,
    qt_meta_stringdata_humanState__Human.data,
    qt_meta_data_humanState__Human,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *humanState::Human::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *humanState::Human::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_humanState__Human.stringdata0))
        return static_cast<void*>(this);
    return rviz::Panel::qt_metacast(_clname);
}

int humanState::Human::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
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
QT_WARNING_POP
QT_END_MOC_NAMESPACE
