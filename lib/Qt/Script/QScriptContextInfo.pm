package Qt::Script::QScriptContextInfo;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptContextInfo
# file     : QtScript/qscriptcontextinfo.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_04';


# FIXME: operator overload


1;

=head1 NAME

Qt::Script::QScriptContextInfo

=head1 PUBLIC METHODS

=over

=item   QScriptContextInfo()

=item   QScriptContextInfo(const QScriptContext * context)

=item   QScriptContextInfo(const QScriptContextInfo & other)

=item   ~QScriptContextInfo()

=item  int columnNumber()

=item  QString fileName()

=item  int functionEndLineNumber()

=item  int functionMetaIndex()

=item  QString functionName()

=item  QStringList functionParameterNames()

=item  int functionStartLineNumber()

=item  QScriptContextInfo::FunctionType functionType()

=item  bool isNull()

=item  int lineNumber()

=item  bool operator!=(const QScriptContextInfo & other)

=item  QScriptContextInfo & operator=(const QScriptContextInfo & other)

=item  bool operator==(const QScriptContextInfo & other)

=item  qint64 scriptId()


=back

=head1 ENUM VALUES

=over

=item ScriptFunction

=item QtFunction

=item QtPropertyFunction

=item NativeFunction


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
