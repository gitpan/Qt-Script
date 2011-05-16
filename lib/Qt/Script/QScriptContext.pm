package Qt::Script::QScriptContext;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptContext
# file     : QtScript/qscriptcontext.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_01';


# FIXME: operator overload

# enums
# enum value in perl is enum item index number
sub NormalState() { 0 }
sub ExceptionState() { 1 }
sub UnknownError() { 0 }
sub ReferenceError() { 1 }
sub SyntaxError() { 2 }
sub TypeError() { 3 }
sub RangeError() { 4 }
sub URIError() { 5 }


1;

=head1 NAME

Qt::Script::QScriptContext

=head1 PUBLIC METHODS

=over

=item    ~QScriptContext()

=item   QScriptValue activationObject()

=item   QScriptValue argument(int index)

=item   int argumentCount()

=item   QScriptValue argumentsObject()

=item   QStringList backtrace()

=item   QScriptValue callee()

=item   QScriptEngine * engine()

=item   bool isCalledAsConstructor()

=item   QScriptContext * parentContext()

=item   QScriptValue popScope()

=item   void pushScope(const QScriptValue & object)

=item   QScriptValue returnValue()

=item   void setActivationObject(const QScriptValue & activation)

=item   void setReturnValue(const QScriptValue & result)

=item   void setThisObject(const QScriptValue & thisObject)

=item   QScriptContext::ExecutionState state()

=item   QScriptValue thisObject()

=item   QScriptValue throwError(const QString & text)

=item   QScriptValue throwError(QScriptContext::Error error, const QString & text)

=item   QScriptValue throwValue(const QScriptValue & value)

=item   QString toString()


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
