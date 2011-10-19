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
        if (1) {
      
    ret = new QScriptEngine();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngine", (void *)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if ((sv_derived_from(ST(1), "Qt::Core::QObject") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Core::QObject")) {
        arg10 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg10 = 0;
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Core::QObject");
    ret = new QScriptEngine(arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngine", (void *)ret);
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

##  ~QScriptEngine()
void
QScriptEngine::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## void abortEvaluation(const QScriptValue & result)
## void abortEvaluation(const QScriptValue & result = QScriptValue())
void
QScriptEngine::abortEvaluation(...)
PREINIT:
QScriptValue * arg00;
const QScriptValue & arg10_ = QScriptValue();
QScriptValue * arg10 = const_cast<QScriptValue *>(&arg10_);
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    (void)THIS->abortEvaluation(*arg10);
    XSRETURN(0);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->abortEvaluation(*arg00);
    XSRETURN(0);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

## QScriptEngineAgent * agent()
void
QScriptEngine::agent(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptEngineAgent * ret = THIS->agent();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngineAgent", (void *)ret);
    XSRETURN(1);
    }

## QStringList availableExtensions()
void
QScriptEngine::availableExtensions(...)
PREINIT:
PPCODE:
    if (1) {
      
    QStringList ret = THIS->availableExtensions();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QStringList", (void *)new QStringList(ret));
    XSRETURN(1);
    }

## bool canEvaluate(const QString & program)
void
QScriptEngine::canEvaluate(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->canEvaluate(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## static QScriptSyntaxCheckResult checkSyntax(const QString & program)
void
QScriptEngine::checkSyntax(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QScriptSyntaxCheckResult ret = THIS->checkSyntax(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptSyntaxCheckResult", (void *)new QScriptSyntaxCheckResult(ret));
    XSRETURN(1);
    }

## void clearExceptions()
void
QScriptEngine::clearExceptions(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->clearExceptions();
    XSRETURN(0);
    }

## void collectGarbage()
void
QScriptEngine::collectGarbage(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->collectGarbage();
    XSRETURN(0);
    }

## QScriptContext * currentContext()
void
QScriptEngine::currentContext(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptContext * ret = THIS->currentContext();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptContext", (void *)ret);
    XSRETURN(1);
    }

## QScriptValue defaultPrototype(int metaTypeId)
void
QScriptEngine::defaultPrototype(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    QScriptValue ret = THIS->defaultPrototype(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QScriptValue evaluate(const QScriptProgram & program)
## QScriptValue evaluate(const QString & program, const QString & fileName, int lineNumber)
## QScriptValue evaluate(const QString & program, const QString & fileName, int lineNumber = 1)
## QScriptValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
void
QScriptEngine::evaluate(...)
PREINIT:
QScriptProgram * arg00;
QString * arg10;
QString * arg11;
int arg12;
QString * arg20;
QString * arg21;
int arg22 = 1;
QString * arg30;
const QString & arg31_ = QString();
QString * arg31 = const_cast<QString *>(&arg31_);
int arg32 = 1;
PPCODE:
    switch(items) {
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptProgram")) {
      arg00 = reinterpret_cast<QScriptProgram *>(SvIV((SV*)SvRV(ST(1))));
    QScriptValue ret = THIS->evaluate(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg30 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QScriptValue ret = THIS->evaluate(*arg30, *arg31, arg32);
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
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString")) {
      arg20 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg21 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    QScriptValue ret = THIS->evaluate(*arg20, *arg21, arg22);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 4:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString") && SvIOK(ST(3))) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
      arg12 = (int)SvIV(ST(3));
    QScriptValue ret = THIS->evaluate(*arg10, *arg11, arg12);
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

## QScriptValue globalObject()
void
QScriptEngine::globalObject(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->globalObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## bool hasUncaughtException()
void
QScriptEngine::hasUncaughtException(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->hasUncaughtException();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QScriptValue importExtension(const QString & extension)
void
QScriptEngine::importExtension(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QScriptValue ret = THIS->importExtension(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QStringList importedExtensions()
void
QScriptEngine::importedExtensions(...)
PREINIT:
PPCODE:
    if (1) {
      
    QStringList ret = THIS->importedExtensions();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QStringList", (void *)new QStringList(ret));
    XSRETURN(1);
    }

## void installTranslatorFunctions(const QScriptValue & object)
## void installTranslatorFunctions(const QScriptValue & object = QScriptValue())
void
QScriptEngine::installTranslatorFunctions(...)
PREINIT:
QScriptValue * arg00;
const QScriptValue & arg10_ = QScriptValue();
QScriptValue * arg10 = const_cast<QScriptValue *>(&arg10_);
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    (void)THIS->installTranslatorFunctions(*arg10);
    XSRETURN(0);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->installTranslatorFunctions(*arg00);
    XSRETURN(0);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

## bool isEvaluating()
void
QScriptEngine::isEvaluating(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isEvaluating();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QScriptValue newActivationObject()
void
QScriptEngine::newActivationObject(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->newActivationObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QScriptValue newArray(uint length)
## QScriptValue newArray(uint length = 0)
void
QScriptEngine::newArray(...)
PREINIT:
uint arg00;
uint arg10 = 0;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    QScriptValue ret = THIS->newArray(arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if ((SvIOK(ST(1)) || SvUOK(ST(1)))) {
      arg00 = (uint)SvUV(ST(1));
    QScriptValue ret = THIS->newArray(arg00);
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
        if (SvNOK(ST(1))) {
      arg00 = (double)SvNV(ST(1));
    QScriptValue ret = THIS->newDate(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Core::QDateTime")) {
      arg10 = reinterpret_cast<QDateTime *>(SvIV((SV*)SvRV(ST(1))));
    QScriptValue ret = THIS->newDate(*arg10);
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

## QScriptValue newFunction(QScriptEngine::FunctionSignature signature, int length)
## QScriptValue newFunction(QScriptEngine::FunctionSignature signature, int length = 0)
## QScriptValue newFunction(QScriptEngine::FunctionWithArgSignature signature, void * arg)
## QScriptValue newFunction(QScriptEngine::FunctionSignature signature, const QScriptValue & prototype, int length)
## QScriptValue newFunction(QScriptEngine::FunctionSignature signature, const QScriptValue & prototype, int length = 0)
void
QScriptEngine::newFunction(...)
PREINIT:
QScriptEngine::FunctionSignature arg00;
int arg01;
QScriptEngine::FunctionSignature arg10;
int arg11 = 0;
QScriptEngine::FunctionWithArgSignature arg20;
void * arg21;
QScriptEngine::FunctionSignature arg30;
QScriptValue * arg31;
int arg32;
QScriptEngine::FunctionSignature arg40;
QScriptValue * arg41;
int arg42 = 0;
PPCODE:
    switch(items) {
      case 2:
      {
        if (SvIOK(ST(1))) {
      arg10 = reinterpret_cast<QScriptEngine::FunctionSignature>(SvIV(ST(1)));
    QScriptValue ret = THIS->newFunction(arg10, arg11);
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
        if (SvIOK(ST(1)) && SvIOK(ST(2))) {
      arg00 = reinterpret_cast<QScriptEngine::FunctionSignature>(SvIV(ST(1)));
      arg01 = (int)SvIV(ST(2));
    QScriptValue ret = THIS->newFunction(arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
        else if (SvIOK(ST(1)) && SvIOK(ST(2))) {
      arg20 = reinterpret_cast<QScriptEngine::FunctionWithArgSignature>(SvIV(ST(1)));
      arg21 = reinterpret_cast<void *>(SvIV(ST(2)));
    QScriptValue ret = THIS->newFunction(arg20, arg21);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
        else if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Script::QScriptValue")) {
      arg40 = reinterpret_cast<QScriptEngine::FunctionSignature>(SvIV(ST(1)));
      arg41 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    QScriptValue ret = THIS->newFunction(arg40, *arg41, arg42);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 4:
      {
        if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Script::QScriptValue") && SvIOK(ST(3))) {
      arg30 = reinterpret_cast<QScriptEngine::FunctionSignature>(SvIV(ST(1)));
      arg31 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
      arg32 = (int)SvIV(ST(3));
    QScriptValue ret = THIS->newFunction(arg30, *arg31, arg32);
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

## QScriptValue newObject()
## QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data)
## QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data = QScriptValue())
void
QScriptEngine::newObject(...)
PREINIT:
QScriptClass * arg10;
QScriptValue * arg11;
QScriptClass * arg20;
const QScriptValue & arg21_ = QScriptValue();
QScriptValue * arg21 = const_cast<QScriptValue *>(&arg21_);
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    QScriptValue ret = THIS->newObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if ((sv_derived_from(ST(1), "Qt::Script::QScriptClass") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptClass")) {
        arg20 = reinterpret_cast<QScriptClass *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg20 = 0;
    }
    else
        Perl_croak(aTHX_ "arg20 is not of type Qt::Script::QScriptClass");
    QScriptValue ret = THIS->newObject(arg20, *arg21);
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
        if ((sv_derived_from(ST(1), "Qt::Script::QScriptClass") || ST(1) == &PL_sv_undef) && sv_isa(ST(2), "Qt::Script::QScriptValue")) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptClass")) {
        arg10 = reinterpret_cast<QScriptClass *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg10 = 0;
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Script::QScriptClass");
      arg11 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    QScriptValue ret = THIS->newObject(arg10, *arg11);
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

## QScriptValue newQMetaObject(const QMetaObject * metaObject, const QScriptValue & ctor)
## QScriptValue newQMetaObject(const QMetaObject * metaObject, const QScriptValue & ctor = QScriptValue())
void
QScriptEngine::newQMetaObject(...)
PREINIT:
const QMetaObject * arg00;
QScriptValue * arg01;
const QMetaObject * arg10;
const QScriptValue & arg11_ = QScriptValue();
QScriptValue * arg11 = const_cast<QScriptValue *>(&arg11_);
PPCODE:
    switch(items) {
      case 2:
      {
        if ((sv_derived_from(ST(1), "Qt::Core::QMetaObject") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Core::QMetaObject")) {
        arg10 = reinterpret_cast<QMetaObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg10 = 0;
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Core::QMetaObject");
    QScriptValue ret = THIS->newQMetaObject(arg10, *arg11);
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
        if ((sv_derived_from(ST(1), "Qt::Core::QMetaObject") || ST(1) == &PL_sv_undef) && sv_isa(ST(2), "Qt::Script::QScriptValue")) {
      if (sv_derived_from(ST(1), "Qt::Core::QMetaObject")) {
        arg00 = reinterpret_cast<QMetaObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg00 = 0;
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Core::QMetaObject");
      arg01 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    QScriptValue ret = THIS->newQMetaObject(arg00, *arg01);
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

## QScriptValue newQObject(QObject * object, QScriptEngine::ValueOwnership ownership, const QFlags<QScriptEngine::QObjectWrapOption> & options)
## QScriptValue newQObject(QObject * object, QScriptEngine::ValueOwnership ownership, const QFlags<QScriptEngine::QObjectWrapOption> & options = 0)
## QScriptValue newQObject(QObject * object, QScriptEngine::ValueOwnership ownership = QScriptEngine::QtOwnership, const QFlags<QScriptEngine::QObjectWrapOption> & options = 0)
## QScriptValue newQObject(const QScriptValue & scriptObject, QObject * qtObject, QScriptEngine::ValueOwnership ownership, const QFlags<QScriptEngine::QObjectWrapOption> & options)
## QScriptValue newQObject(const QScriptValue & scriptObject, QObject * qtObject, QScriptEngine::ValueOwnership ownership, const QFlags<QScriptEngine::QObjectWrapOption> & options = 0)
## QScriptValue newQObject(const QScriptValue & scriptObject, QObject * qtObject, QScriptEngine::ValueOwnership ownership = QScriptEngine::QtOwnership, const QFlags<QScriptEngine::QObjectWrapOption> & options = 0)
void
QScriptEngine::newQObject(...)
PREINIT:
QObject * arg00;
QScriptEngine::ValueOwnership arg01;
QFlags<QScriptEngine::QObjectWrapOption> * arg02;
QObject * arg10;
QScriptEngine::ValueOwnership arg11;
const QFlags<QScriptEngine::QObjectWrapOption> & arg12_ = 0;
QFlags<QScriptEngine::QObjectWrapOption> * arg12 = const_cast<QFlags<QScriptEngine::QObjectWrapOption> *>(&arg12_);
QObject * arg20;
QScriptEngine::ValueOwnership arg21 = QScriptEngine::QtOwnership;
const QFlags<QScriptEngine::QObjectWrapOption> & arg22_ = 0;
QFlags<QScriptEngine::QObjectWrapOption> * arg22 = const_cast<QFlags<QScriptEngine::QObjectWrapOption> *>(&arg22_);
QScriptValue * arg30;
QObject * arg31;
QScriptEngine::ValueOwnership arg32;
QFlags<QScriptEngine::QObjectWrapOption> * arg33;
QScriptValue * arg40;
QObject * arg41;
QScriptEngine::ValueOwnership arg42;
const QFlags<QScriptEngine::QObjectWrapOption> & arg43_ = 0;
QFlags<QScriptEngine::QObjectWrapOption> * arg43 = const_cast<QFlags<QScriptEngine::QObjectWrapOption> *>(&arg43_);
QScriptValue * arg50;
QObject * arg51;
QScriptEngine::ValueOwnership arg52 = QScriptEngine::QtOwnership;
const QFlags<QScriptEngine::QObjectWrapOption> & arg53_ = 0;
QFlags<QScriptEngine::QObjectWrapOption> * arg53 = const_cast<QFlags<QScriptEngine::QObjectWrapOption> *>(&arg53_);
PPCODE:
    switch(items) {
      case 2:
      {
        if ((sv_derived_from(ST(1), "Qt::Core::QObject") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Core::QObject")) {
        arg20 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg20 = 0;
    }
    else
        Perl_croak(aTHX_ "arg20 is not of type Qt::Core::QObject");
    QScriptValue ret = THIS->newQObject(arg20, arg21, *arg22);
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
        if ((sv_derived_from(ST(1), "Qt::Core::QObject") || ST(1) == &PL_sv_undef) && SvIOK(ST(2))) {
      if (sv_derived_from(ST(1), "Qt::Core::QObject")) {
        arg10 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg10 = 0;
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Core::QObject");
      arg11 = (QScriptEngine::ValueOwnership)SvIV(ST(2));
    QScriptValue ret = THIS->newQObject(arg10, arg11, *arg12);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Script::QScriptValue") && (sv_derived_from(ST(2), "Qt::Core::QObject") || ST(2) == &PL_sv_undef)) {
      arg50 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
      if (sv_derived_from(ST(2), "Qt::Core::QObject")) {
        arg51 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(2))));
    }
    else if (ST(2) == &PL_sv_undef) {
        arg51 = 0;
    }
    else
        Perl_croak(aTHX_ "arg51 is not of type Qt::Core::QObject");
    QScriptValue ret = THIS->newQObject(*arg50, arg51, arg52, *arg53);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 4:
      {
        if ((sv_derived_from(ST(1), "Qt::Core::QObject") || ST(1) == &PL_sv_undef) && SvIOK(ST(2)) && sv_isa(ST(3), "")) {
      if (sv_derived_from(ST(1), "Qt::Core::QObject")) {
        arg00 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg00 = 0;
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Core::QObject");
      arg01 = (QScriptEngine::ValueOwnership)SvIV(ST(2));
      arg02 = reinterpret_cast<QFlags<QScriptEngine::QObjectWrapOption> *>(SvIV((SV*)SvRV(ST(3))));
    QScriptValue ret = THIS->newQObject(arg00, arg01, *arg02);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Script::QScriptValue") && (sv_derived_from(ST(2), "Qt::Core::QObject") || ST(2) == &PL_sv_undef) && SvIOK(ST(3))) {
      arg40 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
      if (sv_derived_from(ST(2), "Qt::Core::QObject")) {
        arg41 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(2))));
    }
    else if (ST(2) == &PL_sv_undef) {
        arg41 = 0;
    }
    else
        Perl_croak(aTHX_ "arg41 is not of type Qt::Core::QObject");
      arg42 = (QScriptEngine::ValueOwnership)SvIV(ST(3));
    QScriptValue ret = THIS->newQObject(*arg40, arg41, arg42, *arg43);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 5:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptValue") && (sv_derived_from(ST(2), "Qt::Core::QObject") || ST(2) == &PL_sv_undef) && SvIOK(ST(3)) && sv_isa(ST(4), "")) {
      arg30 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
      if (sv_derived_from(ST(2), "Qt::Core::QObject")) {
        arg31 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(2))));
    }
    else if (ST(2) == &PL_sv_undef) {
        arg31 = 0;
    }
    else
        Perl_croak(aTHX_ "arg31 is not of type Qt::Core::QObject");
      arg32 = (QScriptEngine::ValueOwnership)SvIV(ST(3));
      arg33 = reinterpret_cast<QFlags<QScriptEngine::QObjectWrapOption> *>(SvIV((SV*)SvRV(ST(4))));
    QScriptValue ret = THIS->newQObject(*arg30, arg31, arg32, *arg33);
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
        if (sv_isa(ST(1), "Qt::Core::QRegExp")) {
      arg00 = reinterpret_cast<QRegExp *>(SvIV((SV*)SvRV(ST(1))));
    QScriptValue ret = THIS->newRegExp(*arg00);
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
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    QScriptValue ret = THIS->newRegExp(*arg10, *arg11);
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
        if (sv_isa(ST(1), "Qt::Core::QVariant")) {
      arg00 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(1))));
    QScriptValue ret = THIS->newVariant(*arg00);
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
        if (sv_isa(ST(1), "Qt::Script::QScriptValue") && sv_isa(ST(2), "Qt::Core::QVariant")) {
      arg10 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
    QScriptValue ret = THIS->newVariant(*arg10, *arg11);
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

## QScriptValue nullValue()
void
QScriptEngine::nullValue(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->nullValue();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QScriptValue objectById(qint64 id)
void
QScriptEngine::objectById(...)
PREINIT:
qint64 arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (qint64)SvIV(ST(1));
    QScriptValue ret = THIS->objectById(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## void popContext()
void
QScriptEngine::popContext(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->popContext();
    XSRETURN(0);
    }

## int processEventsInterval()
void
QScriptEngine::processEventsInterval(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->processEventsInterval();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QScriptContext * pushContext()
void
QScriptEngine::pushContext(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptContext * ret = THIS->pushContext();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptContext", (void *)ret);
    XSRETURN(1);
    }

## void reportAdditionalMemoryCost(int size)
void
QScriptEngine::reportAdditionalMemoryCost(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    (void)THIS->reportAdditionalMemoryCost(arg00);
    XSRETURN(0);
    }

## void setAgent(QScriptEngineAgent * agent)
void
QScriptEngine::setAgent(...)
PREINIT:
QScriptEngineAgent * arg00;
PPCODE:
    if ((sv_derived_from(ST(1), "Qt::Script::QScriptEngineAgent") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Script::QScriptEngineAgent")) {
        arg00 = reinterpret_cast<QScriptEngineAgent *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg00 = 0;
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptEngineAgent");
    (void)THIS->setAgent(arg00);
    XSRETURN(0);
    }

## void setDefaultPrototype(int metaTypeId, const QScriptValue & prototype)
void
QScriptEngine::setDefaultPrototype(...)
PREINIT:
int arg00;
QScriptValue * arg01;
PPCODE:
    if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Script::QScriptValue")) {
      arg00 = (int)SvIV(ST(1));
      arg01 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(2))));
    (void)THIS->setDefaultPrototype(arg00, *arg01);
    XSRETURN(0);
    }

## void setGlobalObject(const QScriptValue & object)
void
QScriptEngine::setGlobalObject(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setGlobalObject(*arg00);
    XSRETURN(0);
    }

## void setProcessEventsInterval(int interval)
void
QScriptEngine::setProcessEventsInterval(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    (void)THIS->setProcessEventsInterval(arg00);
    XSRETURN(0);
    }

## QScriptValue toObject(const QScriptValue & value)
void
QScriptEngine::toObject(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
      arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    QScriptValue ret = THIS->toObject(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QScriptString toStringHandle(const QString & str)
void
QScriptEngine::toStringHandle(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QScriptString ret = THIS->toStringHandle(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptString", (void *)new QScriptString(ret));
    XSRETURN(1);
    }

## QScriptValue uncaughtException()
void
QScriptEngine::uncaughtException(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->uncaughtException();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }

## QStringList uncaughtExceptionBacktrace()
void
QScriptEngine::uncaughtExceptionBacktrace(...)
PREINIT:
PPCODE:
    if (1) {
      
    QStringList ret = THIS->uncaughtExceptionBacktrace();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QStringList", (void *)new QStringList(ret));
    XSRETURN(1);
    }

## int uncaughtExceptionLineNumber()
void
QScriptEngine::uncaughtExceptionLineNumber(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->uncaughtExceptionLineNumber();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QScriptValue undefinedValue()
void
QScriptEngine::undefinedValue(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->undefinedValue();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }




################################################################
#### 
#### ENUMS
#### 
################################################################
# ValueOwnership::QtOwnership
void
QtOwnership()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptEngine::QtOwnership);
    XSRETURN(1);


# ValueOwnership::ScriptOwnership
void
ScriptOwnership()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptEngine::ScriptOwnership);
    XSRETURN(1);


# ValueOwnership::AutoOwnership
void
AutoOwnership()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptEngine::AutoOwnership);
    XSRETURN(1);


# QObjectWrapOption::ExcludeChildObjects
void
ExcludeChildObjects()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptEngine::ExcludeChildObjects);
    XSRETURN(1);


# QObjectWrapOption::ExcludeSuperClassMethods
void
ExcludeSuperClassMethods()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptEngine::ExcludeSuperClassMethods);
    XSRETURN(1);


# QObjectWrapOption::ExcludeSuperClassProperties
void
ExcludeSuperClassProperties()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptEngine::ExcludeSuperClassProperties);
    XSRETURN(1);


# QObjectWrapOption::ExcludeSuperClassContents
void
ExcludeSuperClassContents()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptEngine::ExcludeSuperClassContents);
    XSRETURN(1);


# QObjectWrapOption::SkipMethodsInEnumeration
void
SkipMethodsInEnumeration()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptEngine::SkipMethodsInEnumeration);
    XSRETURN(1);


# QObjectWrapOption::ExcludeDeleteLater
void
ExcludeDeleteLater()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptEngine::ExcludeDeleteLater);
    XSRETURN(1);


# QObjectWrapOption::ExcludeSlots
void
ExcludeSlots()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptEngine::ExcludeSlots);
    XSRETURN(1);


# QObjectWrapOption::AutoCreateDynamicProperties
void
AutoCreateDynamicProperties()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptEngine::AutoCreateDynamicProperties);
    XSRETURN(1);


# QObjectWrapOption::PreferExistingWrapperObject
void
PreferExistingWrapperObject()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QScriptEngine::PreferExistingWrapperObject);
    XSRETURN(1);
