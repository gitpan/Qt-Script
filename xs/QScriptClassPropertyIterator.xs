################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptClassPropertyIterator
PROTOTYPES: DISABLE

# classname: QScriptClassPropertyIterator
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################



##  ~QScriptClassPropertyIterator()
void
QScriptClassPropertyIterator::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## bool hasNext()
void
QScriptClassPropertyIterator::hasNext(...)
PREINIT:
PPCODE:
    bool ret = THIS->hasNext();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool hasPrevious()
void
QScriptClassPropertyIterator::hasPrevious(...)
PREINIT:
PPCODE:
    bool ret = THIS->hasPrevious();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## uint id()
void
QScriptClassPropertyIterator::id(...)
PREINIT:
PPCODE:
    uint ret = THIS->id();
    ST(0) = sv_newmortal();
    sv_setuv(ST(0), (UV)ret);
    XSRETURN(1);

## QScriptString name()
void
QScriptClassPropertyIterator::name(...)
PREINIT:
PPCODE:
    QScriptString ret = THIS->name();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptString", (void *)new QScriptString(ret));
    XSRETURN(1);

## void next()
void
QScriptClassPropertyIterator::next(...)
PREINIT:
PPCODE:
    (void)THIS->next();
    XSRETURN(0);

## QScriptValue object()
void
QScriptClassPropertyIterator::object(...)
PREINIT:
PPCODE:
    QScriptValue ret = THIS->object();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);

## void previous()
void
QScriptClassPropertyIterator::previous(...)
PREINIT:
PPCODE:
    (void)THIS->previous();
    XSRETURN(0);

## void toBack()
void
QScriptClassPropertyIterator::toBack(...)
PREINIT:
PPCODE:
    (void)THIS->toBack();
    XSRETURN(0);

## void toFront()
void
QScriptClassPropertyIterator::toFront(...)
PREINIT:
PPCODE:
    (void)THIS->toFront();
    XSRETURN(0);
