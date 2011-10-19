################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptable
PROTOTYPES: DISABLE

# classname: QScriptable
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QScriptable()
  void
QScriptable::new(...)
PREINIT:
QScriptable *ret;
PPCODE:
    if (1) {
      
    ret = new QScriptable();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptable", (void *)ret);
    XSRETURN(1);
    }

##  ~QScriptable()
void
QScriptable::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## QScriptValue argument(int index)
void
QScriptable::argument(...)
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
QScriptable::argumentCount(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->argumentCount();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QScriptContext * context()
void
QScriptable::context(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptContext * ret = THIS->context();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptContext", (void *)ret);
    XSRETURN(1);
    }

## QScriptEngine * engine()
void
QScriptable::engine(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptEngine * ret = THIS->engine();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptEngine", (void *)ret);
    XSRETURN(1);
    }

## QScriptValue thisObject()
void
QScriptable::thisObject(...)
PREINIT:
PPCODE:
    if (1) {
      
    QScriptValue ret = THIS->thisObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
