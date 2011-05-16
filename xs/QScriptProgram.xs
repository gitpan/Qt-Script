################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptProgram
PROTOTYPES: DISABLE

# classname: QScriptProgram
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QScriptProgram()
##  QScriptProgram(const QScriptProgram & other)
##  QScriptProgram(const QString & sourceCode, const QString fileName, int firstLineNumber = 1)
##  QScriptProgram(const QString & sourceCode, const QString fileName, int firstLineNumber)
##  QScriptProgram(const QString & sourceCode, const QString fileName = QString(), int firstLineNumber = 1)
##  QScriptProgram(const QString & sourceCode, const QString fileName, int firstLineNumber = 1)
  void
QScriptProgram::new(...)
PREINIT:
QScriptProgram *ret;
QScriptProgram * arg10;
QString * arg20;
QString arg21;
int arg22 = 1;
QString * arg30;
QString arg31;
int arg32;
QString * arg40;
QString arg41 = QString();
int arg42 = 1;
QString * arg50;
QString arg51;
int arg52 = 1;
PPCODE:
    switch(items) {
    case 1:
      {
        ret = new QScriptProgram();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptProgram", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 2:
      {
        if (sv_isa(ST(1), "Qt::Script::QScriptProgram")) {
        arg10 = reinterpret_cast<QScriptProgram *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Script::QScriptProgram");
    ret = new QScriptProgram(*arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptProgram", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_isa(ST(1), "")) {
        arg20 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg20 is not of type ");
    if (sv_isobject(ST(2))) {
        arg21 = *reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg21 is not of type ");
    ret = new QScriptProgram(*arg20, arg21, arg22);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptProgram", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 4:
      {
        if (sv_isa(ST(1), "")) {
        arg30 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg30 is not of type ");
    if (sv_isobject(ST(2))) {
        arg31 = *reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg31 is not of type ");
    arg32 = (int)SvIV(ST(3));
    ret = new QScriptProgram(*arg30, arg31, arg32);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptProgram", (void *)ret);
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

##  ~QScriptProgram()
void
QScriptProgram::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## QString fileName()
void
QScriptProgram::fileName(...)
PREINIT:
PPCODE:
    QString ret = THIS->fileName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## int firstLineNumber()
void
QScriptProgram::firstLineNumber(...)
PREINIT:
PPCODE:
    int ret = THIS->firstLineNumber();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## bool isNull()
void
QScriptProgram::isNull(...)
PREINIT:
PPCODE:
    bool ret = THIS->isNull();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool operator!=(const QScriptProgram & other)
void
QScriptProgram::operator_not_equal(...)
PREINIT:
QScriptProgram * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptProgram")) {
        arg00 = reinterpret_cast<QScriptProgram *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptProgram");
    bool ret = THIS->operator!=(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QScriptProgram & operator=(const QScriptProgram & other)
void
QScriptProgram::operator_assign(...)
PREINIT:
QScriptProgram * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptProgram")) {
        arg00 = reinterpret_cast<QScriptProgram *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptProgram");
    QScriptProgram * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptProgram", (void *)ret);
    XSRETURN(1);

## bool operator==(const QScriptProgram & other)
void
QScriptProgram::operator_equal_to(...)
PREINIT:
QScriptProgram * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptProgram")) {
        arg00 = reinterpret_cast<QScriptProgram *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptProgram");
    bool ret = THIS->operator==(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QString sourceCode()
void
QScriptProgram::sourceCode(...)
PREINIT:
PPCODE:
    QString ret = THIS->sourceCode();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);
