package Qt::Script::QScriptEngineAgent;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptEngineAgent
# file     : QtScript/qscriptengineagent.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_02';


# FIXME: operator overload


1;

=head1 NAME

Qt::Script::QScriptEngineAgent

=head1 PUBLIC METHODS

=over

=item   QScriptEngineAgent()

=item   ~QScriptEngineAgent()

=item  void contextPop()

=item  void contextPush()

=item  QScriptEngine * engine()

=item  void exceptionCatch(, )

=item  void exceptionThrow(, , )

=item  QVariant extension(, )

=item  QVariant extension(,  = QVariant())

=item  void functionEntry()

=item  void functionExit(, )

=item  void positionChange(, , )

=item  void scriptLoad(, , , )

=item  void scriptUnload()

=item  bool supportsExtension()


=back

=head1 ENUM VALUES

=over

=item DebuggerInvocationRequest


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
