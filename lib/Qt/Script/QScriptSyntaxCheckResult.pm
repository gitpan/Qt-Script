package Qt::Script::QScriptSyntaxCheckResult;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptSyntaxCheckResult
# file     : QtScript/qscriptengine.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_03';


# FIXME: operator overload


1;

=head1 NAME

Qt::Script::QScriptSyntaxCheckResult

=head1 PUBLIC METHODS

=over

=item   QScriptSyntaxCheckResult(const QScriptSyntaxCheckResult & other)

=item   ~QScriptSyntaxCheckResult()

=item  int errorColumnNumber()

=item  int errorLineNumber()

=item  QString errorMessage()

=item  QScriptSyntaxCheckResult & operator=(const QScriptSyntaxCheckResult & other)

=item  QScriptSyntaxCheckResult::State state()


=back

=head1 ENUM VALUES

=over

=item Error

=item Intermediate

=item Valid


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
