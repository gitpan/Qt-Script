################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptValue
PROTOTYPES: DISABLE

# classname: QScriptValue
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QScriptValue()
##  QScriptValue(const QScriptValue & other)
##  QScriptValue(QScriptValue::SpecialValue value)
##  QScriptValue(bool value)
##  QScriptValue(int value)
##  QScriptValue(uint value)
##  QScriptValue(double value)
##  QScriptValue(const QString & value)
##  QScriptValue(const QLatin1String & value)
##  QScriptValue(const char * value)
##  QScriptValue(QScriptEngine * engine, QScriptValue::SpecialValue val)
##  QScriptValue(QScriptEngine * engine, bool val)
##  QScriptValue(QScriptEngine * engine, int val)
##  QScriptValue(QScriptEngine * engine, uint val)
##  QScriptValue(QScriptEngine * engine, double val)
##  QScriptValue(QScriptEngine * engine, const QString & val)
##  QScriptValue(QScriptEngine * engine, const char * val)
  void
QScriptValue::new(...)
PREINIT:
QScriptValue *ret;
QScriptValue * arg10;
QScriptValue::SpecialValue arg20;
bool arg30;
int arg40;
uint arg50;
double arg60;
QString * arg70;
QLatin1String * arg80;
const char * arg90;
QScriptEngine * arga0;
QScriptValue::SpecialValue arga1;
QScriptEngine * argb0;
bool argb1;
QScriptEngine * argc0;
int argc1;
QScriptEngine * argd0;
uint argd1;
QScriptEngine * arge0;
double arge1;
QScriptEngine * argf0;
QString * argf1;
QScriptEngine * arg100;
const char * arg101;
PPCODE:
    switch(items) {
    case 1:
      {
        ret = new QScriptValue();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 2:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg10 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Script::QScriptValue");
    ret = new QScriptValue(*arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_derived_from(ST(1), "Qt::Script::QScriptEngine")) {
        arga0 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arga0 is not of type Qt::Script::QScriptEngine");
    switch(SvIV(ST(2))) {
    case 0:
      arga1 = QScriptValue::NullValue;
      break;
    case 1:
      arga1 = QScriptValue::UndefinedValue;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QScriptValue::SpecialValue passed in");
    }
    ret = new QScriptValue(arga0, arga1);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

##  ~QScriptValue()
void
QScriptValue::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## QScriptValue call(const QScriptValue & thisObject, const QScriptValue & arguments)
void
QScriptValue::call(...)
PREINIT:
QScriptValue * arg00;
QScriptValue * arg01;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    if (sv_isa(ST(2), "Qt::Script::QScriptValue")) {
        arg01 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Script::QScriptValue");
    QScriptValue ret = THIS->call(*arg00, *arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QScriptValue construct(const QScriptValue & arguments)
void
QScriptValue::construct(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    QScriptValue ret = THIS->construct(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QScriptValue data()
void
QScriptValue::data(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->data();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QScriptEngine * engine()
void
QScriptValue::engine(...)
PREINIT:
PPCODE:
    QScriptEngine * ret = THIS->engine();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngine", (void *)ret);
    XSRETURN(1);

## bool equals(const QScriptValue & other)
void
QScriptValue::equals(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    bool ret = THIS->equals(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool instanceOf(const QScriptValue & other)
void
QScriptValue::instanceOf(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    bool ret = THIS->instanceOf(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isArray()
void
QScriptValue::isArray(...)
PREINIT:
PPCODE:
    bool ret = THIS->isArray();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isBool()
void
QScriptValue::isBool(...)
PREINIT:
PPCODE:
    bool ret = THIS->isBool();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isBoolean()
void
QScriptValue::isBoolean(...)
PREINIT:
PPCODE:
    bool ret = THIS->isBoolean();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isDate()
void
QScriptValue::isDate(...)
PREINIT:
PPCODE:
    bool ret = THIS->isDate();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isError()
void
QScriptValue::isError(...)
PREINIT:
PPCODE:
    bool ret = THIS->isError();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isFunction()
void
QScriptValue::isFunction(...)
PREINIT:
PPCODE:
    bool ret = THIS->isFunction();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isNull()
void
QScriptValue::isNull(...)
PREINIT:
PPCODE:
    bool ret = THIS->isNull();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isNumber()
void
QScriptValue::isNumber(...)
PREINIT:
PPCODE:
    bool ret = THIS->isNumber();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isObject()
void
QScriptValue::isObject(...)
PREINIT:
PPCODE:
    bool ret = THIS->isObject();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isQMetaObject()
void
QScriptValue::isQMetaObject(...)
PREINIT:
PPCODE:
    bool ret = THIS->isQMetaObject();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isQObject()
void
QScriptValue::isQObject(...)
PREINIT:
PPCODE:
    bool ret = THIS->isQObject();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isRegExp()
void
QScriptValue::isRegExp(...)
PREINIT:
PPCODE:
    bool ret = THIS->isRegExp();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isString()
void
QScriptValue::isString(...)
PREINIT:
PPCODE:
    bool ret = THIS->isString();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isUndefined()
void
QScriptValue::isUndefined(...)
PREINIT:
PPCODE:
    bool ret = THIS->isUndefined();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isValid()
void
QScriptValue::isValid(...)
PREINIT:
PPCODE:
    bool ret = THIS->isValid();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isVariant()
void
QScriptValue::isVariant(...)
PREINIT:
PPCODE:
    bool ret = THIS->isVariant();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool lessThan(const QScriptValue & other)
void
QScriptValue::lessThan(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    bool ret = THIS->lessThan(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## qint64 objectId()
void
QScriptValue::objectId(...)
PREINIT:
PPCODE:
    qint64 ret = THIS->objectId();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QScriptValue & operator=(const QScriptValue & other)
void
QScriptValue::operator_assign(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    QScriptValue * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);

## QScriptValue prototype()
void
QScriptValue::prototype(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->prototype();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QScriptValue scope()
void
QScriptValue::scope(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->scope();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QScriptClass * scriptClass()
void
QScriptValue::scriptClass(...)
PREINIT:
PPCODE:
    QScriptClass * ret = THIS->scriptClass();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptClass", (void *)ret);
    XSRETURN(1);

## void setData(const QScriptValue & data)
void
QScriptValue::setData(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    (void)THIS->setData(*arg00);
    XSRETURN(0);

## void setPrototype(const QScriptValue & prototype)
void
QScriptValue::setPrototype(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    (void)THIS->setPrototype(*arg00);
    XSRETURN(0);

## void setScope(const QScriptValue & scope)
void
QScriptValue::setScope(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    (void)THIS->setScope(*arg00);
    XSRETURN(0);

## void setScriptClass(QScriptClass * scriptClass)
void
QScriptValue::setScriptClass(...)
PREINIT:
QScriptClass * arg00;
PPCODE:
    if (sv_derived_from(ST(1), "Qt::Script::QScriptClass")) {
        arg00 = reinterpret_cast<QScriptClass *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptClass");
    (void)THIS->setScriptClass(arg00);
    XSRETURN(0);

## bool strictlyEquals(const QScriptValue & other)
void
QScriptValue::strictlyEquals(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    bool ret = THIS->strictlyEquals(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool toBool()
void
QScriptValue::toBool(...)
PREINIT:
PPCODE:
    bool ret = THIS->toBool();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool toBoolean()
void
QScriptValue::toBoolean(...)
PREINIT:
PPCODE:
    bool ret = THIS->toBoolean();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QDateTime toDateTime()
void
QScriptValue::toDateTime(...)
PREINIT:
PPCODE:
    QDateTime ret = THIS->toDateTime();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QDateTime", (void *)new QDateTime(ret));
    XSRETURN(1);

## qint32 toInt32()
void
QScriptValue::toInt32(...)
PREINIT:
PPCODE:
    qint32 ret = THIS->toInt32();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## double toInteger()
void
QScriptValue::toInteger(...)
PREINIT:
PPCODE:
    double ret = THIS->toInteger();
    ST(0) = sv_newmortal();
    sv_setnv(ST(0), (double)ret);
    XSRETURN(1);

## double toNumber()
void
QScriptValue::toNumber(...)
PREINIT:
PPCODE:
    double ret = THIS->toNumber();
    ST(0) = sv_newmortal();
    sv_setnv(ST(0), (double)ret);
    XSRETURN(1);

## QScriptValue toObject()
void
QScriptValue::toObject(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->toObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## const QMetaObject * toQMetaObject()
void
QScriptValue::toQMetaObject(...)
PREINIT:
PPCODE:
    const QMetaObject * ret = THIS->toQMetaObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)ret);
    XSRETURN(1);

## QObject * toQObject()
void
QScriptValue::toQObject(...)
PREINIT:
PPCODE:
    QObject * ret = THIS->toQObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)ret);
    XSRETURN(1);

## QRegExp toRegExp()
void
QScriptValue::toRegExp(...)
PREINIT:
PPCODE:
    QRegExp ret = THIS->toRegExp();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QRegExp(ret));
    XSRETURN(1);

## QString toString()
void
QScriptValue::toString(...)
PREINIT:
PPCODE:
    QString ret = THIS->toString();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## quint16 toUInt16()
void
QScriptValue::toUInt16(...)
PREINIT:
PPCODE:
    quint16 ret = THIS->toUInt16();
    ST(0) = sv_newmortal();
    sv_setuv(ST(0), (UV)ret);
    XSRETURN(1);

## quint32 toUInt32()
void
QScriptValue::toUInt32(...)
PREINIT:
PPCODE:
    quint32 ret = THIS->toUInt32();
    ST(0) = sv_newmortal();
    sv_setuv(ST(0), (UV)ret);
    XSRETURN(1);

## QVariant toVariant()
void
QScriptValue::toVariant(...)
PREINIT:
PPCODE:
    QVariant ret = THIS->toVariant();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QVariant(ret));
    XSRETURN(1);
