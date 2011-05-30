################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptContext
PROTOTYPES: DISABLE

# classname: QScriptContext
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################



##  ~QScriptContext()
void
QScriptContext::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## QScriptValue activationObject()
void
QScriptContext::activationObject(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->activationObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QScriptValue argument()
void
QScriptContext::argument(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    QScriptValue ret = THIS->argument(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## int argumentCount()
void
QScriptContext::argumentCount(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->argumentCount();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QScriptValue argumentsObject()
void
QScriptContext::argumentsObject(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->argumentsObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QStringList backtrace()
void
QScriptContext::backtrace(...)
PREINIT:
PPCODE:
    if (1) {
      
    QStringList ret = THIS->backtrace();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QStringList", (void *)new QStringList(ret));
    XSRETURN(1);
    }

## QScriptValue callee()
void
QScriptContext::callee(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->callee();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QScriptEngine * engine()
void
QScriptContext::engine(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptEngine * ret = THIS->engine();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngine", (void *)ret);
    XSRETURN(1);
    }

## bool isCalledAsConstructor()
void
QScriptContext::isCalledAsConstructor(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isCalledAsConstructor();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QScriptContext * parentContext()
void
QScriptContext::parentContext(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptContext * ret = THIS->parentContext();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptContext", (void *)ret);
    XSRETURN(1);
    }

## QScriptValue popScope()
void
QScriptContext::popScope(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->popScope();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## void pushScope()
void
QScriptContext::pushScope(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->pushScope(*arg00);
    XSRETURN(0);
    }

## QScriptValue returnValue()
void
QScriptContext::returnValue(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->returnValue();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## void setActivationObject()
void
QScriptContext::setActivationObject(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setActivationObject(*arg00);
    XSRETURN(0);
    }

## void setReturnValue()
void
QScriptContext::setReturnValue(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setReturnValue(*arg00);
    XSRETURN(0);
    }

## void setThisObject()
void
QScriptContext::setThisObject(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setThisObject(*arg00);
    XSRETURN(0);
    }

## QScriptContext::ExecutionState state()
void
QScriptContext::state(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptContext::ExecutionState ret = THIS->state();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QScriptValue thisObject()
void
QScriptContext::thisObject(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->thisObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QScriptValue throwError()
## QScriptValue throwError(, )
void
QScriptContext::throwError(...)
PREINIT:
QString * arg00;
QScriptContext::Error arg10;
QString * arg11;
PPCODE:
    switch(items) {
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QScriptValue ret = THIS->throwError(*arg00);
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
        if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Core::QString")) {
      arg10 = (QScriptContext::Error)SvIV(ST(1));
      arg11 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    QScriptValue ret = THIS->throwError(arg10, *arg11);
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

## QScriptValue throwValue()
void
QScriptContext::throwValue(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    QScriptValue ret = THIS->throwValue(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QString toString()
void
QScriptContext::toString(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->toString();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }




################################################################
#### 
#### ENUMS
#### 
################################################################
# ExecutionState::NormalState
void
NormalState()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptContext::NormalState);
    XSRETURN(1);


# ExecutionState::ExceptionState
void
ExceptionState()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptContext::ExceptionState);
    XSRETURN(1);


# Error::UnknownError
void
UnknownError()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptContext::UnknownError);
    XSRETURN(1);


# Error::ReferenceError
void
ReferenceError()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptContext::ReferenceError);
    XSRETURN(1);


# Error::SyntaxError
void
SyntaxError()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptContext::SyntaxError);
    XSRETURN(1);


# Error::TypeError
void
TypeError()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptContext::TypeError);
    XSRETURN(1);


# Error::RangeError
void
RangeError()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptContext::RangeError);
    XSRETURN(1);


# Error::URIError
void
URIError()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptContext::URIError);
    XSRETURN(1);
