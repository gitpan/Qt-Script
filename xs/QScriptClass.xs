################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptClass
PROTOTYPES: DISABLE

# classname: QScriptClass
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QScriptClass(QScriptEngine * engine)
  void
QScriptClass::new(...)
PREINIT:
QScriptClass *ret;
QScriptEngine * arg00;
PPCODE:
    if ((sv_derived_from(ST(1), "Qt::Script::QScriptEngine") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptEngine")) {
        arg00 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg00 = 0;
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptEngine");
    ret = new QScriptClass(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptClass", (void *)ret);
    XSRETURN(1);
    }

##  ~QScriptClass()
void
QScriptClass::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## QScriptEngine * engine()
void
QScriptClass::engine(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptEngine * ret = THIS->engine();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngine", (void *)ret);
    XSRETURN(1);
    }

## QVariant extension(QScriptClass::Extension extension, const QVariant & argument)
## QVariant extension(QScriptClass::Extension extension, const QVariant & argument = QVariant())
void
QScriptClass::extension(...)
PREINIT:
QScriptClass::Extension arg00;
QVariant * arg01;
QScriptClass::Extension arg10;
const QVariant & arg11_ = QVariant();
QVariant * arg11 = const_cast<QVariant *>(&arg11_);
PPCODE:
    switch(items) {
      case 2:
      {
        if (SvIOK(ST(1))) {
      arg10 = (QScriptClass::Extension)SvIV(ST(1));
    QVariant ret = THIS->extension(arg10, *arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Core::QVariant")) {
      arg00 = (QScriptClass::Extension)SvIV(ST(1));
      arg01 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
    QVariant ret = THIS->extension(arg00, *arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
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

## QString name()
void
QScriptClass::name(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->name();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## QScriptClassPropertyIterator * newIterator(const QScriptValue & object)
void
QScriptClass::newIterator(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    QScriptClassPropertyIterator * ret = THIS->newIterator(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptClassPropertyIterator", (void *)ret);
    XSRETURN(1);
    }

## QScriptValue property(const QScriptValue & object, const QScriptString & name, uint id)
void
QScriptClass::property(...)
PREINIT:
QScriptValue * arg00;
QScriptString * arg01;
uint arg02;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue") && sv_isa(ST(2), "Qt::Script::QScriptString") && (SvIOK(ST(3)) || SvUOK(ST(3)))) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = reinterpret_cast<QScriptString *>(SvIV((SV*)SvRV(ST(2))));
      arg02 = (uint)SvUV(ST(3));
    QScriptValue ret = THIS->property(*arg00, *arg01, arg02);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QFlags<QScriptValue::PropertyFlag> propertyFlags(const QScriptValue & object, const QScriptString & name, uint id)
void
QScriptClass::propertyFlags(...)
PREINIT:
QScriptValue * arg00;
QScriptString * arg01;
uint arg02;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue") && sv_isa(ST(2), "Qt::Script::QScriptString") && (SvIOK(ST(3)) || SvUOK(ST(3)))) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = reinterpret_cast<QScriptString *>(SvIV((SV*)SvRV(ST(2))));
      arg02 = (uint)SvUV(ST(3));
    QFlags<QScriptValue::PropertyFlag> ret = THIS->propertyFlags(*arg00, *arg01, arg02);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QScriptValue prototype()
void
QScriptClass::prototype(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->prototype();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QFlags<QScriptClass::QueryFlag> queryProperty(const QScriptValue & object, const QScriptString & name, QFlags<QScriptClass::QueryFlag> flags, uint * id)
void
QScriptClass::queryProperty(...)
PREINIT:
QScriptValue * arg00;
QScriptString * arg01;
QFlags<QScriptClass::QueryFlag> arg02;
uint * arg03;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue") && sv_isa(ST(2), "Qt::Script::QScriptString") && SvIOK(ST(3)) && (SvIOK(ST(4)) || SvUOK(ST(4)))) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = reinterpret_cast<QScriptString *>(SvIV((SV*)SvRV(ST(2))));
      arg02 = QFlags<QScriptClass::QueryFlag>((int)SvIV(ST(3)));
      {
        uint tmp = static_cast<uint>(SvUV(ST(4)));
        arg03 = &tmp;
    }
    QFlags<QScriptClass::QueryFlag> ret = THIS->queryProperty(*arg00, *arg01, arg02, arg03);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## void setProperty(QScriptValue & object, const QScriptString & name, uint id, const QScriptValue & value)
void
QScriptClass::setProperty(...)
PREINIT:
QScriptValue * arg00;
QScriptString * arg01;
uint arg02;
QScriptValue * arg03;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue") && sv_isa(ST(2), "Qt::Script::QScriptString") && (SvIOK(ST(3)) || SvUOK(ST(3))) && sv_isa(ST(4), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = reinterpret_cast<QScriptString *>(SvIV((SV*)SvRV(ST(2))));
      arg02 = (uint)SvUV(ST(3));
      arg03 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(4))));
    (void)THIS->setProperty(*arg00, *arg01, arg02, *arg03);
    XSRETURN(0);
    }

## bool supportsExtension(QScriptClass::Extension extension)
void
QScriptClass::supportsExtension(...)
PREINIT:
QScriptClass::Extension arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (QScriptClass::Extension)SvIV(ST(1));
    bool ret = THIS->supportsExtension(arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }




################################################################
#### 
#### ENUMS
#### 
################################################################
# QueryFlag::HandlesReadAccess
void
HandlesReadAccess()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptClass::HandlesReadAccess);
    XSRETURN(1);


# QueryFlag::HandlesWriteAccess
void
HandlesWriteAccess()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptClass::HandlesWriteAccess);
    XSRETURN(1);


# Extension::Callable
void
Callable()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptClass::Callable);
    XSRETURN(1);


# Extension::HasInstance
void
HasInstance()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptClass::HasInstance);
    XSRETURN(1);
