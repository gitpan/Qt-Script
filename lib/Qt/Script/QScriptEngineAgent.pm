package Qt::Script::QScriptEngineAgent;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptEngineAgent
# file     : QtScript/qscriptengineagent.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_03';


# FIXME: operator overload


1;

=head1 NAME

Qt::Script::QScriptEngineAgent

=head1 PUBLIC METHODS

=over

=item   QScriptEngineAgent(QScriptEngine * engine)

=item   ~QScriptEngineAgent()

=item  void contextPop()

=item  void contextPush()

=item  QScriptEngine * engine()

=item  void exceptionCatch(qint64 scriptId, const QScriptValue & exception)

=item  void exceptionThrow(qint64 scriptId, const QScriptValue & exception, bool hasHandler)

=item  QVariant extension(QScriptEngineAgent::Extension extension, const QVariant & argument)

=item  QVariant extension(QScriptEngineAgent::Extension extension, const QVariant & argument = QVariant())

=item  void functionEntry(qint64 scriptId)

=item  void functionExit(qint64 scriptId, const QScriptValue & returnValue)

=item  void positionChange(qint64 scriptId, int lineNumber, int columnNumber)

=item  void scriptLoad(qint64 id, const QString & program, const QString & fileName, int baseLineNumber)

=item  void scriptUnload(qint64 id)

=item  bool supportsExtension(QScriptEngineAgent::Extension extension)


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
