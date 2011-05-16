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
    QScriptValue ret = THIS->activationObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QScriptValue argument(int index)
void
QScriptContext::argument(...)
PREINIT:
int arg00;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    QScriptValue ret = THIS->argument(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## int argumentCount()
void
QScriptContext::argumentCount(...)
PREINIT:
PPCODE:
    int ret = THIS->argumentCount();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QScriptValue argumentsObject()
void
QScriptContext::argumentsObject(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->argumentsObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QStringList backtrace()
void
QScriptContext::backtrace(...)
PREINIT:
PPCODE:
    QStringList ret = THIS->backtrace();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QStringList(ret));
    XSRETURN(1);

## QScriptValue callee()
void
QScriptContext::callee(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->callee();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QScriptEngine * engine()
void
QScriptContext::engine(...)
PREINIT:
PPCODE:
    QScriptEngine * ret = THIS->engine();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngine", (void *)ret);
    XSRETURN(1);

## bool isCalledAsConstructor()
void
QScriptContext::isCalledAsConstructor(...)
PREINIT:
PPCODE:
    bool ret = THIS->isCalledAsConstructor();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QScriptContext * parentContext()
void
QScriptContext::parentContext(...)
PREINIT:
PPCODE:
    QScriptContext * ret = THIS->parentContext();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptContext", (void *)ret);
    XSRETURN(1);

## QScriptValue popScope()
void
QScriptContext::popScope(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->popScope();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## void pushScope(const QScriptValue & object)
void
QScriptContext::pushScope(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    (void)THIS->pushScope(*arg00);
    XSRETURN(0);

## QScriptValue returnValue()
void
QScriptContext::returnValue(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->returnValue();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## void setActivationObject(const QScriptValue & activation)
void
QScriptContext::setActivationObject(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    (void)THIS->setActivationObject(*arg00);
    XSRETURN(0);

## void setReturnValue(const QScriptValue & result)
void
QScriptContext::setReturnValue(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    (void)THIS->setReturnValue(*arg00);
    XSRETURN(0);

## void setThisObject(const QScriptValue & thisObject)
void
QScriptContext::setThisObject(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    (void)THIS->setThisObject(*arg00);
    XSRETURN(0);

## QScriptContext::ExecutionState state()
void
QScriptContext::state(...)
PREINIT:
PPCODE:
    QScriptContext::ExecutionState ret = THIS->state();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QScriptValue thisObject()
void
QScriptContext::thisObject(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->thisObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QScriptValue throwError(const QString & text)
## QScriptValue throwError(QScriptContext::Error error, const QString & text)
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
        if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    QScriptValue ret = THIS->throwError(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
        break;
      }
    case 3:
      {
        switch(SvIV(ST(1))) {
    case 0:
      arg10 = QScriptContext::UnknownError;
      break;
    case 1:
      arg10 = QScriptContext::ReferenceError;
      break;
    case 2:
      arg10 = QScriptContext::SyntaxError;
      break;
    case 3:
      arg10 = QScriptContext::TypeError;
      break;
    case 4:
      arg10 = QScriptContext::RangeError;
      break;
    case 5:
      arg10 = QScriptContext::URIError;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QScriptContext::Error passed in");
    }
    if (sv_isa(ST(2), "")) {
        arg11 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg11 is not of type ");
    QScriptValue ret = THIS->throwError(arg10, *arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## QScriptValue throwValue(const QScriptValue & value)
void
QScriptContext::throwValue(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    QScriptValue ret = THIS->throwValue(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QString toString()
void
QScriptContext::toString(...)
PREINIT:
PPCODE:
    QString ret = THIS->toString();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);
