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
    if (sv_derived_from(ST(1), "Qt::Script::QScriptEngine")) {
        arg00 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptEngine");
    ret = new QScriptClass(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptClass", (void *)ret);
    XSRETURN(1);

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
    QScriptEngine * ret = THIS->engine();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngine", (void *)ret);
    XSRETURN(1);

## QVariant extension(QScriptClass::Extension extension, const QVariant & argument = QVariant())
## QVariant extension(QScriptClass::Extension extension, const QVariant & argument)
void
QScriptClass::extension(...)
PREINIT:
QScriptClass::Extension arg00;
const QVariant & arg01_ = QVariant();
QVariant * arg01 = const_cast<QVariant *>(&arg01_);
QScriptClass::Extension arg10;
QVariant * arg11;
PPCODE:
    switch(items) {
    case 2:
      {
        switch(SvIV(ST(1))) {
    case 0:
      arg00 = QScriptClass::Callable;
      break;
    case 1:
      arg00 = QScriptClass::HasInstance;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QScriptClass::Extension passed in");
    }
    QVariant ret = THIS->extension(arg00, *arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QVariant(ret));
    XSRETURN(1);
        break;
      }
    case 3:
      {
        switch(SvIV(ST(1))) {
    case 0:
      arg10 = QScriptClass::Callable;
      break;
    case 1:
      arg10 = QScriptClass::HasInstance;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QScriptClass::Extension passed in");
    }
    if (sv_isa(ST(2), "")) {
        arg11 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg11 is not of type ");
    QVariant ret = THIS->extension(arg10, *arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QVariant(ret));
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## QString name()
void
QScriptClass::name(...)
PREINIT:
PPCODE:
    QString ret = THIS->name();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## QScriptClassPropertyIterator * newIterator(const QScriptValue & object)
void
QScriptClass::newIterator(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    QScriptClassPropertyIterator * ret = THIS->newIterator(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptClassPropertyIterator", (void *)ret);
    XSRETURN(1);

## QScriptValue property(const QScriptValue & object, const QScriptString & name, uint id)
void
QScriptClass::property(...)
PREINIT:
QScriptValue * arg00;
QScriptString * arg01;
uint arg02;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    if (sv_isa(ST(2), "Qt::Script::QScriptString")) {
        arg01 = reinterpret_cast<QScriptString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Script::QScriptString");
    arg02 = (uint)SvUV(ST(3));
    QScriptValue ret = THIS->property(*arg00, *arg01, arg02);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QScriptValue prototype()
void
QScriptClass::prototype(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->prototype();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## void setProperty(QScriptValue & object, const QScriptString & name, uint id, const QScriptValue & value)
void
QScriptClass::setProperty(...)
PREINIT:
QScriptValue * arg00;
QScriptString * arg01;
uint arg02;
QScriptValue * arg03;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    if (sv_isa(ST(2), "Qt::Script::QScriptString")) {
        arg01 = reinterpret_cast<QScriptString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Script::QScriptString");
    arg02 = (uint)SvUV(ST(3));
    if (sv_isa(ST(4), "Qt::Script::QScriptValue")) {
        arg03 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(4))));
    }
    else
        Perl_croak(aTHX_ "arg03 is not of type Qt::Script::QScriptValue");
    (void)THIS->setProperty(*arg00, *arg01, arg02, *arg03);
    XSRETURN(0);

## bool supportsExtension(QScriptClass::Extension extension)
void
QScriptClass::supportsExtension(...)
PREINIT:
QScriptClass::Extension arg00;
PPCODE:
    switch(SvIV(ST(1))) {
    case 0:
      arg00 = QScriptClass::Callable;
      break;
    case 1:
      arg00 = QScriptClass::HasInstance;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QScriptClass::Extension passed in");
    }
    bool ret = THIS->supportsExtension(arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
