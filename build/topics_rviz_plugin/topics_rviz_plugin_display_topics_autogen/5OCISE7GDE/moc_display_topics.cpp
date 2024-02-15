/****************************************************************************
** Meta object code from reading C++ file 'display_topics.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "topics_rviz_plugin/display_topics.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'display_topics.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_topics_rviz_plugin__DisplayTopics_t {
    QByteArrayData data[17];
    char stringdata0[192];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_topics_rviz_plugin__DisplayTopics_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_topics_rviz_plugin__DisplayTopics_t qt_meta_stringdata_topics_rviz_plugin__DisplayTopics = {
    {
QT_MOC_LITERAL(0, 0, 33), // "topics_rviz_plugin::DisplayTo..."
QT_MOC_LITERAL(1, 34, 6), // "enable"
QT_MOC_LITERAL(2, 41, 0), // ""
QT_MOC_LITERAL(3, 42, 17), // "displayMessageBox"
QT_MOC_LITERAL(4, 60, 17), // "QMessageBox::Icon"
QT_MOC_LITERAL(5, 78, 4), // "load"
QT_MOC_LITERAL(6, 83, 12), // "rviz::Config"
QT_MOC_LITERAL(7, 96, 6), // "config"
QT_MOC_LITERAL(8, 103, 4), // "save"
QT_MOC_LITERAL(9, 108, 6), // "topics"
QT_MOC_LITERAL(10, 115, 8), // "settings"
QT_MOC_LITERAL(11, 124, 21), // "updateTopicsDisplayed"
QT_MOC_LITERAL(12, 146, 24), // "displayMessageBoxHandler"
QT_MOC_LITERAL(13, 171, 5), // "title"
QT_MOC_LITERAL(14, 177, 4), // "text"
QT_MOC_LITERAL(15, 182, 4), // "info"
QT_MOC_LITERAL(16, 187, 4) // "icon"

    },
    "topics_rviz_plugin::DisplayTopics\0"
    "enable\0\0displayMessageBox\0QMessageBox::Icon\0"
    "load\0rviz::Config\0config\0save\0topics\0"
    "settings\0updateTopicsDisplayed\0"
    "displayMessageBoxHandler\0title\0text\0"
    "info\0icon"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_topics_rviz_plugin__DisplayTopics[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   64,    2, 0x06 /* Public */,
       3,    4,   67,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       5,    1,   76,    2, 0x09 /* Protected */,
       8,    1,   79,    2, 0x09 /* Protected */,
       9,    0,   82,    2, 0x09 /* Protected */,
      10,    0,   83,    2, 0x09 /* Protected */,
      11,    0,   84,    2, 0x09 /* Protected */,
      12,    4,   85,    2, 0x09 /* Protected */,
      12,    3,   94,    2, 0x29 /* Protected | MethodCloned */,
      12,    2,  101,    2, 0x29 /* Protected | MethodCloned */,

 // signals: parameters
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::QString, QMetaType::QString, QMetaType::QString, 0x80000000 | 4,    2,    2,    2,    2,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 6,    7,
    QMetaType::Void, 0x80000000 | 6,    7,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString, QMetaType::QString, QMetaType::QString, 0x80000000 | 4,   13,   14,   15,   16,
    QMetaType::Void, QMetaType::QString, QMetaType::QString, QMetaType::QString,   13,   14,   15,
    QMetaType::Void, QMetaType::QString, QMetaType::QString,   13,   14,

       0        // eod
};

void topics_rviz_plugin::DisplayTopics::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<DisplayTopics *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->enable((*reinterpret_cast< const bool(*)>(_a[1]))); break;
        case 1: _t->displayMessageBox((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3])),(*reinterpret_cast< const QMessageBox::Icon(*)>(_a[4]))); break;
        case 2: _t->load((*reinterpret_cast< const rviz::Config(*)>(_a[1]))); break;
        case 3: _t->save((*reinterpret_cast< rviz::Config(*)>(_a[1]))); break;
        case 4: _t->topics(); break;
        case 5: _t->settings(); break;
        case 6: _t->updateTopicsDisplayed(); break;
        case 7: _t->displayMessageBoxHandler((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3])),(*reinterpret_cast< const QMessageBox::Icon(*)>(_a[4]))); break;
        case 8: _t->displayMessageBoxHandler((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3]))); break;
        case 9: _t->displayMessageBoxHandler((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (DisplayTopics::*)(const bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DisplayTopics::enable)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (DisplayTopics::*)(const QString , const QString , const QString , const QMessageBox::Icon );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DisplayTopics::displayMessageBox)) {
                *result = 1;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject topics_rviz_plugin::DisplayTopics::staticMetaObject = { {
    &rviz::Panel::staticMetaObject,
    qt_meta_stringdata_topics_rviz_plugin__DisplayTopics.data,
    qt_meta_data_topics_rviz_plugin__DisplayTopics,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *topics_rviz_plugin::DisplayTopics::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *topics_rviz_plugin::DisplayTopics::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_topics_rviz_plugin__DisplayTopics.stringdata0))
        return static_cast<void*>(this);
    return rviz::Panel::qt_metacast(_clname);
}

int topics_rviz_plugin::DisplayTopics::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 10;
    }
    return _id;
}

// SIGNAL 0
void topics_rviz_plugin::DisplayTopics::enable(const bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void topics_rviz_plugin::DisplayTopics::displayMessageBox(const QString _t1, const QString _t2, const QString _t3, const QMessageBox::Icon _t4)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
