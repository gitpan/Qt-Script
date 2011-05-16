package Qt::Script::QScriptClass;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptClass
# file     : QtScript/qscriptclass.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_01';


# FIXME: operator overload

# enums
# enum value in perl is enum item index number
sub HandlesReadAccess() { 0 }
sub HandlesWriteAccess() { 1 }
sub Callable() { 0 }
sub HasInstance() { 1 }


1;

=head1 NAME

Qt::Script::QScriptClass

=head1 PUBLIC METHODS

=over

=item    QScriptClass(QScriptEngine * engine)

=item    ~QScriptClass()

=item   QScriptEngine * engine()

=item   QVariant extension(QScriptClass::Extension extension, const QVariant & argument = QVariant())

=item   QVariant extension(QScriptClass::Extension extension, const QVariant & argument)

=item   QString name()

=item   QScriptClassPropertyIterator * newIterator(const QScriptValue & object)

=item   QScriptValue property(const QScriptValue & object, const QScriptString & name, uint id)

=item   QScriptValue prototype()

=item   void setProperty(QScriptValue & object, const QScriptString & name, uint id, const QScriptValue & value)

=item   bool supportsExtension(QScriptClass::Extension extension)


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
