# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl <name>.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 17;
BEGIN {
use_ok('Qt::Script');
use_ok('Qt::Script');
use_ok('Qt::Script::QScriptClassPropertyIterator');
use_ok('Qt::Script::QScriptProgram');
use_ok('Qt::Script::QScriptContext');
use_ok('Qt::Script::Template');
use_ok('Qt::Script::QScriptValueIterator');
use_ok('Qt::Script::QScriptString');
use_ok('Qt::Script::QScriptContextInfo');
use_ok('Qt::Script::QScriptValue');
use_ok('Qt::Script::QScriptClass');
use_ok('Qt::Script::QScriptExtensionInterface');
use_ok('Qt::Script::QScriptable');
use_ok('Qt::Script::QScriptEngineAgent');
use_ok('Qt::Script::QScriptSyntaxCheckResult');
use_ok('Qt::Script::QScriptEngine');
use_ok('Qt::Script::QScriptExtensionPlugin');
}

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.
