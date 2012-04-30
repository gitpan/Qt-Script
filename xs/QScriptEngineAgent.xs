################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2012 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
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
    if ((sv_derived_from(ST(1), "Qt::Script::QScriptEngine") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptEngine")) {
        arg00 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg00 = 0;
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptEngine");
    ret = new QScriptEngineAgent(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngineAgent", (void *)ret);
    XSRETURN(1);
    }

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
    if (1) {
      
    (void)THIS->contextPop();
    XSRETURN(0);
    }

## void contextPush()
void
QScriptEngineAgent::contextPush(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->contextPush();
    XSRETURN(0);
    }

## QScriptEngine * engine()
void
QScriptEngineAgent::engine(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptEngine * ret = THIS->engine();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngine", (void *)ret);
    XSRETURN(1);
    }

## void exceptionCatch(qint64 scriptId, const QScriptValue & exception)
void
QScriptEngineAgent::exceptionCatch(...)
PREINIT:
qint64 arg00;
QScriptValue * arg01;
PPCODE:
    if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Script::QScriptValue")) {
      arg00 = (qint64)SvIV(ST(1));
      arg01 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    (void)THIS->exceptionCatch(arg00, *arg01);
    XSRETURN(0);
    }

## void exceptionThrow(qint64 scriptId, const QScriptValue & exception, bool hasHandler)
void
QScriptEngineAgent::exceptionThrow(...)
PREINIT:
qint64 arg00;
QScriptValue * arg01;
bool arg02;
PPCODE:
    if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Script::QScriptValue") && 1) {
      arg00 = (qint64)SvIV(ST(1));
      arg01 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
      arg02 = (bool)SvTRUE(ST(3));
    (void)THIS->exceptionThrow(arg00, *arg01, arg02);
    XSRETURN(0);
    }

## QVariant extension(QScriptEngineAgent::Extension extension, const QVariant & argument)
## QVariant extension(QScriptEngineAgent::Extension extension, const QVariant & argument = QVariant())
void
QScriptEngineAgent::extension(...)
PREINIT:
QScriptEngineAgent::Extension arg00;
QVariant * arg01;
QScriptEngineAgent::Extension arg10;
const QVariant & arg11_ = QVariant();
QVariant * arg11 = const_cast<QVariant *>(&arg11_);
PPCODE:
    switch(items) {
      case 2:
      {
        if (SvIOK(ST(1))) {
      arg10 = (QScriptEngineAgent::Extension)SvIV(ST(1));
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
      arg00 = (QScriptEngineAgent::Extension)SvIV(ST(1));
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

## void functionEntry(qint64 scriptId)
void
QScriptEngineAgent::functionEntry(...)
PREINIT:
qint64 arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (qint64)SvIV(ST(1));
    (void)THIS->functionEntry(arg00);
    XSRETURN(0);
    }

## void functionExit(qint64 scriptId, const QScriptValue & returnValue)
void
QScriptEngineAgent::functionExit(...)
PREINIT:
qint64 arg00;
QScriptValue * arg01;
PPCODE:
    if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Script::QScriptValue")) {
      arg00 = (qint64)SvIV(ST(1));
      arg01 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    (void)THIS->functionExit(arg00, *arg01);
    XSRETURN(0);
    }

## void positionChange(qint64 scriptId, int lineNumber, int columnNumber)
void
QScriptEngineAgent::positionChange(...)
PREINIT:
qint64 arg00;
int arg01;
int arg02;
PPCODE:
    if (SvIOK(ST(1)) && SvIOK(ST(2)) && SvIOK(ST(3))) {
      arg00 = (qint64)SvIV(ST(1));
      arg01 = (int)SvIV(ST(2));
      arg02 = (int)SvIV(ST(3));
    (void)THIS->positionChange(arg00, arg01, arg02);
    XSRETURN(0);
    }

## void scriptLoad(qint64 id, const QString & program, const QString & fileName, int baseLineNumber)
void
QScriptEngineAgent::scriptLoad(...)
PREINIT:
qint64 arg00;
QString * arg01;
QString * arg02;
int arg03;
PPCODE:
    if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Core::QString") && sv_isa(ST(3), "Qt::Core::QString") && SvIOK(ST(4))) {
      arg00 = (qint64)SvIV(ST(1));
      arg01 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
      arg02 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(3))));
      arg03 = (int)SvIV(ST(4));
    (void)THIS->scriptLoad(arg00, *arg01, *arg02, arg03);
    XSRETURN(0);
    }

## void scriptUnload(qint64 id)
void
QScriptEngineAgent::scriptUnload(...)
PREINIT:
qint64 arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (qint64)SvIV(ST(1));
    (void)THIS->scriptUnload(arg00);
    XSRETURN(0);
    }

## bool supportsExtension(QScriptEngineAgent::Extension extension)
void
QScriptEngineAgent::supportsExtension(...)
PREINIT:
QScriptEngineAgent::Extension arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (QScriptEngineAgent::Extension)SvIV(ST(1));
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
# Extension::DebuggerInvocationRequest
void
DebuggerInvocationRequest()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptEngineAgent::DebuggerInvocationRequest);
    XSRETURN(1);
