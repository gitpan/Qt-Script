package Qt::Script::QScriptExtensionPlugin;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QScriptExtensionPlugin
# file     : QtScript/qscriptextensionplugin.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_04';
use base qw/Qt::Script::QScriptExtensionInterface/;
#our @ISA = qw/Qt::Script::QScriptExtensionInterface/;


# FIXME: operator overload


1;

=head1 NAME

Qt::Script::QScriptExtensionPlugin

=head1 PUBLIC METHODS

=over

=item   QScriptExtensionPlugin(QObject * parent)

=item   QScriptExtensionPlugin(QObject * parent = 0)

=item   ~QScriptExtensionPlugin()

=item  void initialize(const QString & key, QScriptEngine * engine)

=item  QStringList keys()

=item  QScriptValue setupPackage(const QString & key, QScriptEngine * engine)


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
