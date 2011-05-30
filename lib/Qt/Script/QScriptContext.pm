package Qt::Script::QScriptContext;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptContext
# file     : QtScript/qscriptcontext.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_02';


# FIXME: operator overload


1;

=head1 NAME

Qt::Script::QScriptContext

=head1 PUBLIC METHODS

=over

=item   ~QScriptContext()

=item  QScriptValue activationObject()

=item  QScriptValue argument()

=item  int argumentCount()

=item  QScriptValue argumentsObject()

=item  QStringList backtrace()

=item  QScriptValue callee()

=item  QScriptEngine * engine()

=item  bool isCalledAsConstructor()

=item  QScriptContext * parentContext()

=item  QScriptValue popScope()

=item  void pushScope()

=item  QScriptValue returnValue()

=item  void setActivationObject()

=item  void setReturnValue()

=item  void setThisObject()

=item  QScriptContext::ExecutionState state()

=item  QScriptValue thisObject()

=item  QScriptValue throwError()

=item  QScriptValue throwError(, )

=item  QScriptValue throwValue()

=item  QString toString()


=back

=head1 ENUM VALUES

=over

=item NormalState

=item ExceptionState

=item UnknownError

=item ReferenceError

=item SyntaxError

=item TypeError

=item RangeError

=item URIError


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
