################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptExtensionInterface
PROTOTYPES: DISABLE

# classname: QScriptExtensionInterface
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################





## void initialize(const QString & key, QScriptEngine * engine)
void
QScriptExtensionInterface::initialize(...)
PREINIT:
QString * arg00;
QScriptEngine * arg01;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    if (sv_derived_from(ST(2), "Qt::Script::QScriptEngine")) {
        arg01 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Script::QScriptEngine");
    (void)THIS->initialize(*arg00, arg01);
    XSRETURN(0);
