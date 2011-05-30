package Qt::Script::QScriptClass;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptClass
# file     : QtScript/qscriptclass.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_02';


# FIXME: operator overload


1;

=head1 NAME

Qt::Script::QScriptClass

=head1 PUBLIC METHODS

=over

=item   QScriptClass()

=item   ~QScriptClass()

=item  QScriptEngine * engine()

=item  QVariant extension(, )

=item  QVariant extension(,  = QVariant())

=item  QString name()

=item  QScriptClassPropertyIterator * newIterator()

=item  QScriptValue property(, , )

=item  QFlags<QScriptValue::PropertyFlag> propertyFlags(, , )

=item  QScriptValue prototype()

=item  QFlags<QScriptClass::QueryFlag> queryProperty(, , , )

=item  void setProperty(, , , )

=item  bool supportsExtension()


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
