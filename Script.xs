// WARNING: ANY CHANGE TO THIS FILE WILL BE LOST!
// MADE BY: ./script/create_top_dot_xs.pl

#include "QtCore/qdatetime.h"
#include "QtCore/qglobal.h"
#include "QtScript/qscriptable.h"
#include "QtScript/qscriptclass.h"
#include "QtScript/qscriptclasspropertyiterator.h"
#include "QtScript/qscriptcontext.h"
#include "QtScript/qscriptcontextinfo.h"
#include "QtScript/qscriptengine.h"
#include "QtScript/qscriptengineagent.h"
#include "QtScript/qscriptextensioninterface.h"
#include "QtScript/qscriptextensionplugin.h"
#include "QtScript/qscriptprogram.h"
#include "QtScript/qscriptstring.h"
#include "QtScript/qscriptvalue.h"
#include "QtScript/qscriptvalueiterator.h"

#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"
#undef do_open
#undef do_close
#undef RETURN

typedef bool (*T_FPOINTER_QINTERNALCALLBACK_QNAMESPACE)(void **);
typedef void (*T_FPOINTER_QTMSGHANDLER_QGLOBAL)(QtMsgType,const char *);
typedef QScriptValue (*T_FPOINTER_FUNCTIONSIGNATURE_QSCRIPTENGINE)(QScriptContext *,QScriptEngine *);
typedef void (*T_FPOINTER_DEMARSHALFUNCTION_QSCRIPTENGINE)(const QScriptValue &,void *);
typedef QScriptValue (*T_FPOINTER_MARSHALFUNCTION_QSCRIPTENGINE)(QScriptEngine *,const void *);
typedef QScriptValue (*T_FPOINTER_FUNCTIONWITHARGSIGNATURE_QSCRIPTENGINE)(QScriptContext *,QScriptEngine *,void *);

MODULE = Qt		PACKAGE = Qt
PROTOTYPES: DISABLE

INCLUDE:		xs/QScriptable.xs
INCLUDE:		xs/QScriptClass.xs
INCLUDE:		xs/QScriptClassPropertyIterator.xs
INCLUDE:		xs/QScriptContext.xs
INCLUDE:		xs/QScriptContextInfo.xs
INCLUDE:		xs/QScriptEngine.xs
INCLUDE:		xs/QScriptEngineAgent.xs
INCLUDE:		xs/QScriptExtensionInterface.xs
INCLUDE:		xs/QScriptExtensionPlugin.xs
INCLUDE:		xs/QScriptProgram.xs
INCLUDE:		xs/QScriptString.xs
INCLUDE:		xs/QScriptSyntaxCheckResult.xs
INCLUDE:		xs/QScriptValue.xs
INCLUDE:		xs/QScriptValueIterator.xs
