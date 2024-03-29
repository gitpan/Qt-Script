package Qt::Script::QScriptValue;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptValue
# file     : QtScript/qscriptvalue.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_04';


# FIXME: operator overload


1;

=head1 NAME

Qt::Script::QScriptValue

=head1 PUBLIC METHODS

=over

=item   QScriptValue()

=item   QScriptValue(const QScriptValue & other)

=item   QScriptValue(QScriptValue::SpecialValue value)

=item   QScriptValue(bool value)

=item   QScriptValue(int value)

=item   QScriptValue(uint value)

=item   QScriptValue(double value)

=item   QScriptValue(const QString & value)

=item   QScriptValue(const QLatin1String & value)

=item   QScriptValue(const char * value)

=item   QScriptValue(QScriptEngine * engine, QScriptValue::SpecialValue val)

=item   QScriptValue(QScriptEngine * engine, bool val)

=item   QScriptValue(QScriptEngine * engine, int val)

=item   QScriptValue(QScriptEngine * engine, uint val)

=item   QScriptValue(QScriptEngine * engine, double val)

=item   QScriptValue(QScriptEngine * engine, const QString & val)

=item   QScriptValue(QScriptEngine * engine, const char * val)

=item   ~QScriptValue()

=item  QScriptValue call(const QScriptValue & thisObject, const QList<QScriptValue> & args)

=item  QScriptValue call(const QScriptValue & thisObject, const QList<QScriptValue> & args = QList<QScriptValue>())

=item  QScriptValue call(const QScriptValue & thisObject = QScriptValue(), const QList<QScriptValue> & args = QList<QScriptValue>())

=item  QScriptValue call(const QScriptValue & thisObject, const QScriptValue & arguments)

=item  QScriptValue construct(const QList<QScriptValue> & args)

=item  QScriptValue construct(const QList<QScriptValue> & args = QList<QScriptValue>())

=item  QScriptValue construct(const QScriptValue & arguments)

=item  QScriptValue data()

=item  QScriptEngine * engine()

=item  bool equals(const QScriptValue & other)

=item  bool instanceOf(const QScriptValue & other)

=item  bool isArray()

=item  bool isBool()

=item  bool isBoolean()

=item  bool isDate()

=item  bool isError()

=item  bool isFunction()

=item  bool isNull()

=item  bool isNumber()

=item  bool isObject()

=item  bool isQMetaObject()

=item  bool isQObject()

=item  bool isRegExp()

=item  bool isString()

=item  bool isUndefined()

=item  bool isValid()

=item  bool isVariant()

=item  bool lessThan(const QScriptValue & other)

=item  qint64 objectId()

=item  QScriptValue & operator=(const QScriptValue & other)

=item  QScriptValue prototype()

=item  QScriptValue scope()

=item  QScriptClass * scriptClass()

=item  void setData(const QScriptValue & data)

=item  void setPrototype(const QScriptValue & prototype)

=item  void setScope(const QScriptValue & scope)

=item  void setScriptClass(QScriptClass * scriptClass)

=item  bool strictlyEquals(const QScriptValue & other)

=item  bool toBool()

=item  bool toBoolean()

=item  QDateTime toDateTime()

=item  qint32 toInt32()

=item  double toInteger()

=item  double toNumber()

=item  QScriptValue toObject()

=item  const QMetaObject * toQMetaObject()

=item  QObject * toQObject()

=item  QRegExp toRegExp()

=item  QString toString()

=item  quint16 toUInt16()

=item  quint32 toUInt32()

=item  QVariant toVariant()


=back

=head1 ENUM VALUES

=over

=item ResolveLocal

=item ResolvePrototype

=item ResolveScope

=item ResolveFull

=item ReadOnly

=item Undeletable

=item SkipInEnumeration

=item PropertyGetter

=item PropertySetter

=item QObjectMember

=item KeepExistingFlags

=item UserRange

=item NullValue

=item UndefinedValue


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
