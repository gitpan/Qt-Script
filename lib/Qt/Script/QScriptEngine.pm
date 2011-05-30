package Qt::Script::QScriptEngine;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptEngine
# file     : QtScript/qscriptengine.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_02';
our $ISA     = qw/Qt::Core::QObject/;


# FIXME: operator overload


1;

=head1 NAME

Qt::Script::QScriptEngine

=head1 PUBLIC METHODS

=over

=item   QScriptEngine()

=item   QScriptEngine()

=item   ~QScriptEngine()

=item  void abortEvaluation()

=item  void abortEvaluation( = QScriptValue())

=item  QScriptEngineAgent * agent()

=item  QStringList availableExtensions()

=item  bool canEvaluate()

=item  static QScriptSyntaxCheckResult checkSyntax()

=item  void clearExceptions()

=item  void collectGarbage()

=item  QScriptContext * currentContext()

=item  QScriptValue defaultPrototype()

=item  QScriptValue evaluate()

=item  QScriptValue evaluate(, , )

=item  QScriptValue evaluate(, ,  = 1)

=item  QScriptValue evaluate(,  = QString(),  = 1)

=item  QScriptValue globalObject()

=item  bool hasUncaughtException()

=item  QScriptValue importExtension()

=item  QStringList importedExtensions()

=item  void installTranslatorFunctions()

=item  void installTranslatorFunctions( = QScriptValue())

=item  bool isEvaluating()

=item  QScriptValue newActivationObject()

=item  QScriptValue newArray()

=item  QScriptValue newArray( = 0)

=item  QScriptValue newDate()

=item  QScriptValue newDate()

=item  QScriptValue newFunction(, )

=item  QScriptValue newFunction(,  = 0)

=item  QScriptValue newFunction(, )

=item  QScriptValue newFunction(, , )

=item  QScriptValue newFunction(, ,  = 0)

=item  QScriptValue newObject()

=item  QScriptValue newObject(, )

=item  QScriptValue newObject(,  = QScriptValue())

=item  QScriptValue newQMetaObject(, )

=item  QScriptValue newQMetaObject(,  = QScriptValue())

=item  QScriptValue newQObject(, , )

=item  QScriptValue newQObject(, ,  = 0)

=item  QScriptValue newQObject(,  = QScriptEngine::QtOwnership,  = 0)

=item  QScriptValue newQObject(, , , )

=item  QScriptValue newQObject(, , ,  = 0)

=item  QScriptValue newQObject(, ,  = QScriptEngine::QtOwnership,  = 0)

=item  QScriptValue newRegExp()

=item  QScriptValue newRegExp(, )

=item  QScriptValue newVariant()

=item  QScriptValue newVariant(, )

=item  QScriptValue nullValue()

=item  QScriptValue objectById()

=item  void popContext()

=item  int processEventsInterval()

=item  QScriptContext * pushContext()

=item  void reportAdditionalMemoryCost()

=item  void setAgent()

=item  void setDefaultPrototype(, )

=item  void setGlobalObject()

=item  void setProcessEventsInterval()

=item  QScriptValue toObject()

=item  QScriptString toStringHandle()

=item  QScriptValue uncaughtException()

=item  QStringList uncaughtExceptionBacktrace()

=item  int uncaughtExceptionLineNumber()

=item  QScriptValue undefinedValue()


=back

=head1 ENUM VALUES

=over

=item QtOwnership

=item ScriptOwnership

=item AutoOwnership

=item ExcludeChildObjects

=item ExcludeSuperClassMethods

=item ExcludeSuperClassProperties

=item ExcludeSuperClassContents

=item SkipMethodsInEnumeration

=item ExcludeDeleteLater

=item ExcludeSlots

=item AutoCreateDynamicProperties

=item PreferExistingWrapperObject


=back

=head2 EXPORT

None by default.

=head1 AUTHOR

Dongxu Ma E<lt>dongxu@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2011 - 2011 by Dongxu Ma

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

See L<http://dev.perl.org/licenses/artistic.html>

=cut
