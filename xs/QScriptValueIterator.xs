################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptValueIterator
PROTOTYPES: DISABLE

# classname: QScriptValueIterator
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QScriptValueIterator(const QScriptValue & value)
  void
QScriptValueIterator::new(...)
PREINIT:
QScriptValueIterator *ret;
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    ret = new QScriptValueIterator(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValueIterator", (void *)ret);
    XSRETURN(1);

##  ~QScriptValueIterator()
void
QScriptValueIterator::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## bool hasNext()
void
QScriptValueIterator::hasNext(...)
PREINIT:
PPCODE:
    bool ret = THIS->hasNext();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool hasPrevious()
void
QScriptValueIterator::hasPrevious(...)
PREINIT:
PPCODE:
    bool ret = THIS->hasPrevious();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QString name()
void
QScriptValueIterator::name(...)
PREINIT:
PPCODE:
    QString ret = THIS->name();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## void next()
void
QScriptValueIterator::next(...)
PREINIT:
PPCODE:
    (void)THIS->next();
    XSRETURN(0);

## QScriptValueIterator & operator=(QScriptValue & value)
void
QScriptValueIterator::operator_assign(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    QScriptValueIterator * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValueIterator", (void *)ret);
    XSRETURN(1);

## void previous()
void
QScriptValueIterator::previous(...)
PREINIT:
PPCODE:
    (void)THIS->previous();
    XSRETURN(0);

## void remove()
void
QScriptValueIterator::remove(...)
PREINIT:
PPCODE:
    (void)THIS->remove();
    XSRETURN(0);

## QScriptString scriptName()
void
QScriptValueIterator::scriptName(...)
PREINIT:
PPCODE:
    QScriptString ret = THIS->scriptName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptString", (void *)new QScriptString(ret));
    XSRETURN(1);

## void setValue(const QScriptValue & value)
void
QScriptValueIterator::setValue(...)
PREINIT:
QScriptValue * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptValue")) {
        arg00 = reinterpret_cast<QScriptValue *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptValue");
    (void)THIS->setValue(*arg00);
    XSRETURN(0);

## void toBack()
void
QScriptValueIterator::toBack(...)
PREINIT:
PPCODE:
    (void)THIS->toBack();
    XSRETURN(0);

## void toFront()
void
QScriptValueIterator::toFront(...)
PREINIT:
PPCODE:
    (void)THIS->toFront();
    XSRETURN(0);

## QScriptValue value()
void
QScriptValueIterator::value(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->value();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
