################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptEngineAgent
PROTOTYPES: DISABLE

# classname: QScriptEngineAgent
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QScriptEngineAgent(QScriptEngine * engine)
  void
QScriptEngineAgent::new(...)
PREINIT:
QScriptEngineAgent *ret;
QScriptEngine * arg00;
PPCODE:
    if (sv_derived_from(ST(1), "Qt::Script::QScriptEngine")) {
        arg00 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptEngine");
    ret = new QScriptEngineAgent(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngineAgent", (void *)ret);
    XSRETURN(1);

##  ~QScriptEngineAgent()
void
QScriptEngineAgent::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## void contextPop()
void
QScriptEngineAgent::contextPop(...)
PREINIT:
PPCODE:
    (void)THIS->contextPop();
    XSRETURN(0);

## void contextPush()
void
QScriptEngineAgent::contextPush(...)
PREINIT:
PPCODE:
    (void)THIS->contextPush();
    XSRETURN(0);

## QScriptEngine * engine()
void
QScriptEngineAgent::engine(...)
PREINIT:
PPCODE:
    QScriptEngine * ret = THIS->engine();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngine", (void *)ret);
    XSRETURN(1);

## void exceptionCatch(qint64 scriptId, const QScriptValue & exception)
void
QScriptEngineAgent::exceptionCatch(...)
PREINIT:
qint64 arg00;
QScriptValue * arg01;
PPCODE:
    arg00 = (qint64)SvIV(ST(1));
    if (sv_isa(ST(2), "Qt::Script::QScriptValue")) {
        arg01 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Script::QScriptValue");
    (void)THIS->exceptionCatch(arg00, *arg01);
    XSRETURN(0);

## void exceptionThrow(qint64 scriptId, const QScriptValue & exception, bool hasHandler)
void
QScriptEngineAgent::exceptionThrow(...)
PREINIT:
qint64 arg00;
QScriptValue * arg01;
bool arg02;
PPCODE:
    arg00 = (qint64)SvIV(ST(1));
    if (sv_isa(ST(2), "Qt::Script::QScriptValue")) {
        arg01 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Script::QScriptValue");
    arg02 = (bool)SvTRUE(ST(3));
    (void)THIS->exceptionThrow(arg00, *arg01, arg02);
    XSRETURN(0);

## QVariant extension(QScriptEngineAgent::Extension extension, const QVariant & argument = QVariant())
## QVariant extension(QScriptEngineAgent::Extension extension, const QVariant & argument)
void
QScriptEngineAgent::extension(...)
PREINIT:
QScriptEngineAgent::Extension arg00;
const QVariant & arg01_ = QVariant();
QVariant * arg01 = const_cast<QVariant *>(&arg01_);
QScriptEngineAgent::Extension arg10;
QVariant * arg11;
PPCODE:
    switch(items) {
    case 2:
      {
        switch(SvIV(ST(1))) {
    case 0:
      arg00 = QScriptEngineAgent::DebuggerInvocationRequest;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QScriptEngineAgent::Extension passed in");
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
      arg10 = QScriptEngineAgent::DebuggerInvocationRequest;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QScriptEngineAgent::Extension passed in");
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

## void functionEntry(qint64 scriptId)
void
QScriptEngineAgent::functionEntry(...)
PREINIT:
qint64 arg00;
PPCODE:
    arg00 = (qint64)SvIV(ST(1));
    (void)THIS->functionEntry(arg00);
    XSRETURN(0);

## void functionExit(qint64 scriptId, const QScriptValue & returnValue)
void
QScriptEngineAgent::functionExit(...)
PREINIT:
qint64 arg00;
QScriptValue * arg01;
PPCODE:
    arg00 = (qint64)SvIV(ST(1));
    if (sv_isa(ST(2), "Qt::Script::QScriptValue")) {
        arg01 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Script::QScriptValue");
    (void)THIS->functionExit(arg00, *arg01);
    XSRETURN(0);

## void positionChange(qint64 scriptId, int lineNumber, int columnNumber)
void
QScriptEngineAgent::positionChange(...)
PREINIT:
qint64 arg00;
int arg01;
int arg02;
PPCODE:
    arg00 = (qint64)SvIV(ST(1));
    arg01 = (int)SvIV(ST(2));
    arg02 = (int)SvIV(ST(3));
    (void)THIS->positionChange(arg00, arg01, arg02);
    XSRETURN(0);

## void scriptLoad(qint64 id, const QString & program, const QString & fileName, int baseLineNumber)
void
QScriptEngineAgent::scriptLoad(...)
PREINIT:
qint64 arg00;
QString * arg01;
QString * arg02;
int arg03;
PPCODE:
    arg00 = (qint64)SvIV(ST(1));
    if (sv_isa(ST(2), "")) {
        arg01 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type ");
    if (sv_isa(ST(3), "")) {
        arg02 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(3))));
    }
    else
        Perl_croak(aTHX_ "arg02 is not of type ");
    arg03 = (int)SvIV(ST(4));
    (void)THIS->scriptLoad(arg00, *arg01, *arg02, arg03);
    XSRETURN(0);

## void scriptUnload(qint64 id)
void
QScriptEngineAgent::scriptUnload(...)
PREINIT:
qint64 arg00;
PPCODE:
    arg00 = (qint64)SvIV(ST(1));
    (void)THIS->scriptUnload(arg00);
    XSRETURN(0);

## bool supportsExtension(QScriptEngineAgent::Extension extension)
void
QScriptEngineAgent::supportsExtension(...)
PREINIT:
QScriptEngineAgent::Extension arg00;
PPCODE:
    switch(SvIV(ST(1))) {
    case 0:
      arg00 = QScriptEngineAgent::DebuggerInvocationRequest;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QScriptEngineAgent::Extension passed in");
    }
    bool ret = THIS->supportsExtension(arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
