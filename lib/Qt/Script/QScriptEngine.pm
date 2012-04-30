package Qt::Script::QScriptEngine;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptEngine
# file     : QtScript/qscriptengine.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_04';


# FIXME: operator overload


1;

=head1 NAME

Qt::Script::QScriptEngine

=head1 PUBLIC METHODS

=over

=item   QScriptEngine()

=item   QScriptEngine(QObject * parent)

=item   ~QScriptEngine()

=item  void abortEvaluation(const QScriptValue & result)

=item  void abortEvaluation(const QScriptValue & result = QScriptValue())

=item  QScriptEngineAgent * agent()

=item  QStringList availableExtensions()

=item  bool canEvaluate(const QString & program)

=item  static QScriptSyntaxCheckResult checkSyntax(const QString & program)

=item  void clearExceptions()

=item  void collectGarbage()

=item  QScriptContext * currentContext()

=item  QScriptValue defaultPrototype(int metaTypeId)

=item  QScriptValue evaluate(const QScriptProgram & program)

=item  QScriptValue evaluate(const QString & program, const QString & fileName, int lineNumber)

=item  QScriptValue evaluate(const QString & program, const QString & fileName, int lineNumber = 1)

=item  QScriptValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)

=item  QScriptValue globalObject()

=item  bool hasUncaughtException()

=item  QScriptValue importExtension(const QString & extension)

=item  QStringList importedExtensions()

=item  void installTranslatorFunctions(const QScriptValue & object)

=item  void installTranslatorFunctions(const QScriptValue & object = QScriptValue())

=item  bool isEvaluating()

=item  QScriptValue newActivationObject()

=item  QScriptValue newArray(uint length)

=item  QScriptValue newArray(uint length = 0)

=item  QScriptValue newDate(double value)

=item  QScriptValue newDate(const QDateTime & value)

=item  QScriptValue newFunction(QScriptEngine::FunctionSignature signature, int length)

=item  QScriptValue newFunction(QScriptEngine::FunctionSignature signature, int length = 0)

=item  QScriptValue newFunction(QScriptEngine::FunctionWithArgSignature signature, void * arg)

=item  QScriptValue newFunction(QScriptEngine::FunctionSignature signature, const QScriptValue & prototype, int length)

=item  QScriptValue newFunction(QScriptEngine::FunctionSignature signature, const QScriptValue & prototype, int length = 0)

=item  QScriptValue newObject()

=item  QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data)

=item  QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data = QScriptValue())

=item  QScriptValue newQMetaObject(const QMetaObject * metaObject, const QScriptValue & ctor)

=item  QScriptValue newQMetaObject(const QMetaObject * metaObject, const QScriptValue & ctor = QScriptValue())

=item  QScriptValue newRegExp(const QRegExp & regexp)

=item  QScriptValue newRegExp(const QString & pattern, const QString & flags)

=item  QScriptValue newVariant(const QVariant & value)

=item  QScriptValue newVariant(const QScriptValue & object, const QVariant & value)

=item  QScriptValue nullValue()

=item  QScriptValue objectById(qint64 id)

=item  void popContext()

=item  int processEventsInterval()

=item  QScriptContext * pushContext()

=item  void reportAdditionalMemoryCost(int size)

=item  void setAgent(QScriptEngineAgent * agent)

=item  void setDefaultPrototype(int metaTypeId, const QScriptValue & prototype)

=item  void setGlobalObject(const QScriptValue & object)

=item  void setProcessEventsInterval(int interval)

=item  QScriptValue toObject(const QScriptValue & value)

=item  QScriptString toStringHandle(const QString & str)

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

Copyright (C) 2011 - 2012 by Dongxu Ma

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

See L<http://dev.perl.org/licenses/artistic.html>

=cut
