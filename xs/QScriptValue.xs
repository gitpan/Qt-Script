################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2012 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
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
        if (1) {
      
    ret = new QScriptValue();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg10 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QScriptValue(*arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if (SvIOK(ST(1))) {
      arg20 = (QScriptValue::SpecialValue)SvIV(ST(1));
    ret = new QScriptValue(arg20);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if (1) {
      arg30 = (bool)SvTRUE(ST(1));
    ret = new QScriptValue(arg30);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if (SvIOK(ST(1))) {
      arg40 = (int)SvIV(ST(1));
    ret = new QScriptValue(arg40);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if ((SvIOK(ST(1)) || SvUOK(ST(1)))) {
      arg50 = (uint)SvUV(ST(1));
    ret = new QScriptValue(arg50);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if (SvNOK(ST(1))) {
      arg60 = (double)SvNV(ST(1));
    ret = new QScriptValue(arg60);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg70 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QScriptValue(*arg70);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Core::QLatin1String")) {
      arg80 = reinterpret_cast<QLatin1String *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QScriptValue(*arg80);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if (SvPOK(ST(1))) {
      arg90 = (const char *)SvPV_nolen(ST(1));
    ret = new QScriptValue(arg90);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if ((sv_derived_from(ST(1), "Qt::Script::QScriptEngine") || ST(1) == &PL_sv_undef) && SvIOK(ST(2))) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptEngine")) {
        arga0 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arga0 = 0;
    }
    else
        Perl_croak(aTHX_ "arga0 is not of type Qt::Script::QScriptEngine");
      arga1 = (QScriptValue::SpecialValue)SvIV(ST(2));
    ret = new QScriptValue(arga0, arga1);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if ((sv_derived_from(ST(1), "Qt::Script::QScriptEngine") || ST(1) == &PL_sv_undef) && 1) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptEngine")) {
        argb0 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        argb0 = 0;
    }
    else
        Perl_croak(aTHX_ "argb0 is not of type Qt::Script::QScriptEngine");
      argb1 = (bool)SvTRUE(ST(2));
    ret = new QScriptValue(argb0, argb1);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if ((sv_derived_from(ST(1), "Qt::Script::QScriptEngine") || ST(1) == &PL_sv_undef) && SvIOK(ST(2))) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptEngine")) {
        argc0 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        argc0 = 0;
    }
    else
        Perl_croak(aTHX_ "argc0 is not of type Qt::Script::QScriptEngine");
      argc1 = (int)SvIV(ST(2));
    ret = new QScriptValue(argc0, argc1);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if ((sv_derived_from(ST(1), "Qt::Script::QScriptEngine") || ST(1) == &PL_sv_undef) && (SvIOK(ST(2)) || SvUOK(ST(2)))) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptEngine")) {
        argd0 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        argd0 = 0;
    }
    else
        Perl_croak(aTHX_ "argd0 is not of type Qt::Script::QScriptEngine");
      argd1 = (uint)SvUV(ST(2));
    ret = new QScriptValue(argd0, argd1);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if ((sv_derived_from(ST(1), "Qt::Script::QScriptEngine") || ST(1) == &PL_sv_undef) && SvNOK(ST(2))) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptEngine")) {
        arge0 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arge0 = 0;
    }
    else
        Perl_croak(aTHX_ "arge0 is not of type Qt::Script::QScriptEngine");
      arge1 = (double)SvNV(ST(2));
    ret = new QScriptValue(arge0, arge1);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if ((sv_derived_from(ST(1), "Qt::Script::QScriptEngine") || ST(1) == &PL_sv_undef) && sv_isa(ST(2), "Qt::Core::QString")) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptEngine")) {
        argf0 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        argf0 = 0;
    }
    else
        Perl_croak(aTHX_ "argf0 is not of type Qt::Script::QScriptEngine");
      argf1 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    ret = new QScriptValue(argf0, *argf1);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
        else if ((sv_derived_from(ST(1), "Qt::Script::QScriptEngine") || ST(1) == &PL_sv_undef) && SvPOK(ST(2))) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptEngine")) {
        arg100 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg100 = 0;
    }
    else
        Perl_croak(aTHX_ "arg100 is not of type Qt::Script::QScriptEngine");
      arg101 = (const char *)SvPV_nolen(ST(2));
    ret = new QScriptValue(arg100, arg101);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

##  ~QScriptValue()
void
QScriptValue::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## QScriptValue call(const QScriptValue & thisObject, const QList<QScriptValue> & args)
## QScriptValue call(const QScriptValue & thisObject, const QList<QScriptValue> & args = QList<QScriptValue>())
## QScriptValue call(const QScriptValue & thisObject = QScriptValue(), const QList<QScriptValue> & args = QList<QScriptValue>())
## QScriptValue call(const QScriptValue & thisObject, const QScriptValue & arguments)
void
QScriptValue::call(...)
PREINIT:
QScriptValue * arg00;
QList<QScriptValue> * arg01;
QScriptValue * arg10;
const QList<QScriptValue> & arg11_ = QList<QScriptValue>();
QList<QScriptValue> * arg11 = const_cast<QList<QScriptValue> *>(&arg11_);
const QScriptValue & arg20_ = QScriptValue();
QScriptValue * arg20 = const_cast<QScriptValue *>(&arg20_);
const QList<QScriptValue> & arg21_ = QList<QScriptValue>();
QList<QScriptValue> * arg21 = const_cast<QList<QScriptValue> *>(&arg21_);
QScriptValue * arg30;
QScriptValue * arg31;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    QScriptValue ret = THIS->call(*arg20, *arg21);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg10 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    QScriptValue ret = THIS->call(*arg10, *arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptValue") && sv_isa(ST(2), "Qt::Script::Template::T000")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = reinterpret_cast<QList<QScriptValue> *>(SvIV((SV*)SvRV(ST(2))));
    QScriptValue ret = THIS->call(*arg00, *arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Script::QScriptValue") && sv_isa(ST(2), "Qt::Script::QScriptValue")) {
      arg30 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
      arg31 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    QScriptValue ret = THIS->call(*arg30, *arg31);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

## QScriptValue construct(const QList<QScriptValue> & args)
## QScriptValue construct(const QList<QScriptValue> & args = QList<QScriptValue>())
## QScriptValue construct(const QScriptValue & arguments)
void
QScriptValue::construct(...)
PREINIT:
QList<QScriptValue> * arg00;
const QList<QScriptValue> & arg10_ = QList<QScriptValue>();
QList<QScriptValue> * arg10 = const_cast<QList<QScriptValue> *>(&arg10_);
QScriptValue * arg20;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    QScriptValue ret = THIS->construct(*arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Script::Template::T000")) {
      arg00 = reinterpret_cast<QList<QScriptValue> *>(SvIV((SV*)SvRV(ST(1))));
    QScriptValue ret = THIS->construct(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg20 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    QScriptValue ret = THIS->construct(*arg20);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

## QScriptValue data()
void
QScriptValue::data(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->data();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QScriptEngine * engine()
void
QScriptValue::engine(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptEngine * ret = THIS->engine();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngine", (void *)ret);
    XSRETURN(1);
    }

## bool equals(const QScriptValue & other)
void
QScriptValue::equals(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->equals(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool instanceOf(const QScriptValue & other)
void
QScriptValue::instanceOf(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->instanceOf(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isArray()
void
QScriptValue::isArray(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isArray();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isBool()
void
QScriptValue::isBool(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isBool();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isBoolean()
void
QScriptValue::isBoolean(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isBoolean();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isDate()
void
QScriptValue::isDate(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isDate();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isError()
void
QScriptValue::isError(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isError();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isFunction()
void
QScriptValue::isFunction(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isFunction();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isNull()
void
QScriptValue::isNull(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isNull();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isNumber()
void
QScriptValue::isNumber(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isNumber();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isObject()
void
QScriptValue::isObject(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isObject();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isQMetaObject()
void
QScriptValue::isQMetaObject(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isQMetaObject();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isQObject()
void
QScriptValue::isQObject(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isQObject();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isRegExp()
void
QScriptValue::isRegExp(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isRegExp();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isString()
void
QScriptValue::isString(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isString();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isUndefined()
void
QScriptValue::isUndefined(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isUndefined();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isValid()
void
QScriptValue::isValid(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isValid();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isVariant()
void
QScriptValue::isVariant(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isVariant();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool lessThan(const QScriptValue & other)
void
QScriptValue::lessThan(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->lessThan(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## qint64 objectId()
void
QScriptValue::objectId(...)
PREINIT:
PPCODE:
    if (1) {
      
    qint64 ret = THIS->objectId();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QScriptValue & operator=(const QScriptValue & other)
void
QScriptValue::operator_assign(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    QScriptValue * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)ret);
    XSRETURN(1);
    }

## QScriptValue prototype()
void
QScriptValue::prototype(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->prototype();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QScriptValue scope()
void
QScriptValue::scope(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->scope();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QScriptClass * scriptClass()
void
QScriptValue::scriptClass(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptClass * ret = THIS->scriptClass();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptClass", (void *)ret);
    XSRETURN(1);
    }

## void setData(const QScriptValue & data)
void
QScriptValue::setData(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setData(*arg00);
    XSRETURN(0);
    }

## void setPrototype(const QScriptValue & prototype)
void
QScriptValue::setPrototype(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setPrototype(*arg00);
    XSRETURN(0);
    }

## void setScope(const QScriptValue & scope)
void
QScriptValue::setScope(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setScope(*arg00);
    XSRETURN(0);
    }

## void setScriptClass(QScriptClass * scriptClass)
void
QScriptValue::setScriptClass(...)
PREINIT:
QScriptClass * arg00;
PPCODE:
    if ((sv_derived_from(ST(1), "Qt::Script::QScriptClass") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptClass")) {
        arg00 = reinterpret_cast<QScriptClass *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg00 = 0;
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptClass");
    (void)THIS->setScriptClass(arg00);
    XSRETURN(0);
    }

## bool strictlyEquals(const QScriptValue & other)
void
QScriptValue::strictlyEquals(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->strictlyEquals(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool toBool()
void
QScriptValue::toBool(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->toBool();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool toBoolean()
void
QScriptValue::toBoolean(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->toBoolean();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QDateTime toDateTime()
void
QScriptValue::toDateTime(...)
PREINIT:
PPCODE:
    if (1) {
      
    QDateTime ret = THIS->toDateTime();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QDateTime", (void *)new QDateTime(ret));
    XSRETURN(1);
    }

## qint32 toInt32()
void
QScriptValue::toInt32(...)
PREINIT:
PPCODE:
    if (1) {
      
    qint32 ret = THIS->toInt32();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## double toInteger()
void
QScriptValue::toInteger(...)
PREINIT:
PPCODE:
    if (1) {
      
    double ret = THIS->toInteger();
    ST(0) = sv_newmortal();
    sv_setnv(ST(0), (double)ret);
    XSRETURN(1);
    }

## double toNumber()
void
QScriptValue::toNumber(...)
PREINIT:
PPCODE:
    if (1) {
      
    double ret = THIS->toNumber();
    ST(0) = sv_newmortal();
    sv_setnv(ST(0), (double)ret);
    XSRETURN(1);
    }

## QScriptValue toObject()
void
QScriptValue::toObject(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->toObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## const QMetaObject * toQMetaObject()
void
QScriptValue::toQMetaObject(...)
PREINIT:
PPCODE:
    if (1) {
      
    const QMetaObject * ret = THIS->toQMetaObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QMetaObject", (void *)ret);
    XSRETURN(1);
    }

## QObject * toQObject()
void
QScriptValue::toQObject(...)
PREINIT:
PPCODE:
    if (1) {
      
    QObject * ret = THIS->toQObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QObject", (void *)ret);
    XSRETURN(1);
    }

## QRegExp toRegExp()
void
QScriptValue::toRegExp(...)
PREINIT:
PPCODE:
    if (1) {
      
    QRegExp ret = THIS->toRegExp();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QRegExp", (void *)new QRegExp(ret));
    XSRETURN(1);
    }

## QString toString()
void
QScriptValue::toString(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->toString();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## quint16 toUInt16()
void
QScriptValue::toUInt16(...)
PREINIT:
PPCODE:
    if (1) {
      
    quint16 ret = THIS->toUInt16();
    ST(0) = sv_newmortal();
    sv_setuv(ST(0), (UV)ret);
    XSRETURN(1);
    }

## quint32 toUInt32()
void
QScriptValue::toUInt32(...)
PREINIT:
PPCODE:
    if (1) {
      
    quint32 ret = THIS->toUInt32();
    ST(0) = sv_newmortal();
    sv_setuv(ST(0), (UV)ret);
    XSRETURN(1);
    }

## QVariant toVariant()
void
QScriptValue::toVariant(...)
PREINIT:
PPCODE:
    if (1) {
      
    QVariant ret = THIS->toVariant();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
    XSRETURN(1);
    }




################################################################
#### 
#### ENUMS
#### 
################################################################
# ResolveFlag::ResolveLocal
void
ResolveLocal()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::ResolveLocal);
    XSRETURN(1);


# ResolveFlag::ResolvePrototype
void
ResolvePrototype()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::ResolvePrototype);
    XSRETURN(1);


# ResolveFlag::ResolveScope
void
ResolveScope()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::ResolveScope);
    XSRETURN(1);


# ResolveFlag::ResolveFull
void
ResolveFull()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::ResolveFull);
    XSRETURN(1);


# PropertyFlag::ReadOnly
void
ReadOnly()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::ReadOnly);
    XSRETURN(1);


# PropertyFlag::Undeletable
void
Undeletable()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::Undeletable);
    XSRETURN(1);


# PropertyFlag::SkipInEnumeration
void
SkipInEnumeration()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::SkipInEnumeration);
    XSRETURN(1);


# PropertyFlag::PropertyGetter
void
PropertyGetter()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::PropertyGetter);
    XSRETURN(1);


# PropertyFlag::PropertySetter
void
PropertySetter()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::PropertySetter);
    XSRETURN(1);


# PropertyFlag::QObjectMember
void
QObjectMember()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::QObjectMember);
    XSRETURN(1);


# PropertyFlag::KeepExistingFlags
void
KeepExistingFlags()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::KeepExistingFlags);
    XSRETURN(1);


# PropertyFlag::UserRange
void
UserRange()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::UserRange);
    XSRETURN(1);


# SpecialValue::NullValue
void
NullValue()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::NullValue);
    XSRETURN(1);


# SpecialValue::UndefinedValue
void
UndefinedValue()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptValue::UndefinedValue);
    XSRETURN(1);
