grammar Kquery;

// Lexer rules

// Literals

WS: [ \t\r\n]+ -> skip;

// Numbers

NUMBER : TRUE | FALSE | SIGNED_CONSTANT;
TRUE: 'true';
FALSE: 'false';
SIGNED_CONSTANT : [+-]? ( DEC_CONSTANT | BIN_CONSTANT | OCT_CONSTANT | HEX_CONSTANT );
DEC_CONSTANT : [0-9_]+;  
BIN_CONSTANT : '0b'[01_]+;
OCT_CONSTANT : '0o'[0-7_]+;
HEX_CONSTANT : '0x'[0-9a-fA-F_]+;

// Types
TYPE: 'w'[0-9]+;

// Arrays

number_list: NUMBER | NUMBER ',' number_list;
array_initializer: 'symbolic' | '[' number_list ']';
array_declaration: 'array' IDENTIFIER '[' NUMBER? ']' ':' TYPE '->' TYPE '=' array_initializer;


// Arithmetic operations

ADD: 'Add';
SUB: 'Sub';
MUL: 'Mul';
UDIV: 'UDiv';
UREM: 'URem';
SDIV: 'SDiv';
SREM: 'SRem';

arithmetic_expr_kind : ( ADD | SUB | MUL | UDIV | UREM | SDIV | SREM);

// Bitwise operations

NOT: 'Not';
AND: 'And';
OR: 'Or';
XOR: 'Xor';
SHL: 'Shl';
LSHR: 'LShr';
ASHR: 'AShr';

bitwise_expr_kind: ( AND | OR | XOR | SHL | LSHR | ASHR ) ;

// Comparisons
EQ: 'Eq';
NE: 'Ne';
ULT: 'Ult';
ULE: 'Ule';
UGT: 'Ugt';
UGE: 'Uge';
SLT: 'Slt';
SLE: 'Sle';
SGT: 'Sgt';
SGE: 'Sge';

comparison_expr_kind: ( EQ | NE | ULT | ULE | UGT | UGE | SLT | SLE | SGT | SGE );

prog: expr+;

number_with_type: TYPE NUMBER;

CONCAT: 'Concat';
EXTRACT: 'Extract';

bv_expr_kind: ( CONCAT | EXTRACT );

ZEXT: 'ZExt';
SEXT: 'SExt';
extension_expr_kind: ( ZEXT | SEXT );

READ: 'Read';
read_expr_kind: READ;

SELECT: 'Select';
select_expr_kind: SELECT;

NEG: 'Neg';

neg_expr_kind: NEG;

READLSB : 'ReadLSB';
READMSB : 'ReadMSB';

array_read_expr_kind: ( READLSB | READMSB );

IDENTIFIER: [a-zA-Z_][a-zA-Z0-9._]*;

identifier: IDENTIFIER;
number: NUMBER;

type: TYPE;

definition: IDENTIFIER ':' expr;

arithmetic_expr: '(' arithmetic_expr_kind type expr expr ')';

bitwise_expr: '(' bitwise_expr_kind (type)? expr expr ')';

comparison_expr: '(' comparison_expr_kind (type)? expr expr ')';

bv_expr: '(' bv_expr_kind (type)? expr expr ')'; // Bitvector

extension_expr: '(' extension_expr_kind type expr ')';

read_expr: '(' read_expr_kind type expr version ')';

select_expr : '(' select_expr_kind type expr expr expr ')';

neg_expr : '(' neg_expr_kind (type)? expr ')';

array_read_expr : '(' array_read_expr_kind type expr version ')';

// Expressions
expr 
			: identifier
			| number
			| definition
			| '(' number_with_type ')'
			| array_declaration
			| arithmetic_expr
			| bitwise_expr
			| comparison_expr
			| bv_expr
			| extension_expr
			| read_expr
			| select_expr
			| neg_expr
			| array_read_expr
			| version
		;

// Versions

update_list : expr '=' expr (',' expr '=' expr)*;
version: '[' (update_list)? ']' '@' version
       | IDENTIFIER (':' expr)?
       ;