################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptString
PROTOTYPES: DISABLE

# classname: QScriptString
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QScriptString()
##  QScriptString(const QScriptString & other)
  void
QScriptString::new(...)
PREINIT:
QScriptString *ret;
QScriptString * arg10;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    ret = new QScriptString();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptString", (void *)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptString")) {
      arg10 = reinterpret_cast<QScriptString *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QScriptString(*arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptString", (void *)ret);
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

##  ~QScriptString()
void
QScriptString::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## bool isValid()
void
QScriptString::isValid(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isValid();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QString operator QString()
void
QScriptString::operator_QString(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->operator QString();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## bool operator!=(const QScriptString & other)
void
QScriptString::operator_not_equal(...)
PREINIT:
QScriptString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptString")) {
      arg00 = reinterpret_cast<QScriptString *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->operator!=(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QScriptString & operator=(const QScriptString & other)
void
QScriptString::operator_assign(...)
PREINIT:
QScriptString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptString")) {
      arg00 = reinterpret_cast<QScriptString *>(SvIV((SV*)SvRV(ST(1))));
    QScriptString * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptString", (void *)ret);
    XSRETURN(1);
    }

## bool operator==(const QScriptString & other)
void
QScriptString::operator_equal_to(...)
PREINIT:
QScriptString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptString")) {
      arg00 = reinterpret_cast<QScriptString *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->operator==(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## quint32 toArrayIndex(bool * ok)
## quint32 toArrayIndex(bool * ok = 0)
void
QScriptString::toArrayIndex(...)
PREINIT:
bool * arg00;
bool * arg10 = 0;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    quint32 ret = THIS->toArrayIndex(arg10);
    ST(0) = sv_newmortal();
    sv_setuv(ST(0), (UV)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (1) {
      {
        bool tmp = SvTRUE(ST(1));
        arg00 = &tmp;
    }
    quint32 ret = THIS->toArrayIndex(arg00);
    ST(0) = sv_newmortal();
    sv_setuv(ST(0), (UV)ret);
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

## QString toString()
void
QScriptString::toString(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->toString();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }
