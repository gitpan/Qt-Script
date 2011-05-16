package Qt::Script::QScriptValueIterator;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptValueIterator
# file     : QtScript/qscriptvalueiterator.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_01';


# FIXME: operator overload



1;

=head1 NAME

Qt::Script::QScriptValueIterator

=head1 PUBLIC METHODS

=over

=item    QScriptValueIterator(const QScriptValue & value)

=item    ~QScriptValueIterator()

=item   bool hasNext()

=item   bool hasPrevious()

=item   QString name()

=item   void next()

=item   QScriptValueIterator & operator=(QScriptValue & value)

=item   void previous()

=item   void remove()

=item   QScriptString scriptName()

=item   void setValue(const QScriptValue & value)

=item   void toBack()

=item   void toFront()

=item   QScriptValue value()


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
