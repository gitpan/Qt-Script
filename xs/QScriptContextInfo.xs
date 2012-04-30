################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2012 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptContextInfo
PROTOTYPES: DISABLE

# classname: QScriptContextInfo
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QScriptContextInfo()
##  QScriptContextInfo(const QScriptContext * context)
##  QScriptContextInfo(const QScriptContextInfo & other)
  void
QScriptContextInfo::new(...)
PREINIT:
QScriptContextInfo *ret;
const QScriptContext * arg10;
QScriptContextInfo * arg20;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    ret = new QScriptContextInfo();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptContextInfo", (void *)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if ((sv_derived_from(ST(1), "Qt::Script::QScriptContext") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptContext")) {
        arg10 = reinterpret_cast<QScriptContext *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg10 = 0;
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Script::QScriptContext");
    ret = new QScriptContextInfo(arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptContextInfo", (void *)ret);
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Script::QScriptContextInfo")) {
      arg20 = reinterpret_cast<QScriptContextInfo *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QScriptContextInfo(*arg20);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptContextInfo", (void *)ret);
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

##  ~QScriptContextInfo()
void
QScriptContextInfo::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## int columnNumber()
void
QScriptContextInfo::columnNumber(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->columnNumber();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QString fileName()
void
QScriptContextInfo::fileName(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->fileName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## int functionEndLineNumber()
void
QScriptContextInfo::functionEndLineNumber(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->functionEndLineNumber();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## int functionMetaIndex()
void
QScriptContextInfo::functionMetaIndex(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->functionMetaIndex();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QString functionName()
void
QScriptContextInfo::functionName(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->functionName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## QStringList functionParameterNames()
void
QScriptContextInfo::functionParameterNames(...)
PREINIT:
PPCODE:
    if (1) {
      
    QStringList ret = THIS->functionParameterNames();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QStringList", (void *)new QStringList(ret));
    XSRETURN(1);
    }

## int functionStartLineNumber()
void
QScriptContextInfo::functionStartLineNumber(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->functionStartLineNumber();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QScriptContextInfo::FunctionType functionType()
void
QScriptContextInfo::functionType(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptContextInfo::FunctionType ret = THIS->functionType();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## bool isNull()
void
QScriptContextInfo::isNull(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isNull();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## int lineNumber()
void
QScriptContextInfo::lineNumber(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->lineNumber();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## bool operator!=(const QScriptContextInfo & other)
void
QScriptContextInfo::operator_not_equal(...)
PREINIT:
QScriptContextInfo * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptContextInfo")) {
      arg00 = reinterpret_cast<QScriptContextInfo *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->operator!=(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QScriptContextInfo & operator=(const QScriptContextInfo & other)
void
QScriptContextInfo::operator_assign(...)
PREINIT:
QScriptContextInfo * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptContextInfo")) {
      arg00 = reinterpret_cast<QScriptContextInfo *>(SvIV((SV*)SvRV(ST(1))));
    QScriptContextInfo * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptContextInfo", (void *)ret);
    XSRETURN(1);
    }

## bool operator==(const QScriptContextInfo & other)
void
QScriptContextInfo::operator_equal_to(...)
PREINIT:
QScriptContextInfo * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptContextInfo")) {
      arg00 = reinterpret_cast<QScriptContextInfo *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->operator==(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## qint64 scriptId()
void
QScriptContextInfo::scriptId(...)
PREINIT:
PPCODE:
    if (1) {
      
    qint64 ret = THIS->scriptId();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }




################################################################
#### 
#### ENUMS
#### 
################################################################
# FunctionType::ScriptFunction
void
ScriptFunction()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptContextInfo::ScriptFunction);
    XSRETURN(1);


# FunctionType::QtFunction
void
QtFunction()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptContextInfo::QtFunction);
    XSRETURN(1);


# FunctionType::QtPropertyFunction
void
QtPropertyFunction()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptContextInfo::QtPropertyFunction);
    XSRETURN(1);


# FunctionType::NativeFunction
void
NativeFunction()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptContextInfo::NativeFunction);
    XSRETURN(1);
