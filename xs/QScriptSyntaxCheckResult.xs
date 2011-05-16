################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptSyntaxCheckResult
PROTOTYPES: DISABLE

# classname: QScriptSyntaxCheckResult
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QScriptSyntaxCheckResult(const QScriptSyntaxCheckResult & other)
  void
QScriptSyntaxCheckResult::new(...)
PREINIT:
QScriptSyntaxCheckResult *ret;
QScriptSyntaxCheckResult * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptSyntaxCheckResult")) {
        arg00 = reinterpret_cast<QScriptSyntaxCheckResult *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptSyntaxCheckResult");
    ret = new QScriptSyntaxCheckResult(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptSyntaxCheckResult", (void *)ret);
    XSRETURN(1);

##  ~QScriptSyntaxCheckResult()
void
QScriptSyntaxCheckResult::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## int errorColumnNumber()
void
QScriptSyntaxCheckResult::errorColumnNumber(...)
PREINIT:
PPCODE:
    int ret = THIS->errorColumnNumber();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## int errorLineNumber()
void
QScriptSyntaxCheckResult::errorLineNumber(...)
PREINIT:
PPCODE:
    int ret = THIS->errorLineNumber();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QString errorMessage()
void
QScriptSyntaxCheckResult::errorMessage(...)
PREINIT:
PPCODE:
    QString ret = THIS->errorMessage();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## QScriptSyntaxCheckResult & operator=(const QScriptSyntaxCheckResult & other)
void
QScriptSyntaxCheckResult::operator_assign(...)
PREINIT:
QScriptSyntaxCheckResult * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Script::QScriptSyntaxCheckResult")) {
        arg00 = reinterpret_cast<QScriptSyntaxCheckResult *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Script::QScriptSyntaxCheckResult");
    QScriptSyntaxCheckResult * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptSyntaxCheckResult", (void *)ret);
    XSRETURN(1);

## QScriptSyntaxCheckResult::State state()
void
QScriptSyntaxCheckResult::state(...)
PREINIT:
PPCODE:
    QScriptSyntaxCheckResult::State ret = THIS->state();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
