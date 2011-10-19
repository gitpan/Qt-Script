package Qt::Script::QScriptClass;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptClass
# file     : QtScript/qscriptclass.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_03';


# FIXME: operator overload


1;

=head1 NAME

Qt::Script::QScriptClass

=head1 PUBLIC METHODS

=over

=item   QScriptClass(QScriptEngine * engine)

=item   ~QScriptClass()

=item  QScriptEngine * engine()

=item  QVariant extension(QScriptClass::Extension extension, const QVariant & argument)

=item  QVariant extension(QScriptClass::Extension extension, const QVariant & argument = QVariant())

=item  QString name()

=item  QScriptClassPropertyIterator * newIterator(const QScriptValue & object)

=item  QScriptValue property(const QScriptValue & object, const QScriptString & name, uint id)

=item  QFlags<QScriptValue::PropertyFlag> propertyFlags(const QScriptValue & object, const QScriptString & name, uint id)

=item  QScriptValue prototype()

=item  QFlags<QScriptClass::QueryFlag> queryProperty(const QScriptValue & object, const QScriptString & name, QFlags<QScriptClass::QueryFlag> flags, uint * id)

=item  void setProperty(QScriptValue & object, const QScriptString & name, uint id, const QScriptValue & value)

=item  bool supportsExtension(QScriptClass::Extension extension)


=back

=head1 ENUM VALUES

=over

=item HandlesReadAccess

=item HandlesWriteAccess

=item Callable

=item HasInstance


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
