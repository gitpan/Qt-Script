################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptEngine
PROTOTYPES: DISABLE

# classname: QScriptEngine
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QScriptEngine()
##  QScriptEngine(QObject * parent)
  void
QScriptEngine::new(...)
PREINIT:
QScriptEngine *ret;
QObject * arg10;
PPCODE:
    switch(items) {
    case 1:
      {
        ret = new QScriptEngine();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngine", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 2:
      {
        if (sv_derived_from(ST(1), "")) {
        arg10 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    ret = new QScriptEngine(arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngine", (void *)ret);
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

##  ~QScriptEngine()
void
QScriptEngine::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## void abortEvaluation(const QScriptValue & result = QScriptValue())
## void abortEvaluation(const QScriptValue & result)
void
QScriptEngine::abortEvaluation(...)
PREINIT:
const QScriptValue & arg00_ = QScriptValue();
QScriptValue * arg00 = const_cast<QScriptValue *>(&arg00_);
QScriptValue * arg10;
PPCODE:
    switch(items) {
    case 1:
      {
        (void)THIS->abortEvaluation(*arg00);
    XSRETURN(0);
        break;
      }
    case 2:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg10 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Script::QScriptValue");
    (void)THIS->abortEvaluation(*arg10);
    XSRETURN(0);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## QScriptEngineAgent * agent()
void
QScriptEngine::agent(...)
PREINIT:
PPCODE:
    QScriptEngineAgent * ret = THIS->agent();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngineAgent", (void *)ret);
    XSRETURN(1);

## QStringList availableExtensions()
void
QScriptEngine::availableExtensions(...)
PREINIT:
PPCODE:
    QStringList ret = THIS->availableExtensions();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QStringList(ret));
    XSRETURN(1);

## bool canEvaluate(const QString & program)
void
QScriptEngine::canEvaluate(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    bool ret = THIS->canEvaluate(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## static QScriptSyntaxCheckResult checkSyntax(const QString & program)
void
QScriptEngine::checkSyntax(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    QScriptSyntaxCheckResult ret = THIS->checkSyntax(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptSyntaxCheckResult", (void *)new QScriptSyntaxCheckResult(ret));
    XSRETURN(1);

## void clearExceptions()
void
QScriptEngine::clearExceptions(...)
PREINIT:
PPCODE:
    (void)THIS->clearExceptions();
    XSRETURN(0);

## void collectGarbage()
void
QScriptEngine::collectGarbage(...)
PREINIT:
PPCODE:
    (void)THIS->collectGarbage();
    XSRETURN(0);

## QScriptContext * currentContext()
void
QScriptEngine::currentContext(...)
PREINIT:
PPCODE:
    QScriptContext * ret = THIS->currentContext();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptContext", (void *)ret);
    XSRETURN(1);

## QScriptValue defaultPrototype(int metaTypeId)
void
QScriptEngine::defaultPrototype(...)
PREINIT:
int arg00;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    QScriptValue ret = THIS->defaultPrototype(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QScriptValue evaluate(const QScriptProgram & program)
## QScriptValue evaluate(const QString & program, const QString & fileName, int lineNumber = 1)
## QScriptValue evaluate(const QString & program, const QString & fileName, int lineNumber)
## QScriptValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
## QScriptValue evaluate(const QString & program, const QString & fileName, int lineNumber = 1)
void
QScriptEngine::evaluate(...)
PREINIT:
QScriptProgram * arg00;
QString * arg10;
QString * arg11;
int arg12 = 1;
QString * arg20;
QString * arg21;
int arg22;
QString * arg30;
const QString & arg31_ = QString();
QString * arg31 = const_cast<QString *>(&arg31_);
int arg32 = 1;
QString * arg40;
QString * arg41;
int arg42 = 1;
PPCODE:
    switch(items) {
    case 2:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptProgram")) {
        arg00 = reinterpret_cast<QScriptProgram *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptProgram");
    QScriptValue ret = THIS->evaluate(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_isa(ST(1), "")) {
        arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    if (sv_isa(ST(2), "")) {
        arg11 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg11 is not of type ");
    QScriptValue ret = THIS->evaluate(*arg10, *arg11, arg12);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
        break;
      }
    case 4:
      {
        if (sv_isa(ST(1), "")) {
        arg20 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg20 is not of type ");
    if (sv_isa(ST(2), "")) {
        arg21 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg21 is not of type ");
    arg22 = (int)SvIV(ST(3));
    QScriptValue ret = THIS->evaluate(*arg20, *arg21, arg22);
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

## QScriptValue globalObject()
void
QScriptEngine::globalObject(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->globalObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## bool hasUncaughtException()
void
QScriptEngine::hasUncaughtException(...)
PREINIT:
PPCODE:
    bool ret = THIS->hasUncaughtException();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QScriptValue importExtension(const QString & extension)
void
QScriptEngine::importExtension(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    QScriptValue ret = THIS->importExtension(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QStringList importedExtensions()
void
QScriptEngine::importedExtensions(...)
PREINIT:
PPCODE:
    QStringList ret = THIS->importedExtensions();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QStringList(ret));
    XSRETURN(1);

## void installTranslatorFunctions(const QScriptValue & object = QScriptValue())
## void installTranslatorFunctions(const QScriptValue & object)
void
QScriptEngine::installTranslatorFunctions(...)
PREINIT:
const QScriptValue & arg00_ = QScriptValue();
QScriptValue * arg00 = const_cast<QScriptValue *>(&arg00_);
QScriptValue * arg10;
PPCODE:
    switch(items) {
    case 1:
      {
        (void)THIS->installTranslatorFunctions(*arg00);
    XSRETURN(0);
        break;
      }
    case 2:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg10 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Script::QScriptValue");
    (void)THIS->installTranslatorFunctions(*arg10);
    XSRETURN(0);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## bool isEvaluating()
void
QScriptEngine::isEvaluating(...)
PREINIT:
PPCODE:
    bool ret = THIS->isEvaluating();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QScriptValue newActivationObject()
void
QScriptEngine::newActivationObject(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->newActivationObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QScriptValue newArray(uint length = 0)
## QScriptValue newArray(uint length)
void
QScriptEngine::newArray(...)
PREINIT:
uint arg00 = 0;
uint arg10;
PPCODE:
    switch(items) {
    case 1:
      {
        QScriptValue ret = THIS->newArray(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
        break;
      }
    case 2:
      {
        arg10 = (uint)SvUV(ST(1));
    QScriptValue ret = THIS->newArray(arg10);
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

## QScriptValue newDate(double value)
## QScriptValue newDate(const QDateTime & value)
void
QScriptEngine::newDate(...)
PREINIT:
double arg00;
QDateTime * arg10;
PPCODE:
    switch(items) {
    case 2:
      {
        arg00 = (double)SvNV(ST(1));
    QScriptValue ret = THIS->newDate(arg00);
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

## QScriptValue newFunction(QScriptEngine::FunctionSignature signature, int length = 0)
## QScriptValue newFunction(QScriptEngine::FunctionSignature signature, int length)
## QScriptValue newFunction(QScriptEngine::FunctionWithArgSignature signature, void * arg)
## QScriptValue newFunction(QScriptEngine::FunctionSignature signature, const QScriptValue & prototype, int length = 0)
## QScriptValue newFunction(QScriptEngine::FunctionSignature signature, const QScriptValue & prototype, int length)
void
QScriptEngine::newFunction(...)
PREINIT:
QScriptEngine::FunctionSignature arg00;
int arg01 = 0;
QScriptEngine::FunctionSignature arg10;
int arg11;
QScriptEngine::FunctionWithArgSignature arg20;
void * arg21;
QScriptEngine::FunctionSignature arg30;
QScriptValue * arg31;
int arg32 = 0;
QScriptEngine::FunctionSignature arg40;
QScriptValue * arg41;
int arg42;
PPCODE:
    switch(items) {
    case 2:
      {
        arg00 = reinterpret_cast<QScriptEngine::FunctionSignature>(SvIV(ST(1)));
    QScriptValue ret = THIS->newFunction(arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
        break;
      }
    case 3:
      {
        arg10 = reinterpret_cast<QScriptEngine::FunctionSignature>(SvIV(ST(1)));
    arg11 = (int)SvIV(ST(2));
    QScriptValue ret = THIS->newFunction(arg10, arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
        break;
      }
    case 4:
      {
        arg40 = reinterpret_cast<QScriptEngine::FunctionSignature>(SvIV(ST(1)));
    if (sv_isa(ST(2), "Qt::Script::QScriptValue")) {
        arg41 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg41 is not of type Qt::Script::QScriptValue");
    arg42 = (int)SvIV(ST(3));
    QScriptValue ret = THIS->newFunction(arg40, *arg41, arg42);
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

## QScriptValue newObject()
## QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data = QScriptValue())
## QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data)
void
QScriptEngine::newObject(...)
PREINIT:
QScriptClass * arg10;
const QScriptValue & arg11_ = QScriptValue();
QScriptValue * arg11 = const_cast<QScriptValue *>(&arg11_);
QScriptClass * arg20;
QScriptValue * arg21;
PPCODE:
    switch(items) {
    case 1:
      {
        QScriptValue ret = THIS->newObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
        break;
      }
    case 2:
      {
        if (sv_derived_from(ST(1), "Qt::Script::QScriptClass")) {
        arg10 = reinterpret_cast<QScriptClass *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Script::QScriptClass");
    QScriptValue ret = THIS->newObject(arg10, *arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_derived_from(ST(1), "Qt::Script::QScriptClass")) {
        arg20 = reinterpret_cast<QScriptClass *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg20 is not of type Qt::Script::QScriptClass");
    if (sv_isa(ST(2), "Qt::Script::QScriptValue")) {
        arg21 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg21 is not of type Qt::Script::QScriptValue");
    QScriptValue ret = THIS->newObject(arg20, *arg21);
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

## QScriptValue newQMetaObject(const QMetaObject * metaObject, const QScriptValue & ctor = QScriptValue())
## QScriptValue newQMetaObject(const QMetaObject * metaObject, const QScriptValue & ctor)
void
QScriptEngine::newQMetaObject(...)
PREINIT:
const QMetaObject * arg00;
const QScriptValue & arg01_ = QScriptValue();
QScriptValue * arg01 = const_cast<QScriptValue *>(&arg01_);
const QMetaObject * arg10;
QScriptValue * arg11;
PPCODE:
    switch(items) {
    case 2:
      {
        if (sv_derived_from(ST(1), "")) {
        arg00 = reinterpret_cast<QMetaObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    QScriptValue ret = THIS->newQMetaObject(arg00, *arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_derived_from(ST(1), "")) {
        arg10 = reinterpret_cast<QMetaObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    if (sv_isa(ST(2), "Qt::Script::QScriptValue")) {
        arg11 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg11 is not of type Qt::Script::QScriptValue");
    QScriptValue ret = THIS->newQMetaObject(arg10, *arg11);
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

## QScriptValue newRegExp(const QRegExp & regexp)
## QScriptValue newRegExp(const QString & pattern, const QString & flags)
void
QScriptEngine::newRegExp(...)
PREINIT:
QRegExp * arg00;
QString * arg10;
QString * arg11;
PPCODE:
    switch(items) {
    case 2:
      {
        if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QRegExp *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    QScriptValue ret = THIS->newRegExp(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_isa(ST(1), "")) {
        arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    if (sv_isa(ST(2), "")) {
        arg11 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg11 is not of type ");
    QScriptValue ret = THIS->newRegExp(*arg10, *arg11);
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

## QScriptValue newVariant(const QVariant & value)
## QScriptValue newVariant(const QScriptValue & object, const QVariant & value)
void
QScriptEngine::newVariant(...)
PREINIT:
QVariant * arg00;
QScriptValue * arg10;
QVariant * arg11;
PPCODE:
    switch(items) {
    case 2:
      {
        if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    QScriptValue ret = THIS->newVariant(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg10 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Script::QScriptValue");
    if (sv_isa(ST(2), "")) {
        arg11 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg11 is not of type ");
    QScriptValue ret = THIS->newVariant(*arg10, *arg11);
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

## QScriptValue nullValue()
void
QScriptEngine::nullValue(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->nullValue();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QScriptValue objectById(qint64 id)
void
QScriptEngine::objectById(...)
PREINIT:
qint64 arg00;
PPCODE:
    arg00 = (qint64)SvIV(ST(1));
    QScriptValue ret = THIS->objectById(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## void popContext()
void
QScriptEngine::popContext(...)
PREINIT:
PPCODE:
    (void)THIS->popContext();
    XSRETURN(0);

## int processEventsInterval()
void
QScriptEngine::processEventsInterval(...)
PREINIT:
PPCODE:
    int ret = THIS->processEventsInterval();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QScriptContext * pushContext()
void
QScriptEngine::pushContext(...)
PREINIT:
PPCODE:
    QScriptContext * ret = THIS->pushContext();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptContext", (void *)ret);
    XSRETURN(1);

## void setAgent(QScriptEngineAgent * agent)
void
QScriptEngine::setAgent(...)
PREINIT:
QScriptEngineAgent * arg00;
PPCODE:
    if (sv_derived_from(ST(1), "Qt::Script::QScriptEngineAgent")) {
        arg00 = reinterpret_cast<QScriptEngineAgent *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptEngineAgent");
    (void)THIS->setAgent(arg00);
    XSRETURN(0);

## void setDefaultPrototype(int metaTypeId, const QScriptValue & prototype)
void
QScriptEngine::setDefaultPrototype(...)
PREINIT:
int arg00;
QScriptValue * arg01;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    if (sv_isa(ST(2), "Qt::Script::QScriptValue")) {
        arg01 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Script::QScriptValue");
    (void)THIS->setDefaultPrototype(arg00, *arg01);
    XSRETURN(0);

## void setGlobalObject(const QScriptValue & object)
void
QScriptEngine::setGlobalObject(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    (void)THIS->setGlobalObject(*arg00);
    XSRETURN(0);

## void setProcessEventsInterval(int interval)
void
QScriptEngine::setProcessEventsInterval(...)
PREINIT:
int arg00;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    (void)THIS->setProcessEventsInterval(arg00);
    XSRETURN(0);

## QScriptValue toObject(const QScriptValue & value)
void
QScriptEngine::toObject(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    QScriptValue ret = THIS->toObject(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QScriptString toStringHandle(const QString & str)
void
QScriptEngine::toStringHandle(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    QScriptString ret = THIS->toStringHandle(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptString", (void *)new QScriptString(ret));
    XSRETURN(1);

## QScriptValue uncaughtException()
void
QScriptEngine::uncaughtException(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->uncaughtException();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## QStringList uncaughtExceptionBacktrace()
void
QScriptEngine::uncaughtExceptionBacktrace(...)
PREINIT:
PPCODE:
    QStringList ret = THIS->uncaughtExceptionBacktrace();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QStringList(ret));
    XSRETURN(1);

## int uncaughtExceptionLineNumber()
void
QScriptEngine::uncaughtExceptionLineNumber(...)
PREINIT:
PPCODE:
    int ret = THIS->uncaughtExceptionLineNumber();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QScriptValue undefinedValue()
void
QScriptEngine::undefinedValue(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->undefinedValue();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
