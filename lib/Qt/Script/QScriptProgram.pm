package Qt::Script::QScriptProgram;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptProgram
# file     : QtScript/qscriptprogram.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_04';


# FIXME: operator overload


1;

=head1 NAME

Qt::Script::QScriptProgram

=head1 PUBLIC METHODS

=over

=item   QScriptProgram()

=item   QScriptProgram(const QScriptProgram & other)

=item   QScriptProgram(const QString & sourceCode, const QString fileName, int firstLineNumber)

=item   QScriptProgram(const QString & sourceCode, const QString fileName, int firstLineNumber = 1)

=item   QScriptProgram(const QString & sourceCode, const QString fileName = QString(), int firstLineNumber = 1)

=item   ~QScriptProgram()

=item  QString fileName()

=item  int firstLineNumber()

=item  bool isNull()

=item  bool operator!=(const QScriptProgram & other)

=item  QScriptProgram & operator=(const QScriptProgram & other)

=item  bool operator==(const QScriptProgram & other)

=item  QString sourceCode()


=back

=head1 ENUM VALUES

=over


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
