/****************************************************************************
** Meta object code from reading C++ file 'topic_info.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "topics_rviz_plugin/topic_info.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'topic_info.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_topics_rviz_plugin__TopicInfo_t {
    QByteArrayData data[6];
    char stringdata0[107];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_topics_rviz_plugin__TopicInfo_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_topics_rviz_plugin__TopicInfo_t qt_meta_stringdata_topics_rviz_plugin__TopicInfo = {
    {
QT_MOC_LITERAL(0, 0, 29), // "topics_rviz_plugin::TopicInfo"
QT_MOC_LITERAL(1, 30, 23), // "adjustLCDNumberOfDigits"
QT_MOC_LITERAL(2, 54, 0), // ""
QT_MOC_LITERAL(3, 55, 13), // "long unsigned"
QT_MOC_LITERAL(4, 69, 6), // "number"
QT_MOC_LITERAL(5, 76, 30) // "adjustLCDNumberOfDigitsHandler"

    },
    "topics_rviz_plugin::TopicInfo\0"
    "adjustLCDNumberOfDigits\0\0long unsigned\0"
    "number\0adjustLCDNumberOfDigitsHandler"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_topics_rviz_plugin__TopicInfo[] = {

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
       1,    1,   24,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       5,    1,   27,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,

       0        // eod
};

void topics_rviz_plugin::TopicInfo::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<TopicInfo *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->adjustLCDNumberOfDigits((*reinterpret_cast< const long unsigned(*)>(_a[1]))); break;
        case 1: _t->adjustLCDNumberOfDigitsHandler((*reinterpret_cast< const long unsigned(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (TopicInfo::*)(const long unsigned );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&TopicInfo::adjustLCDNumberOfDigits)) {
                *result = 0;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject topics_rviz_plugin::TopicInfo::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_topics_rviz_plugin__TopicInfo.data,
    qt_meta_data_topics_rviz_plugin__TopicInfo,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *topics_rviz_plugin::TopicInfo::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *topics_rviz_plugin::TopicInfo::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_topics_rviz_plugin__TopicInfo.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int topics_rviz_plugin::TopicInfo::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
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
void topics_rviz_plugin::TopicInfo::adjustLCDNumberOfDigits(const long unsigned _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
