################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Script			PACKAGE = Qt::Script::QScriptExtensionPlugin
PROTOTYPES: DISABLE

# classname: QScriptExtensionPlugin
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QScriptExtensionPlugin()
##  QScriptExtensionPlugin( = 0)
  void
QScriptExtensionPlugin::new(...)
PREINIT:
QScriptExtensionPlugin *ret;
QObject * arg00;
QObject * arg10 = 0;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    Perl_croak(aTHX_ "Trying to create abstract class object");
    }
        break;
      }
      case 2:
      {
        if ((sv_derived_from(ST(1), "Qt::Core::QObject") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Core::QObject")) {
        arg00 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg00 = 0;
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Core::QObject");
    Perl_croak(aTHX_ "Trying to create abstract class object");
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

##  ~QScriptExtensionPlugin()
void
QScriptExtensionPlugin::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## void initialize(, )
void
QScriptExtensionPlugin::initialize(...)
PREINIT:
QString * arg00;
QScriptEngine * arg01;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString") && (sv_derived_from(ST(2), "Qt::Script::QScriptEngine") || ST(2) == &PL_sv_undef)) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      if (sv_derived_from(ST(2), "Qt::Script::QScriptEngine")) {
        arg01 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(2))));
    }
    else if (ST(2) == &PL_sv_undef) {
        arg01 = 0;
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Script::QScriptEngine");
    (void)THIS->initialize(*arg00, arg01);
    XSRETURN(0);
    }

## QStringList keys()
void
QScriptExtensionPlugin::keys(...)
PREINIT:
PPCODE:
    if (1) {
      
    QStringList ret = THIS->keys();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QStringList", (void *)new QStringList(ret));
    XSRETURN(1);
    }

## QScriptValue setupPackage(, )
void
QScriptExtensionPlugin::setupPackage(...)
PREINIT:
QString * arg00;
QScriptEngine * arg01;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString") && (sv_derived_from(ST(2), "Qt::Script::QScriptEngine") || ST(2) == &PL_sv_undef)) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      if (sv_derived_from(ST(2), "Qt::Script::QScriptEngine")) {
        arg01 = reinterpret_cast<QScriptEngine *>(SvIV((SV*)SvRV(ST(2))));
    }
    else if (ST(2) == &PL_sv_undef) {
        arg01 = 0;
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Script::QScriptEngine");
    QScriptValue ret = THIS->setupPackage(*arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Script::QScriptValue", (void *)new QScriptValue(ret));
    XSRETURN(1);
    }
