; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/tisp/tisp_unity.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/tisp/tisp_unity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Tsp = type { i8*, i64, %struct.Val*, %struct.Val*, %struct.Val*, %struct.Rec*, %struct.Rec*, %struct.Rec*, i8**, i64 }
%struct.Rec = type { i32, i32, %struct.Entry*, %struct.Rec* }
%struct.Entry = type { i8*, %struct.Val* }
%struct.Val = type { i32, %union.anon }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { i8*, %struct.Val*, %struct.Val*, %struct.Rec* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.anon.2 = type { %struct.Val*, %struct.Val* }
%struct.sigaction = type { %union.anon.3, %struct.__sigset_t, i32, void ()* }
%union.anon.3 = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.anon = type { double, double }
%struct.anon.0 = type { i8*, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* }

@tibs = dso_local global [21449 x i8] c"(;;; core.tsp\0A(def (list . lst) \22Create list\22 lst)\0A(def quit() '~No REPL to quit from~)\0A\0A(def defmacro\0A  (Macro (args . body)\0A    \22Define named macro, with argument list and body\0A  First element of arguments is name of macro\0A  Also see: def\22\0A    (cond\0A      ((pair? args)\0A       (list 'def (car args) (list 'Macro (cdr args) . body)))\0A      (else\0A        (error 'defmacro \22expected macro name and argument List, recieved \22\0A              (typeof args))))))\0A\0A;;; CXR\0A\0A; TODO def car cdr with get syntax ?\0A(def (caar x) (car (car x)))\0A(def (cadr x) (car (cdr x)))\0A(def (cdar x) (cdr (car x)))\0A(def (cddr x) (cdr (cdr x)))\0A(def (caaar x) (car (car (car x))))\0A(def (caadr x) (car (car (cdr x))))\0A(def (cadar x) (car (cdr (car x))))\0A(def (caddr x) (car (cdr (cdr x))))\0A(def (cdaar x) (cdr (car (car x))))\0A(def (cdadr x) (cdr (car (cdr x))))\0A(def (cddar x) (cdr (cdr (car x))))\0A(def (cdddr x) (cdr (cdr (cdr x))))\0A(def (caaaar x) (car (car (car (car x)))))\0A(def (caaadr x) (car (car (car (cdr x)))))\0A(def (caadar x) (car (car (cdr (car x)))))\0A(def (caaddr x) (car (car (cdr (cdr x)))))\0A(def (cadaar x) (car (cdr (car (car x)))))\0A(def (cadadr x) (car (cdr (car (cdr x)))))\0A(def (caddar x) (car (cdr (cdr (car x)))))\0A(def (cadddr x) (car (cdr (cdr (cdr x)))))\0A(def (cdaaar x) (cdr (car (car (car x)))))\0A(def (cdaadr x) (cdr (car (car (cdr x)))))\0A(def (cdadar x) (cdr (car (cdr (car x)))))\0A(def (cdaddr x) (cdr (car (cdr (cdr x)))))\0A(def (cddaar x) (cdr (cdr (car (car x)))))\0A(def (cddadr x) (cdr (cdr (car (cdr x)))))\0A(def (cdddar x) (cdr (cdr (cdr (car x)))))\0A(def (cddddr x) (cdr (cdr (cdr (cdr x)))))\0A\0A;;; Types\0A\0A(def (any? x)         True)\0A(def (void? x)        (= (typeof x) \22Void\22))\0A(def (nil? x)         (= (typeof x) \22Nil\22))\0A(def  empty?          nil?)\0A(def (integer? x)     (= (typeof x) \22Int\22)) ; TODO shorten type querry funcs ?\0A(def (decimal? x)     (= (typeof x) \22Dec\22))\0A(def (ratio? x)       (= (typeof x) \22Ratio\22))\0A(def (string? x)      (= (typeof x) \22Str\22))\0A(def (symbol? x)      (= (typeof x) \22Sym\22))\0A(def (primitive? x)   (= (typeof x) \22Prim\22))\0A(def (specialform? x) (= (typeof x) \22Form\22))\0A(def (function? x)    (= (typeof x) \22Func\22))\0A(def (macro? x)       (= (typeof x) \22Macro\22))\0A(def (record? x)      (= (typeof x) \22Rec\22))\0A(def (pair? x)        (= (typeof x) \22Pair\22))\0A(def (atom? x)        (not (pair? x)))\0A(def (cons? x)        (and (pair? x) (not (pair? (cdr x)))))\0A(def (list? x)        (if (pair? x) (list? (cdr x)) (not x)))\0A(def (boolean? x)     (or (= x True) (nil? x)))\0A(def (true? x)        (= x True))\0A(def  false?          nil?)\0A(def (builtin? x)     (or (primitive? x) (specialform? x)))\0A(def (procedure? x)   (or (builtin? x) (or (function? x) (macro? x))))\0A(def (rational? x)    (or (integer? x) (ratio? x)))\0A(def (number? x)      (or (rational? x) (decimal? x)))\0A\0A(def (Bool x) (if x True Nil))\0A; TODO handle string and sym\0A(def (Pair x)\0A  (cond\0A    ((rational? x)\0A     (cons (numerator x)\0A           (denominator x)))\0A    ((decimal? x)\0A     (cons (integer (truncate x))\0A           (- x (truncate x))))\0A    ((or (void? x) (nil? x) (pair? x)) x)\0A    (else (cons x Nil))))\0A\0A(defmacro (assert expr)\0A  `(unless ,expr\0A        (error 'assert \22assertion \22 ',expr \22 failed\22)))\0A\0A; TODO support any sized list n depending on size of optional val\0A(def (default n val)\0A  (cond\0A    ((nil? n) val)\0A    ((and (pair? n) (nil? (cdr n)))\0A     (car n))\0A    (else (error 'default \22expected only 1 optional argument\22))))\0A\0A;;; Control Flow\0A\0A; TODO if b = pair and car b = else use cdr b\0A(defmacro (if con a b)\0A  \22Execute a if condition con is true, otherwise run b\22\0A  (list 'cond (list con a) (list True b)))\0A(def else True)\0A(defmacro (when con . body)\0A  \22Execute body if condition con is true\22\0A  (list 'cond (list con (cons 'do body))))\0A(defmacro (unless con . body)\0A  \22Execute body unless condition, con, is true\22\0A  (list 'cond (list (list not con) (cons 'do body))))\0A\0A(defmacro (let vars . body)\0A  \22Execute body with new local variables in vars\0A  vars is a list of name and value pairs\22\0A  (list (list* 'Func ()\0A               (append\0A                 (map\0A                   @(list* 'def (car it) (cdr it))\0A                   vars)\0A                 body))))\0A\0A(defmacro (recur proc vars . body)\0A  \22Do recursion within body by calling proc with values for vars\0A  Also see: let\22\0A  (list 'let\0A        (list*\0A          (list proc (list* 'Func (map car vars) body))\0A          vars)\0A        (list* proc (map car vars))))\0A\0A; TODO support else that is run if no values are equal\0A(defmacro (switch val . body)\0A  \22Compare value to first element in each body statement, only running line where they are equal\22\0A  (list* 'cond (map\0A                 @`((= ,val ,(car it)) ,(cadr it))\0A                 body)))\0A\0A(defmacro (quasiquote expr)\0A  \22Recursively quote the given expression\0A  Automatically quotes each element within the expression, but evaluates the\0A  element if it is labeled with the unquote macro.\0A  Can be shortened with the ` prefix.\0A  Also see: quote, unquote, unquote-splice\22\0A  (def (check form)\0A    (unless (and (pair? (cdr form)) (nil? (cddr form)))\0A      (error (car form) \22invalid form \22 form)))\0A  (def (quasicons a d)\0A    (if (pair? d)\0A      (if (= (car d) 'quote)\0A        (if (and (pair? a) (= (car a) 'quote))\0A          (list 'quote (list* (cadr a) (cadr d)))\0A          (if (nil? (cadr d))\0A            (list 'list a)\0A            (list list* a d)))\0A        (if (member (car d) '(list list*))\0A          (list* (car d) a (cdr d))\0A          (list list* a d)))\0A      (list list* a d)))\0A  (recur f ((expr expr) (n 0))\0A    (cond\0A      ((nil? expr) Nil)\0A      ((atom? expr) (list 'quote expr))\0A      ((= (car expr) 'quasiquote)\0A       (check expr)\0A       (quasicons ''quasiquote (f (cdr expr) (+ n 1))))\0A      ((= (car expr) 'unquote)\0A       (check expr)\0A       (if (= n 0)\0A         (cadr expr)\0A         (quasicons ''unquote (f (cdr expr) (- n 1)))))\0A      ((= (car expr) 'unquote-splice)\0A       (check expr)\0A       (if (= n 0)\0A         (error 'unquote-splice \22invalid context for \22 (cadr expr))\0A         (quasicons ''unquote-splice (f (cdr expr) (- n 1)))))\0A      ((and (= n 0) (and (pair? (car expr)) (= (caar expr) 'unquote-splice)))\0A       (check (car expr))\0A       (let (d: (f (cdr expr) n))\0A         (if d\0A           (list 'append (cadar expr) d)\0A           (cadar expr))))\0A      (else (quasicons (f (car expr) n) (f (cdr expr) n))))))\0A\0A(defmacro (unquote expr)\0A  \22Unquote expression so its evaluated before placed into the quasiquote\0A  Can be shortened with the , prefix\0A  Errors if called outside quasiquote\0A  Also see: quasiquote, unquote-splice, quote\22\0A  (error 'unquote \22called outside of quasiquote\22))\0A(defmacro (unquote-splice expr)\0A  \22Unquote and splice the expression into the quasiquote\0A  If the value evaluated is a list, embedded each element into the quasiquote\0A  Can be shortened with the ,@ prefix\0A  Errors if called outside a quasiquote of a list\0A  Also see: quasiquote, unquote, quote\22\0A  (error 'unquote-splice \22called outside of quasiquote\22))\0A\0A;;; Logic\0A\0A(def False ())\0A(def (not x)\0A  (if x Nil True))\0A; Use a macro so arguments aren't evaluated all at once\0A(defmacro (and a b)\0A  \22Return b if a is not nil, else return nil\22\0A  (list 'if a b Nil))\0A(defmacro (or a b)\0A  \22Return a if not nil, else return b\22\0A  (list 'if a a b))\0A(defmacro (xor? a b)\0A  \22Exclusive or, either a or b are true, but not if both are true\22\0A  (list 'and (list 'or a b) (list 'not (list 'and a b))))\0A;;; Lists\0A\0A; TODO rename to remove *\0A(def (list* . lst)\0A  \22Create improper list, last element is not Nil\22\0A  (if (cdr lst)\0A    (cons (car lst) (apply list* (cdr lst)))\0A    (car lst)))\0A\0A(def (do0 . body)\0A  \22Evaluate each expression in body, returning first\0A  Also see: do\22\0A  (car body))\0A\0A(def (length lst)\0A  \22Number of elements in given list\22\0A  (recur f ((lst lst) (x 0))\0A    (if (pair? lst)\0A      (f (cdr lst) (+ x 1))\0A      x)))\0A\0A(def (last lst)\0A  \22Last element of list\22\0A; recur loop ((lst lst) (n (if n (car n) 0)))\0A  (if (cdr lst)\0A    (last (cdr lst))\0A    (car lst)))\0A\0A; TODO make nth generic for list str vec, made up of list-ref vec-ref str-ref\0A(def (nth lst n)\0A  \22Element number n of list, starting from 0\0A  If negative get number from end of list\22\0A  (cond\0A    ((atom? lst)\0A     (error 'nth \22index of list out of bounds\22))\0A    ((< n 0) (nth lst (+ (length lst) n)))\0A    ((= n 0) (car lst))\0A    (else (nth (cdr lst) (- n 1)))))\0A\0A; TODO diff name head/tail since conflicts w/ unix\0A; TODO support negative numers like unix tail/head to count from end backwards\0A(def (head lst n)\0A  \22First n elements of list\22\0A  (cond\0A    ((<= n 0) Nil)\0A    ((atom? lst)\0A     (error 'name \22index of list out of bounds\22))\0A    (else (cons (car lst) (head (cdr lst) (- n 1))))))\0A\0A(def (tail lst n)\0A  \22Last n elements of list\22\0A  (cond\0A    ((<= n 0) lst)\0A    ((atom? lst)\0A     (error 'tail \22index of list out of bounds\22))\0A    (else (tail (cdr lst) (- n 1)))))\0A\0A(def (count elem lst) ; TODO swap arg order?\0A  (cond ((nil? lst) 0)\0A        ((atom? lst) (error 'count \22expected proper list\22))\0A        ((= elem (car lst)) (+ 1 (count elem (cdr lst))))\0A        (else (count elem (cdr lst)))))\0A        ; (else (Binary((elem = car(lst))) + count(elem cdr(lst))))\0A\0A(def (apply proc args) ; TODO many args\0A  \22Run procedure with given arguments list\22\0A  (eval (map @(list 'quote it) ; prevent proc and args from being evaluated twice\0A             (cons proc args))))\0A\0A; TODO rename to foreach (for), swap proc and lst\0A; TODO many lsts for proc w/ multi arguments, used for index\0A; [lines 0..len(lines)] |> foreach (line num) => println(num \22: \22 line)\0A(def (map proc lst)\0A  \22Return new list created by applying procedure to each element of the input list\22\0A  (if pair?(lst)\0A    (cons (proc (car lst))\0A          (map proc (cdr lst)))\0A    Nil))\0A\0A(def (convert from to lst)\0A  \22Convert every member from of list into to\22\0A  (map @(if (= from it) to it) lst))\0A\0A; TODO assoc memp procedure equivalent\0A(def (assoc key table)\0A  \22Return first list in table where the first element matches the key\0A  If not found, return nil\22\0A  (cond ((nil? table) Nil)\0A        ((= key (caar table)) (car table))\0A        (else (assoc key (cdr table)))))\0A\0A(def (filter proc lst)\0A  \22Only keep elements of list where applying proc returns true\0A  Also see: keep, remove, member, memp\22\0A  (cond\0A    ((not (pair? lst)) Nil)\0A    ((proc (car lst)) (cons (car lst) (filter proc (cdr lst))))\0A    (else (filter proc (cdr lst)))))\0A\0A; TODO keep* remove*\0A(def (keep elem lst)\0A  \22Return list with only elements matching elem\0A  Also see: filter, remove\22\0A  (filter @(= elem it) lst))\0A\0A(def (remove elem lst)\0A  \22Return list without elements matching elem\0A  Also see: filter, keep\22\0A  (filter @(/= elem it) lst))\0A\0A(def (memp proc lst)\0A  \22Return list of elements after first time procedure applied to each is not nil\0A  Also see: member, filter\22\0A  (cond ((nil? lst) Nil)\0A        ((proc (car lst)) lst)\0A        (else (memp proc (cdr lst)))))\0A\0A(def (member elem lst)\0A  \22Return list of elements after first matching elem\0A  Also see: memp, filter\22\0A  (memp @(= elem it) lst))\0A\0A(def (everyp? proc lst)\0A  \22Return boolean if every element in list passes proc\22\0A  (if (pair? lst)\0A    (if (proc (car lst))\0A      (everyp? proc (cdr lst))\0A      False)\0A    True))\0A\0A(def (every? elem lst)\0A  \22Return boolean if every element in list is equal to elem\22\0A  (everyp? @(= elem it) lst))\0A\0A; TODO rewrite, optimize tco?\0A(def (compose . procs)\0A  \22Create function made from chaining procedures given\22\0A  (cond\0A    ((nil? procs) (Func x x))\0A    ((nil? (cdr procs)) (car procs))\0A    (else\0A      (Func x\0A        ((car procs) (apply (apply compose (cdr procs)) x))))))\0A\0A(def (reverse lst)\0A  \22Reverse order of list\22\0A  (recur f ((in lst) (out Nil))\0A    (if (pair? in)\0A      (f (cdr in) (cons (car in) out))\0A      out)))\0A\0A; TODO accept many lists to append\0A(def (append x y)\0A  \22Append list y to end of list x\22\0A  (cond\0A    ((pair? x) (cons (car x) (append (cdr x) y)))\0A    ((nil? x) y)\0A    ; (else (cons x y)) ; support appending non lists (for flatmap)\0A    (else (error 'append \22expected proper list\22))))\0A\0A; TODO zip to proper pairs (def zip' (zip args (nil list)))\0A(def (zip x y) ; TODO many args to create longer pairs\0A  \22Create list of pairs made up of elements of both lists\22\0A  (cond ((and (nil? x) (nil? y)) Nil)\0A        ((or (nil? x) (nil? y)) (error 'zip \22given lists of unequal length\22))\0A        ((and (pair? x) (pair? y))\0A         (cons (cons (car x) (car y))\0A               (zip (cdr x) (cdr y))))))\0A\0A;;; Stacks\0A\0A(def (push stack val)\0A  \22Add value to front of stack\0A  Also see: pop, peek\22\0A  (cons val stack))\0A\0A(def (pop stack)\0A  \22Get stack without first element\0A  Also see: push, peek\22\0A  (if stack\0A    (cdr stack)\0A    (error 'pop \22Improper stack: \22 stack)))\0A\0A(def (peek stack)\0A  \22Get value at front of stack\0A  Also see: push, pop\22\0A  (if (pair? stack)\0A    (car stack)\0A    (error 'peek \22Improper stack: \22 stack)))\0A\0A(def (swap stack)\0A  \22Get stack where the first 2 values are swapped\0A  Also see: push, pop, peek\22\0A  (let (x: (peek stack)\0A        y: (peek (pop stack)))\0A    (push (push (pop (pop stack)) x) y)))\0A; TODO replace w/ rec, append with def docstr-reg docstr-reg{func: \22doc string\22}\0A(def docstr-reg\0A  '((car\0A      \22car(lst)\22\0A      \22First element of list\22)\0A    (cdr\0A      \22cdr(lst)\22\0A      \22Rest of list after first element, or second element of pair\22)\0A    (cons\0A      \22cons(a d)\22\0A      \22Create new pair with a car of a and cdr of d\22)\0A    (quote\0A      \22quote(expr)\22\0A      \22'expr\22\0A      \22Return expression unevaluated\22\0A      \22  Can be shortened with the ' prefix\22\0A      \22  Also see: quasiquote, unquote, and unquote-splice\22)\0A    (eval\0A      \22eval(expr)\22\0A      \22Evaluate expression\22\0A      \22  Can be dangerous to use, as arbitrary code might be executed if the input\22\0A      \22  comes from an untrusted source\22\0A      \22  Also see: apply\22)\0A    (=\0A      \22(= . vals)\22\0A      \22Return boolean depending on if multiple values are all equal\22)\0A    (cond\0A      \22cond . (expr . body)\22\0A      \22Evaluates and returns first body with a true conditional expression\22\0A      \22  Also see: if, when, unless\22)\0A    (do\0A      \22do . body\22\0A      \22Evaluate each expression in body, returning last\22\0A      \22  Also see: do0\22)\0A    (typeof\0A      \22typeof(val)\22\0A      \22Get string stating the argument's type\22)\0A    (procprops\0A      \22procprops(prop)\22\0A      \22Get record of properties for given procedure\22\0A      \22  Includes name, args, and body for functions and macros\22\0A      \22  Only has name for builtin primitives and special forms\22)\0A    (Func\0A      \22Func args . body\22\0A      \22Func body\22\0A      \22Create anonymous function\22\0A      \22  If only body is given, create function with one argument labeled 'it'\22\0A      \22  Also see: def\22)\0A    (Macro\0A      \22Macro args . body\22\0A      \22Macro body\22\0A      \22Create anonymous macro, arguments are not evaluated before given to body\22\0A      \22  If only body is given, create macro with one argument labeled 'it'\22\0A      \22  Also see: defmacro\22)\0A    (def\0A      \22def var . val\22\0A      \22Define new variable with value\22\0A      \22  If value is not given, define a self-evaluating symbol\22\0A      \22\22\0A      \22def func(. args) . body\22\0A      \22Create new function with arguments list and body list\22)\0A    (undefine!\0A      \22undefine!(var)\22\0A      \22Remove variable from environment\22)\0A    (defined?\0A      \22defined?(var)\22\0A      \22Return boolean on if variable is defined in environment\22)\0A    (error\0A      \22error(func msg)\22\0A      \22Throw error, print message with function name given as symbol\22)\0A    (quit\0A      \22quit\22\0A      \22Exit REPL, equivalent to Ctrl-D\22)\0A    (Str\0A      \22Str(. vals)\22\0A      \22Convert all values into single string\22)\0A    (Sym\0A      \22Sym(. vals)\22\0A      \22Convert all values into single symbol\22)\0A    (strformat\0A      \22f\\\22str\\\22\22\0A      \22Perform interpolation on explicit string\22\0A      \22  Evaluate expression inside curly braces\22\0A      \22  Double curly braces are not evaluated, inserting a single one.\22\0A      \22  Equivalent to strformat(\\\22str\\\22\22)))\0A\0A; TODO print func args even if no docstr\0A(def (doc proc)\0A  \22Get documentation of procedure\22\0A  (unless (procedure? proc)\0A    (error 'doc \22documentation only exists for procedures\22))\0A  (def (lookup proc) ; TODO allow for non proc lookup by make doc macro\0A    (let (docstrs: (assoc procprops(proc)::name docstr-reg))\0A      (if docstrs\0A        (map println (cdr docstrs))\0A        (error 'doc procprops(proc)::name \22: no documentation found\22))))\0A  (if (or (function? proc) (macro? proc))\0A    (let (docstr: (car procprops(proc)::body))\0A      (unless (= procprops(proc)::name 'quit)\0A        (println procprops(proc)::name (or procprops(proc)::args \22()\22)))\0A      (if (string? docstr)\0A        (println docstr)\0A        (lookup proc)))\0A    (lookup proc))\0A  Void)\0A(def docstr-reg (append docstr-reg\0A  '((write\0A      \22write(file append? . vals)\22\0A      \22Write all values to file\22\0A      \22  File can be file path give as string or the symbols 'stdout or 'stderr\22\0A      \22  Append file if append? is true, otherwise override\22)\0A    (read\0A      \22read(. file)\22\0A      \22Return string read from file, or stdin if no file is provided\22)\0A    (parse\0A      \22parse(string)\22\0A      \22Parse Tisp object from given string\22)\0A    (load\0A      \22load(lib)\22\0A      \22Loads the library given as a string\22))))\0A\0A(def (newline . file) ; TODO space and tab functions, accept number of instead\0A  (if (or (nil? file) (nil? (cdr file)))\0A    (write (car (or file '(stdout))) file \22\\n\22)\0A    (error 'newline \22only zero or one file can be given\22)))\0A\0A(def (display . str)\0A  (map @(cond\0A          ((string? it) (print \22\\\22\22 it \22\\\22\22))\0A          ((void? it))\0A          ((true? it)   (print it)) ; don't quote True since it's self evaluating\0A          ; TODO if contains non symbol char print as explict sym syntax\0A          ((symbol? it) (print \22'\22 it))\0A          ((pair? it)   print(\22[\22)\0A                        display(car(it))\0A                        (map Func((x) print(\22 \22) display(x)) cdr(it))\0A                        print(\22]\22))\0A          ((record? it) print(\22{ \22)\0A                        (map Func((x) print(car(x) \22: \22) display(cdr(x)) print(\22 \22)) records(it))\0A                        print(\22}\22))\0A          (else         (print it)))\0A       str)\0A  Void)\0A(def (displayln . str) (apply display str) (newline))\0A(def (print . str)     (write 'stdout Nil . str))\0A(def (println . str)   (print . str) (newline))\0A(def printerr(. str)   (write 'stderr Nil . str))\0A(def printerrln(. str) (printerr . str) (newline))\0A;;; Constants\0A\0A(def pi (* 4 (arctan 1.)))\0A(def tau (* 2 pi))\0A(def e (exp 1.))\0A\0A;;; Functions\0A\0A(def (/= . x) (not (apply = x)))\0A(def (*^ x p) (* x (^ 10 p)))\0A(def (inc x) (+ x 1))\0A(def (dec x) (- x 1))\0A(def (truncate x) (* (floor (abs x)) (sgn x)))\0A(def (sqr x) (* x x))\0A(def (cube x) (* x (* x x)))\0A(def (root b p) (^ b (/ p)))\0A(def (sqrt x) (root x 2))\0A(def (cbrt x) (root x 3))\0A(def (logb b x) (/ (log x) (log b)))\0A(def (log10 x) (logb 10. x))\0A(def half(x) (/ x 2))\0A(def double(x) (* x 2))\0A\0A(def factorial(n)\0A  (recur loop (n: n  res: 1)\0A    (if (<= n 1)\0A      res\0A      (loop (- n 1) (* n res)))))\0A\0A(def gcd(x y)\0A  (if (= y 0)\0A    x\0A    gcd(y mod(x y))))\0A\0A; TODO mv to units tib\0A(def (deg x)\0A  \22Convert x radians to degrees\22\0A  (* x (/ 180. pi)))\0A(def (rad x)\0A  \22Convert x degrees to radians\22\0A  (* x (/ pi 180.)))\0A\0A;;; Trig\0A\0A(def (csc x)     (/ (sin x)))\0A(def (arccsc x)  (/ (arcsin x)))\0A(def (csch x)    (/ (sinh x)))\0A(def (arccsch x) (/ (arcsinh x)))\0A(def (sec x)     (/ (cos x)))\0A(def (arcsec x)  (/ (arccos x)))\0A(def (sech x)    (/ (cosh x)))\0A(def (arcsech x) (/ (arccosh x)))\0A(def (cot x)     (/ (tan x)))\0A(def (arccot x)  (/ (arctan x)))\0A(def (coth x)    (/ (tanh x)))\0A(def (arccoth x) (/ (arctanh x)))\0A\0A(def (abs x) (if (>= x 0) x (- x)))\0A(def (sgn x) (if (= x 0) x (/ (abs x) x)))\0A; TODO many args\0A(def (max a b) (if (> a b) a b))\0A(def (min a b) (if (< a b) a b))\0A(def clamp(n lower upper) min(max(n lower) upper))\0A\0A;;; Tests\0A\0A(def (positive? x) (> x 0))\0A(def (negative? x) (< x 0))\0A(def (zero? x) (= x 0))\0A(def (even? x) (= (mod x 2) 0))\0A(def (odd? x)  (= (mod x 2) 1))\0A\0A;;; List Functions\0A\0A(def (dot v w)\0A  (if v\0A    (+ (* (car v) (car w))\0A       (dot (cdr v) (cdr w)))\0A    0))\0A(def (norm v) (sqrt (dot v v)))\0A\0A(def (mean lst)\0A  (recur loop (lst: lst len: 0 avg: 0)\0A    (if pair?(lst)\0A      loop(cdr(lst) inc(len) (+ avg car(lst)))\0A      (/ avg len))))\0A\0A(def range(start end)\0A  (recur f (n: end res: Nil)\0A    (if (>= n start)\0A      (f dec(n) (cons n res))\0A      res)))\0A(def docstr-reg (append docstr-reg\0A  '((cd!\0A      \22cd!(dir)\22\0A      \22Change directory\22)\0A    (pwd\0A      \22pwd()\22\0A      \22String of current working directory\22)\0A    (exit!\0A      \22exit!(status)\22\0A      \22Exit program with status code of given integer\22\0A      \22  Zero for success, non-zero for failure\22)\0A    (now\0A      \22now()\22\0A      \22Number of seconds since 1970 (unix time stamp)\22)\0A    (time\0A      \22time(expr)\22\0A      \22Time in milliseconds it took to run expression\22))))\0A\0A; TODO % stack of prev res, %% = fst %\0A(def (repl)\0A  \22Read, evaluate, print, loop\0A  To exit enter quit or press CTRL-D\22\0A  (print \22> \22)\0A  (let (expr: (parse (read)))\0A    (unless (= expr 'quit)\0A      ; TODO push ans to stack of outputs\0A      (let (ans: (eval expr)) ; env{ :% %%: fst(%) }\0A        (unless (void? ans)\0A          (displayln ans))\0A        (repl)))))\0A\0A(def (repl-simple)\0A  \22Simple REPL interface, only dependencies are builtin functions, no tisp code\0A  To exit enter quit or press CTRL-D\0A  See repl for more advanced REPL with prettier printing\22\0A  (write 'stdout Nil \22> \22)\0A  ((Func (expr)\0A     (cond\0A       ((= expr 'quit))\0A       (else\0A         write('stdout Nil (eval expr) \22\\n\22)\0A         (repl-simple))))\0A  (parse (read))))\0A)\00", align 16
@.str = private unnamed_addr constant [6 x i8] c"parse\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(repl)\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"tisp: expected command after -c\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"tisp v%s (c) 2017-2025 Ed van Bruggen\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"0.1\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"usage: tisp [-hrv] [-c COMMAND] [-] [FILE ...]\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Void\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Nil\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Int\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Ratio\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Str\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"Sym\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Prim\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Form\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Func\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Macro\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Pair\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"Rec\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Expr\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Rational\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"Num\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"_!?@#$%&~*-\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"_+-*/\\|=^<>.:\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c" \09\0A\0D\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"; malloc\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"; calloc\00", align 1
@.str.32 = private unnamed_addr constant [83 x i8] c"; tisp: error: expected symbol for argument of function definition, recieved '%s'\0A\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"; tisp: error: division by zero\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"; tisp: error: Rec: missing key symbol or string\0A\00", align 1
@.str.36 = private unnamed_addr constant [61 x i8] c"; tisp: error: incorrect ratio format, no denominator found\0A\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"; tisp: error: reached end before closing %c\0A\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"; tisp: error: did not find closing '%c'\0A\00", align 1
@tisp_read_sexpr.prefix = internal global [12 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0)], align 16
@.str.40 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"quasiquote\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c",@\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"unquote-splice\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"unquote\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"f\22\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"strformat\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.52 = private unnamed_addr constant [53 x i8] c"; tisp: error: could not read given input '%c' (%d)\0A\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"recmerge\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"; tisp: error: invalid UFCS\0A\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@.str.57 = private unnamed_addr constant [56 x i8] c"; tisp: error: %s: expected %d argument%s, received %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"anon\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.62 = private unnamed_addr constant [49 x i8] c"; tisp: error: record: expected %s, received %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.64 = private unnamed_addr constant [54 x i8] c"; tisp: error: could not find element '%s' in record\0A\00", align 1
@.str.65 = private unnamed_addr constant [59 x i8] c"; tisp: error: attempt to evaluate non procedural type %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [43 x i8] c"; tisp: error: could not find symbol '%s'\0A\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"%.15g\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"#<%s%s%s>\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"#<primitive:%s>\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"#<form:%s>\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c" %s: \00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c" . \00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"; tisp: could not print value type %s\0A\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"car\00", align 1
@.str.85 = private unnamed_addr constant [46 x i8] c"; tisp: error: car: expected %s, received %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"cdr\00", align 1
@.str.87 = private unnamed_addr constant [46 x i8] c"; tisp: error: cdr: expected %s, received %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"cons\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"typeof\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"procprops\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.95 = private unnamed_addr constant [56 x i8] c"; tisp: error: procprops: expected Proc, received '%s'\0A\00", align 1
@.str.96 = private unnamed_addr constant [65 x i8] c"; tisp: error: %s: expected at least %d argument%s, received %d\0A\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"it\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.99 = private unnamed_addr constant [48 x i8] c"; tisp: error: error: expected %s, received %s\0A\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"; tisp: error: %s: \00", align 1
@.str.101 = private unnamed_addr constant [51 x i8] c"; tisp: error: recmerge: expected %s, received %s\0A\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"records\00", align 1
@.str.103 = private unnamed_addr constant [50 x i8] c"; tisp: error: records: expected %s, received %s\0A\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.105 = private unnamed_addr constant [70 x i8] c"; tisp: error: def: expected symbol for function name, received '%s'\0A\00", align 1
@.str.106 = private unnamed_addr constant [62 x i8] c"; tisp: error: def: incorrect format, no variable name found\0A\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"undefine!\00", align 1
@.str.108 = private unnamed_addr constant [52 x i8] c"; tisp: error: undefine!: expected %s, received %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [64 x i8] c"; tisp: error: undefine!: could not find symbol %s to undefine\0A\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"defined?\00", align 1
@.str.111 = private unnamed_addr constant [51 x i8] c"; tisp: error: defined?: expected %s, received %s\0A\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"cond\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.115 = private unnamed_addr constant [54 x i8] c"; tisp: error: could not convert type %s into string\0A\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"strlen\00", align 1
@.str.117 = private unnamed_addr constant [49 x i8] c"; tisp: error: strlen: expected %s, received %s\0A\00", align 1
@.str.118 = private unnamed_addr constant [52 x i8] c"; tisp: error: strformat: expected %s, received %s\0A\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"; realloc\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"den == 1\00", align 1
@.str.121 = private unnamed_addr constant [94 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/tisp/tib/math.c\00", align 1
@__PRETTY_FUNCTION__.create_int = private unnamed_addr constant [31 x i8] c"Val create_int(double, double)\00", align 1
@__PRETTY_FUNCTION__.create_dec = private unnamed_addr constant [31 x i8] c"Val create_dec(double, double)\00", align 1
@.str.122 = private unnamed_addr constant [46 x i8] c"; tisp: error: Int: expected %s, received %s\0A\00", align 1
@.str.123 = private unnamed_addr constant [46 x i8] c"; tisp: error: Dec: expected %s, received %s\0A\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.125 = private unnamed_addr constant [48 x i8] c"; tisp: error: round: expected %s, received %s\0A\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.127 = private unnamed_addr constant [48 x i8] c"; tisp: error: floor: expected %s, received %s\0A\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str.129 = private unnamed_addr constant [47 x i8] c"; tisp: error: ceil: expected %s, received %s\0A\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.131 = private unnamed_addr constant [44 x i8] c"; tisp: error: +: expected %s, received %s\0A\00", align 1
@.str.132 = private unnamed_addr constant [58 x i8] c"; tisp: error: -: expected 1 or 2 arguments, recieved %d\0A\00", align 1
@.str.133 = private unnamed_addr constant [44 x i8] c"; tisp: error: -: expected %s, received %s\0A\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.135 = private unnamed_addr constant [44 x i8] c"; tisp: error: *: expected %s, received %s\0A\00", align 1
@.str.136 = private unnamed_addr constant [58 x i8] c"; tisp: error: /: expected 1 or 2 arguments, recieved %d\0A\00", align 1
@.str.137 = private unnamed_addr constant [44 x i8] c"; tisp: error: /: expected %s, received %s\0A\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.139 = private unnamed_addr constant [46 x i8] c"; tisp: error: mod: expected %s, received %s\0A\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.141 = private unnamed_addr constant [46 x i8] c"; tisp: error: pow: expected %s, received %s\0A\00", align 1
@.str.142 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.143 = private unnamed_addr constant [44 x i8] c"; tisp: error: <: expected %s, received %s\0A\00", align 1
@.str.144 = private unnamed_addr constant [44 x i8] c"; tisp: error: >: expected %s, received %s\0A\00", align 1
@.str.145 = private unnamed_addr constant [45 x i8] c"; tisp: error: <=: expected %s, received %s\0A\00", align 1
@.str.146 = private unnamed_addr constant [45 x i8] c"; tisp: error: >=: expected %s, received %s\0A\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.148 = private unnamed_addr constant [46 x i8] c"; tisp: error: sin: expected %s, received %s\0A\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.150 = private unnamed_addr constant [46 x i8] c"; tisp: error: cos: expected %s, received %s\0A\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.152 = private unnamed_addr constant [46 x i8] c"; tisp: error: tan: expected %s, received %s\0A\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@.str.154 = private unnamed_addr constant [47 x i8] c"; tisp: error: sinh: expected %s, received %s\0A\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@.str.156 = private unnamed_addr constant [47 x i8] c"; tisp: error: cosh: expected %s, received %s\0A\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@.str.158 = private unnamed_addr constant [47 x i8] c"; tisp: error: tanh: expected %s, received %s\0A\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@.str.160 = private unnamed_addr constant [47 x i8] c"; tisp: error: asin: expected %s, received %s\0A\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str.162 = private unnamed_addr constant [47 x i8] c"; tisp: error: acos: expected %s, received %s\0A\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.164 = private unnamed_addr constant [47 x i8] c"; tisp: error: atan: expected %s, received %s\0A\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"asinh\00", align 1
@.str.166 = private unnamed_addr constant [48 x i8] c"; tisp: error: asinh: expected %s, received %s\0A\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"acosh\00", align 1
@.str.168 = private unnamed_addr constant [48 x i8] c"; tisp: error: acosh: expected %s, received %s\0A\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"atanh\00", align 1
@.str.170 = private unnamed_addr constant [48 x i8] c"; tisp: error: atanh: expected %s, received %s\0A\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.172 = private unnamed_addr constant [46 x i8] c"; tisp: error: exp: expected %s, received %s\0A\00", align 1
@.str.173 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.174 = private unnamed_addr constant [46 x i8] c"; tisp: error: log: expected %s, received %s\0A\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"numerator\00", align 1
@.str.176 = private unnamed_addr constant [52 x i8] c"; tisp: error: numerator: expected %s, received %s\0A\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"denominator\00", align 1
@.str.178 = private unnamed_addr constant [54 x i8] c"; tisp: error: denominator: expected %s, received %s\0A\00", align 1
@.str.179 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.180 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.184 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"arcsin\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"arccos\00", align 1
@.str.187 = private unnamed_addr constant [7 x i8] c"arctan\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"arcsinh\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"arccosh\00", align 1
@.str.190 = private unnamed_addr constant [8 x i8] c"arctanh\00", align 1
@.str.191 = private unnamed_addr constant [41 x i8] c"; tisp: error: could not find file '%s'\0A\00", align 1
@.str.192 = private unnamed_addr constant [41 x i8] c"; tisp: error: could not read file '%s'\0A\00", align 1
@.str.193 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.195 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.197 = private unnamed_addr constant [65 x i8] c"; tisp: error: write: expected file name as string, received %s\0A\00", align 1
@.str.198 = private unnamed_addr constant [48 x i8] c"; tisp: error: write: could not load file '%s'\0A\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.200 = private unnamed_addr constant [77 x i8] c"; tisp: error: write: expected file name as string, or symbol stdout/stderr\0A\00", align 1
@.str.201 = private unnamed_addr constant [72 x i8] c"; tisp: error: %s: expected at no more than %d argument%s, received %d\0A\00", align 1
@.str.202 = private unnamed_addr constant [47 x i8] c"; tisp: error: read: expected %s, received %s\0A\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.204 = private unnamed_addr constant [48 x i8] c"; tisp: error: parse: expected %s, received %s\0A\00", align 1
@.str.205 = private unnamed_addr constant [26 x i8] c"/usr/local/lib/tisp/pkgs/\00", align 1
@.str.206 = private unnamed_addr constant [20 x i8] c"/usr/lib/tisp/pkgs/\00", align 1
@.str.207 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@__const.prim_load.paths = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.207, i32 0, i32 0), i8* null], align 16
@.str.208 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.209 = private unnamed_addr constant [47 x i8] c"; tisp: error: load: expected %s, received %s\0A\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c".tsp\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"libtib\00", align 1
@.str.212 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@.str.213 = private unnamed_addr constant [48 x i8] c"; tisp: error: load: could not load '%s':\0A; %s\0A\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"tib_env_\00", align 1
@.str.215 = private unnamed_addr constant [47 x i8] c"; tisp: error: load: could not run '%s':\0A; %s\0A\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c"cd!\00", align 1
@.str.217 = private unnamed_addr constant [60 x i8] c"; tisp: error: cd!: expected string or symbol, received %s\0A\00", align 1
@.str.218 = private unnamed_addr constant [12 x i8] c"; error: cd\00", align 1
@.str.219 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@.str.220 = private unnamed_addr constant [53 x i8] c"; tisp: error: pwd: could not get current directory\0A\00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c"exit!\00", align 1
@.str.222 = private unnamed_addr constant [48 x i8] c"; tisp: error: exit!: expected %s, received %s\0A\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"time\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) #0 {
entry:
  %__bsx.addr = alloca i16, align 2
  store i16 %__bsx, i16* %__bsx.addr, align 2
  %0 = load i16, i16* %__bsx.addr, align 2
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %1 = load i16, i16* %__bsx.addr, align 2
  %conv1 = zext i16 %1 to i32
  %and2 = and i32 %conv1, 255
  %shl = shl i32 %and2, 8
  %or = or i32 %and, %shl
  %conv3 = trunc i32 %or to i16
  ret i16 %conv3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bswap_32(i32 noundef %__bsx) #0 {
entry:
  %__bsx.addr = alloca i32, align 4
  store i32 %__bsx, i32* %__bsx.addr, align 4
  %0 = load i32, i32* %__bsx.addr, align 4
  %and = and i32 %0, -16777216
  %shr = lshr i32 %and, 24
  %1 = load i32, i32* %__bsx.addr, align 4
  %and1 = and i32 %1, 16711680
  %shr2 = lshr i32 %and1, 8
  %or = or i32 %shr, %shr2
  %2 = load i32, i32* %__bsx.addr, align 4
  %and3 = and i32 %2, 65280
  %shl = shl i32 %and3, 8
  %or4 = or i32 %or, %shl
  %3 = load i32, i32* %__bsx.addr, align 4
  %and5 = and i32 %3, 255
  %shl6 = shl i32 %and5, 24
  %or7 = or i32 %or4, %shl6
  ret i32 %or7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__bswap_64(i64 noundef %__bsx) #0 {
entry:
  %__bsx.addr = alloca i64, align 8
  store i64 %__bsx, i64* %__bsx.addr, align 8
  %0 = load i64, i64* %__bsx.addr, align 8
  %and = and i64 %0, -72057594037927936
  %shr = lshr i64 %and, 56
  %1 = load i64, i64* %__bsx.addr, align 8
  %and1 = and i64 %1, 71776119061217280
  %shr2 = lshr i64 %and1, 40
  %or = or i64 %shr, %shr2
  %2 = load i64, i64* %__bsx.addr, align 8
  %and3 = and i64 %2, 280375465082880
  %shr4 = lshr i64 %and3, 24
  %or5 = or i64 %or, %shr4
  %3 = load i64, i64* %__bsx.addr, align 8
  %and6 = and i64 %3, 1095216660480
  %shr7 = lshr i64 %and6, 8
  %or8 = or i64 %or5, %shr7
  %4 = load i64, i64* %__bsx.addr, align 8
  %and9 = and i64 %4, 4278190080
  %shl = shl i64 %and9, 8
  %or10 = or i64 %or8, %shl
  %5 = load i64, i64* %__bsx.addr, align 8
  %and11 = and i64 %5, 16711680
  %shl12 = shl i64 %and11, 24
  %or13 = or i64 %or10, %shl12
  %6 = load i64, i64* %__bsx.addr, align 8
  %and14 = and i64 %6, 65280
  %shl15 = shl i64 %and14, 40
  %or16 = or i64 %or13, %shl15
  %7 = load i64, i64* %__bsx.addr, align 8
  %and17 = and i64 %7, 255
  %shl18 = shl i64 %and17, 56
  %or19 = or i64 %or16, %shl18
  ret i64 %or19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @__uint16_identity(i16 noundef zeroext %__x) #0 {
entry:
  %__x.addr = alloca i16, align 2
  store i16 %__x, i16* %__x.addr, align 2
  %0 = load i16, i16* %__x.addr, align 2
  ret i16 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uint32_identity(i32 noundef %__x) #0 {
entry:
  %__x.addr = alloca i32, align 4
  store i32 %__x, i32* %__x.addr, align 4
  %0 = load i32, i32* %__x.addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__uint64_identity(i64 noundef %__x) #0 {
entry:
  %__x.addr = alloca i64, align 8
  store i64 %__x, i64* %__x.addr, align 8
  %0 = load i64, i64* %__x.addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @read_parse_eval(%struct.Tsp* noundef %st, %struct.Val* noundef %file) #0 {
entry:
  %st.addr = alloca %struct.Tsp*, align 8
  %file.addr = alloca %struct.Val*, align 8
  %val = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Val* %file, %struct.Val** %file.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %1 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call = call %struct.Val* @mk_sym(%struct.Tsp* noundef %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call1 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %3 = load %struct.Val*, %struct.Val** %file.addr, align 8
  %call2 = call %struct.Val* @mk_pair(%struct.Val* noundef %call1, %struct.Val* noundef %3)
  %call3 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %0, i32 noundef 2, %struct.Val* noundef %call, %struct.Val* noundef %call2)
  store %struct.Val* %call3, %struct.Val** %val, align 8
  %4 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %5 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %env = getelementptr inbounds %struct.Tsp, %struct.Tsp* %5, i32 0, i32 5
  %6 = load %struct.Rec*, %struct.Rec** %env, align 8
  %7 = load %struct.Val*, %struct.Val** %val, align 8
  %call4 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %4, %struct.Rec* noundef %6, %struct.Val* noundef %7)
  store %struct.Val* %call4, %struct.Val** %val, align 8
  %8 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %9 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %env5 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %9, i32 0, i32 5
  %10 = load %struct.Rec*, %struct.Rec** %env5, align 8
  %11 = load %struct.Val*, %struct.Val** %val, align 8
  %call6 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %8, %struct.Rec* noundef %10, %struct.Val* noundef %11)
  ret %struct.Val* %call6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @mk_list(%struct.Tsp* noundef %st, i32 noundef %n, ...) #0 {
entry:
  %st.addr = alloca %struct.Tsp*, align 8
  %n.addr = alloca i32, align 4
  %lst = alloca %struct.Val*, align 8
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  %cur = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %0, align 16
  %1 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %2 = bitcast i8* %1 to %struct.Val**
  %3 = add i32 %gp_offset, 8
  store i32 %3, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %4 = bitcast i8* %overflow_arg_area to %struct.Val**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct.Val** [ %2, %vaarg.in_reg ], [ %4, %vaarg.in_mem ]
  %5 = load %struct.Val*, %struct.Val** %vaarg.addr, align 8
  %6 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %6, i32 0, i32 3
  %7 = load %struct.Val*, %struct.Val** %nil, align 8
  %call = call %struct.Val* @mk_pair(%struct.Val* noundef %5, %struct.Val* noundef %7)
  store %struct.Val* %call, %struct.Val** %lst, align 8
  %8 = load %struct.Val*, %struct.Val** %lst, align 8
  store %struct.Val* %8, %struct.Val** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %vaarg.end
  %9 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i64 0, i64 0
  %gp_offset_p4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset5 = load i32, i32* %gp_offset_p4, align 16
  %fits_in_gp6 = icmp ule i32 %gp_offset5, 40
  br i1 %fits_in_gp6, label %vaarg.in_reg7, label %vaarg.in_mem9

vaarg.in_reg7:                                    ; preds = %for.body
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area8 = load i8*, i8** %10, align 16
  %11 = getelementptr i8, i8* %reg_save_area8, i32 %gp_offset5
  %12 = bitcast i8* %11 to %struct.Val**
  %13 = add i32 %gp_offset5, 8
  store i32 %13, i32* %gp_offset_p4, align 16
  br label %vaarg.end13

vaarg.in_mem9:                                    ; preds = %for.body
  %overflow_arg_area_p10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area11 = load i8*, i8** %overflow_arg_area_p10, align 8
  %14 = bitcast i8* %overflow_arg_area11 to %struct.Val**
  %overflow_arg_area.next12 = getelementptr i8, i8* %overflow_arg_area11, i32 8
  store i8* %overflow_arg_area.next12, i8** %overflow_arg_area_p10, align 8
  br label %vaarg.end13

vaarg.end13:                                      ; preds = %vaarg.in_mem9, %vaarg.in_reg7
  %vaarg.addr14 = phi %struct.Val** [ %12, %vaarg.in_reg7 ], [ %14, %vaarg.in_mem9 ]
  %15 = load %struct.Val*, %struct.Val** %vaarg.addr14, align 8
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil15 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %16, i32 0, i32 3
  %17 = load %struct.Val*, %struct.Val** %nil15, align 8
  %call16 = call %struct.Val* @mk_pair(%struct.Val* noundef %15, %struct.Val* noundef %17)
  %18 = load %struct.Val*, %struct.Val** %cur, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 1
  store %struct.Val* %call16, %struct.Val** %cdr, align 8
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end13
  %19 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %n.addr, align 4
  %20 = load %struct.Val*, %struct.Val** %cur, align 8
  %v17 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 1
  %p18 = bitcast %union.anon* %v17 to %struct.anon.2*
  %cdr19 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p18, i32 0, i32 1
  %21 = load %struct.Val*, %struct.Val** %cdr19, align 8
  store %struct.Val* %21, %struct.Val** %cur, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %arraydecay20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i64 0, i64 0
  %arraydecay2021 = bitcast %struct.__va_list_tag* %arraydecay20 to i8*
  call void @llvm.va_end(i8* %arraydecay2021)
  %22 = load %struct.Val*, %struct.Val** %lst, align 8
  ret %struct.Val* %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @mk_sym(%struct.Tsp* noundef %st, i8* noundef %s) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %s.addr = alloca i8*, align 8
  %ret = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %syms = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 7
  %1 = load %struct.Rec*, %struct.Rec** %syms, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %call = call %struct.Val* @rec_get(%struct.Rec* noundef %1, i8* noundef %2)
  store %struct.Val* %call, %struct.Val** %ret, align 8
  %tobool = icmp ne %struct.Val* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %3, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.Val* @mk_val(i32 noundef 64)
  store %struct.Val* %call1, %struct.Val** %ret, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load %struct.Val*, %struct.Val** %ret, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %s2 = bitcast %union.anon* %v to i8**
  store i8* %4, i8** %s2, align 8
  %6 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %syms3 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %6, i32 0, i32 7
  %7 = load %struct.Rec*, %struct.Rec** %syms3, align 8
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load %struct.Val*, %struct.Val** %ret, align 8
  call void @rec_add(%struct.Rec* noundef %7, i8* noundef %8, %struct.Val* noundef %9)
  %10 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %10, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @mk_pair(%struct.Val* noundef %a, %struct.Val* noundef %b) #0 {
entry:
  %a.addr = alloca %struct.Val*, align 8
  %b.addr = alloca %struct.Val*, align 8
  %ret = alloca %struct.Val*, align 8
  store %struct.Val* %a, %struct.Val** %a.addr, align 8
  store %struct.Val* %b, %struct.Val** %b.addr, align 8
  %call = call %struct.Val* @mk_val(i32 noundef 2048)
  store %struct.Val* %call, %struct.Val** %ret, align 8
  %0 = load %struct.Val*, %struct.Val** %a.addr, align 8
  %1 = load %struct.Val*, %struct.Val** %ret, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %1, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  store %struct.Val* %0, %struct.Val** %car, align 8
  %2 = load %struct.Val*, %struct.Val** %b.addr, align 8
  %3 = load %struct.Val*, %struct.Val** %ret, align 8
  %v1 = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p2 = bitcast %union.anon* %v1 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p2, i32 0, i32 1
  store %struct.Val* %2, %struct.Val** %cdr, align 8
  %4 = load %struct.Val*, %struct.Val** %ret, align 8
  ret %struct.Val* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @tisp_eval(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %v) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %v.addr = alloca %struct.Val*, align 8
  %f = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %v, %struct.Val** %v.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %0, i32 0, i32 0
  %1 = load i32, i32* %t, align 8
  switch i32 %1, label %sw.default [
    i32 64, label %sw.bb
    i32 2048, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %3 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v1 = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %s = bitcast %union.anon* %v1 to i8**
  %4 = load i8*, i8** %s, align 8
  %call = call %struct.Val* @rec_get(%struct.Rec* noundef %2, i8* noundef %4)
  store %struct.Val* %call, %struct.Val** %f, align 8
  %tobool = icmp ne %struct.Val* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v2 = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 1
  %s3 = bitcast %union.anon* %v2 to i8**
  %7 = load i8*, i8** %s3, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i64 0, i64 0), i8* noundef %7)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb
  %8 = load %struct.Val*, %struct.Val** %f, align 8
  store %struct.Val* %8, %struct.Val** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  %9 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %10 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %11 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v6 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %p = bitcast %union.anon* %v6 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %12 = load %struct.Val*, %struct.Val** %car, align 8
  %call7 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %9, %struct.Rec* noundef %10, %struct.Val* noundef %12)
  store %struct.Val* %call7, %struct.Val** %f, align 8
  %tobool8 = icmp ne %struct.Val* %call7, null
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %sw.bb5
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end10:                                         ; preds = %sw.bb5
  %13 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %14 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %15 = load %struct.Val*, %struct.Val** %f, align 8
  %16 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v11 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %p12 = bitcast %union.anon* %v11 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p12, i32 0, i32 1
  %17 = load %struct.Val*, %struct.Val** %cdr, align 8
  %call13 = call %struct.Val* @eval_proc(%struct.Tsp* noundef %13, %struct.Rec* noundef %14, %struct.Val* noundef %15, %struct.Val* noundef %17)
  store %struct.Val* %call13, %struct.Val** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  %18 = load %struct.Val*, %struct.Val** %v.addr, align 8
  store %struct.Val* %18, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %if.end10, %if.then9, %if.end, %do.body
  %19 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %v = alloca %struct.Val*, align 8
  %st = alloca %struct.Tsp*, align 8
  %sigint = alloca %struct.sigaction, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %i, align 4
  store %struct.Val* null, %struct.Val** %v, align 8
  %call = call %struct.Tsp* @tisp_env_init(i64 noundef 1024)
  store %struct.Tsp* %call, %struct.Tsp** %st, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  call void @tib_env_core(%struct.Tsp* noundef %0)
  %1 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  call void @tib_env_math(%struct.Tsp* noundef %1)
  %2 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  call void @tib_env_io(%struct.Tsp* noundef %2)
  %3 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  call void @tib_env_os(%struct.Tsp* noundef %3)
  %4 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  call void @tib_env_string(%struct.Tsp* noundef %4)
  %5 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  call void @tisp_env_lib(%struct.Tsp* noundef %5, i8* noundef getelementptr inbounds ([21449 x i8], [21449 x i8]* @tibs, i64 0, i64 0))
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sigint, i32 0, i32 0
  %sa_handler = bitcast %union.anon.3* %__sigaction_handler to void (i32)**
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %sa_handler, align 8
  %call1 = call i32 @sigaction(i32 noundef 2, %struct.sigaction* noundef %sigint, %struct.sigaction* noundef null) #11
  %6 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %file, align 8
  br label %readstr

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %argc.addr, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8**, i8*** %argv.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %13 to i32
  %cmp4 = icmp eq i32 %conv, 45
  br i1 %cmp4, label %if.then6, label %if.else67

if.then6:                                         ; preds = %for.body
  %14 = load i8**, i8*** %argv.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i8*, i8** %14, i64 %idxprom7
  %16 = load i8*, i8** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %17 to i32
  %cmp11 = icmp eq i32 %conv10, 99
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then6
  %18 = load i8**, i8*** %argv.addr, align 8
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  %idxprom14 = sext i32 %inc to i64
  %arrayidx15 = getelementptr inbounds i8*, i8** %18, i64 %idxprom14
  %20 = load i8*, i8** %arrayidx15, align 8
  %21 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %file16 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %21, i32 0, i32 0
  store i8* %20, i8** %file16, align 8
  %tobool = icmp ne i8* %20, null
  br i1 %tobool, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.then13
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call18 = call i32 @fputs(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %22)
  call void @exit(i32 noundef 2) #12
  unreachable

if.end19:                                         ; preds = %if.then13
  br label %readstr

readstr:                                          ; preds = %if.end19, %if.then
  %23 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %call20 = call %struct.Val* @tisp_read(%struct.Tsp* noundef %23)
  store %struct.Val* %call20, %struct.Val** %v, align 8
  %tobool21 = icmp ne %struct.Val* %call20, null
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %readstr
  %24 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %25 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %env = getelementptr inbounds %struct.Tsp, %struct.Tsp* %25, i32 0, i32 5
  %26 = load %struct.Rec*, %struct.Rec** %env, align 8
  %27 = load %struct.Val*, %struct.Val** %v, align 8
  %call23 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %24, %struct.Rec* noundef %26, %struct.Val* noundef %27)
  store %struct.Val* %call23, %struct.Val** %v, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %readstr
  br label %if.end66

if.else:                                          ; preds = %if.then6
  %28 = load i8**, i8*** %argv.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds i8*, i8** %28, i64 %idxprom25
  %30 = load i8*, i8** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %31 to i32
  %cmp29 = icmp eq i32 %conv28, 114
  br i1 %cmp29, label %if.then31, label %if.else39

if.then31:                                        ; preds = %if.else
  %32 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %file32 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %file32, align 8
  %33 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %call33 = call %struct.Val* @tisp_read(%struct.Tsp* noundef %33)
  store %struct.Val* %call33, %struct.Val** %v, align 8
  %tobool34 = icmp ne %struct.Val* %call33, null
  br i1 %tobool34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.then31
  %34 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %35 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %env36 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %35, i32 0, i32 5
  %36 = load %struct.Rec*, %struct.Rec** %env36, align 8
  %37 = load %struct.Val*, %struct.Val** %v, align 8
  %call37 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %34, %struct.Rec* noundef %36, %struct.Val* noundef %37)
  store %struct.Val* %call37, %struct.Val** %v, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then31
  br label %if.end65

if.else39:                                        ; preds = %if.else
  %38 = load i8**, i8*** %argv.addr, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %39 to i64
  %arrayidx41 = getelementptr inbounds i8*, i8** %38, i64 %idxprom40
  %40 = load i8*, i8** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %41 to i32
  %cmp44 = icmp eq i32 %conv43, 118
  br i1 %cmp44, label %if.then46, label %if.else48

if.then46:                                        ; preds = %if.else39
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 0) #12
  unreachable

if.else48:                                        ; preds = %if.else39
  %43 = load i8**, i8*** %argv.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %44 to i64
  %arrayidx50 = getelementptr inbounds i8*, i8** %43, i64 %idxprom49
  %45 = load i8*, i8** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx51, align 1
  %tobool52 = icmp ne i8 %46, 0
  br i1 %tobool52, label %if.then53, label %if.else61

if.then53:                                        ; preds = %if.else48
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call54 = call i32 @fputs(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* noundef %47)
  %48 = load i8**, i8*** %argv.addr, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %49 to i64
  %arrayidx56 = getelementptr inbounds i8*, i8** %48, i64 %idxprom55
  %50 = load i8*, i8** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %51 to i32
  %cmp59 = icmp eq i32 %conv58, 104
  %52 = zext i1 %cmp59 to i64
  %cond = select i1 %cmp59, i32 0, i32 1
  call void @exit(i32 noundef %cond) #12
  unreachable

if.else61:                                        ; preds = %if.else48
  %53 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %54 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %54, i32 0, i32 3
  %55 = load %struct.Val*, %struct.Val** %nil, align 8
  %call62 = call %struct.Val* @read_parse_eval(%struct.Tsp* noundef %53, %struct.Val* noundef %55)
  store %struct.Val* %call62, %struct.Val** %v, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.else61
  br label %if.end64

if.end64:                                         ; preds = %if.end63
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end38
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end24
  br label %if.end74

if.else67:                                        ; preds = %for.body
  %56 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %57 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %58 = load i8**, i8*** %argv.addr, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %59 to i64
  %arrayidx69 = getelementptr inbounds i8*, i8** %58, i64 %idxprom68
  %60 = load i8*, i8** %arrayidx69, align 8
  %call70 = call %struct.Val* @mk_str(%struct.Tsp* noundef %57, i8* noundef %60)
  %61 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %nil71 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %61, i32 0, i32 3
  %62 = load %struct.Val*, %struct.Val** %nil71, align 8
  %call72 = call %struct.Val* @mk_pair(%struct.Val* noundef %call70, %struct.Val* noundef %62)
  %call73 = call %struct.Val* @read_parse_eval(%struct.Tsp* noundef %56, %struct.Val* noundef %call72)
  store %struct.Val* %call73, %struct.Val** %v, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.else67, %if.end66
  %63 = load %struct.Val*, %struct.Val** %v, align 8
  %tobool75 = icmp ne %struct.Val* %63, null
  br i1 %tobool75, label %land.lhs.true, label %if.end79

land.lhs.true:                                    ; preds = %if.end74
  %64 = load %struct.Val*, %struct.Val** %v, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %64, i32 0, i32 0
  %65 = load i32, i32* %t, align 8
  %cmp76 = icmp ne i32 %65, 1
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %land.lhs.true
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %67 = load %struct.Val*, %struct.Val** %v, align 8
  call void @tisp_print(%struct._IO_FILE* noundef %66, %struct.Val* noundef %67)
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %land.lhs.true, %if.end74
  br label %for.inc

for.inc:                                          ; preds = %if.end79
  %68 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %68, 1
  store i32 %inc80, i32* %i, align 4
  store %struct.Val* null, %struct.Val** %v, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call81 = call i32 @puts(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Tsp* @tisp_env_init(i64 noundef %cap) #0 {
entry:
  %cap.addr = alloca i64, align 8
  %st = alloca %struct.Tsp*, align 8
  store i64 %cap, i64* %cap.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 80) #11
  %0 = bitcast i8* %call to %struct.Tsp*
  store %struct.Tsp* %0, %struct.Tsp** %st, align 8
  %tobool = icmp ne %struct.Tsp* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @perror(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #13
  call void @exit(i32 noundef 1) #12
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %1, i32 0, i32 0
  store i8* null, i8** %file, align 8
  %2 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %filec = getelementptr inbounds %struct.Tsp, %struct.Tsp* %2, i32 0, i32 1
  store i64 0, i64* %filec, align 8
  %3 = load i64, i64* %cap.addr, align 8
  %call1 = call %struct.Rec* @rec_new(i64 noundef %3, %struct.Rec* noundef null)
  %4 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %strs = getelementptr inbounds %struct.Tsp, %struct.Tsp* %4, i32 0, i32 6
  store %struct.Rec* %call1, %struct.Rec** %strs, align 8
  %5 = load i64, i64* %cap.addr, align 8
  %call2 = call %struct.Rec* @rec_new(i64 noundef %5, %struct.Rec* noundef null)
  %6 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %syms = getelementptr inbounds %struct.Tsp, %struct.Tsp* %6, i32 0, i32 7
  store %struct.Rec* %call2, %struct.Rec** %syms, align 8
  %call3 = call %struct.Val* @mk_val(i32 noundef 2)
  %7 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %7, i32 0, i32 3
  store %struct.Val* %call3, %struct.Val** %nil, align 8
  %call4 = call %struct.Val* @mk_val(i32 noundef 1)
  %8 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %none = getelementptr inbounds %struct.Tsp, %struct.Tsp* %8, i32 0, i32 2
  store %struct.Val* %call4, %struct.Val** %none, align 8
  %call5 = call %struct.Val* @mk_val(i32 noundef 64)
  %9 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %t = getelementptr inbounds %struct.Tsp, %struct.Tsp* %9, i32 0, i32 4
  store %struct.Val* %call5, %struct.Val** %t, align 8
  %10 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %t6 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %10, i32 0, i32 4
  %11 = load %struct.Val*, %struct.Val** %t6, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %s = bitcast %union.anon* %v to i8**
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i64 0, i64 0), i8** %s, align 8
  %12 = load i64, i64* %cap.addr, align 8
  %call7 = call %struct.Rec* @rec_new(i64 noundef %12, %struct.Rec* noundef null)
  %13 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %env = getelementptr inbounds %struct.Tsp, %struct.Tsp* %13, i32 0, i32 5
  store %struct.Rec* %call7, %struct.Rec** %env, align 8
  %14 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %15 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %t8 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %15, i32 0, i32 4
  %16 = load %struct.Val*, %struct.Val** %t8, align 8
  call void @tisp_env_add(%struct.Tsp* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i64 0, i64 0), %struct.Val* noundef %16)
  %17 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %18 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %nil9 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %18, i32 0, i32 3
  %19 = load %struct.Val*, %struct.Val** %nil9, align 8
  call void @tisp_env_add(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.Val* noundef %19)
  %20 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %21 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %none10 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %21, i32 0, i32 2
  %22 = load %struct.Val*, %struct.Val** %none10, align 8
  call void @tisp_env_add(%struct.Tsp* noundef %20, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), %struct.Val* noundef %22)
  %23 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %24 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %nil11 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %24, i32 0, i32 3
  %25 = load %struct.Val*, %struct.Val** %nil11, align 8
  call void @tisp_env_add(%struct.Tsp* noundef %23, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), %struct.Val* noundef %25)
  %26 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %27 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %call12 = call %struct.Val* @mk_str(%struct.Tsp* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %26, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i64 0, i64 0), %struct.Val* noundef %call12)
  %28 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %libh = getelementptr inbounds %struct.Tsp, %struct.Tsp* %28, i32 0, i32 8
  store i8** null, i8*** %libh, align 8
  %29 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  %libhc = getelementptr inbounds %struct.Tsp, %struct.Tsp* %29, i32 0, i32 9
  store i64 0, i64* %libhc, align 8
  %30 = load %struct.Tsp*, %struct.Tsp** %st, align 8
  ret %struct.Tsp* %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tib_env_core(%struct.Tsp* noundef %st) #0 {
entry:
  %st.addr = alloca %struct.Tsp*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_car, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0), %struct.Val* noundef %call)
  %1 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call1 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_cdr, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i64 0, i64 0), %struct.Val* noundef %call1)
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call2 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_cons, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0), %struct.Val* noundef %call2)
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call3 = call %struct.Val* @mk_prim(i32 noundef 256, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @form_quote, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), %struct.Val* noundef %call3)
  %4 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call4 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_eval, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i64 0, i64 0), %struct.Val* noundef %call4)
  %5 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call5 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_eq, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i64 0, i64 0), %struct.Val* noundef %call5)
  %6 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call6 = call %struct.Val* @mk_prim(i32 noundef 256, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @form_cond, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i64 0, i64 0), %struct.Val* noundef %call6)
  %7 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call7 = call %struct.Val* @mk_prim(i32 noundef 256, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @tisp_eval_body, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %7, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), %struct.Val* noundef %call7)
  %8 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call8 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_typeof, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), %struct.Val* noundef %call8)
  %9 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call9 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_procprops, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %9, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i64 0, i64 0), %struct.Val* noundef %call9)
  %10 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call10 = call %struct.Val* @mk_prim(i32 noundef 256, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @form_Func, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), %struct.Val* noundef %call10)
  %11 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call11 = call %struct.Val* @mk_prim(i32 noundef 256, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @form_Macro, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %11, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), %struct.Val* noundef %call11)
  %12 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call12 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_error, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %12, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0), %struct.Val* noundef %call12)
  %13 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call13 = call %struct.Val* @mk_prim(i32 noundef 256, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @mk_rec, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), %struct.Val* noundef %call13)
  %14 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call14 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_recmerge, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %14, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0), %struct.Val* noundef %call14)
  %15 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call15 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_records, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0), %struct.Val* noundef %call15)
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call16 = call %struct.Val* @mk_prim(i32 noundef 256, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @form_def, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0), %struct.Val* noundef %call16)
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call17 = call %struct.Val* @mk_prim(i32 noundef 256, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @form_undefine, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i64 0, i64 0), %struct.Val* noundef %call17)
  %18 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call18 = call %struct.Val* @mk_prim(i32 noundef 256, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @form_definedp, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %18, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i64 0, i64 0), %struct.Val* noundef %call18)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tib_env_math(%struct.Tsp* noundef %st) #0 {
entry:
  %st.addr = alloca %struct.Tsp*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_Int, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.Val* noundef %call)
  %1 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call1 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_Dec, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.Val* noundef %call1)
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call2 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_floor, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i64 0, i64 0), %struct.Val* noundef %call2)
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call3 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_ceil, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), %struct.Val* noundef %call3)
  %4 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call4 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_round, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i64 0, i64 0), %struct.Val* noundef %call4)
  %5 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call5 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_numerator, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.175, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %5, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.175, i64 0, i64 0), %struct.Val* noundef %call5)
  %6 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call6 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_denominator, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.177, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.177, i64 0, i64 0), %struct.Val* noundef %call6)
  %7 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call7 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_add, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i64 0, i64 0), %struct.Val* noundef %call7)
  %8 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call8 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_sub, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.179, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.179, i64 0, i64 0), %struct.Val* noundef %call8)
  %9 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call9 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_mul, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.134, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.134, i64 0, i64 0), %struct.Val* noundef %call9)
  %10 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call10 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_div, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.180, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.180, i64 0, i64 0), %struct.Val* noundef %call10)
  %11 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call11 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_mod, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i64 0, i64 0), %struct.Val* noundef %call11)
  %12 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call12 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_pow, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0), %struct.Val* noundef %call12)
  %13 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call13 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_lt, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %13, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i64 0, i64 0), %struct.Val* noundef %call13)
  %14 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call14 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_gt, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.182, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.182, i64 0, i64 0), %struct.Val* noundef %call14)
  %15 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call15 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_lte, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.183, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.183, i64 0, i64 0), %struct.Val* noundef %call15)
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call16 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_gte, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.184, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.184, i64 0, i64 0), %struct.Val* noundef %call16)
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call17 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_sin, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), %struct.Val* noundef %call17)
  %18 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call18 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_cos, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i64 0, i64 0), %struct.Val* noundef %call18)
  %19 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call19 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_tan, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.151, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %19, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.151, i64 0, i64 0), %struct.Val* noundef %call19)
  %20 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call20 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_sinh, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %20, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0), %struct.Val* noundef %call20)
  %21 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call21 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_cosh, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), %struct.Val* noundef %call21)
  %22 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call22 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_tanh, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %22, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), %struct.Val* noundef %call22)
  %23 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call23 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_asin, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.185, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %23, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.185, i64 0, i64 0), %struct.Val* noundef %call23)
  %24 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call24 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_acos, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.186, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %24, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.186, i64 0, i64 0), %struct.Val* noundef %call24)
  %25 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call25 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_atan, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.187, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.187, i64 0, i64 0), %struct.Val* noundef %call25)
  %26 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call26 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_asinh, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %26, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i64 0, i64 0), %struct.Val* noundef %call26)
  %27 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call27 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_acosh, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.189, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %27, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.189, i64 0, i64 0), %struct.Val* noundef %call27)
  %28 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call28 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_atanh, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.190, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %28, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.190, i64 0, i64 0), %struct.Val* noundef %call28)
  %29 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call29 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_exp, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.171, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %29, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.171, i64 0, i64 0), %struct.Val* noundef %call29)
  %30 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call30 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_log, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %30, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), %struct.Val* noundef %call30)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tib_env_io(%struct.Tsp* noundef %st) #0 {
entry:
  %st.addr = alloca %struct.Tsp*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_write, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i64 0, i64 0), %struct.Val* noundef %call)
  %1 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call1 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_read, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.Val* noundef %call1)
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call2 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_parse, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.Val* noundef %call2)
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call3 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_load, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.208, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.208, i64 0, i64 0), %struct.Val* noundef %call3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tib_env_os(%struct.Tsp* noundef %st) #0 {
entry:
  %st.addr = alloca %struct.Tsp*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_cd, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.216, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.216, i64 0, i64 0), %struct.Val* noundef %call)
  %1 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call1 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_pwd, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.219, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.219, i64 0, i64 0), %struct.Val* noundef %call1)
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call2 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_exit, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.221, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.221, i64 0, i64 0), %struct.Val* noundef %call2)
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call3 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_now, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.223, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.223, i64 0, i64 0), %struct.Val* noundef %call3)
  %4 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call4 = call %struct.Val* @mk_prim(i32 noundef 256, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @form_time, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i64 0, i64 0), %struct.Val* noundef %call4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tib_env_string(%struct.Tsp* noundef %st) #0 {
entry:
  %st.addr = alloca %struct.Tsp*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_Sym, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %struct.Val* noundef %call)
  %1 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call1 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_Str, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), %struct.Val* noundef %call1)
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call2 = call %struct.Val* @mk_prim(i32 noundef 128, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @prim_strlen, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i64 0, i64 0), %struct.Val* noundef %call2)
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call3 = call %struct.Val* @mk_prim(i32 noundef 256, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef @form_strformat, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0))
  call void @tisp_env_add(%struct.Tsp* noundef %3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0), %struct.Val* noundef %call3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tisp_env_lib(%struct.Tsp* noundef %st, i8* noundef %lib) #0 {
entry:
  %st.addr = alloca %struct.Tsp*, align 8
  %lib.addr = alloca i8*, align 8
  %v = alloca %struct.Val*, align 8
  %file = alloca i8*, align 8
  %filec = alloca i64, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store i8* %lib, i8** %lib.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file1 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 0
  %1 = load i8*, i8** %file1, align 8
  store i8* %1, i8** %file, align 8
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec2 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %2, i32 0, i32 1
  %3 = load i64, i64* %filec2, align 8
  store i64 %3, i64* %filec, align 8
  %4 = load i8*, i8** %lib.addr, align 8
  %5 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file3 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %5, i32 0, i32 0
  store i8* %4, i8** %file3, align 8
  %6 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec4 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %6, i32 0, i32 1
  store i64 0, i64* %filec4, align 8
  %7 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  call void @skip_ws(%struct.Tsp* noundef %7, i32 noundef 1)
  %8 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call = call %struct.Val* @tisp_read(%struct.Tsp* noundef %8)
  store %struct.Val* %call, %struct.Val** %v, align 8
  %tobool = icmp ne %struct.Val* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %10 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %env = getelementptr inbounds %struct.Tsp, %struct.Tsp* %10, i32 0, i32 5
  %11 = load %struct.Rec*, %struct.Rec** %env, align 8
  %12 = load %struct.Val*, %struct.Val** %v, align 8
  %call5 = call %struct.Val* @tisp_eval_body(%struct.Tsp* noundef %9, %struct.Rec* noundef %11, %struct.Val* noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8*, i8** %file, align 8
  %14 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file6 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %14, i32 0, i32 0
  store i8* %13, i8** %file6, align 8
  %15 = load i64, i64* %filec, align 8
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec7 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %16, i32 0, i32 1
  store i64 %15, i64* %filec7, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sigaction(i32 noundef, %struct.sigaction* noundef, %struct.sigaction* noundef) #1

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @tisp_read(%struct.Tsp* noundef %st) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %v = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call = call %struct.Val* @tisp_read_sexpr(%struct.Tsp* noundef %0)
  store %struct.Val* %call, %struct.Val** %v, align 8
  %tobool = icmp ne %struct.Val* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %1, i32 0, i32 0
  %2 = load i8*, i8** %file, align 8
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec = getelementptr inbounds %struct.Tsp, %struct.Tsp* %3, i32 0, i32 1
  %4 = load i64, i64* %filec, align 8
  %add = add i64 %4, 0
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %add
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 40
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %6 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file2 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %6, i32 0, i32 0
  %7 = load i8*, i8** %file2, align 8
  %8 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec3 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %8, i32 0, i32 1
  %9 = load i64, i64* %filec3, align 8
  %add4 = add i64 %9, 0
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %add4
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 58
  br i1 %cmp7, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %11 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file10 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %11, i32 0, i32 0
  %12 = load i8*, i8** %file10, align 8
  %13 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec11 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %13, i32 0, i32 1
  %14 = load i64, i64* %filec11, align 8
  %add12 = add i64 %14, 0
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 %add12
  %15 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %15 to i32
  %cmp15 = icmp eq i32 %conv14, 62
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false9
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file17 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %16, i32 0, i32 0
  %17 = load i8*, i8** %file17, align 8
  %18 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec18 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %18, i32 0, i32 1
  %19 = load i64, i64* %filec18, align 8
  %add19 = add i64 %19, 0
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 %add19
  %20 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %20 to i32
  %cmp22 = icmp eq i32 %conv21, 123
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false9, %lor.lhs.false, %while.cond
  %21 = phi i1 [ true, %lor.lhs.false9 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp22, %lor.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %22 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %23 = load %struct.Val*, %struct.Val** %v, align 8
  %call24 = call %struct.Val* @tisp_read_sugar(%struct.Tsp* noundef %22, %struct.Val* noundef %23)
  store %struct.Val* %call24, %struct.Val** %v, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %lor.end
  %24 = load %struct.Val*, %struct.Val** %v, align 8
  store %struct.Val* %24, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %25 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %25
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @mk_str(%struct.Tsp* noundef %st, i8* noundef %s) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %s.addr = alloca i8*, align 8
  %ret = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %strs = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 6
  %1 = load %struct.Rec*, %struct.Rec** %strs, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %call = call %struct.Val* @rec_get(%struct.Rec* noundef %1, i8* noundef %2)
  store %struct.Val* %call, %struct.Val** %ret, align 8
  %tobool = icmp ne %struct.Val* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %3, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.Val* @mk_val(i32 noundef 32)
  store %struct.Val* %call1, %struct.Val** %ret, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load %struct.Val*, %struct.Val** %ret, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %s2 = bitcast %union.anon* %v to i8**
  store i8* %4, i8** %s2, align 8
  %6 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %strs3 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %6, i32 0, i32 6
  %7 = load %struct.Rec*, %struct.Rec** %strs3, align 8
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load %struct.Val*, %struct.Val** %ret, align 8
  call void @rec_add(%struct.Rec* noundef %7, i8* noundef %8, %struct.Val* noundef %9)
  %10 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %10, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tisp_print(%struct._IO_FILE* noundef %f, %struct.Val* noundef %v) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %v.addr = alloca %struct.Val*, align 8
  %r = alloca %struct.Rec*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct.Val* %v, %struct.Val** %v.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %0, i32 0, i32 0
  %1 = load i32, i32* %t, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb3
    i32 8, label %sw.bb6
    i32 16, label %sw.bb21
    i32 32, label %sw.bb30
    i32 64, label %sw.bb30
    i32 512, label %sw.bb33
    i32 1024, label %sw.bb33
    i32 128, label %sw.bb49
    i32 256, label %sw.bb53
    i32 4096, label %sw.bb58
    i32 2048, label %sw.bb87
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 @fputs(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* noundef %2)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call2 = call i32 @fputs(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* noundef %3)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %5 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v4 = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %n = bitcast %union.anon* %v4 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %6 = load double, double* %num, align 8
  %conv = fptosi double %6 to i32
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i32 noundef %conv)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %8 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v7 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 1
  %n8 = bitcast %union.anon* %v7 to %struct.anon*
  %num9 = getelementptr inbounds %struct.anon, %struct.anon* %n8, i32 0, i32 0
  %9 = load double, double* %num9, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), double noundef %9)
  %10 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v11 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %n12 = bitcast %union.anon* %v11 to %struct.anon*
  %num13 = getelementptr inbounds %struct.anon, %struct.anon* %n12, i32 0, i32 0
  %11 = load double, double* %num13, align 8
  %12 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v14 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 1
  %n15 = bitcast %union.anon* %v14 to %struct.anon*
  %num16 = getelementptr inbounds %struct.anon, %struct.anon* %n15, i32 0, i32 0
  %13 = load double, double* %num16, align 8
  %conv17 = fptosi double %13 to i32
  %conv18 = sitofp i32 %conv17 to double
  %cmp = fcmp oeq double %11, %conv18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb6
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %16 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v22 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %n23 = bitcast %union.anon* %v22 to %struct.anon*
  %num24 = getelementptr inbounds %struct.anon, %struct.anon* %n23, i32 0, i32 0
  %17 = load double, double* %num24, align 8
  %conv25 = fptosi double %17 to i32
  %18 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v26 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %n27 = bitcast %union.anon* %v26 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n27, i32 0, i32 1
  %19 = load double, double* %den, align 8
  %conv28 = fptosi double %19 to i32
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv25, i32 noundef %conv28)
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry, %entry
  %20 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v31 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 1
  %s = bitcast %union.anon* %v31 to i8**
  %21 = load i8*, i8** %s, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call32 = call i32 @fputs(i8* noundef %21, %struct._IO_FILE* noundef %22)
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry, %entry
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %24 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %t34 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 0
  %25 = load i32, i32* %t34, align 8
  %cmp35 = icmp eq i32 %25, 512
  %26 = zext i1 %cmp35 to i64
  %cond = select i1 %cmp35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0)
  %27 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v37 = getelementptr inbounds %struct.Val, %struct.Val* %27, i32 0, i32 1
  %f38 = bitcast %union.anon* %v37 to %struct.anon.1*
  %name = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f38, i32 0, i32 0
  %28 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %28, null
  %29 = zext i1 %tobool to i64
  %cond39 = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %30 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v40 = getelementptr inbounds %struct.Val, %struct.Val* %30, i32 0, i32 1
  %f41 = bitcast %union.anon* %v40 to %struct.anon.1*
  %name42 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f41, i32 0, i32 0
  %31 = load i8*, i8** %name42, align 8
  %tobool43 = icmp ne i8* %31, null
  br i1 %tobool43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb33
  %32 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v44 = getelementptr inbounds %struct.Val, %struct.Val* %32, i32 0, i32 1
  %f45 = bitcast %union.anon* %v44 to %struct.anon.1*
  %name46 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f45, i32 0, i32 0
  %33 = load i8*, i8** %name46, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond47 = phi i8* [ %33, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %cond.false ]
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i8* noundef %cond, i8* noundef %cond39, i8* noundef %cond47)
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %35 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v50 = getelementptr inbounds %struct.Val, %struct.Val* %35, i32 0, i32 1
  %pr = bitcast %union.anon* %v50 to %struct.anon.0*
  %name51 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %pr, i32 0, i32 0
  %36 = load i8*, i8** %name51, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i64 0, i64 0), i8* noundef %36)
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %38 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v54 = getelementptr inbounds %struct.Val, %struct.Val* %38, i32 0, i32 1
  %pr55 = bitcast %union.anon* %v54 to %struct.anon.0*
  %name56 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %pr55, i32 0, i32 0
  %39 = load i8*, i8** %name56, align 8
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0), i8* noundef %39)
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call59 = call i32 @putc(i32 noundef 123, %struct._IO_FILE* noundef %40)
  %41 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v60 = getelementptr inbounds %struct.Val, %struct.Val* %41, i32 0, i32 1
  %r61 = bitcast %union.anon* %v60 to %struct.Rec**
  %42 = load %struct.Rec*, %struct.Rec** %r61, align 8
  store %struct.Rec* %42, %struct.Rec** %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc84, %sw.bb58
  %43 = load %struct.Rec*, %struct.Rec** %r, align 8
  %tobool62 = icmp ne %struct.Rec* %43, null
  br i1 %tobool62, label %for.body, label %for.end85

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc, %for.body
  %44 = load i32, i32* %c, align 4
  %45 = load %struct.Rec*, %struct.Rec** %r, align 8
  %size = getelementptr inbounds %struct.Rec, %struct.Rec* %45, i32 0, i32 0
  %46 = load i32, i32* %size, align 8
  %cmp64 = icmp slt i32 %44, %46
  br i1 %cmp64, label %for.body66, label %for.end

for.body66:                                       ; preds = %for.cond63
  %47 = load %struct.Rec*, %struct.Rec** %r, align 8
  %items = getelementptr inbounds %struct.Rec, %struct.Rec* %47, i32 0, i32 2
  %48 = load %struct.Entry*, %struct.Entry** %items, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom = sext i32 %49 to i64
  %arrayidx = getelementptr inbounds %struct.Entry, %struct.Entry* %48, i64 %idxprom
  %key = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx, i32 0, i32 0
  %50 = load i8*, i8** %key, align 8
  %tobool67 = icmp ne i8* %50, null
  br i1 %tobool67, label %if.then68, label %if.else

if.then68:                                        ; preds = %for.body66
  %51 = load i32, i32* %c, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %c, align 4
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %53 = load %struct.Rec*, %struct.Rec** %r, align 8
  %items69 = getelementptr inbounds %struct.Rec, %struct.Rec* %53, i32 0, i32 2
  %54 = load %struct.Entry*, %struct.Entry** %items69, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %55 to i64
  %arrayidx71 = getelementptr inbounds %struct.Entry, %struct.Entry* %54, i64 %idxprom70
  %key72 = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx71, i32 0, i32 0
  %56 = load i8*, i8** %key72, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i64 0, i64 0), i8* noundef %56)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %58 = load %struct.Rec*, %struct.Rec** %r, align 8
  %items74 = getelementptr inbounds %struct.Rec, %struct.Rec* %58, i32 0, i32 2
  %59 = load %struct.Entry*, %struct.Entry** %items74, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %60 to i64
  %arrayidx76 = getelementptr inbounds %struct.Entry, %struct.Entry* %59, i64 %idxprom75
  %val = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx76, i32 0, i32 1
  %61 = load %struct.Val*, %struct.Val** %val, align 8
  call void @tisp_print(%struct._IO_FILE* noundef %57, %struct.Val* noundef %61)
  br label %if.end82

if.else:                                          ; preds = %for.body66
  %62 = load i32, i32* %c, align 4
  %cmp77 = icmp eq i32 %62, 64
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.else
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call80 = call i32 @fputs(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), %struct._IO_FILE* noundef %63)
  br label %for.end

if.end81:                                         ; preds = %if.else
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then68
  br label %for.inc

for.inc:                                          ; preds = %if.end82
  %64 = load i32, i32* %i, align 4
  %inc83 = add nsw i32 %64, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond63, !llvm.loop !8

for.end:                                          ; preds = %if.then79, %for.cond63
  br label %for.inc84

for.inc84:                                        ; preds = %for.end
  %65 = load %struct.Rec*, %struct.Rec** %r, align 8
  %next = getelementptr inbounds %struct.Rec, %struct.Rec* %65, i32 0, i32 3
  %66 = load %struct.Rec*, %struct.Rec** %next, align 8
  store %struct.Rec* %66, %struct.Rec** %r, align 8
  br label %for.cond, !llvm.loop !9

for.end85:                                        ; preds = %for.cond
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call86 = call i32 @fputs(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0), %struct._IO_FILE* noundef %67)
  br label %sw.epilog

sw.bb87:                                          ; preds = %entry
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call88 = call i32 @putc(i32 noundef 40, %struct._IO_FILE* noundef %68)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %70 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v89 = getelementptr inbounds %struct.Val, %struct.Val* %70, i32 0, i32 1
  %p = bitcast %union.anon* %v89 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %71 = load %struct.Val*, %struct.Val** %car, align 8
  call void @tisp_print(%struct._IO_FILE* noundef %69, %struct.Val* noundef %71)
  %72 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v90 = getelementptr inbounds %struct.Val, %struct.Val* %72, i32 0, i32 1
  %p91 = bitcast %union.anon* %v90 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p91, i32 0, i32 1
  %73 = load %struct.Val*, %struct.Val** %cdr, align 8
  store %struct.Val* %73, %struct.Val** %v.addr, align 8
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc108, %sw.bb87
  %74 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %t93 = getelementptr inbounds %struct.Val, %struct.Val* %74, i32 0, i32 0
  %75 = load i32, i32* %t93, align 8
  %cmp94 = icmp eq i32 %75, 2
  %lnot = xor i1 %cmp94, true
  br i1 %lnot, label %for.body96, label %for.end112

for.body96:                                       ; preds = %for.cond92
  %76 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %t97 = getelementptr inbounds %struct.Val, %struct.Val* %76, i32 0, i32 0
  %77 = load i32, i32* %t97, align 8
  %cmp98 = icmp eq i32 %77, 2048
  br i1 %cmp98, label %if.then100, label %if.else105

if.then100:                                       ; preds = %for.body96
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call101 = call i32 @putc(i32 noundef 32, %struct._IO_FILE* noundef %78)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %80 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v102 = getelementptr inbounds %struct.Val, %struct.Val* %80, i32 0, i32 1
  %p103 = bitcast %union.anon* %v102 to %struct.anon.2*
  %car104 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p103, i32 0, i32 0
  %81 = load %struct.Val*, %struct.Val** %car104, align 8
  call void @tisp_print(%struct._IO_FILE* noundef %79, %struct.Val* noundef %81)
  br label %if.end107

if.else105:                                       ; preds = %for.body96
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call106 = call i32 @fputs(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), %struct._IO_FILE* noundef %82)
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %84 = load %struct.Val*, %struct.Val** %v.addr, align 8
  call void @tisp_print(%struct._IO_FILE* noundef %83, %struct.Val* noundef %84)
  br label %for.end112

if.end107:                                        ; preds = %if.then100
  br label %for.inc108

for.inc108:                                       ; preds = %if.end107
  %85 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v109 = getelementptr inbounds %struct.Val, %struct.Val* %85, i32 0, i32 1
  %p110 = bitcast %union.anon* %v109 to %struct.anon.2*
  %cdr111 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p110, i32 0, i32 1
  %86 = load %struct.Val*, %struct.Val** %cdr111, align 8
  store %struct.Val* %86, %struct.Val** %v.addr, align 8
  br label %for.cond92, !llvm.loop !10

for.end112:                                       ; preds = %if.else105, %for.cond92
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call113 = call i32 @putc(i32 noundef 41, %struct._IO_FILE* noundef %87)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %89 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %t114 = getelementptr inbounds %struct.Val, %struct.Val* %89, i32 0, i32 0
  %90 = load i32, i32* %t114, align 8
  %call115 = call i8* @tsp_type_str(i32 noundef %90)
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i64 0, i64 0), i8* noundef %call115)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end112, %for.end85, %sw.bb53, %sw.bb49, %cond.end, %sw.bb30, %sw.bb21, %if.end, %sw.bb3, %sw.bb1, %sw.bb
  ret void
}

declare dso_local i32 @puts(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tsp_type_str(i32 noundef %t) #0 {
entry:
  %retval = alloca i8*, align 8
  %t.addr = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %t.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 8, label %sw.bb3
    i32 16, label %sw.bb4
    i32 32, label %sw.bb5
    i32 64, label %sw.bb6
    i32 128, label %sw.bb7
    i32 256, label %sw.bb8
    i32 512, label %sw.bb9
    i32 1024, label %sw.bb10
    i32 2048, label %sw.bb11
    i32 4096, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb9:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb11:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  %1 = load i32, i32* %t.addr, align 4
  %cmp = icmp eq i32 %1, 2140
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %sw.default
  %2 = load i32, i32* %t.addr, align 4
  %cmp13 = icmp eq i32 %2, 20
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.end
  %3 = load i32, i32* %t.addr, align 4
  %and = and i32 %3, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.end15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then14, %if.then, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i8*, i8** %retval, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_sym(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sle i32 97, %conv
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br i1 %cmp3, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i8, i8* %c.addr, align 1
  %conv5 = sext i8 %2 to i32
  %cmp6 = icmp sle i32 65, %conv5
  br i1 %cmp6, label %land.lhs.true8, label %lor.lhs.false12

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %3 = load i8, i8* %c.addr, align 1
  %conv9 = sext i8 %3 to i32
  %cmp10 = icmp sle i32 %conv9, 90
  br i1 %cmp10, label %lor.end, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %land.lhs.true8, %lor.lhs.false
  %4 = load i8, i8* %c.addr, align 1
  %conv13 = sext i8 %4 to i32
  %cmp14 = icmp sle i32 48, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.rhs

land.lhs.true16:                                  ; preds = %lor.lhs.false12
  %5 = load i8, i8* %c.addr, align 1
  %conv17 = sext i8 %5 to i32
  %cmp18 = icmp sle i32 %conv17, 57
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true16, %lor.lhs.false12
  %6 = load i8, i8* %c.addr, align 1
  %conv20 = sext i8 %6 to i32
  %call = call i8* @strchr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv20) #14
  %tobool = icmp ne i8* %call, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true16, %land.lhs.true8, %land.lhs.true
  %7 = phi i1 [ true, %land.lhs.true16 ], [ true, %land.lhs.true8 ], [ true, %land.lhs.true ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_op(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %call = call i8* @strchr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv) #14
  %cmp = icmp ne i8* %call, null
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isnum(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %call = call i16** @__ctype_b_loc() #15
  %0 = load i16*, i16** %call, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv2, 46
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = call i16** @__ctype_b_loc() #15
  %6 = load i16*, i16** %call4, align 8
  %7 = load i8*, i8** %str.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %8 to i32
  %idxprom7 = sext i32 %conv6 to i64
  %arrayidx8 = getelementptr inbounds i16, i16* %6, i64 %idxprom7
  %9 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %9 to i32
  %and10 = and i32 %conv9, 2048
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %lor.end32, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp eq i32 %conv12, 45
  br i1 %cmp13, label %land.rhs, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.rhs
  %12 = load i8*, i8** %str.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv16 = sext i8 %13 to i32
  %cmp17 = icmp eq i32 %conv16, 43
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false15, %lor.rhs
  %call19 = call i16** @__ctype_b_loc() #15
  %14 = load i16*, i16** %call19, align 8
  %15 = load i8*, i8** %str.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %16 to i32
  %idxprom22 = sext i32 %conv21 to i64
  %arrayidx23 = getelementptr inbounds i16, i16* %14, i64 %idxprom22
  %17 = load i16, i16* %arrayidx23, align 2
  %conv24 = zext i16 %17 to i32
  %and25 = and i32 %conv24, 2048
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %lor.end, label %lor.rhs27

lor.rhs27:                                        ; preds = %land.rhs
  %18 = load i8*, i8** %str.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %19 to i32
  %cmp30 = icmp eq i32 %conv29, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs27, %land.rhs
  %20 = phi i1 [ true, %land.rhs ], [ %cmp30, %lor.rhs27 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false15
  %21 = phi i1 [ false, %lor.lhs.false15 ], [ %20, %lor.end ]
  br label %lor.end32

lor.end32:                                        ; preds = %land.end, %land.lhs.true, %entry
  %22 = phi i1 [ true, %land.lhs.true ], [ true, %entry ], [ %21, %land.end ]
  %lor.ext = zext i1 %22 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_ws(%struct.Tsp* noundef %st, i32 noundef %skipnl) #0 {
entry:
  %st.addr = alloca %struct.Tsp*, align 8
  %skipnl.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store i32 %skipnl, i32* %skipnl.addr, align 4
  %0 = load i32, i32* %skipnl.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)
  store i8* %cond, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %2, i32 0, i32 0
  %3 = load i8*, i8** %file, align 8
  %4 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec = getelementptr inbounds %struct.Tsp, %struct.Tsp* %4, i32 0, i32 1
  %5 = load i64, i64* %filec, align 8
  %add = add i64 %5, 0
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %add
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i8*, i8** %s, align 8
  %8 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file2 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %8, i32 0, i32 0
  %9 = load i8*, i8** %file2, align 8
  %10 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec3 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %10, i32 0, i32 1
  %11 = load i64, i64* %filec3, align 8
  %add4 = add i64 %11, 0
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 %add4
  %12 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %12 to i32
  %call = call i8* @strchr(i8* noundef %7, i32 noundef %conv6) #14
  %tobool7 = icmp ne i8* %call, null
  br i1 %tobool7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %13 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file8 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %13, i32 0, i32 0
  %14 = load i8*, i8** %file8, align 8
  %15 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec9 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %15, i32 0, i32 1
  %16 = load i64, i64* %filec9, align 8
  %add10 = add i64 %16, 0
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 %add10
  %17 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %17 to i32
  %cmp = icmp eq i32 %conv12, 59
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %18 = phi i1 [ true, %land.rhs ], [ %cmp, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %18, %lor.end ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file14 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %20, i32 0, i32 0
  %21 = load i8*, i8** %file14, align 8
  %22 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec15 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %22, i32 0, i32 1
  %23 = load i64, i64* %filec15, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %23
  %24 = load i8*, i8** %s, align 8
  %call16 = call i64 @strspn(i8* noundef %add.ptr, i8* noundef %24) #14
  %25 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec17 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %25, i32 0, i32 1
  %26 = load i64, i64* %filec17, align 8
  %add18 = add i64 %26, %call16
  store i64 %add18, i64* %filec17, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %27 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file19 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %27, i32 0, i32 0
  %28 = load i8*, i8** %file19, align 8
  %29 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec20 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %29, i32 0, i32 1
  %30 = load i64, i64* %filec20, align 8
  %add21 = add i64 %30, 0
  %arrayidx22 = getelementptr inbounds i8, i8* %28, i64 %add21
  %31 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %31 to i32
  %cmp24 = icmp eq i32 %conv23, 59
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file26 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %32, i32 0, i32 0
  %33 = load i8*, i8** %file26, align 8
  %34 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec27 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %34, i32 0, i32 1
  %35 = load i64, i64* %filec27, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %33, i64 %35
  %call29 = call i64 @strcspn(i8* noundef %add.ptr28, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #14
  %36 = load i32, i32* %skipnl.addr, align 4
  %tobool30 = icmp ne i32 %36, 0
  %lnot = xor i1 %tobool30, true
  %lnot.ext = zext i1 %lnot to i32
  %conv31 = sext i32 %lnot.ext to i64
  %sub = sub i64 %call29, %conv31
  %37 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec32 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %37, i32 0, i32 1
  %38 = load i64, i64* %filec32, align 8
  %add33 = add i64 %38, %sub
  store i64 %add33, i64* %filec32, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec34 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %39, i32 0, i32 1
  %40 = load i64, i64* %filec34, align 8
  %inc = add i64 %40, 1
  store i64 %inc, i64* %filec34, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strspn(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strcspn(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsp_lstlen(%struct.Val* noundef %v) #0 {
entry:
  %v.addr = alloca %struct.Val*, align 8
  %len = alloca i32, align 4
  store %struct.Val* %v, %struct.Val** %v.addr, align 8
  store i32 0, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %0, i32 0, i32 0
  %1 = load i32, i32* %t, align 8
  %cmp = icmp eq i32 %1, 2048
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %len, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v1 = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v1 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 1
  %4 = load %struct.Val*, %struct.Val** %cdr, align 8
  store %struct.Val* %4, %struct.Val** %v.addr, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %5 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %t2 = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t2, align 8
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %7 = load i32, i32* %len, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %8 = load i32, i32* %len, align 4
  %add = add nsw i32 %8, 1
  %sub = sub nsw i32 0, %add
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vals_eq(%struct.Val* noundef %a, %struct.Val* noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.Val*, align 8
  %b.addr = alloca %struct.Val*, align 8
  store %struct.Val* %a, %struct.Val** %a.addr, align 8
  store %struct.Val* %b, %struct.Val** %b.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %a.addr, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %0, i32 0, i32 0
  %1 = load i32, i32* %t, align 8
  %and = and i32 %1, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.Val*, %struct.Val** %b.addr, align 8
  %t1 = getelementptr inbounds %struct.Val, %struct.Val* %2, i32 0, i32 0
  %3 = load i32, i32* %t1, align 8
  %and2 = and i32 %3, 28
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end14

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.Val*, %struct.Val** %a.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 1
  %n = bitcast %union.anon* %v to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %5 = load double, double* %num, align 8
  %6 = load %struct.Val*, %struct.Val** %b.addr, align 8
  %v4 = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 1
  %n5 = bitcast %union.anon* %v4 to %struct.anon*
  %num6 = getelementptr inbounds %struct.anon, %struct.anon* %n5, i32 0, i32 0
  %7 = load double, double* %num6, align 8
  %cmp = fcmp une double %5, %7
  br i1 %cmp, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %struct.Val*, %struct.Val** %a.addr, align 8
  %v7 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 1
  %n8 = bitcast %union.anon* %v7 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n8, i32 0, i32 1
  %9 = load double, double* %den, align 8
  %10 = load %struct.Val*, %struct.Val** %b.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %n10 = bitcast %union.anon* %v9 to %struct.anon*
  %den11 = getelementptr inbounds %struct.anon, %struct.anon* %n10, i32 0, i32 1
  %11 = load double, double* %den11, align 8
  %cmp12 = fcmp une double %9, %11
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %land.lhs.true, %entry
  %12 = load %struct.Val*, %struct.Val** %a.addr, align 8
  %t15 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t15, align 8
  %14 = load %struct.Val*, %struct.Val** %b.addr, align 8
  %t16 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 0
  %15 = load i32, i32* %t16, align 8
  %cmp17 = icmp ne i32 %13, %15
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  store i32 0, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end14
  %16 = load %struct.Val*, %struct.Val** %a.addr, align 8
  %t20 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 0
  %17 = load i32, i32* %t20, align 8
  %cmp21 = icmp eq i32 %17, 2048
  br i1 %cmp21, label %if.then22, label %if.end35

if.then22:                                        ; preds = %if.end19
  %18 = load %struct.Val*, %struct.Val** %a.addr, align 8
  %v23 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p = bitcast %union.anon* %v23 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car, align 8
  %20 = load %struct.Val*, %struct.Val** %b.addr, align 8
  %v24 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 1
  %p25 = bitcast %union.anon* %v24 to %struct.anon.2*
  %car26 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p25, i32 0, i32 0
  %21 = load %struct.Val*, %struct.Val** %car26, align 8
  %call = call i32 @vals_eq(%struct.Val* noundef %19, %struct.Val* noundef %21)
  %tobool27 = icmp ne i32 %call, 0
  br i1 %tobool27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then22
  %22 = load %struct.Val*, %struct.Val** %a.addr, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 1
  %p29 = bitcast %union.anon* %v28 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p29, i32 0, i32 1
  %23 = load %struct.Val*, %struct.Val** %cdr, align 8
  %24 = load %struct.Val*, %struct.Val** %b.addr, align 8
  %v30 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 1
  %p31 = bitcast %union.anon* %v30 to %struct.anon.2*
  %cdr32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p31, i32 0, i32 1
  %25 = load %struct.Val*, %struct.Val** %cdr32, align 8
  %call33 = call i32 @vals_eq(%struct.Val* noundef %23, %struct.Val* noundef %25)
  %tobool34 = icmp ne i32 %call33, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then22
  %26 = phi i1 [ false, %if.then22 ], [ %tobool34, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  store i32 %land.ext, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end19
  %27 = load %struct.Val*, %struct.Val** %a.addr, align 8
  %t36 = getelementptr inbounds %struct.Val, %struct.Val* %27, i32 0, i32 0
  %28 = load i32, i32* %t36, align 8
  %and37 = and i32 %28, 1536
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then39, label %if.end56

if.then39:                                        ; preds = %if.end35
  %29 = load %struct.Val*, %struct.Val** %a.addr, align 8
  %v40 = getelementptr inbounds %struct.Val, %struct.Val* %29, i32 0, i32 1
  %f = bitcast %union.anon* %v40 to %struct.anon.1*
  %args = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f, i32 0, i32 1
  %30 = load %struct.Val*, %struct.Val** %args, align 8
  %31 = load %struct.Val*, %struct.Val** %b.addr, align 8
  %v41 = getelementptr inbounds %struct.Val, %struct.Val* %31, i32 0, i32 1
  %f42 = bitcast %union.anon* %v41 to %struct.anon.1*
  %args43 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f42, i32 0, i32 1
  %32 = load %struct.Val*, %struct.Val** %args43, align 8
  %call44 = call i32 @vals_eq(%struct.Val* noundef %30, %struct.Val* noundef %32)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %land.rhs46, label %land.end54

land.rhs46:                                       ; preds = %if.then39
  %33 = load %struct.Val*, %struct.Val** %a.addr, align 8
  %v47 = getelementptr inbounds %struct.Val, %struct.Val* %33, i32 0, i32 1
  %f48 = bitcast %union.anon* %v47 to %struct.anon.1*
  %body = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f48, i32 0, i32 2
  %34 = load %struct.Val*, %struct.Val** %body, align 8
  %35 = load %struct.Val*, %struct.Val** %b.addr, align 8
  %v49 = getelementptr inbounds %struct.Val, %struct.Val* %35, i32 0, i32 1
  %f50 = bitcast %union.anon* %v49 to %struct.anon.1*
  %body51 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f50, i32 0, i32 2
  %36 = load %struct.Val*, %struct.Val** %body51, align 8
  %call52 = call i32 @vals_eq(%struct.Val* noundef %34, %struct.Val* noundef %36)
  %tobool53 = icmp ne i32 %call52, 0
  br label %land.end54

land.end54:                                       ; preds = %land.rhs46, %if.then39
  %37 = phi i1 [ false, %if.then39 ], [ %tobool53, %land.rhs46 ]
  %land.ext55 = zext i1 %37 to i32
  store i32 %land.ext55, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end35
  %38 = load %struct.Val*, %struct.Val** %a.addr, align 8
  %39 = load %struct.Val*, %struct.Val** %b.addr, align 8
  %cmp57 = icmp ne %struct.Val* %38, %39
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end56
  store i32 0, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end56
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then58, %land.end54, %land.end, %if.then18, %if.end, %if.then13
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frac_reduce(i32* noundef %num, i32* noundef %den) #0 {
entry:
  %num.addr = alloca i32*, align 8
  %den.addr = alloca i32*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32* %num, i32** %num.addr, align 8
  store i32* %den, i32** %den.addr, align 8
  %0 = load i32*, i32** %num.addr, align 8
  %1 = load i32, i32* %0, align 4
  %call = call i32 @abs(i32 noundef %1) #15
  store i32 %call, i32* %a, align 4
  %2 = load i32*, i32** %den.addr, align 8
  %3 = load i32, i32* %2, align 4
  %call1 = call i32 @abs(i32 noundef %3) #15
  store i32 %call1, i32* %b, align 4
  %4 = load i32, i32* %a, align 4
  %5 = load i32, i32* %b, align 4
  %rem = srem i32 %4, %5
  store i32 %rem, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load i32, i32* %c, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %b, align 4
  store i32 %7, i32* %a, align 4
  %8 = load i32, i32* %c, align 4
  store i32 %8, i32* %b, align 4
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %rem2 = srem i32 %9, %10
  store i32 %rem2, i32* %c, align 4
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %11 = load i32*, i32** %num.addr, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %b, align 4
  %div = sdiv i32 %12, %13
  %14 = load i32*, i32** %num.addr, align 8
  store i32 %div, i32* %14, align 4
  %15 = load i32*, i32** %den.addr, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %b, align 4
  %div3 = sdiv i32 %16, %17
  %18 = load i32*, i32** %den.addr, align 8
  store i32 %div3, i32* %18, align 4
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash(i8* noundef %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %h = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %key, i8** %key.addr, align 8
  store i32 0, i32* %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %h, align 4
  %cmp = icmp ult i32 %0, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i8*, i8** %key.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %key.addr, align 8
  %2 = load i8, i8* %1, align 1
  store i8 %2, i8* %c, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %h, align 4
  %mul = mul i32 %4, 33
  %5 = load i8, i8* %c, align 1
  %conv1 = sext i8 %5 to i32
  %add = add i32 %mul, %conv1
  store i32 %add, i32* %h, align 4
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %land.end
  %6 = load i32, i32* %h, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Rec* @rec_new(i64 noundef %cap, %struct.Rec* noundef %next) #0 {
entry:
  %cap.addr = alloca i64, align 8
  %next.addr = alloca %struct.Rec*, align 8
  %rec = alloca %struct.Rec*, align 8
  store i64 %cap, i64* %cap.addr, align 8
  store %struct.Rec* %next, %struct.Rec** %next.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #11
  %0 = bitcast i8* %call to %struct.Rec*
  store %struct.Rec* %0, %struct.Rec** %rec, align 8
  %tobool = icmp ne %struct.Rec* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @perror(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #13
  call void @exit(i32 noundef 1) #12
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.Rec*, %struct.Rec** %rec, align 8
  %size = getelementptr inbounds %struct.Rec, %struct.Rec* %1, i32 0, i32 0
  store i32 0, i32* %size, align 8
  %2 = load i64, i64* %cap.addr, align 8
  %conv = trunc i64 %2 to i32
  %3 = load %struct.Rec*, %struct.Rec** %rec, align 8
  %cap1 = getelementptr inbounds %struct.Rec, %struct.Rec* %3, i32 0, i32 1
  store i32 %conv, i32* %cap1, align 4
  %4 = load i64, i64* %cap.addr, align 8
  %call2 = call noalias i8* @calloc(i64 noundef %4, i64 noundef 16) #11
  %5 = bitcast i8* %call2 to %struct.Entry*
  %6 = load %struct.Rec*, %struct.Rec** %rec, align 8
  %items = getelementptr inbounds %struct.Rec, %struct.Rec* %6, i32 0, i32 2
  store %struct.Entry* %5, %struct.Entry** %items, align 8
  %tobool3 = icmp ne %struct.Entry* %5, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @perror(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0)) #13
  call void @exit(i32 noundef 1) #12
  unreachable

if.end5:                                          ; preds = %if.end
  %7 = load %struct.Rec*, %struct.Rec** %next.addr, align 8
  %8 = load %struct.Rec*, %struct.Rec** %rec, align 8
  %next6 = getelementptr inbounds %struct.Rec, %struct.Rec* %8, i32 0, i32 3
  store %struct.Rec* %7, %struct.Rec** %next6, align 8
  %9 = load %struct.Rec*, %struct.Rec** %rec, align 8
  ret %struct.Rec* %9
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: cold
declare dso_local void @perror(i8* noundef) #6

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Entry* @entry_get(%struct.Rec* noundef %rec, i8* noundef %key) #0 {
entry:
  %rec.addr = alloca %struct.Rec*, align 8
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.Rec* %rec, %struct.Rec** %rec.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i32 @hash(i8* noundef %0)
  %1 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %cap = getelementptr inbounds %struct.Rec, %struct.Rec* %1, i32 0, i32 1
  %2 = load i32, i32* %cap, align 4
  %rem = urem i32 %call, %2
  store i32 %rem, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %3 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %items = getelementptr inbounds %struct.Rec, %struct.Rec* %3, i32 0, i32 2
  %4 = load %struct.Entry*, %struct.Entry** %items, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.Entry, %struct.Entry* %4, i64 %idxprom
  %key1 = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx, i32 0, i32 0
  %6 = load i8*, i8** %key1, align 8
  store i8* %6, i8** %s, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %s, align 8
  %8 = load i8*, i8** %key.addr, align 8
  %call2 = call i32 @strcmp(i8* noundef %7, i8* noundef %8) #14
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  %10 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %cap4 = getelementptr inbounds %struct.Rec, %struct.Rec* %10, i32 0, i32 1
  %11 = load i32, i32* %cap4, align 4
  %cmp = icmp eq i32 %inc, %11
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %if.then, %while.cond
  %12 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %items7 = getelementptr inbounds %struct.Rec, %struct.Rec* %12, i32 0, i32 2
  %13 = load %struct.Entry*, %struct.Entry** %items7, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds %struct.Entry, %struct.Entry* %13, i64 %idxprom8
  ret %struct.Entry* %arrayidx9
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @rec_get(%struct.Rec* noundef %rec, i8* noundef %key) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %rec.addr = alloca %struct.Rec*, align 8
  %key.addr = alloca i8*, align 8
  %e = alloca %struct.Entry*, align 8
  store %struct.Rec* %rec, %struct.Rec** %rec.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %tobool = icmp ne %struct.Rec* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call %struct.Entry* @entry_get(%struct.Rec* noundef %1, i8* noundef %2)
  store %struct.Entry* %call, %struct.Entry** %e, align 8
  %3 = load %struct.Entry*, %struct.Entry** %e, align 8
  %key1 = getelementptr inbounds %struct.Entry, %struct.Entry* %3, i32 0, i32 0
  %4 = load i8*, i8** %key1, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.Entry*, %struct.Entry** %e, align 8
  %val = getelementptr inbounds %struct.Entry, %struct.Entry* %5, i32 0, i32 1
  %6 = load %struct.Val*, %struct.Val** %val, align 8
  store %struct.Val* %6, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %next = getelementptr inbounds %struct.Rec, %struct.Rec* %7, i32 0, i32 3
  %8 = load %struct.Rec*, %struct.Rec** %next, align 8
  store %struct.Rec* %8, %struct.Rec** %rec.addr, align 8
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_grow(%struct.Rec* noundef %rec) #0 {
entry:
  %rec.addr = alloca %struct.Rec*, align 8
  %i = alloca i32, align 4
  %ocap = alloca i32, align 4
  %oitems = alloca %struct.Entry*, align 8
  store %struct.Rec* %rec, %struct.Rec** %rec.addr, align 8
  %0 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %cap = getelementptr inbounds %struct.Rec, %struct.Rec* %0, i32 0, i32 1
  %1 = load i32, i32* %cap, align 4
  store i32 %1, i32* %ocap, align 4
  %2 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %items = getelementptr inbounds %struct.Rec, %struct.Rec* %2, i32 0, i32 2
  %3 = load %struct.Entry*, %struct.Entry** %items, align 8
  store %struct.Entry* %3, %struct.Entry** %oitems, align 8
  %4 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %cap1 = getelementptr inbounds %struct.Rec, %struct.Rec* %4, i32 0, i32 1
  %5 = load i32, i32* %cap1, align 4
  %mul = mul nsw i32 %5, 2
  store i32 %mul, i32* %cap1, align 4
  %6 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %cap2 = getelementptr inbounds %struct.Rec, %struct.Rec* %6, i32 0, i32 1
  %7 = load i32, i32* %cap2, align 4
  %conv = sext i32 %7 to i64
  %call = call noalias i8* @calloc(i64 noundef %conv, i64 noundef 16) #11
  %8 = bitcast i8* %call to %struct.Entry*
  %9 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %items3 = getelementptr inbounds %struct.Rec, %struct.Rec* %9, i32 0, i32 2
  store %struct.Entry* %8, %struct.Entry** %items3, align 8
  %tobool = icmp ne %struct.Entry* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @perror(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0)) #13
  call void @exit(i32 noundef 1) #12
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %ocap, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.Entry*, %struct.Entry** %oitems, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.Entry, %struct.Entry* %12, i64 %idxprom
  %key = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx, i32 0, i32 0
  %14 = load i8*, i8** %key, align 8
  %tobool5 = icmp ne i8* %14, null
  br i1 %tobool5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %for.body
  %15 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %16 = load %struct.Entry*, %struct.Entry** %oitems, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds %struct.Entry, %struct.Entry* %16, i64 %idxprom7
  %key9 = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx8, i32 0, i32 0
  %18 = load i8*, i8** %key9, align 8
  %19 = load %struct.Entry*, %struct.Entry** %oitems, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds %struct.Entry, %struct.Entry* %19, i64 %idxprom10
  %val = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx11, i32 0, i32 1
  %21 = load %struct.Val*, %struct.Val** %val, align 8
  call void @rec_add(%struct.Rec* noundef %15, i8* noundef %18, %struct.Val* noundef %21)
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %23 = load %struct.Entry*, %struct.Entry** %oitems, align 8
  %24 = bitcast %struct.Entry* %23 to i8*
  call void @free(i8* noundef %24) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_add(%struct.Rec* noundef %rec, i8* noundef %key, %struct.Val* noundef %val) #0 {
entry:
  %rec.addr = alloca %struct.Rec*, align 8
  %key.addr = alloca i8*, align 8
  %val.addr = alloca %struct.Val*, align 8
  %e = alloca %struct.Entry*, align 8
  store %struct.Rec* %rec, %struct.Rec** %rec.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct.Val* %val, %struct.Val** %val.addr, align 8
  %0 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call %struct.Entry* @entry_get(%struct.Rec* noundef %0, i8* noundef %1)
  store %struct.Entry* %call, %struct.Entry** %e, align 8
  %2 = load %struct.Val*, %struct.Val** %val.addr, align 8
  %3 = load %struct.Entry*, %struct.Entry** %e, align 8
  %val1 = getelementptr inbounds %struct.Entry, %struct.Entry* %3, i32 0, i32 1
  store %struct.Val* %2, %struct.Val** %val1, align 8
  %4 = load %struct.Entry*, %struct.Entry** %e, align 8
  %key2 = getelementptr inbounds %struct.Entry, %struct.Entry* %4, i32 0, i32 0
  %5 = load i8*, i8** %key2, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %key.addr, align 8
  %7 = load %struct.Entry*, %struct.Entry** %e, align 8
  %key3 = getelementptr inbounds %struct.Entry, %struct.Entry* %7, i32 0, i32 0
  store i8* %6, i8** %key3, align 8
  %8 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %size = getelementptr inbounds %struct.Rec, %struct.Rec* %8, i32 0, i32 0
  %9 = load i32, i32* %size, align 8
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %size, align 8
  %10 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %cap = getelementptr inbounds %struct.Rec, %struct.Rec* %10, i32 0, i32 1
  %11 = load i32, i32* %cap, align 4
  %div = sdiv i32 %11, 2
  %cmp = icmp sgt i32 %inc, %div
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %12 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  call void @rec_grow(%struct.Rec* noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Rec* @rec_extend(%struct.Rec* noundef %rec, %struct.Val* noundef %args, %struct.Val* noundef %vals) #0 {
entry:
  %retval = alloca %struct.Rec*, align 8
  %rec.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %vals.addr = alloca %struct.Val*, align 8
  %arg = alloca %struct.Val*, align 8
  %val = alloca %struct.Val*, align 8
  %argnum = alloca i32, align 4
  %ret = alloca %struct.Rec*, align 8
  store %struct.Rec* %rec, %struct.Rec** %rec.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  store %struct.Val* %vals, %struct.Val** %vals.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %mul = mul nsw i32 2, %call
  store i32 %mul, i32* %argnum, align 4
  %1 = load i32, i32* %argnum, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %argnum, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %argnum, align 4
  %sub = sub nsw i32 0, %3
  %add = add nsw i32 %sub, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %add, %cond.false ]
  %conv = sext i32 %cond to i64
  %4 = load %struct.Rec*, %struct.Rec** %rec.addr, align 8
  %call1 = call %struct.Rec* @rec_new(i64 noundef %conv, %struct.Rec* noundef %4)
  store %struct.Rec* %call1, %struct.Rec** %ret, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %5 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t, align 8
  %cmp2 = icmp eq i32 %6, 2
  %lnot = xor i1 %cmp2, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %t4 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 0
  %8 = load i32, i32* %t4, align 8
  %cmp5 = icmp eq i32 %8, 2048
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %9, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %10 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %10, %struct.Val** %arg, align 8
  %11 = load %struct.Val*, %struct.Val** %vals.addr, align 8
  %v7 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %p8 = bitcast %union.anon* %v7 to %struct.anon.2*
  %car9 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p8, i32 0, i32 0
  %12 = load %struct.Val*, %struct.Val** %car9, align 8
  store %struct.Val* %12, %struct.Val** %val, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  store %struct.Val* %13, %struct.Val** %arg, align 8
  %14 = load %struct.Val*, %struct.Val** %vals.addr, align 8
  store %struct.Val* %14, %struct.Val** %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.Val*, %struct.Val** %arg, align 8
  %t10 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 0
  %16 = load i32, i32* %t10, align 8
  %cmp11 = icmp ne i32 %16, 64
  br i1 %cmp11, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load %struct.Val*, %struct.Val** %arg, align 8
  %t14 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 0
  %19 = load i32, i32* %t14, align 8
  %call15 = call i8* @tsp_type_str(i32 noundef %19)
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.32, i64 0, i64 0), i8* noundef %call15)
  store %struct.Rec* null, %struct.Rec** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end
  %20 = load %struct.Rec*, %struct.Rec** %ret, align 8
  %21 = load %struct.Val*, %struct.Val** %arg, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %21, i32 0, i32 1
  %s = bitcast %union.anon* %v18 to i8**
  %22 = load i8*, i8** %s, align 8
  %23 = load %struct.Val*, %struct.Val** %val, align 8
  call void @rec_add(%struct.Rec* noundef %20, i8* noundef %22, %struct.Val* noundef %23)
  %24 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %t19 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 0
  %25 = load i32, i32* %t19, align 8
  %cmp20 = icmp ne i32 %25, 2048
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end17
  br label %for.end

if.end23:                                         ; preds = %if.end17
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %26 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v24 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %p25 = bitcast %union.anon* %v24 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p25, i32 0, i32 1
  %27 = load %struct.Val*, %struct.Val** %cdr, align 8
  store %struct.Val* %27, %struct.Val** %args.addr, align 8
  %28 = load %struct.Val*, %struct.Val** %vals.addr, align 8
  %v26 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %p27 = bitcast %union.anon* %v26 to %struct.anon.2*
  %cdr28 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p27, i32 0, i32 1
  %29 = load %struct.Val*, %struct.Val** %cdr28, align 8
  store %struct.Val* %29, %struct.Val** %vals.addr, align 8
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %if.then22, %for.cond
  %30 = load %struct.Rec*, %struct.Rec** %ret, align 8
  store %struct.Rec* %30, %struct.Rec** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %do.body
  %31 = load %struct.Rec*, %struct.Rec** %retval, align 8
  ret %struct.Rec* %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @mk_val(i32 noundef %t) #0 {
entry:
  %t.addr = alloca i32, align 4
  %ret = alloca %struct.Val*, align 8
  store i32 %t, i32* %t.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 40) #11
  %0 = bitcast i8* %call to %struct.Val*
  store %struct.Val* %0, %struct.Val** %ret, align 8
  %tobool = icmp ne %struct.Val* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @perror(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #13
  call void @exit(i32 noundef 1) #12
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %t.addr, align 4
  %2 = load %struct.Val*, %struct.Val** %ret, align 8
  %t1 = getelementptr inbounds %struct.Val, %struct.Val* %2, i32 0, i32 0
  store i32 %1, i32* %t1, align 8
  %3 = load %struct.Val*, %struct.Val** %ret, align 8
  ret %struct.Val* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @mk_int(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %ret = alloca %struct.Val*, align 8
  store i32 %i, i32* %i.addr, align 4
  %call = call %struct.Val* @mk_val(i32 noundef 4)
  store %struct.Val* %call, %struct.Val** %ret, align 8
  %0 = load i32, i32* %i.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load %struct.Val*, %struct.Val** %ret, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %1, i32 0, i32 1
  %n = bitcast %union.anon* %v to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  store double %conv, double* %num, align 8
  %2 = load %struct.Val*, %struct.Val** %ret, align 8
  %v1 = getelementptr inbounds %struct.Val, %struct.Val* %2, i32 0, i32 1
  %n2 = bitcast %union.anon* %v1 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n2, i32 0, i32 1
  store double 1.000000e+00, double* %den, align 8
  %3 = load %struct.Val*, %struct.Val** %ret, align 8
  ret %struct.Val* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @mk_dec(double noundef %d) #0 {
entry:
  %d.addr = alloca double, align 8
  %ret = alloca %struct.Val*, align 8
  store double %d, double* %d.addr, align 8
  %call = call %struct.Val* @mk_val(i32 noundef 8)
  store %struct.Val* %call, %struct.Val** %ret, align 8
  %0 = load double, double* %d.addr, align 8
  %1 = load %struct.Val*, %struct.Val** %ret, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %1, i32 0, i32 1
  %n = bitcast %union.anon* %v to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  store double %0, double* %num, align 8
  %2 = load %struct.Val*, %struct.Val** %ret, align 8
  %v1 = getelementptr inbounds %struct.Val, %struct.Val* %2, i32 0, i32 1
  %n2 = bitcast %union.anon* %v1 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n2, i32 0, i32 1
  store double 1.000000e+00, double* %den, align 8
  %3 = load %struct.Val*, %struct.Val** %ret, align 8
  ret %struct.Val* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @mk_rat(i32 noundef %num, i32 noundef %den) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %num.addr = alloca i32, align 4
  %den.addr = alloca i32, align 4
  %ret = alloca %struct.Val*, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 %den, i32* %den.addr, align 4
  %0 = load i32, i32* %den.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0))
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  call void @frac_reduce(i32* noundef %num.addr, i32* noundef %den.addr)
  %2 = load i32, i32* %den.addr, align 4
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %den.addr, align 4
  %call3 = call i32 @abs(i32 noundef %3) #15
  store i32 %call3, i32* %den.addr, align 4
  %4 = load i32, i32* %num.addr, align 4
  %sub = sub nsw i32 0, %4
  store i32 %sub, i32* %num.addr, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load i32, i32* %den.addr, align 4
  %cmp5 = icmp eq i32 %5, 1
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %6 = load i32, i32* %num.addr, align 4
  %call7 = call %struct.Val* @mk_int(i32 noundef %6)
  store %struct.Val* %call7, %struct.Val** %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  %call9 = call %struct.Val* @mk_val(i32 noundef 16)
  store %struct.Val* %call9, %struct.Val** %ret, align 8
  %7 = load i32, i32* %num.addr, align 4
  %conv = sitofp i32 %7 to double
  %8 = load %struct.Val*, %struct.Val** %ret, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 1
  %n = bitcast %union.anon* %v to %struct.anon*
  %num10 = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  store double %conv, double* %num10, align 8
  %9 = load i32, i32* %den.addr, align 4
  %conv11 = sitofp i32 %9 to double
  %10 = load %struct.Val*, %struct.Val** %ret, align 8
  %v12 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %n13 = bitcast %union.anon* %v12 to %struct.anon*
  %den14 = getelementptr inbounds %struct.anon, %struct.anon* %n13, i32 0, i32 1
  store double %conv11, double* %den14, align 8
  %11 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %11, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then6, %do.body
  %12 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @mk_prim(i32 noundef %t, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* noundef %pr, i8* noundef %name) #0 {
entry:
  %t.addr = alloca i32, align 4
  %pr.addr = alloca %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)*, align 8
  %name.addr = alloca i8*, align 8
  %ret = alloca %struct.Val*, align 8
  store i32 %t, i32* %t.addr, align 4
  store %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* %pr, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)** %pr.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* %t.addr, align 4
  %call = call %struct.Val* @mk_val(i32 noundef %0)
  store %struct.Val* %call, %struct.Val** %ret, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct.Val*, %struct.Val** %ret, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %2, i32 0, i32 1
  %pr1 = bitcast %union.anon* %v to %struct.anon.0*
  %name2 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %pr1, i32 0, i32 0
  store i8* %1, i8** %name2, align 8
  %3 = load %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)*, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)** %pr.addr, align 8
  %4 = load %struct.Val*, %struct.Val** %ret, align 8
  %v3 = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 1
  %pr4 = bitcast %union.anon* %v3 to %struct.anon.0*
  %pr5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %pr4, i32 0, i32 1
  store %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)* %3, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)** %pr5, align 8
  %5 = load %struct.Val*, %struct.Val** %ret, align 8
  ret %struct.Val* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @mk_func(i32 noundef %t, i8* noundef %name, %struct.Val* noundef %args, %struct.Val* noundef %body, %struct.Rec* noundef %env) #0 {
entry:
  %t.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %body.addr = alloca %struct.Val*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %ret = alloca %struct.Val*, align 8
  store i32 %t, i32* %t.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  store %struct.Val* %body, %struct.Val** %body.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  %0 = load i32, i32* %t.addr, align 4
  %call = call %struct.Val* @mk_val(i32 noundef %0)
  store %struct.Val* %call, %struct.Val** %ret, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct.Val*, %struct.Val** %ret, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %2, i32 0, i32 1
  %f = bitcast %union.anon* %v to %struct.anon.1*
  %name1 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f, i32 0, i32 0
  store i8* %1, i8** %name1, align 8
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %4 = load %struct.Val*, %struct.Val** %ret, align 8
  %v2 = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 1
  %f3 = bitcast %union.anon* %v2 to %struct.anon.1*
  %args4 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f3, i32 0, i32 1
  store %struct.Val* %3, %struct.Val** %args4, align 8
  %5 = load %struct.Val*, %struct.Val** %body.addr, align 8
  %6 = load %struct.Val*, %struct.Val** %ret, align 8
  %v5 = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 1
  %f6 = bitcast %union.anon* %v5 to %struct.anon.1*
  %body7 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f6, i32 0, i32 2
  store %struct.Val* %5, %struct.Val** %body7, align 8
  %7 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %8 = load %struct.Val*, %struct.Val** %ret, align 8
  %v8 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 1
  %f9 = bitcast %union.anon* %v8 to %struct.anon.1*
  %env10 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f9, i32 0, i32 3
  store %struct.Rec* %7, %struct.Rec** %env10, align 8
  %9 = load %struct.Val*, %struct.Val** %ret, align 8
  ret %struct.Val* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @mk_rec(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %assoc) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %assoc.addr = alloca %struct.Val*, align 8
  %cap = alloca i32, align 4
  %v = alloca %struct.Val*, align 8
  %ret = alloca %struct.Val*, align 8
  %r6 = alloca %struct.Rec*, align 8
  %cur = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %assoc, %struct.Val** %assoc.addr, align 8
  %call = call %struct.Val* @mk_val(i32 noundef 4096)
  store %struct.Val* %call, %struct.Val** %ret, align 8
  %0 = load %struct.Val*, %struct.Val** %assoc.addr, align 8
  %tobool = icmp ne %struct.Val* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %2 = load %struct.Val*, %struct.Val** %ret, align 8
  %v1 = getelementptr inbounds %struct.Val, %struct.Val* %2, i32 0, i32 1
  %r = bitcast %union.anon* %v1 to %struct.Rec**
  store %struct.Rec* %1, %struct.Rec** %r, align 8
  %3 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %3, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.Val*, %struct.Val** %assoc.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %4)
  %mul = mul nsw i32 2, %call2
  store i32 %mul, i32* %cap, align 4
  %5 = load i32, i32* %cap, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i32, i32* %cap, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load i32, i32* %cap, align 4
  %sub = sub nsw i32 0, %7
  %add = add nsw i32 %sub, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %add, %cond.false ]
  %conv = sext i32 %cond to i64
  %call3 = call %struct.Rec* @rec_new(i64 noundef %conv, %struct.Rec* noundef null)
  %8 = load %struct.Val*, %struct.Val** %ret, align 8
  %v4 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 1
  %r5 = bitcast %union.anon* %v4 to %struct.Rec**
  store %struct.Rec* %call3, %struct.Rec** %r5, align 8
  %9 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %call7 = call %struct.Rec* @rec_new(i64 noundef 4, %struct.Rec* noundef %9)
  store %struct.Rec* %call7, %struct.Rec** %r6, align 8
  %10 = load %struct.Rec*, %struct.Rec** %r6, align 8
  %11 = load %struct.Val*, %struct.Val** %ret, align 8
  call void @rec_add(%struct.Rec* noundef %10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), %struct.Val* noundef %11)
  %12 = load %struct.Val*, %struct.Val** %assoc.addr, align 8
  store %struct.Val* %12, %struct.Val** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load %struct.Val*, %struct.Val** %cur, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 0
  %14 = load i32, i32* %t, align 8
  %cmp8 = icmp eq i32 %14, 2048
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.Val*, %struct.Val** %cur, align 8
  %v10 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 1
  %p = bitcast %union.anon* %v10 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %16 = load %struct.Val*, %struct.Val** %car, align 8
  %t11 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 0
  %17 = load i32, i32* %t11, align 8
  %cmp12 = icmp eq i32 %17, 2048
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct.Val*, %struct.Val** %cur, align 8
  %v14 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p15 = bitcast %union.anon* %v14 to %struct.anon.2*
  %car16 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p15, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car16, align 8
  %v17 = getelementptr inbounds %struct.Val, %struct.Val* %19, i32 0, i32 1
  %p18 = bitcast %union.anon* %v17 to %struct.anon.2*
  %car19 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p18, i32 0, i32 0
  %20 = load %struct.Val*, %struct.Val** %car19, align 8
  %t20 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 0
  %21 = load i32, i32* %t20, align 8
  %and = and i32 %21, 96
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.then22, label %if.else

if.then22:                                        ; preds = %land.lhs.true
  %22 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %23 = load %struct.Rec*, %struct.Rec** %r6, align 8
  %24 = load %struct.Val*, %struct.Val** %cur, align 8
  %v23 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 1
  %p24 = bitcast %union.anon* %v23 to %struct.anon.2*
  %car25 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p24, i32 0, i32 0
  %25 = load %struct.Val*, %struct.Val** %car25, align 8
  %v26 = getelementptr inbounds %struct.Val, %struct.Val* %25, i32 0, i32 1
  %p27 = bitcast %union.anon* %v26 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p27, i32 0, i32 1
  %26 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %p29 = bitcast %union.anon* %v28 to %struct.anon.2*
  %car30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p29, i32 0, i32 0
  %27 = load %struct.Val*, %struct.Val** %car30, align 8
  %call31 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %22, %struct.Rec* noundef %23, %struct.Val* noundef %27)
  store %struct.Val* %call31, %struct.Val** %v, align 8
  %tobool32 = icmp ne %struct.Val* %call31, null
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.then22
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end34:                                         ; preds = %if.then22
  %28 = load %struct.Val*, %struct.Val** %ret, align 8
  %v35 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %r36 = bitcast %union.anon* %v35 to %struct.Rec**
  %29 = load %struct.Rec*, %struct.Rec** %r36, align 8
  %30 = load %struct.Val*, %struct.Val** %cur, align 8
  %v37 = getelementptr inbounds %struct.Val, %struct.Val* %30, i32 0, i32 1
  %p38 = bitcast %union.anon* %v37 to %struct.anon.2*
  %car39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p38, i32 0, i32 0
  %31 = load %struct.Val*, %struct.Val** %car39, align 8
  %v40 = getelementptr inbounds %struct.Val, %struct.Val* %31, i32 0, i32 1
  %p41 = bitcast %union.anon* %v40 to %struct.anon.2*
  %car42 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p41, i32 0, i32 0
  %32 = load %struct.Val*, %struct.Val** %car42, align 8
  %v43 = getelementptr inbounds %struct.Val, %struct.Val* %32, i32 0, i32 1
  %s = bitcast %union.anon* %v43 to i8**
  %33 = load i8*, i8** %s, align 8
  %34 = load %struct.Val*, %struct.Val** %v, align 8
  call void @rec_add(%struct.Rec* noundef %29, i8* noundef %33, %struct.Val* noundef %34)
  br label %if.end68

if.else:                                          ; preds = %land.lhs.true, %for.body
  %35 = load %struct.Val*, %struct.Val** %cur, align 8
  %v44 = getelementptr inbounds %struct.Val, %struct.Val* %35, i32 0, i32 1
  %p45 = bitcast %union.anon* %v44 to %struct.anon.2*
  %car46 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p45, i32 0, i32 0
  %36 = load %struct.Val*, %struct.Val** %car46, align 8
  %t47 = getelementptr inbounds %struct.Val, %struct.Val* %36, i32 0, i32 0
  %37 = load i32, i32* %t47, align 8
  %cmp48 = icmp eq i32 %37, 64
  br i1 %cmp48, label %if.then50, label %if.else65

if.then50:                                        ; preds = %if.else
  %38 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %39 = load %struct.Rec*, %struct.Rec** %r6, align 8
  %40 = load %struct.Val*, %struct.Val** %cur, align 8
  %v51 = getelementptr inbounds %struct.Val, %struct.Val* %40, i32 0, i32 1
  %p52 = bitcast %union.anon* %v51 to %struct.anon.2*
  %car53 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p52, i32 0, i32 0
  %41 = load %struct.Val*, %struct.Val** %car53, align 8
  %call54 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %38, %struct.Rec* noundef %39, %struct.Val* noundef %41)
  store %struct.Val* %call54, %struct.Val** %v, align 8
  %tobool55 = icmp ne %struct.Val* %call54, null
  br i1 %tobool55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.then50
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end57:                                         ; preds = %if.then50
  %42 = load %struct.Val*, %struct.Val** %ret, align 8
  %v58 = getelementptr inbounds %struct.Val, %struct.Val* %42, i32 0, i32 1
  %r59 = bitcast %union.anon* %v58 to %struct.Rec**
  %43 = load %struct.Rec*, %struct.Rec** %r59, align 8
  %44 = load %struct.Val*, %struct.Val** %cur, align 8
  %v60 = getelementptr inbounds %struct.Val, %struct.Val* %44, i32 0, i32 1
  %p61 = bitcast %union.anon* %v60 to %struct.anon.2*
  %car62 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p61, i32 0, i32 0
  %45 = load %struct.Val*, %struct.Val** %car62, align 8
  %v63 = getelementptr inbounds %struct.Val, %struct.Val* %45, i32 0, i32 1
  %s64 = bitcast %union.anon* %v63 to i8**
  %46 = load i8*, i8** %s64, align 8
  %47 = load %struct.Val*, %struct.Val** %v, align 8
  call void @rec_add(%struct.Rec* noundef %43, i8* noundef %46, %struct.Val* noundef %47)
  br label %if.end67

if.else65:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else65
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.35, i64 0, i64 0))
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end67

if.end67:                                         ; preds = %do.end, %if.end57
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end34
  br label %for.inc

for.inc:                                          ; preds = %if.end68
  %49 = load %struct.Val*, %struct.Val** %cur, align 8
  %v69 = getelementptr inbounds %struct.Val, %struct.Val* %49, i32 0, i32 1
  %p70 = bitcast %union.anon* %v69 to %struct.anon.2*
  %cdr71 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p70, i32 0, i32 1
  %50 = load %struct.Val*, %struct.Val** %cdr71, align 8
  store %struct.Val* %50, %struct.Val** %cur, align 8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %51 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %51, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %do.body, %if.then56, %if.then33, %if.then
  %52 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %52
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sign(%struct.Tsp* noundef %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.Tsp*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 0
  %1 = load i8*, i8** %file, align 8
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec = getelementptr inbounds %struct.Tsp, %struct.Tsp* %2, i32 0, i32 1
  %3 = load i64, i64* %filec, align 8
  %add = add i64 %3, 0
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %add
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 45, label %sw.bb
    i32 43, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec1 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %5, i32 0, i32 1
  %6 = load i64, i64* %filec1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %filec1, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %7 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec3 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %7, i32 0, i32 1
  %8 = load i64, i64* %filec3, align 8
  %inc4 = add i64 %8, 1
  store i64 %inc4, i64* %filec3, align 8
  store i32 1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_int(%struct.Tsp* noundef %st) #0 {
entry:
  %st.addr = alloca %struct.Tsp*, align 8
  %ret = alloca i32, align 4
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 0
  %1 = load i8*, i8** %file, align 8
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec = getelementptr inbounds %struct.Tsp, %struct.Tsp* %2, i32 0, i32 1
  %3 = load i64, i64* %filec, align 8
  %add = add i64 %3, 0
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %add
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %call = call i16** @__ctype_b_loc() #15
  %5 = load i16*, i16** %call, align 8
  %6 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file1 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %6, i32 0, i32 0
  %7 = load i8*, i8** %file1, align 8
  %8 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec2 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %8, i32 0, i32 1
  %9 = load i64, i64* %filec2, align 8
  %add3 = add i64 %9, 0
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %add3
  %10 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %10 to i32
  %idxprom = sext i32 %conv5 to i64
  %arrayidx6 = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %11 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %11 to i32
  %and = and i32 %conv7, 2048
  %tobool8 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %tobool8, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load i32, i32* %ret, align 4
  %mul = mul nsw i32 %13, 10
  %14 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file9 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %14, i32 0, i32 0
  %15 = load i8*, i8** %file9, align 8
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec10 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %16, i32 0, i32 1
  %17 = load i64, i64* %filec10, align 8
  %add11 = add i64 %17, 0
  %arrayidx12 = getelementptr inbounds i8, i8* %15, i64 %add11
  %18 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %18 to i32
  %add14 = add nsw i32 %mul, %conv13
  %sub = sub nsw i32 %add14, 48
  store i32 %sub, i32* %ret, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec15 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %19, i32 0, i32 1
  %20 = load i64, i64* %filec15, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %filec15, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %land.end
  %21 = load i32, i32* %ret, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @read_sci(%struct.Tsp* noundef %st, double noundef %val, i32 noundef %isint) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %val.addr = alloca double, align 8
  %isint.addr = alloca i32, align 4
  %sign = alloca double, align 8
  %expo = alloca i32, align 4
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store double %val, double* %val.addr, align 8
  store i32 %isint, i32* %isint.addr, align 4
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 0
  %1 = load i8*, i8** %file, align 8
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec = getelementptr inbounds %struct.Tsp, %struct.Tsp* %2, i32 0, i32 1
  %3 = load i64, i64* %filec, align 8
  %add = add i64 %3, 0
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %add
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %call = call i32 @tolower(i32 noundef %conv) #14
  %cmp = icmp ne i32 %call, 101
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %finish

if.end:                                           ; preds = %entry
  %5 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec2 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %5, i32 0, i32 1
  %6 = load i64, i64* %filec2, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %filec2, align 8
  %7 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call3 = call i32 @read_sign(%struct.Tsp* noundef %7)
  %cmp4 = icmp eq i32 %call3, 1
  %8 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, double 1.000000e+01, double 1.000000e-01
  store double %cond, double* %sign, align 8
  %9 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call6 = call i32 @read_int(%struct.Tsp* noundef %9)
  store i32 %call6, i32* %expo, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %expo, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %expo, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load double, double* %sign, align 8
  %12 = load double, double* %val.addr, align 8
  %mul = fmul double %12, %11
  store double %mul, double* %val.addr, align 8
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %finish

finish:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %isint.addr, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %finish
  %14 = load double, double* %val.addr, align 8
  %conv9 = fptosi double %14 to i32
  %call10 = call %struct.Val* @mk_int(i32 noundef %conv9)
  store %struct.Val* %call10, %struct.Val** %retval, align 8
  br label %return

if.end11:                                         ; preds = %finish
  %15 = load double, double* %val.addr, align 8
  %call12 = call %struct.Val* @mk_dec(double noundef %15)
  store %struct.Val* %call12, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end11, %if.then8
  %16 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %16
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @read_num(%struct.Tsp* noundef %st) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %sign = alloca i32, align 4
  %num = alloca i32, align 4
  %oldc = alloca i64, align 8
  %d = alloca double, align 8
  %size = alloca i32, align 4
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call = call i32 @read_sign(%struct.Tsp* noundef %0)
  store i32 %call, i32* %sign, align 4
  %1 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call1 = call i32 @read_int(%struct.Tsp* noundef %1)
  store i32 %call1, i32* %num, align 4
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %2, i32 0, i32 0
  %3 = load i8*, i8** %file, align 8
  %4 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec = getelementptr inbounds %struct.Tsp, %struct.Tsp* %4, i32 0, i32 1
  %5 = load i64, i64* %filec, align 8
  %add = add i64 %5, 0
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %add
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 47, label %sw.bb
    i32 46, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file2 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %7, i32 0, i32 0
  %8 = load i8*, i8** %file2, align 8
  %9 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec3 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %9, i32 0, i32 1
  %10 = load i64, i64* %filec3, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %filec3, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %inc
  %call4 = call i32 @isnum(i8* noundef %add.ptr)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.36, i64 0, i64 0))
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb
  %12 = load i32, i32* %sign, align 4
  %13 = load i32, i32* %num, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call6 = call i32 @read_sign(%struct.Tsp* noundef %14)
  %15 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call7 = call i32 @read_int(%struct.Tsp* noundef %15)
  %mul8 = mul nsw i32 %call6, %call7
  %call9 = call %struct.Val* @mk_rat(i32 noundef %mul, i32 noundef %mul8)
  store %struct.Val* %call9, %struct.Val** %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %entry
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec11 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %16, i32 0, i32 1
  %17 = load i64, i64* %filec11, align 8
  %inc12 = add i64 %17, 1
  store i64 %inc12, i64* %filec11, align 8
  %18 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec13 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %18, i32 0, i32 1
  %19 = load i64, i64* %filec13, align 8
  store i64 %19, i64* %oldc, align 8
  %20 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call14 = call i32 @read_int(%struct.Tsp* noundef %20)
  %conv15 = sitofp i32 %call14 to double
  store double %conv15, double* %d, align 8
  %21 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec16 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %21, i32 0, i32 1
  %22 = load i64, i64* %filec16, align 8
  %23 = load i64, i64* %oldc, align 8
  %sub = sub i64 %22, %23
  %conv17 = trunc i64 %sub to i32
  store i32 %conv17, i32* %size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb10
  %24 = load i32, i32* %size, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %size, align 4
  %tobool18 = icmp ne i32 %24, 0
  br i1 %tobool18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load double, double* %d, align 8
  %div = fdiv double %25, 1.000000e+01
  store double %div, double* %d, align 8
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %26 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %27 = load i32, i32* %sign, align 4
  %conv19 = sitofp i32 %27 to double
  %28 = load i32, i32* %num, align 4
  %conv20 = sitofp i32 %28 to double
  %29 = load double, double* %d, align 8
  %add21 = fadd double %conv20, %29
  %mul22 = fmul double %conv19, %add21
  %call23 = call %struct.Val* @read_sci(%struct.Tsp* noundef %26, double noundef %mul22, i32 noundef 0)
  store %struct.Val* %call23, %struct.Val** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  %30 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %31 = load i32, i32* %sign, align 4
  %32 = load i32, i32* %num, align 4
  %mul24 = mul nsw i32 %31, %32
  %conv25 = sitofp i32 %mul24 to double
  %call26 = call %struct.Val* @read_sci(%struct.Tsp* noundef %30, double noundef %conv25, i32 noundef 1)
  store %struct.Val* %call26, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %while.end, %if.end, %do.body
  %33 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @esc_char(i8 noundef signext %c) #0 {
entry:
  %retval = alloca i8, align 1
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 110, label %sw.bb
    i32 114, label %sw.bb1
    i32 116, label %sw.bb2
    i32 10, label %sw.bb3
    i32 92, label %sw.bb4
    i32 34, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  store i8 10, i8* %retval, align 1
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8 13, i8* %retval, align 1
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8 9, i8* %retval, align 1
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8 32, i8* %retval, align 1
  br label %return

sw.bb4:                                           ; preds = %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb4
  %1 = load i8, i8* %c.addr, align 1
  store i8 %1, i8* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i8, i8* %retval, align 1
  ret i8 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @esc_str(i8* noundef %s, i32 noundef %len, i32 noundef %do_esc) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %do_esc.addr = alloca i32, align 4
  %pos = alloca i8*, align 8
  %ret = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %do_esc, i32* %do_esc.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call noalias i8* @malloc(i64 noundef %mul) #11
  store i8* %call, i8** %ret, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @perror(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #13
  call void @exit(i32 noundef 1) #12
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %ret, align 8
  store i8* %1, i8** %pos, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8*, i8** %pos, align 8
  %3 = load i8*, i8** %ret, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = load i32, i32* %len.addr, align 4
  %conv1 = sext i32 %4 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br i1 %cmp4, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %do_esc.addr, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %8 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %9 = load i8, i8* %incdec.ptr, align 1
  %call7 = call signext i8 @esc_char(i8 noundef signext %9)
  %conv8 = sext i8 %call7 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv9 = sext i8 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv8, %cond.true ], [ %conv9, %cond.false ]
  %conv10 = trunc i32 %cond to i8
  %12 = load i8*, i8** %pos, align 8
  store i8 %conv10, i8* %12, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %13 = load i8*, i8** %pos, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr11, i8** %pos, align 8
  %14 = load i8*, i8** %s.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr12, i8** %s.addr, align 8
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %15 = load i8*, i8** %pos, align 8
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %ret, align 8
  ret i8* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @read_str(%struct.Tsp* noundef %st, %struct.Val* (%struct.Tsp*, i8*)* noundef %mk_fn) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %mk_fn.addr = alloca %struct.Val* (%struct.Tsp*, i8*)*, align 8
  %len = alloca i32, align 4
  %s = alloca i8*, align 8
  %endchar = alloca i8, align 1
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Val* (%struct.Tsp*, i8*)* %mk_fn, %struct.Val* (%struct.Tsp*, i8*)** %mk_fn.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 0
  %1 = load i8*, i8** %file, align 8
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec = getelementptr inbounds %struct.Tsp, %struct.Tsp* %2, i32 0, i32 1
  %3 = load i64, i64* %filec, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %filec, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %inc
  store i8* %add.ptr, i8** %s, align 8
  %4 = load %struct.Val* (%struct.Tsp*, i8*)*, %struct.Val* (%struct.Tsp*, i8*)** %mk_fn.addr, align 8
  %cmp = icmp eq %struct.Val* (%struct.Tsp*, i8*)* %4, @mk_str
  %5 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 34, i32 126
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %endchar, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file1 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %6, i32 0, i32 0
  %7 = load i8*, i8** %file1, align 8
  %8 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec2 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %8, i32 0, i32 1
  %9 = load i64, i64* %filec2, align 8
  %add = add i64 %9, 0
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %add
  %10 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %10 to i32
  %11 = load i8, i8* %endchar, align 1
  %conv4 = sext i8 %11 to i32
  %cmp5 = icmp ne i32 %conv3, %conv4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file7 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %12, i32 0, i32 0
  %13 = load i8*, i8** %file7, align 8
  %14 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec8 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %14, i32 0, i32 1
  %15 = load i64, i64* %filec8, align 8
  %add9 = add i64 %15, 0
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 %add9
  %16 = load i8, i8* %arrayidx10, align 1
  %tobool = icmp ne i8 %16, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i8, i8* %endchar, align 1
  %conv11 = sext i8 %18 to i32
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv11)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end29

if.else:                                          ; preds = %for.body
  %19 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file12 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %19, i32 0, i32 0
  %20 = load i8*, i8** %file12, align 8
  %21 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec13 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %21, i32 0, i32 1
  %22 = load i64, i64* %filec13, align 8
  %add14 = add i64 %22, 0
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 %add14
  %23 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %23 to i32
  %cmp17 = icmp eq i32 %conv16, 92
  br i1 %cmp17, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %24 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file19 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %24, i32 0, i32 0
  %25 = load i8*, i8** %file19, align 8
  %26 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec20 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %26, i32 0, i32 1
  %27 = load i64, i64* %filec20, align 8
  %add21 = add i64 %27, -1
  %arrayidx22 = getelementptr inbounds i8, i8* %25, i64 %add21
  %28 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %28 to i32
  %cmp24 = icmp ne i32 %conv23, 92
  br i1 %cmp24, label %if.then26, label %if.end

if.then26:                                        ; preds = %land.lhs.true
  %29 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec27 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %29, i32 0, i32 1
  %30 = load i64, i64* %filec27, align 8
  %inc28 = add i64 %30, 1
  store i64 %inc28, i64* %filec27, align 8
  br label %if.end

if.end:                                           ; preds = %if.then26, %land.lhs.true, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end, %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %31 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec30 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %31, i32 0, i32 1
  %32 = load i64, i64* %filec30, align 8
  %inc31 = add i64 %32, 1
  store i64 %inc31, i64* %filec30, align 8
  %33 = load i32, i32* %len, align 4
  %inc32 = add nsw i32 %33, 1
  store i32 %inc32, i32* %len, align 4
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %34 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec33 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %34, i32 0, i32 1
  %35 = load i64, i64* %filec33, align 8
  %inc34 = add i64 %35, 1
  store i64 %inc34, i64* %filec33, align 8
  %36 = load %struct.Val* (%struct.Tsp*, i8*)*, %struct.Val* (%struct.Tsp*, i8*)** %mk_fn.addr, align 8
  %37 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %38 = load i8*, i8** %s, align 8
  %39 = load i32, i32* %len, align 4
  %40 = load %struct.Val* (%struct.Tsp*, i8*)*, %struct.Val* (%struct.Tsp*, i8*)** %mk_fn.addr, align 8
  %cmp35 = icmp eq %struct.Val* (%struct.Tsp*, i8*)* %40, @mk_str
  %conv36 = zext i1 %cmp35 to i32
  %call37 = call i8* @esc_str(i8* noundef %38, i32 noundef %39, i32 noundef %conv36)
  %call38 = call %struct.Val* %36(%struct.Tsp* noundef %37, i8* noundef %call37)
  store %struct.Val* %call38, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %do.body
  %41 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @read_sym(%struct.Tsp* noundef %st, i32 (i8)* noundef %is_char) #0 {
entry:
  %st.addr = alloca %struct.Tsp*, align 8
  %is_char.addr = alloca i32 (i8)*, align 8
  %len = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store i32 (i8)* %is_char, i32 (i8)** %is_char.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 0
  %1 = load i8*, i8** %file, align 8
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec = getelementptr inbounds %struct.Tsp, %struct.Tsp* %2, i32 0, i32 1
  %3 = load i64, i64* %filec, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %3
  store i8* %add.ptr, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file1 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %4, i32 0, i32 0
  %5 = load i8*, i8** %file1, align 8
  %6 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec2 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %6, i32 0, i32 1
  %7 = load i64, i64* %filec2, align 8
  %add = add i64 %7, 0
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %add
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32 (i8)*, i32 (i8)** %is_char.addr, align 8
  %10 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file3 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %10, i32 0, i32 0
  %11 = load i8*, i8** %file3, align 8
  %12 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec4 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %12, i32 0, i32 1
  %13 = load i64, i64* %filec4, align 8
  %add5 = add i64 %13, 0
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 %add5
  %14 = load i8, i8* %arrayidx6, align 1
  %call = call i32 %9(i8 noundef signext %14)
  %tobool7 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %tobool7, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %16 = load i32, i32* %len, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec8 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %17, i32 0, i32 1
  %18 = load i64, i64* %filec8, align 8
  %inc9 = add i64 %18, 1
  store i64 %inc9, i64* %filec8, align 8
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %land.end
  %19 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %20 = load i8*, i8** %s, align 8
  %21 = load i32, i32* %len, align 4
  %call10 = call i8* @esc_str(i8* noundef %20, i32 noundef %21, i32 noundef 0)
  %call11 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %19, i8* noundef %call10)
  ret %struct.Val* %call11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @read_pair(%struct.Tsp* noundef %st, i8 noundef signext %endchar) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %endchar.addr = alloca i8, align 1
  %v = alloca %struct.Val*, align 8
  %ret = alloca %struct.Val*, align 8
  %skipnl = alloca i32, align 4
  %pos = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store i8 %endchar, i8* %endchar.addr, align 1
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 3
  %1 = load %struct.Val*, %struct.Val** %nil, align 8
  %call = call %struct.Val* @mk_pair(%struct.Val* noundef null, %struct.Val* noundef %1)
  store %struct.Val* %call, %struct.Val** %ret, align 8
  %2 = load i8, i8* %endchar.addr, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 10
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* %skipnl, align 4
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %4 = load i32, i32* %skipnl, align 4
  call void @skip_ws(%struct.Tsp* noundef %3, i32 noundef %4)
  %5 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %5, %struct.Val** %pos, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %6, i32 0, i32 0
  %7 = load i8*, i8** %file, align 8
  %8 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec = getelementptr inbounds %struct.Tsp, %struct.Tsp* %8, i32 0, i32 1
  %9 = load i64, i64* %filec, align 8
  %add = add i64 %9, 0
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %add
  %10 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %10 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file3 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %11, i32 0, i32 0
  %12 = load i8*, i8** %file3, align 8
  %13 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec4 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %13, i32 0, i32 1
  %14 = load i64, i64* %filec4, align 8
  %add5 = add i64 %14, 0
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 %add5
  %15 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %15 to i32
  %16 = load i8, i8* %endchar.addr, align 1
  %conv8 = sext i8 %16 to i32
  %cmp9 = icmp ne i32 %conv7, %conv8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp9, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %18 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call11 = call %struct.Val* @tisp_read(%struct.Tsp* noundef %18)
  store %struct.Val* %call11, %struct.Val** %v, align 8
  %tobool12 = icmp ne %struct.Val* %call11, null
  br i1 %tobool12, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  %19 = load %struct.Val*, %struct.Val** %v, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %19, i32 0, i32 0
  %20 = load i32, i32* %t, align 8
  %cmp13 = icmp eq i32 %20, 64
  br i1 %cmp13, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end
  %21 = load %struct.Val*, %struct.Val** %v, align 8
  %v15 = getelementptr inbounds %struct.Val, %struct.Val* %21, i32 0, i32 1
  %s = bitcast %union.anon* %v15 to i8**
  %22 = load i8*, i8** %s, align 8
  %call16 = call i32 @strncmp(i8* noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i64 noundef 2) #14
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end24, label %if.then18

if.then18:                                        ; preds = %land.lhs.true
  %23 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %24 = load i32, i32* %skipnl, align 4
  call void @skip_ws(%struct.Tsp* noundef %23, i32 noundef %24)
  %25 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call19 = call %struct.Val* @tisp_read(%struct.Tsp* noundef %25)
  store %struct.Val* %call19, %struct.Val** %v, align 8
  %tobool20 = icmp ne %struct.Val* %call19, null
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.then18
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end22:                                         ; preds = %if.then18
  %26 = load %struct.Val*, %struct.Val** %v, align 8
  %27 = load %struct.Val*, %struct.Val** %pos, align 8
  %v23 = getelementptr inbounds %struct.Val, %struct.Val* %27, i32 0, i32 1
  %p = bitcast %union.anon* %v23 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 1
  store %struct.Val* %26, %struct.Val** %cdr, align 8
  br label %for.end

if.end24:                                         ; preds = %land.lhs.true, %if.end
  %28 = load %struct.Val*, %struct.Val** %v, align 8
  %29 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil25 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %29, i32 0, i32 3
  %30 = load %struct.Val*, %struct.Val** %nil25, align 8
  %call26 = call %struct.Val* @mk_pair(%struct.Val* noundef %28, %struct.Val* noundef %30)
  %31 = load %struct.Val*, %struct.Val** %pos, align 8
  %v27 = getelementptr inbounds %struct.Val, %struct.Val* %31, i32 0, i32 1
  %p28 = bitcast %union.anon* %v27 to %struct.anon.2*
  %cdr29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p28, i32 0, i32 1
  store %struct.Val* %call26, %struct.Val** %cdr29, align 8
  %32 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %33 = load i32, i32* %skipnl, align 4
  call void @skip_ws(%struct.Tsp* noundef %32, i32 noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %34 = load %struct.Val*, %struct.Val** %pos, align 8
  %v30 = getelementptr inbounds %struct.Val, %struct.Val* %34, i32 0, i32 1
  %p31 = bitcast %union.anon* %v30 to %struct.anon.2*
  %cdr32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p31, i32 0, i32 1
  %35 = load %struct.Val*, %struct.Val** %cdr32, align 8
  store %struct.Val* %35, %struct.Val** %pos, align 8
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %if.end22, %land.end
  %36 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %37 = load i32, i32* %skipnl, align 4
  call void @skip_ws(%struct.Tsp* noundef %36, i32 noundef %37)
  %38 = load i32, i32* %skipnl, align 4
  %tobool33 = icmp ne i32 %38, 0
  br i1 %tobool33, label %land.lhs.true34, label %if.end46

land.lhs.true34:                                  ; preds = %for.end
  %39 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file35 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %39, i32 0, i32 0
  %40 = load i8*, i8** %file35, align 8
  %41 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec36 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %41, i32 0, i32 1
  %42 = load i64, i64* %filec36, align 8
  %add37 = add i64 %42, 0
  %arrayidx38 = getelementptr inbounds i8, i8* %40, i64 %add37
  %43 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %43 to i32
  %44 = load i8, i8* %endchar.addr, align 1
  %conv40 = sext i8 %44 to i32
  %cmp41 = icmp ne i32 %conv39, %conv40
  br i1 %cmp41, label %if.then43, label %if.end46

if.then43:                                        ; preds = %land.lhs.true34
  br label %do.body

do.body:                                          ; preds = %if.then43
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i8, i8* %endchar.addr, align 1
  %conv44 = sext i8 %46 to i32
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv44)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end46

if.end46:                                         ; preds = %do.end, %land.lhs.true34, %for.end
  %47 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec47 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %47, i32 0, i32 1
  %48 = load i64, i64* %filec47, align 8
  %inc = add i64 %48, 1
  store i64 %inc, i64* %filec47, align 8
  %49 = load %struct.Val*, %struct.Val** %ret, align 8
  %v48 = getelementptr inbounds %struct.Val, %struct.Val* %49, i32 0, i32 1
  %p49 = bitcast %union.anon* %v48 to %struct.anon.2*
  %cdr50 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p49, i32 0, i32 1
  %50 = load %struct.Val*, %struct.Val** %cdr50, align 8
  store %struct.Val* %50, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end46, %do.body, %if.then21, %if.then
  %51 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %51
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @tisp_read_sexpr(%struct.Tsp* noundef %st) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %i = alloca i32, align 4
  %v = alloca %struct.Val*, align 8
  %v112 = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  call void @skip_ws(%struct.Tsp* noundef %0, i32 noundef 1)
  %1 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %1, i32 0, i32 0
  %2 = load i8*, i8** %file, align 8
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec = getelementptr inbounds %struct.Tsp, %struct.Tsp* %3, i32 0, i32 1
  %4 = load i64, i64* %filec, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %4
  %call = call i64 @strlen(i8* noundef %add.ptr) #14
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %none = getelementptr inbounds %struct.Tsp, %struct.Tsp* %5, i32 0, i32 2
  %6 = load %struct.Val*, %struct.Val** %none, align 8
  store %struct.Val* %6, %struct.Val** %retval, align 8
  br label %do.end

if.end:                                           ; preds = %entry
  %7 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file1 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %7, i32 0, i32 0
  %8 = load i8*, i8** %file1, align 8
  %9 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec2 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %9, i32 0, i32 1
  %10 = load i64, i64* %filec2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %10
  %call4 = call i32 @isnum(i8* noundef %add.ptr3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %11 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call6 = call %struct.Val* @read_num(%struct.Tsp* noundef %11)
  store %struct.Val* %call6, %struct.Val** %retval, align 8
  br label %do.end

if.end7:                                          ; preds = %if.end
  %12 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file8 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %12, i32 0, i32 0
  %13 = load i8*, i8** %file8, align 8
  %14 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec9 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %14, i32 0, i32 1
  %15 = load i64, i64* %filec9, align 8
  %add = add i64 %15, 0
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add
  %16 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %16 to i32
  %cmp10 = icmp eq i32 %conv, 34
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end7
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call13 = call %struct.Val* @read_str(%struct.Tsp* noundef %17, %struct.Val* (%struct.Tsp*, i8*)* noundef @mk_str)
  store %struct.Val* %call13, %struct.Val** %retval, align 8
  br label %do.end

if.end14:                                         ; preds = %if.end7
  %18 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file15 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %18, i32 0, i32 0
  %19 = load i8*, i8** %file15, align 8
  %20 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec16 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %20, i32 0, i32 1
  %21 = load i64, i64* %filec16, align 8
  %add17 = add i64 %21, 0
  %arrayidx18 = getelementptr inbounds i8, i8* %19, i64 %add17
  %22 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %22 to i32
  %cmp20 = icmp eq i32 %conv19, 126
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end14
  %23 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call23 = call %struct.Val* @read_str(%struct.Tsp* noundef %23, %struct.Val* (%struct.Tsp*, i8*)* noundef @mk_sym)
  store %struct.Val* %call23, %struct.Val** %retval, align 8
  br label %do.end

if.end24:                                         ; preds = %if.end14
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end24
  %24 = load i32, i32* %i, align 4
  %conv25 = sext i32 %24 to i64
  %cmp26 = icmp ult i64 %conv25, 12
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file28 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %25, i32 0, i32 0
  %26 = load i8*, i8** %file28, align 8
  %27 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec29 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %27, i32 0, i32 1
  %28 = load i64, i64* %filec29, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %26, i64 %28
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx31 = getelementptr inbounds [12 x i8*], [12 x i8*]* @tisp_read_sexpr.prefix, i64 0, i64 %idxprom
  %30 = load i8*, i8** %arrayidx31, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %31 to i64
  %arrayidx33 = getelementptr inbounds [12 x i8*], [12 x i8*]* @tisp_read_sexpr.prefix, i64 0, i64 %idxprom32
  %32 = load i8*, i8** %arrayidx33, align 8
  %call34 = call i64 @strlen(i8* noundef %32) #14
  %call35 = call i32 @strncmp(i8* noundef %add.ptr30, i8* noundef %30, i64 noundef %call34) #14
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end59, label %if.then37

if.then37:                                        ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %33 to i64
  %arrayidx39 = getelementptr inbounds [12 x i8*], [12 x i8*]* @tisp_read_sexpr.prefix, i64 0, i64 %idxprom38
  %34 = load i8*, i8** %arrayidx39, align 8
  %call40 = call i64 @strlen(i8* noundef %34) #14
  %35 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %35 to i64
  %arrayidx42 = getelementptr inbounds [12 x i8*], [12 x i8*]* @tisp_read_sexpr.prefix, i64 0, i64 %idxprom41
  %36 = load i8*, i8** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %37 to i32
  %cmp45 = icmp eq i32 %conv44, 34
  %conv46 = zext i1 %cmp45 to i32
  %conv47 = sext i32 %conv46 to i64
  %sub = sub i64 %call40, %conv47
  %38 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec48 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %38, i32 0, i32 1
  %39 = load i64, i64* %filec48, align 8
  %add49 = add i64 %39, %sub
  store i64 %add49, i64* %filec48, align 8
  %40 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call50 = call %struct.Val* @tisp_read(%struct.Tsp* noundef %40)
  store %struct.Val* %call50, %struct.Val** %v, align 8
  %tobool51 = icmp ne %struct.Val* %call50, null
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.then37
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %do.end

if.end53:                                         ; preds = %if.then37
  %41 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %42 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %43 = load i32, i32* %i, align 4
  %add54 = add nsw i32 %43, 1
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [12 x i8*], [12 x i8*]* @tisp_read_sexpr.prefix, i64 0, i64 %idxprom55
  %44 = load i8*, i8** %arrayidx56, align 8
  %call57 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %42, i8* noundef %44)
  %45 = load %struct.Val*, %struct.Val** %v, align 8
  %call58 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %41, i32 noundef 2, %struct.Val* noundef %call57, %struct.Val* noundef %45)
  store %struct.Val* %call58, %struct.Val** %retval, align 8
  br label %do.end

if.end59:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end59
  %46 = load i32, i32* %i, align 4
  %add60 = add nsw i32 %46, 2
  store i32 %add60, i32* %i, align 4
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %47 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file61 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %47, i32 0, i32 0
  %48 = load i8*, i8** %file61, align 8
  %49 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec62 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %49, i32 0, i32 1
  %50 = load i64, i64* %filec62, align 8
  %add63 = add i64 %50, 0
  %arrayidx64 = getelementptr inbounds i8, i8* %48, i64 %add63
  %51 = load i8, i8* %arrayidx64, align 1
  %call65 = call i32 @is_op(i8 noundef signext %51)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %for.end
  %52 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call68 = call %struct.Val* @read_sym(%struct.Tsp* noundef %52, i32 (i8)* noundef @is_op)
  store %struct.Val* %call68, %struct.Val** %retval, align 8
  br label %do.end

if.end69:                                         ; preds = %for.end
  %53 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file70 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %53, i32 0, i32 0
  %54 = load i8*, i8** %file70, align 8
  %55 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec71 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %55, i32 0, i32 1
  %56 = load i64, i64* %filec71, align 8
  %add72 = add i64 %56, 0
  %arrayidx73 = getelementptr inbounds i8, i8* %54, i64 %add72
  %57 = load i8, i8* %arrayidx73, align 1
  %call74 = call i32 @is_sym(i8 noundef signext %57)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end69
  %58 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call77 = call %struct.Val* @read_sym(%struct.Tsp* noundef %58, i32 (i8)* noundef @is_sym)
  store %struct.Val* %call77, %struct.Val** %retval, align 8
  br label %do.end

if.end78:                                         ; preds = %if.end69
  %59 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file79 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %59, i32 0, i32 0
  %60 = load i8*, i8** %file79, align 8
  %61 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec80 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %61, i32 0, i32 1
  %62 = load i64, i64* %filec80, align 8
  %add81 = add i64 %62, 0
  %arrayidx82 = getelementptr inbounds i8, i8* %60, i64 %add81
  %63 = load i8, i8* %arrayidx82, align 1
  %conv83 = sext i8 %63 to i32
  %cmp84 = icmp eq i32 %conv83, 40
  br i1 %cmp84, label %if.then86, label %if.end89

if.then86:                                        ; preds = %if.end78
  %64 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec87 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %64, i32 0, i32 1
  %65 = load i64, i64* %filec87, align 8
  %inc = add i64 %65, 1
  store i64 %inc, i64* %filec87, align 8
  %66 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call88 = call %struct.Val* @read_pair(%struct.Tsp* noundef %66, i8 noundef signext 41)
  store %struct.Val* %call88, %struct.Val** %retval, align 8
  br label %do.end

if.end89:                                         ; preds = %if.end78
  %67 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file90 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %67, i32 0, i32 0
  %68 = load i8*, i8** %file90, align 8
  %69 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec91 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %69, i32 0, i32 1
  %70 = load i64, i64* %filec91, align 8
  %add92 = add i64 %70, 0
  %arrayidx93 = getelementptr inbounds i8, i8* %68, i64 %add92
  %71 = load i8, i8* %arrayidx93, align 1
  %conv94 = sext i8 %71 to i32
  %cmp95 = icmp eq i32 %conv94, 91
  br i1 %cmp95, label %if.then97, label %if.end103

if.then97:                                        ; preds = %if.end89
  %72 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec98 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %72, i32 0, i32 1
  %73 = load i64, i64* %filec98, align 8
  %inc99 = add i64 %73, 1
  store i64 %inc99, i64* %filec98, align 8
  %74 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call100 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %74, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0))
  %75 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call101 = call %struct.Val* @read_pair(%struct.Tsp* noundef %75, i8 noundef signext 93)
  %call102 = call %struct.Val* @mk_pair(%struct.Val* noundef %call100, %struct.Val* noundef %call101)
  store %struct.Val* %call102, %struct.Val** %retval, align 8
  br label %do.end

if.end103:                                        ; preds = %if.end89
  %76 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file104 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %76, i32 0, i32 0
  %77 = load i8*, i8** %file104, align 8
  %78 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec105 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %78, i32 0, i32 1
  %79 = load i64, i64* %filec105, align 8
  %add106 = add i64 %79, 0
  %arrayidx107 = getelementptr inbounds i8, i8* %77, i64 %add106
  %80 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %80 to i32
  %cmp109 = icmp eq i32 %conv108, 123
  br i1 %cmp109, label %if.then111, label %if.end121

if.then111:                                       ; preds = %if.end103
  %81 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec113 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %81, i32 0, i32 1
  %82 = load i64, i64* %filec113, align 8
  %inc114 = add i64 %82, 1
  store i64 %inc114, i64* %filec113, align 8
  %83 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call115 = call %struct.Val* @read_pair(%struct.Tsp* noundef %83, i8 noundef signext 125)
  store %struct.Val* %call115, %struct.Val** %v112, align 8
  %tobool116 = icmp ne %struct.Val* %call115, null
  br i1 %tobool116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %if.then111
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %do.end

if.end118:                                        ; preds = %if.then111
  %84 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call119 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %84, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %85 = load %struct.Val*, %struct.Val** %v112, align 8
  %call120 = call %struct.Val* @mk_pair(%struct.Val* noundef %call119, %struct.Val* noundef %85)
  store %struct.Val* %call120, %struct.Val** %retval, align 8
  br label %do.end

if.end121:                                        ; preds = %if.end103
  br label %do.body

do.body:                                          ; preds = %if.end121
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file122 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %87, i32 0, i32 0
  %88 = load i8*, i8** %file122, align 8
  %89 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec123 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %89, i32 0, i32 1
  %90 = load i64, i64* %filec123, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %88, i64 %90
  %91 = load i8, i8* %arrayidx124, align 1
  %conv125 = sext i8 %91 to i32
  %92 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file126 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %92, i32 0, i32 0
  %93 = load i8*, i8** %file126, align 8
  %94 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec127 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %94, i32 0, i32 1
  %95 = load i64, i64* %filec127, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %93, i64 %95
  %96 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %96 to i32
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv125, i32 noundef %conv129)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %do.end

do.end:                                           ; preds = %if.then, %if.then5, %if.then12, %if.then22, %if.then52, %if.end53, %if.then67, %if.then76, %if.then86, %if.then97, %if.then117, %if.end118, %do.body
  %97 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %97
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @tisp_read_sugar(%struct.Tsp* noundef %st, %struct.Val* noundef %v) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %v.addr = alloca %struct.Val*, align 8
  %lst = alloca %struct.Val*, align 8
  %w = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Val* %v, %struct.Val** %v.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 0
  %1 = load i8*, i8** %file, align 8
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec = getelementptr inbounds %struct.Tsp, %struct.Tsp* %2, i32 0, i32 1
  %3 = load i64, i64* %filec, align 8
  %add = add i64 %3, 0
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %add
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 40
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec2 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %5, i32 0, i32 1
  %6 = load i64, i64* %filec2, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %filec2, align 8
  %7 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call = call %struct.Val* @read_pair(%struct.Tsp* noundef %7, i8 noundef signext 41)
  store %struct.Val* %call, %struct.Val** %lst, align 8
  %tobool = icmp ne %struct.Val* %call, null
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %9 = load %struct.Val*, %struct.Val** %lst, align 8
  %call4 = call %struct.Val* @mk_pair(%struct.Val* noundef %8, %struct.Val* noundef %9)
  store %struct.Val* %call4, %struct.Val** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %10 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file5 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %10, i32 0, i32 0
  %11 = load i8*, i8** %file5, align 8
  %12 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec6 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %12, i32 0, i32 1
  %13 = load i64, i64* %filec6, align 8
  %add7 = add i64 %13, 0
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 %add7
  %14 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv9, 123
  br i1 %cmp10, label %if.then12, label %if.else23

if.then12:                                        ; preds = %if.else
  %15 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec13 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %15, i32 0, i32 1
  %16 = load i64, i64* %filec13, align 8
  %inc14 = add i64 %16, 1
  store i64 %inc14, i64* %filec13, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call15 = call %struct.Val* @read_pair(%struct.Tsp* noundef %17, i8 noundef signext 125)
  store %struct.Val* %call15, %struct.Val** %lst, align 8
  %tobool16 = icmp ne %struct.Val* %call15, null
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.then12
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.then12
  %18 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %19 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call19 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0))
  %20 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %21 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call20 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %22 = load %struct.Val*, %struct.Val** %lst, align 8
  %call21 = call %struct.Val* @mk_pair(%struct.Val* noundef %call20, %struct.Val* noundef %22)
  %call22 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %18, i32 noundef 3, %struct.Val* noundef %call19, %struct.Val* noundef %20, %struct.Val* noundef %call21)
  store %struct.Val* %call22, %struct.Val** %retval, align 8
  br label %return

if.else23:                                        ; preds = %if.else
  %23 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file24 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %23, i32 0, i32 0
  %24 = load i8*, i8** %file24, align 8
  %25 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec25 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %25, i32 0, i32 1
  %26 = load i64, i64* %filec25, align 8
  %add26 = add i64 %26, 0
  %arrayidx27 = getelementptr inbounds i8, i8* %24, i64 %add26
  %27 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %27 to i32
  %cmp29 = icmp eq i32 %conv28, 58
  br i1 %cmp29, label %if.then31, label %if.else63

if.then31:                                        ; preds = %if.else23
  %28 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec32 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %28, i32 0, i32 1
  %29 = load i64, i64* %filec32, align 8
  %inc33 = add i64 %29, 1
  store i64 %inc33, i64* %filec32, align 8
  %30 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file34 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %30, i32 0, i32 0
  %31 = load i8*, i8** %file34, align 8
  %32 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec35 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %32, i32 0, i32 1
  %33 = load i64, i64* %filec35, align 8
  %add36 = add i64 %33, 0
  %arrayidx37 = getelementptr inbounds i8, i8* %31, i64 %add36
  %34 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %34 to i32
  switch i32 %conv38, label %sw.default [
    i32 40, label %sw.bb
    i32 58, label %sw.bb48
  ]

sw.bb:                                            ; preds = %if.then31
  %35 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec39 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %35, i32 0, i32 1
  %36 = load i64, i64* %filec39, align 8
  %inc40 = add i64 %36, 1
  store i64 %inc40, i64* %filec39, align 8
  %37 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call41 = call %struct.Val* @read_pair(%struct.Tsp* noundef %37, i8 noundef signext 41)
  store %struct.Val* %call41, %struct.Val** %w, align 8
  %tobool42 = icmp ne %struct.Val* %call41, null
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %sw.bb
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end44:                                         ; preds = %sw.bb
  %38 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call45 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %38, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0))
  %39 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %40 = load %struct.Val*, %struct.Val** %w, align 8
  %call46 = call %struct.Val* @mk_pair(%struct.Val* noundef %39, %struct.Val* noundef %40)
  %call47 = call %struct.Val* @mk_pair(%struct.Val* noundef %call45, %struct.Val* noundef %call46)
  store %struct.Val* %call47, %struct.Val** %retval, align 8
  br label %return

sw.bb48:                                          ; preds = %if.then31
  %41 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec49 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %41, i32 0, i32 1
  %42 = load i64, i64* %filec49, align 8
  %inc50 = add i64 %42, 1
  store i64 %inc50, i64* %filec49, align 8
  %43 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call51 = call %struct.Val* @read_sym(%struct.Tsp* noundef %43, i32 (i8)* noundef @is_sym)
  store %struct.Val* %call51, %struct.Val** %w, align 8
  %tobool52 = icmp ne %struct.Val* %call51, null
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %sw.bb48
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end54:                                         ; preds = %sw.bb48
  %44 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %45 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %46 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %47 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call55 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %47, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0))
  %48 = load %struct.Val*, %struct.Val** %w, align 8
  %call56 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %46, i32 noundef 2, %struct.Val* noundef %call55, %struct.Val* noundef %48)
  %call57 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %44, i32 noundef 2, %struct.Val* noundef %45, %struct.Val* noundef %call56)
  store %struct.Val* %call57, %struct.Val** %retval, align 8
  br label %return

sw.default:                                       ; preds = %if.then31
  %49 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  call void @skip_ws(%struct.Tsp* noundef %49, i32 noundef 1)
  %50 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call58 = call %struct.Val* @tisp_read(%struct.Tsp* noundef %50)
  store %struct.Val* %call58, %struct.Val** %w, align 8
  %tobool59 = icmp ne %struct.Val* %call58, null
  br i1 %tobool59, label %if.end61, label %if.then60

if.then60:                                        ; preds = %sw.default
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end61:                                         ; preds = %sw.default
  %51 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %52 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %53 = load %struct.Val*, %struct.Val** %w, align 8
  %call62 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %51, i32 noundef 2, %struct.Val* noundef %52, %struct.Val* noundef %53)
  store %struct.Val* %call62, %struct.Val** %retval, align 8
  br label %return

if.else63:                                        ; preds = %if.else23
  %54 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file64 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %54, i32 0, i32 0
  %55 = load i8*, i8** %file64, align 8
  %56 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec65 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %56, i32 0, i32 1
  %57 = load i64, i64* %filec65, align 8
  %add66 = add i64 %57, 0
  %arrayidx67 = getelementptr inbounds i8, i8* %55, i64 %add66
  %58 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %58 to i32
  %cmp69 = icmp eq i32 %conv68, 62
  br i1 %cmp69, label %land.lhs.true, label %if.end95

land.lhs.true:                                    ; preds = %if.else63
  %59 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file71 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %59, i32 0, i32 0
  %60 = load i8*, i8** %file71, align 8
  %61 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec72 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %61, i32 0, i32 1
  %62 = load i64, i64* %filec72, align 8
  %add73 = add i64 %62, 1
  %arrayidx74 = getelementptr inbounds i8, i8* %60, i64 %add73
  %63 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %63 to i32
  %cmp76 = icmp eq i32 %conv75, 62
  br i1 %cmp76, label %if.then78, label %if.end95

if.then78:                                        ; preds = %land.lhs.true
  %64 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec79 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %64, i32 0, i32 1
  %65 = load i64, i64* %filec79, align 8
  %inc80 = add i64 %65, 1
  store i64 %inc80, i64* %filec79, align 8
  %66 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec81 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %66, i32 0, i32 1
  %67 = load i64, i64* %filec81, align 8
  %inc82 = add i64 %67, 1
  store i64 %inc82, i64* %filec81, align 8
  %68 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call83 = call %struct.Val* @tisp_read(%struct.Tsp* noundef %68)
  store %struct.Val* %call83, %struct.Val** %w, align 8
  %tobool84 = icmp ne %struct.Val* %call83, null
  br i1 %tobool84, label %lor.lhs.false, label %if.then87

lor.lhs.false:                                    ; preds = %if.then78
  %69 = load %struct.Val*, %struct.Val** %w, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %69, i32 0, i32 0
  %70 = load i32, i32* %t, align 8
  %cmp85 = icmp ne i32 %70, 2048
  br i1 %cmp85, label %if.then87, label %if.end89

if.then87:                                        ; preds = %lor.lhs.false, %if.then78
  br label %do.body

do.body:                                          ; preds = %if.then87
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0))
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end89

if.end89:                                         ; preds = %do.end, %lor.lhs.false
  %72 = load %struct.Val*, %struct.Val** %w, align 8
  %v90 = getelementptr inbounds %struct.Val, %struct.Val* %72, i32 0, i32 1
  %p = bitcast %union.anon* %v90 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %73 = load %struct.Val*, %struct.Val** %car, align 8
  %74 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %75 = load %struct.Val*, %struct.Val** %w, align 8
  %v91 = getelementptr inbounds %struct.Val, %struct.Val* %75, i32 0, i32 1
  %p92 = bitcast %union.anon* %v91 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p92, i32 0, i32 1
  %76 = load %struct.Val*, %struct.Val** %cdr, align 8
  %call93 = call %struct.Val* @mk_pair(%struct.Val* noundef %74, %struct.Val* noundef %76)
  %call94 = call %struct.Val* @mk_pair(%struct.Val* noundef %73, %struct.Val* noundef %call93)
  store %struct.Val* %call94, %struct.Val** %retval, align 8
  br label %return

if.end95:                                         ; preds = %land.lhs.true, %if.else63
  br label %if.end96

if.end96:                                         ; preds = %if.end95
  br label %if.end97

if.end97:                                         ; preds = %if.end96
  br label %if.end98

if.end98:                                         ; preds = %if.end97
  %77 = load %struct.Val*, %struct.Val** %v.addr, align 8
  store %struct.Val* %77, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end98, %if.end89, %do.body, %if.end61, %if.then60, %if.end54, %if.then53, %if.end44, %if.then43, %if.end18, %if.then17, %if.end, %if.then3
  %78 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %78
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @tisp_read_line(%struct.Tsp* noundef %st, i32 noundef %level) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %level.addr = alloca i32, align 4
  %pos = alloca %struct.Val*, align 8
  %ret = alloca %struct.Val*, align 8
  %newlevel = alloca i32, align 4
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call = call %struct.Val* @read_pair(%struct.Tsp* noundef %0, i8 noundef signext 10)
  store %struct.Val* %call, %struct.Val** %ret, align 8
  %tobool = icmp ne %struct.Val* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.Val*, %struct.Val** %ret, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %1, i32 0, i32 0
  %2 = load i32, i32* %t, align 8
  %cmp = icmp ne i32 %2, 2048
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %ret, align 8
  %4 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %4, i32 0, i32 3
  %5 = load %struct.Val*, %struct.Val** %nil, align 8
  %call2 = call %struct.Val* @mk_pair(%struct.Val* noundef %3, %struct.Val* noundef %5)
  store %struct.Val* %call2, %struct.Val** %ret, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %6 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %6, %struct.Val** %pos, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %7 = load %struct.Val*, %struct.Val** %pos, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 1
  %8 = load %struct.Val*, %struct.Val** %cdr, align 8
  %t4 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t4, align 8
  %cmp5 = icmp eq i32 %9, 2048
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.Val*, %struct.Val** %pos, align 8
  %v6 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p7 = bitcast %union.anon* %v6 to %struct.anon.2*
  %cdr8 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p7, i32 0, i32 1
  %11 = load %struct.Val*, %struct.Val** %cdr8, align 8
  store %struct.Val* %11, %struct.Val** %pos, align 8
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc30, %for.end
  %12 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file = getelementptr inbounds %struct.Tsp, %struct.Tsp* %12, i32 0, i32 0
  %13 = load i8*, i8** %file, align 8
  %14 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec = getelementptr inbounds %struct.Tsp, %struct.Tsp* %14, i32 0, i32 1
  %15 = load i64, i64* %filec, align 8
  %add = add i64 %15, 0
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add
  %16 = load i8, i8* %arrayidx, align 1
  %tobool10 = icmp ne i8 %16, 0
  br i1 %tobool10, label %for.body11, label %for.end34

for.body11:                                       ; preds = %for.cond9
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file12 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %17, i32 0, i32 0
  %18 = load i8*, i8** %file12, align 8
  %19 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec13 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %19, i32 0, i32 1
  %20 = load i64, i64* %filec13, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %20
  %call14 = call i64 @strspn(i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #14
  %conv = trunc i64 %call14 to i32
  store i32 %conv, i32* %newlevel, align 4
  %21 = load i32, i32* %newlevel, align 4
  %22 = load i32, i32* %level.addr, align 4
  %cmp15 = icmp sle i32 %21, %22
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body11
  br label %for.end34

if.end18:                                         ; preds = %for.body11
  %23 = load i32, i32* %newlevel, align 4
  %conv19 = sext i32 %23 to i64
  %24 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec20 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %24, i32 0, i32 1
  %25 = load i64, i64* %filec20, align 8
  %add21 = add i64 %25, %conv19
  store i64 %add21, i64* %filec20, align 8
  %26 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %27 = load i32, i32* %newlevel, align 4
  %call22 = call %struct.Val* @tisp_read_line(%struct.Tsp* noundef %26, i32 noundef %27)
  %28 = load %struct.Val*, %struct.Val** %pos, align 8
  %v23 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %p24 = bitcast %union.anon* %v23 to %struct.anon.2*
  %cdr25 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p24, i32 0, i32 1
  %29 = load %struct.Val*, %struct.Val** %cdr25, align 8
  %call26 = call %struct.Val* @mk_pair(%struct.Val* noundef %call22, %struct.Val* noundef %29)
  %30 = load %struct.Val*, %struct.Val** %pos, align 8
  %v27 = getelementptr inbounds %struct.Val, %struct.Val* %30, i32 0, i32 1
  %p28 = bitcast %union.anon* %v27 to %struct.anon.2*
  %cdr29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p28, i32 0, i32 1
  store %struct.Val* %call26, %struct.Val** %cdr29, align 8
  br label %for.inc30

for.inc30:                                        ; preds = %if.end18
  %31 = load %struct.Val*, %struct.Val** %pos, align 8
  %v31 = getelementptr inbounds %struct.Val, %struct.Val* %31, i32 0, i32 1
  %p32 = bitcast %union.anon* %v31 to %struct.anon.2*
  %cdr33 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p32, i32 0, i32 1
  %32 = load %struct.Val*, %struct.Val** %cdr33, align 8
  store %struct.Val* %32, %struct.Val** %pos, align 8
  br label %for.cond9, !llvm.loop !30

for.end34:                                        ; preds = %if.then17, %for.cond9
  %33 = load %struct.Val*, %struct.Val** %ret, align 8
  %v35 = getelementptr inbounds %struct.Val, %struct.Val* %33, i32 0, i32 1
  %p36 = bitcast %union.anon* %v35 to %struct.anon.2*
  %cdr37 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p36, i32 0, i32 1
  %34 = load %struct.Val*, %struct.Val** %cdr37, align 8
  %t38 = getelementptr inbounds %struct.Val, %struct.Val* %34, i32 0, i32 0
  %35 = load i32, i32* %t38, align 8
  %cmp39 = icmp eq i32 %35, 2
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end34
  %36 = load %struct.Val*, %struct.Val** %ret, align 8
  %v41 = getelementptr inbounds %struct.Val, %struct.Val* %36, i32 0, i32 1
  %p42 = bitcast %union.anon* %v41 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p42, i32 0, i32 0
  %37 = load %struct.Val*, %struct.Val** %car, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end34
  %38 = load %struct.Val*, %struct.Val** %ret, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.Val* [ %37, %cond.true ], [ %38, %cond.false ]
  store %struct.Val* %cond, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %39 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @tisp_eval_list(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %v) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %v.addr = alloca %struct.Val*, align 8
  %ret = alloca %struct.Val*, align 8
  %ev = alloca %struct.Val*, align 8
  %cur = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %v, %struct.Val** %v.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 3
  %1 = load %struct.Val*, %struct.Val** %nil, align 8
  %call = call %struct.Val* @mk_pair(%struct.Val* noundef null, %struct.Val* noundef %1)
  store %struct.Val* %call, %struct.Val** %ret, align 8
  %2 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %2, %struct.Val** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 0
  %4 = load i32, i32* %t, align 8
  %cmp = icmp eq i32 %4, 2
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %t1 = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t1, align 8
  %cmp2 = icmp ne i32 %6, 2048
  br i1 %cmp2, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  %7 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %8 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %9 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %call3 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %7, %struct.Rec* noundef %8, %struct.Val* noundef %9)
  store %struct.Val* %call3, %struct.Val** %ev, align 8
  %tobool = icmp ne %struct.Val* %call3, null
  br i1 %tobool, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.Val*, %struct.Val** %ev, align 8
  %11 = load %struct.Val*, %struct.Val** %cur, align 8
  %v5 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %p = bitcast %union.anon* %v5 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 1
  store %struct.Val* %10, %struct.Val** %cdr, align 8
  %12 = load %struct.Val*, %struct.Val** %ret, align 8
  %v6 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 1
  %p7 = bitcast %union.anon* %v6 to %struct.anon.2*
  %cdr8 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p7, i32 0, i32 1
  %13 = load %struct.Val*, %struct.Val** %cdr8, align 8
  store %struct.Val* %13, %struct.Val** %retval, align 8
  br label %return

if.end9:                                          ; preds = %for.body
  %14 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %15 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %16 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v10 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %p11 = bitcast %union.anon* %v10 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p11, i32 0, i32 0
  %17 = load %struct.Val*, %struct.Val** %car, align 8
  %call12 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %14, %struct.Rec* noundef %15, %struct.Val* noundef %17)
  store %struct.Val* %call12, %struct.Val** %ev, align 8
  %tobool13 = icmp ne %struct.Val* %call12, null
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end9
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.end9
  %18 = load %struct.Val*, %struct.Val** %ev, align 8
  %19 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil16 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %19, i32 0, i32 3
  %20 = load %struct.Val*, %struct.Val** %nil16, align 8
  %call17 = call %struct.Val* @mk_pair(%struct.Val* noundef %18, %struct.Val* noundef %20)
  %21 = load %struct.Val*, %struct.Val** %cur, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %21, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %cdr20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 1
  store %struct.Val* %call17, %struct.Val** %cdr20, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %22 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v21 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 1
  %p22 = bitcast %union.anon* %v21 to %struct.anon.2*
  %cdr23 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p22, i32 0, i32 1
  %23 = load %struct.Val*, %struct.Val** %cdr23, align 8
  store %struct.Val* %23, %struct.Val** %v.addr, align 8
  %24 = load %struct.Val*, %struct.Val** %cur, align 8
  %v24 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 1
  %p25 = bitcast %union.anon* %v24 to %struct.anon.2*
  %cdr26 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p25, i32 0, i32 1
  %25 = load %struct.Val*, %struct.Val** %cdr26, align 8
  store %struct.Val* %25, %struct.Val** %cur, align 8
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %26 = load %struct.Val*, %struct.Val** %ret, align 8
  %v27 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %p28 = bitcast %union.anon* %v27 to %struct.anon.2*
  %cdr29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p28, i32 0, i32 1
  %27 = load %struct.Val*, %struct.Val** %cdr29, align 8
  store %struct.Val* %27, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then14, %if.end, %if.then4
  %28 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Val* @tisp_eval_body(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %v) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %v.addr = alloca %struct.Val*, align 8
  %ret = alloca %struct.Val*, align 8
  %f = alloca %struct.Val*, align 8
  %args = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %v, %struct.Val** %v.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %none = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 2
  %1 = load %struct.Val*, %struct.Val** %none, align 8
  store %struct.Val* %1, %struct.Val** %ret, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %2, i32 0, i32 0
  %3 = load i32, i32* %t, align 8
  %cmp = icmp eq i32 %3, 2048
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v1 = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 1
  %p = bitcast %union.anon* %v1 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 1
  %5 = load %struct.Val*, %struct.Val** %cdr, align 8
  %t2 = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t2, align 8
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v4 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p5 = bitcast %union.anon* %v4 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p5, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car, align 8
  %t6 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t6, align 8
  %cmp7 = icmp eq i32 %9, 2048
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %11 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %12 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v8 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 1
  %p9 = bitcast %union.anon* %v8 to %struct.anon.2*
  %car10 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p9, i32 0, i32 0
  %13 = load %struct.Val*, %struct.Val** %car10, align 8
  %v11 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p12 = bitcast %union.anon* %v11 to %struct.anon.2*
  %car13 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p12, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car13, align 8
  %call = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %10, %struct.Rec* noundef %11, %struct.Val* noundef %14)
  store %struct.Val* %call, %struct.Val** %f, align 8
  %tobool = icmp ne %struct.Val* %call, null
  br i1 %tobool, label %if.end, label %if.then14

if.then14:                                        ; preds = %if.then
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %15 = load %struct.Val*, %struct.Val** %f, align 8
  %t15 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 0
  %16 = load i32, i32* %t15, align 8
  %cmp16 = icmp ne i32 %16, 512
  br i1 %cmp16, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %18 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %19 = load %struct.Val*, %struct.Val** %f, align 8
  %20 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %21 = load %struct.Val*, %struct.Val** %car20, align 8
  %v21 = getelementptr inbounds %struct.Val, %struct.Val* %21, i32 0, i32 1
  %p22 = bitcast %union.anon* %v21 to %struct.anon.2*
  %cdr23 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p22, i32 0, i32 1
  %22 = load %struct.Val*, %struct.Val** %cdr23, align 8
  %call24 = call %struct.Val* @eval_proc(%struct.Tsp* noundef %17, %struct.Rec* noundef %18, %struct.Val* noundef %19, %struct.Val* noundef %22)
  store %struct.Val* %call24, %struct.Val** %retval, align 8
  br label %return

if.end25:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end25
  %23 = load %struct.Val*, %struct.Val** %f, align 8
  %v26 = getelementptr inbounds %struct.Val, %struct.Val* %23, i32 0, i32 1
  %f27 = bitcast %union.anon* %v26 to %struct.anon.1*
  %args28 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f27, i32 0, i32 1
  %24 = load %struct.Val*, %struct.Val** %args28, align 8
  %call29 = call i32 @tsp_lstlen(%struct.Val* noundef %24)
  %cmp30 = icmp sgt i32 %call29, -1
  br i1 %cmp30, label %land.lhs.true31, label %if.end70

land.lhs.true31:                                  ; preds = %do.body
  %25 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v32 = getelementptr inbounds %struct.Val, %struct.Val* %25, i32 0, i32 1
  %p33 = bitcast %union.anon* %v32 to %struct.anon.2*
  %car34 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p33, i32 0, i32 0
  %26 = load %struct.Val*, %struct.Val** %car34, align 8
  %v35 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %p36 = bitcast %union.anon* %v35 to %struct.anon.2*
  %cdr37 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p36, i32 0, i32 1
  %27 = load %struct.Val*, %struct.Val** %cdr37, align 8
  %call38 = call i32 @tsp_lstlen(%struct.Val* noundef %27)
  %28 = load %struct.Val*, %struct.Val** %f, align 8
  %v39 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %f40 = bitcast %union.anon* %v39 to %struct.anon.1*
  %args41 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f40, i32 0, i32 1
  %29 = load %struct.Val*, %struct.Val** %args41, align 8
  %call42 = call i32 @tsp_lstlen(%struct.Val* noundef %29)
  %cmp43 = icmp ne i32 %call38, %call42
  br i1 %cmp43, label %if.then44, label %if.end70

if.then44:                                        ; preds = %land.lhs.true31
  br label %do.body45

do.body45:                                        ; preds = %if.then44
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load %struct.Val*, %struct.Val** %f, align 8
  %v46 = getelementptr inbounds %struct.Val, %struct.Val* %31, i32 0, i32 1
  %f47 = bitcast %union.anon* %v46 to %struct.anon.1*
  %name = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f47, i32 0, i32 0
  %32 = load i8*, i8** %name, align 8
  %tobool48 = icmp ne i8* %32, null
  br i1 %tobool48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body45
  %33 = load %struct.Val*, %struct.Val** %f, align 8
  %v49 = getelementptr inbounds %struct.Val, %struct.Val* %33, i32 0, i32 1
  %f50 = bitcast %union.anon* %v49 to %struct.anon.1*
  %name51 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f50, i32 0, i32 0
  %34 = load i8*, i8** %name51, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %34, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), %cond.false ]
  %35 = load %struct.Val*, %struct.Val** %f, align 8
  %v52 = getelementptr inbounds %struct.Val, %struct.Val* %35, i32 0, i32 1
  %f53 = bitcast %union.anon* %v52 to %struct.anon.1*
  %args54 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f53, i32 0, i32 1
  %36 = load %struct.Val*, %struct.Val** %args54, align 8
  %call55 = call i32 @tsp_lstlen(%struct.Val* noundef %36)
  %37 = load %struct.Val*, %struct.Val** %f, align 8
  %v56 = getelementptr inbounds %struct.Val, %struct.Val* %37, i32 0, i32 1
  %f57 = bitcast %union.anon* %v56 to %struct.anon.1*
  %args58 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f57, i32 0, i32 1
  %38 = load %struct.Val*, %struct.Val** %args58, align 8
  %call59 = call i32 @tsp_lstlen(%struct.Val* noundef %38)
  %cmp60 = icmp sgt i32 %call59, 1
  %39 = zext i1 %cmp60 to i64
  %cond61 = select i1 %cmp60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %40 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v62 = getelementptr inbounds %struct.Val, %struct.Val* %40, i32 0, i32 1
  %p63 = bitcast %union.anon* %v62 to %struct.anon.2*
  %car64 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p63, i32 0, i32 0
  %41 = load %struct.Val*, %struct.Val** %car64, align 8
  %v65 = getelementptr inbounds %struct.Val, %struct.Val* %41, i32 0, i32 1
  %p66 = bitcast %union.anon* %v65 to %struct.anon.2*
  %cdr67 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p66, i32 0, i32 1
  %42 = load %struct.Val*, %struct.Val** %cdr67, align 8
  %call68 = call i32 @tsp_lstlen(%struct.Val* noundef %42)
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef %cond, i32 noundef %call55, i8* noundef %cond61, i32 noundef %call68)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end70

if.end70:                                         ; preds = %do.end, %land.lhs.true31, %do.body
  br label %do.end71

do.end71:                                         ; preds = %if.end70
  %43 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %44 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %45 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v72 = getelementptr inbounds %struct.Val, %struct.Val* %45, i32 0, i32 1
  %p73 = bitcast %union.anon* %v72 to %struct.anon.2*
  %car74 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p73, i32 0, i32 0
  %46 = load %struct.Val*, %struct.Val** %car74, align 8
  %v75 = getelementptr inbounds %struct.Val, %struct.Val* %46, i32 0, i32 1
  %p76 = bitcast %union.anon* %v75 to %struct.anon.2*
  %cdr77 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p76, i32 0, i32 1
  %47 = load %struct.Val*, %struct.Val** %cdr77, align 8
  %call78 = call %struct.Val* @tisp_eval_list(%struct.Tsp* noundef %43, %struct.Rec* noundef %44, %struct.Val* noundef %47)
  store %struct.Val* %call78, %struct.Val** %args, align 8
  %tobool79 = icmp ne %struct.Val* %call78, null
  br i1 %tobool79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %do.end71
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end81:                                         ; preds = %do.end71
  %48 = load %struct.Val*, %struct.Val** %f, align 8
  %v82 = getelementptr inbounds %struct.Val, %struct.Val* %48, i32 0, i32 1
  %f83 = bitcast %union.anon* %v82 to %struct.anon.1*
  %env84 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f83, i32 0, i32 3
  %49 = load %struct.Rec*, %struct.Rec** %env84, align 8
  %50 = load %struct.Val*, %struct.Val** %f, align 8
  %v85 = getelementptr inbounds %struct.Val, %struct.Val* %50, i32 0, i32 1
  %f86 = bitcast %union.anon* %v85 to %struct.anon.1*
  %args87 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f86, i32 0, i32 1
  %51 = load %struct.Val*, %struct.Val** %args87, align 8
  %52 = load %struct.Val*, %struct.Val** %args, align 8
  %call88 = call %struct.Rec* @rec_extend(%struct.Rec* noundef %49, %struct.Val* noundef %51, %struct.Val* noundef %52)
  store %struct.Rec* %call88, %struct.Rec** %env.addr, align 8
  %tobool89 = icmp ne %struct.Rec* %call88, null
  br i1 %tobool89, label %if.end91, label %if.then90

if.then90:                                        ; preds = %if.end81
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end91:                                         ; preds = %if.end81
  %53 = load %struct.Val*, %struct.Val** %f, align 8
  %v92 = getelementptr inbounds %struct.Val, %struct.Val* %53, i32 0, i32 1
  %f93 = bitcast %union.anon* %v92 to %struct.anon.1*
  %body = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f93, i32 0, i32 2
  %54 = load %struct.Val*, %struct.Val** %body, align 8
  %call94 = call %struct.Val* @mk_pair(%struct.Val* noundef null, %struct.Val* noundef %54)
  store %struct.Val* %call94, %struct.Val** %v.addr, align 8
  br label %if.end102

if.else:                                          ; preds = %land.lhs.true, %for.body
  %55 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %56 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %57 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v95 = getelementptr inbounds %struct.Val, %struct.Val* %57, i32 0, i32 1
  %p96 = bitcast %union.anon* %v95 to %struct.anon.2*
  %car97 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p96, i32 0, i32 0
  %58 = load %struct.Val*, %struct.Val** %car97, align 8
  %call98 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %55, %struct.Rec* noundef %56, %struct.Val* noundef %58)
  store %struct.Val* %call98, %struct.Val** %ret, align 8
  %tobool99 = icmp ne %struct.Val* %call98, null
  br i1 %tobool99, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.else
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end101:                                        ; preds = %if.else
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end91
  br label %for.inc

for.inc:                                          ; preds = %if.end102
  %59 = load %struct.Val*, %struct.Val** %v.addr, align 8
  %v103 = getelementptr inbounds %struct.Val, %struct.Val* %59, i32 0, i32 1
  %p104 = bitcast %union.anon* %v103 to %struct.anon.2*
  %cdr105 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p104, i32 0, i32 1
  %60 = load %struct.Val*, %struct.Val** %cdr105, align 8
  store %struct.Val* %60, %struct.Val** %v.addr, align 8
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %61 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %61, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then100, %if.then90, %if.then80, %cond.end, %if.then17, %if.then14
  %62 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %62
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @eval_proc(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %f, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %f.addr = alloca %struct.Val*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %ret = alloca %struct.Val*, align 8
  %fenv = alloca %struct.Rec*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %f, %struct.Val** %f.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %0, i32 0, i32 0
  %1 = load i32, i32* %t, align 8
  switch i32 %1, label %sw.default [
    i32 128, label %sw.bb
    i32 256, label %sw.bb1
    i32 512, label %sw.bb4
    i32 1024, label %sw.bb9
    i32 4096, label %sw.bb63
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %3 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %4 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call %struct.Val* @tisp_eval_list(%struct.Tsp* noundef %2, %struct.Rec* noundef %3, %struct.Val* noundef %4)
  store %struct.Val* %call, %struct.Val** %args.addr, align 8
  %tobool = icmp ne %struct.Val* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %if.end
  %5 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %pr = bitcast %union.anon* %v to %struct.anon.0*
  %pr2 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %pr, i32 0, i32 1
  %6 = load %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)*, %struct.Val* (%struct.Tsp*, %struct.Rec*, %struct.Val*)** %pr2, align 8
  %7 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %8 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %9 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call3 = call %struct.Val* %6(%struct.Tsp* noundef %7, %struct.Rec* noundef %8, %struct.Val* noundef %9)
  store %struct.Val* %call3, %struct.Val** %retval, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %10 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %11 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %12 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call5 = call %struct.Val* @tisp_eval_list(%struct.Tsp* noundef %10, %struct.Rec* noundef %11, %struct.Val* noundef %12)
  store %struct.Val* %call5, %struct.Val** %args.addr, align 8
  %tobool6 = icmp ne %struct.Val* %call5, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %sw.bb4
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %sw.epilog

if.end8:                                          ; preds = %sw.bb4
  br label %sw.bb9

sw.bb9:                                           ; preds = %entry, %if.end8
  br label %do.body

do.body:                                          ; preds = %sw.bb9
  %13 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v10 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %f11 = bitcast %union.anon* %v10 to %struct.anon.1*
  %args12 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f11, i32 0, i32 1
  %14 = load %struct.Val*, %struct.Val** %args12, align 8
  %call13 = call i32 @tsp_lstlen(%struct.Val* noundef %14)
  %cmp = icmp sgt i32 %call13, -1
  br i1 %cmp, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %do.body
  %15 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call14 = call i32 @tsp_lstlen(%struct.Val* noundef %15)
  %16 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v15 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %f16 = bitcast %union.anon* %v15 to %struct.anon.1*
  %args17 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f16, i32 0, i32 1
  %17 = load %struct.Val*, %struct.Val** %args17, align 8
  %call18 = call i32 @tsp_lstlen(%struct.Val* noundef %17)
  %cmp19 = icmp ne i32 %call14, %call18
  br i1 %cmp19, label %if.then20, label %if.end40

if.then20:                                        ; preds = %land.lhs.true
  br label %do.body21

do.body21:                                        ; preds = %if.then20
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v22 = getelementptr inbounds %struct.Val, %struct.Val* %19, i32 0, i32 1
  %f23 = bitcast %union.anon* %v22 to %struct.anon.1*
  %name = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f23, i32 0, i32 0
  %20 = load i8*, i8** %name, align 8
  %tobool24 = icmp ne i8* %20, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body21
  %21 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %21, i32 0, i32 1
  %f26 = bitcast %union.anon* %v25 to %struct.anon.1*
  %name27 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f26, i32 0, i32 0
  %22 = load i8*, i8** %name27, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %22, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), %cond.false ]
  %23 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %23, i32 0, i32 1
  %f29 = bitcast %union.anon* %v28 to %struct.anon.1*
  %args30 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f29, i32 0, i32 1
  %24 = load %struct.Val*, %struct.Val** %args30, align 8
  %call31 = call i32 @tsp_lstlen(%struct.Val* noundef %24)
  %25 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v32 = getelementptr inbounds %struct.Val, %struct.Val* %25, i32 0, i32 1
  %f33 = bitcast %union.anon* %v32 to %struct.anon.1*
  %args34 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f33, i32 0, i32 1
  %26 = load %struct.Val*, %struct.Val** %args34, align 8
  %call35 = call i32 @tsp_lstlen(%struct.Val* noundef %26)
  %cmp36 = icmp sgt i32 %call35, 1
  %27 = zext i1 %cmp36 to i64
  %cond37 = select i1 %cmp36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %28 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call38 = call i32 @tsp_lstlen(%struct.Val* noundef %28)
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef %cond, i32 noundef %call31, i8* noundef %cond37, i32 noundef %call38)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %sw.epilog

do.end:                                           ; No predecessors!
  br label %if.end40

if.end40:                                         ; preds = %do.end, %land.lhs.true, %do.body
  br label %do.end41

do.end41:                                         ; preds = %if.end40
  %29 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v42 = getelementptr inbounds %struct.Val, %struct.Val* %29, i32 0, i32 1
  %f43 = bitcast %union.anon* %v42 to %struct.anon.1*
  %env44 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f43, i32 0, i32 3
  %30 = load %struct.Rec*, %struct.Rec** %env44, align 8
  %31 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v45 = getelementptr inbounds %struct.Val, %struct.Val* %31, i32 0, i32 1
  %f46 = bitcast %union.anon* %v45 to %struct.anon.1*
  %args47 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f46, i32 0, i32 1
  %32 = load %struct.Val*, %struct.Val** %args47, align 8
  %33 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call48 = call %struct.Rec* @rec_extend(%struct.Rec* noundef %30, %struct.Val* noundef %32, %struct.Val* noundef %33)
  store %struct.Rec* %call48, %struct.Rec** %fenv, align 8
  %tobool49 = icmp ne %struct.Rec* %call48, null
  br i1 %tobool49, label %if.end51, label %if.then50

if.then50:                                        ; preds = %do.end41
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %sw.epilog

if.end51:                                         ; preds = %do.end41
  %34 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %35 = load %struct.Rec*, %struct.Rec** %fenv, align 8
  %36 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v52 = getelementptr inbounds %struct.Val, %struct.Val* %36, i32 0, i32 1
  %f53 = bitcast %union.anon* %v52 to %struct.anon.1*
  %body = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f53, i32 0, i32 2
  %37 = load %struct.Val*, %struct.Val** %body, align 8
  %call54 = call %struct.Val* @tisp_eval_body(%struct.Tsp* noundef %34, %struct.Rec* noundef %35, %struct.Val* noundef %37)
  store %struct.Val* %call54, %struct.Val** %ret, align 8
  %tobool55 = icmp ne %struct.Val* %call54, null
  br i1 %tobool55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.end51
  %38 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %39 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %40 = load %struct.Val*, %struct.Val** %f.addr, align 8
  call void @prepend_bt(%struct.Tsp* noundef %38, %struct.Rec* noundef %39, %struct.Val* noundef %40)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %sw.epilog

if.end57:                                         ; preds = %if.end51
  %41 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %t58 = getelementptr inbounds %struct.Val, %struct.Val* %41, i32 0, i32 0
  %42 = load i32, i32* %t58, align 8
  %cmp59 = icmp eq i32 %42, 1024
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end57
  %43 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %44 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %45 = load %struct.Val*, %struct.Val** %ret, align 8
  %call61 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %43, %struct.Rec* noundef %44, %struct.Val* noundef %45)
  store %struct.Val* %call61, %struct.Val** %ret, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end57
  %46 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %46, %struct.Val** %retval, align 8
  br label %sw.epilog

sw.bb63:                                          ; preds = %entry
  %47 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %48 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %49 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call64 = call %struct.Val* @tisp_eval_list(%struct.Tsp* noundef %47, %struct.Rec* noundef %48, %struct.Val* noundef %49)
  store %struct.Val* %call64, %struct.Val** %args.addr, align 8
  %tobool65 = icmp ne %struct.Val* %call64, null
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %sw.bb63
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %sw.epilog

if.end67:                                         ; preds = %sw.bb63
  br label %do.body68

do.body68:                                        ; preds = %if.end67
  %50 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call69 = call i32 @tsp_lstlen(%struct.Val* noundef %50)
  %cmp70 = icmp ne i32 %call69, 1
  br i1 %cmp70, label %if.then71, label %if.end76

if.then71:                                        ; preds = %do.body68
  br label %do.body72

do.body72:                                        ; preds = %if.then71
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call73 = call i32 @tsp_lstlen(%struct.Val* noundef %52)
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call73)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %sw.epilog

do.end75:                                         ; No predecessors!
  br label %if.end76

if.end76:                                         ; preds = %do.end75, %do.body68
  br label %do.end77

do.end77:                                         ; preds = %if.end76
  br label %do.body78

do.body78:                                        ; preds = %do.end77
  %53 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v79 = getelementptr inbounds %struct.Val, %struct.Val* %53, i32 0, i32 1
  %p = bitcast %union.anon* %v79 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %54 = load %struct.Val*, %struct.Val** %car, align 8
  %t80 = getelementptr inbounds %struct.Val, %struct.Val* %54, i32 0, i32 0
  %55 = load i32, i32* %t80, align 8
  %and = and i32 %55, 64
  %tobool81 = icmp ne i32 %and, 0
  br i1 %tobool81, label %if.end92, label %if.then82

if.then82:                                        ; preds = %do.body78
  br label %do.body83

do.body83:                                        ; preds = %if.then82
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call84 = call i8* @tsp_type_str(i32 noundef 64)
  %57 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v85 = getelementptr inbounds %struct.Val, %struct.Val* %57, i32 0, i32 1
  %p86 = bitcast %union.anon* %v85 to %struct.anon.2*
  %car87 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p86, i32 0, i32 0
  %58 = load %struct.Val*, %struct.Val** %car87, align 8
  %t88 = getelementptr inbounds %struct.Val, %struct.Val* %58, i32 0, i32 0
  %59 = load i32, i32* %t88, align 8
  %call89 = call i8* @tsp_type_str(i32 noundef %59)
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.62, i64 0, i64 0), i8* noundef %call84, i8* noundef %call89)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %sw.epilog

do.end91:                                         ; No predecessors!
  br label %if.end92

if.end92:                                         ; preds = %do.end91, %do.body78
  br label %do.end93

do.end93:                                         ; preds = %if.end92
  %60 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v94 = getelementptr inbounds %struct.Val, %struct.Val* %60, i32 0, i32 1
  %r = bitcast %union.anon* %v94 to %struct.Rec**
  %61 = load %struct.Rec*, %struct.Rec** %r, align 8
  %62 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v95 = getelementptr inbounds %struct.Val, %struct.Val* %62, i32 0, i32 1
  %p96 = bitcast %union.anon* %v95 to %struct.anon.2*
  %car97 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p96, i32 0, i32 0
  %63 = load %struct.Val*, %struct.Val** %car97, align 8
  %v98 = getelementptr inbounds %struct.Val, %struct.Val* %63, i32 0, i32 1
  %s = bitcast %union.anon* %v98 to i8**
  %64 = load i8*, i8** %s, align 8
  %call99 = call %struct.Val* @rec_get(%struct.Rec* noundef %61, i8* noundef %64)
  store %struct.Val* %call99, %struct.Val** %ret, align 8
  %tobool100 = icmp ne %struct.Val* %call99, null
  br i1 %tobool100, label %if.end115, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %do.end93
  %65 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v102 = getelementptr inbounds %struct.Val, %struct.Val* %65, i32 0, i32 1
  %r103 = bitcast %union.anon* %v102 to %struct.Rec**
  %66 = load %struct.Rec*, %struct.Rec** %r103, align 8
  %call104 = call %struct.Val* @rec_get(%struct.Rec* noundef %66, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0))
  store %struct.Val* %call104, %struct.Val** %ret, align 8
  %tobool105 = icmp ne %struct.Val* %call104, null
  br i1 %tobool105, label %if.end115, label %if.then106

if.then106:                                       ; preds = %land.lhs.true101
  br label %do.body107

do.body107:                                       ; preds = %if.then106
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %68 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v108 = getelementptr inbounds %struct.Val, %struct.Val* %68, i32 0, i32 1
  %p109 = bitcast %union.anon* %v108 to %struct.anon.2*
  %car110 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p109, i32 0, i32 0
  %69 = load %struct.Val*, %struct.Val** %car110, align 8
  %v111 = getelementptr inbounds %struct.Val, %struct.Val* %69, i32 0, i32 1
  %s112 = bitcast %union.anon* %v111 to i8**
  %70 = load i8*, i8** %s112, align 8
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %67, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.64, i64 0, i64 0), i8* noundef %70)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %sw.epilog

do.end114:                                        ; No predecessors!
  br label %if.end115

if.end115:                                        ; preds = %do.end114, %land.lhs.true101, %do.end93
  %71 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %71, %struct.Val** %retval, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body116

do.body116:                                       ; preds = %sw.default
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %t117 = getelementptr inbounds %struct.Val, %struct.Val* %73, i32 0, i32 0
  %74 = load i32, i32* %t117, align 8
  %call118 = call i8* @tsp_type_str(i32 noundef %74)
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.65, i64 0, i64 0), i8* noundef %call118)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %sw.epilog

do.end120:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb1, %if.then7, %cond.end, %if.then50, %if.then56, %if.end62, %if.then66, %do.body72, %do.body83, %do.body107, %if.end115, %do.body116, %do.end120
  %75 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %75
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepend_bt(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %f) #0 {
entry:
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %f.addr = alloca %struct.Val*, align 8
  %e = alloca %struct.Entry*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %f, %struct.Val** %f.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %0, i32 0, i32 1
  %f1 = bitcast %union.anon* %v to %struct.anon.1*
  %name = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f1, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %next = getelementptr inbounds %struct.Rec, %struct.Rec* %2, i32 0, i32 3
  %3 = load %struct.Rec*, %struct.Rec** %next, align 8
  %tobool2 = icmp ne %struct.Rec* %3, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %next3 = getelementptr inbounds %struct.Rec, %struct.Rec* %4, i32 0, i32 3
  %5 = load %struct.Rec*, %struct.Rec** %next3, align 8
  store %struct.Rec* %5, %struct.Rec** %env.addr, align 8
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %6 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %call = call %struct.Entry* @entry_get(%struct.Rec* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0))
  store %struct.Entry* %call, %struct.Entry** %e, align 8
  %7 = load %struct.Entry*, %struct.Entry** %e, align 8
  %val = getelementptr inbounds %struct.Entry, %struct.Entry* %7, i32 0, i32 1
  %8 = load %struct.Val*, %struct.Val** %val, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t, align 8
  %cmp = icmp eq i32 %9, 2048
  br i1 %cmp, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %for.end
  %10 = load %struct.Entry*, %struct.Entry** %e, align 8
  %val4 = getelementptr inbounds %struct.Entry, %struct.Entry* %10, i32 0, i32 1
  %11 = load %struct.Val*, %struct.Val** %val4, align 8
  %v5 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %p = bitcast %union.anon* %v5 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %12 = load %struct.Val*, %struct.Val** %car, align 8
  %t6 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t6, align 8
  %cmp7 = icmp eq i32 %13, 64
  br i1 %cmp7, label %land.lhs.true8, label %if.end27

land.lhs.true8:                                   ; preds = %land.lhs.true
  %14 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %f10 = bitcast %union.anon* %v9 to %struct.anon.1*
  %name11 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f10, i32 0, i32 0
  %15 = load i8*, i8** %name11, align 8
  %16 = load %struct.Entry*, %struct.Entry** %e, align 8
  %val12 = getelementptr inbounds %struct.Entry, %struct.Entry* %16, i32 0, i32 1
  %17 = load %struct.Val*, %struct.Val** %val12, align 8
  %v13 = getelementptr inbounds %struct.Val, %struct.Val* %17, i32 0, i32 1
  %p14 = bitcast %union.anon* %v13 to %struct.anon.2*
  %car15 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p14, i32 0, i32 0
  %18 = load %struct.Val*, %struct.Val** %car15, align 8
  %v16 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %s = bitcast %union.anon* %v16 to i8**
  %19 = load i8*, i8** %s, align 8
  %20 = load %struct.Entry*, %struct.Entry** %e, align 8
  %val17 = getelementptr inbounds %struct.Entry, %struct.Entry* %20, i32 0, i32 1
  %21 = load %struct.Val*, %struct.Val** %val17, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %21, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %22 = load %struct.Val*, %struct.Val** %car20, align 8
  %v21 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 1
  %s22 = bitcast %union.anon* %v21 to i8**
  %23 = load i8*, i8** %s22, align 8
  %call23 = call i64 @strlen(i8* noundef %23) #14
  %call24 = call i32 @strncmp(i8* noundef %15, i8* noundef %19, i64 noundef %call23) #14
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %land.lhs.true8
  br label %return

if.end27:                                         ; preds = %land.lhs.true8, %land.lhs.true, %for.end
  %24 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %25 = load %struct.Val*, %struct.Val** %f.addr, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %25, i32 0, i32 1
  %f29 = bitcast %union.anon* %v28 to %struct.anon.1*
  %name30 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f29, i32 0, i32 0
  %26 = load i8*, i8** %name30, align 8
  %call31 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %24, i8* noundef %26)
  %27 = load %struct.Entry*, %struct.Entry** %e, align 8
  %val32 = getelementptr inbounds %struct.Entry, %struct.Entry* %27, i32 0, i32 1
  %28 = load %struct.Val*, %struct.Val** %val32, align 8
  %call33 = call %struct.Val* @mk_pair(%struct.Val* noundef %call31, %struct.Val* noundef %28)
  %29 = load %struct.Entry*, %struct.Entry** %e, align 8
  %val34 = getelementptr inbounds %struct.Entry, %struct.Entry* %29, i32 0, i32 1
  store %struct.Val* %call33, %struct.Val** %val34, align 8
  br label %return

return:                                           ; preds = %if.end27, %if.then26, %if.then
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tisp_env_add(%struct.Tsp* noundef %st, i8* noundef %key, %struct.Val* noundef %v) #0 {
entry:
  %st.addr = alloca %struct.Tsp*, align 8
  %key.addr = alloca i8*, align 8
  %v.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct.Val* %v, %struct.Val** %v.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %env = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 5
  %1 = load %struct.Rec*, %struct.Rec** %env, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load %struct.Val*, %struct.Val** %v.addr, align 8
  call void @rec_add(%struct.Rec* noundef %1, i8* noundef %2, %struct.Val* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_car(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2048)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.85, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %v21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %p22 = bitcast %union.anon* %v21 to %struct.anon.2*
  %car23 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p22, i32 0, i32 0
  %12 = load %struct.Val*, %struct.Val** %car23, align 8
  store %struct.Val* %12, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end17, %do.body7, %do.body1
  %13 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_cdr(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2048)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.87, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %v21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %p22 = bitcast %union.anon* %v21 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p22, i32 0, i32 1
  %12 = load %struct.Val*, %struct.Val** %cdr, align 8
  store %struct.Val* %12, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end17, %do.body7, %do.body1
  %13 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_cons(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0), i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %5 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v5 = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %p6 = bitcast %union.anon* %v5 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p6, i32 0, i32 1
  %6 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v7 = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 1
  %p8 = bitcast %union.anon* %v7 to %struct.anon.2*
  %car9 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p8, i32 0, i32 0
  %7 = load %struct.Val*, %struct.Val** %car9, align 8
  %call10 = call %struct.Val* @mk_pair(%struct.Val* noundef %4, %struct.Val* noundef %7)
  store %struct.Val* %call10, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end4, %do.body1
  %8 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @form_quote(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %4, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end4, %do.body1
  %5 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_eval(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %v = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %4 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %env5 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %4, i32 0, i32 5
  %5 = load %struct.Rec*, %struct.Rec** %env5, align 8
  %6 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v6 = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 1
  %p = bitcast %union.anon* %v6 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %7 = load %struct.Val*, %struct.Val** %car, align 8
  %call7 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %3, %struct.Rec* noundef %5, %struct.Val* noundef %7)
  store %struct.Val* %call7, %struct.Val** %v, align 8
  %tobool = icmp ne %struct.Val* %call7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end4
  %8 = load %struct.Val*, %struct.Val** %v, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end4
  %9 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %none = getelementptr inbounds %struct.Tsp, %struct.Tsp* %9, i32 0, i32 2
  %10 = load %struct.Val*, %struct.Val** %none, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.Val* [ %8, %cond.true ], [ %10, %cond.false ]
  store %struct.Val* %cond, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %do.body1
  %11 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_eq(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %0, i32 0, i32 0
  %1 = load i32, i32* %t, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %t1 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %2, i32 0, i32 4
  %3 = load %struct.Val*, %struct.Val** %t1, align 8
  store %struct.Val* %3, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 1
  %5 = load %struct.Val*, %struct.Val** %cdr, align 8
  %t2 = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t2, align 8
  %cmp3 = icmp eq i32 %6, 2
  %lnot = xor i1 %cmp3, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v4 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p5 = bitcast %union.anon* %v4 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p5, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car, align 8
  %9 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v6 = getelementptr inbounds %struct.Val, %struct.Val* %9, i32 0, i32 1
  %p7 = bitcast %union.anon* %v6 to %struct.anon.2*
  %cdr8 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p7, i32 0, i32 1
  %10 = load %struct.Val*, %struct.Val** %cdr8, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car11, align 8
  %call = call i32 @vals_eq(%struct.Val* noundef %8, %struct.Val* noundef %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end13, label %if.then12

if.then12:                                        ; preds = %for.body
  %12 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %12, i32 0, i32 3
  %13 = load %struct.Val*, %struct.Val** %nil, align 8
  store %struct.Val* %13, %struct.Val** %retval, align 8
  br label %return

if.end13:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %14 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v14 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %p15 = bitcast %union.anon* %v14 to %struct.anon.2*
  %cdr16 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p15, i32 0, i32 1
  %15 = load %struct.Val*, %struct.Val** %cdr16, align 8
  store %struct.Val* %15, %struct.Val** %args.addr, align 8
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %t17 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %16, i32 0, i32 4
  %17 = load %struct.Val*, %struct.Val** %t17, align 8
  store %struct.Val* %17, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then12, %if.then
  %18 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @form_cond(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %v = alloca %struct.Val*, align 8
  %cond = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  store %struct.Val* %0, %struct.Val** %v, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.Val*, %struct.Val** %v, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %1, i32 0, i32 0
  %2 = load i32, i32* %t, align 8
  %cmp = icmp eq i32 %2, 2
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %4 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %5 = load %struct.Val*, %struct.Val** %v, align 8
  %v1 = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %p = bitcast %union.anon* %v1 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %6 = load %struct.Val*, %struct.Val** %car, align 8
  %v2 = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 1
  %p3 = bitcast %union.anon* %v2 to %struct.anon.2*
  %car4 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p3, i32 0, i32 0
  %7 = load %struct.Val*, %struct.Val** %car4, align 8
  %call = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %3, %struct.Rec* noundef %4, %struct.Val* noundef %7)
  store %struct.Val* %call, %struct.Val** %cond, align 8
  %tobool = icmp ne %struct.Val* %call, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.else:                                          ; preds = %for.body
  %8 = load %struct.Val*, %struct.Val** %cond, align 8
  %t5 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t5, align 8
  %cmp6 = icmp eq i32 %9, 2
  br i1 %cmp6, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.else
  %10 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %11 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %12 = load %struct.Val*, %struct.Val** %v, align 8
  %v8 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 1
  %p9 = bitcast %union.anon* %v8 to %struct.anon.2*
  %car10 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p9, i32 0, i32 0
  %13 = load %struct.Val*, %struct.Val** %car10, align 8
  %v11 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p12 = bitcast %union.anon* %v11 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p12, i32 0, i32 1
  %14 = load %struct.Val*, %struct.Val** %cdr, align 8
  %call13 = call %struct.Val* @tisp_eval_body(%struct.Tsp* noundef %10, %struct.Rec* noundef %11, %struct.Val* noundef %14)
  store %struct.Val* %call13, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %15 = load %struct.Val*, %struct.Val** %v, align 8
  %v15 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 1
  %p16 = bitcast %union.anon* %v15 to %struct.anon.2*
  %cdr17 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p16, i32 0, i32 1
  %16 = load %struct.Val*, %struct.Val** %cdr17, align 8
  store %struct.Val* %16, %struct.Val** %v, align 8
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %none = getelementptr inbounds %struct.Tsp, %struct.Tsp* %17, i32 0, i32 2
  %18 = load %struct.Val*, %struct.Val** %none, align 8
  store %struct.Val* %18, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then7, %if.then
  %19 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_typeof(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %4 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %5 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t, align 8
  %call5 = call i8* @tsp_type_str(i32 noundef %6)
  %call6 = call %struct.Val* @mk_str(%struct.Tsp* noundef %3, i8* noundef %call5)
  store %struct.Val* %call6, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end4, %do.body1
  %7 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_procprops(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %proc = alloca %struct.Val*, align 8
  %ret = alloca %struct.Rec*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %4, %struct.Val** %proc, align 8
  %call5 = call %struct.Rec* @rec_new(i64 noundef 6, %struct.Rec* noundef null)
  store %struct.Rec* %call5, %struct.Rec** %ret, align 8
  %5 = load %struct.Val*, %struct.Val** %proc, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t, align 8
  switch i32 %6, label %sw.default [
    i32 256, label %sw.bb
    i32 128, label %sw.bb
    i32 512, label %sw.bb8
    i32 1024, label %sw.bb8
  ]

sw.bb:                                            ; preds = %do.end4, %do.end4
  %7 = load %struct.Rec*, %struct.Rec** %ret, align 8
  %8 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %9 = load %struct.Val*, %struct.Val** %proc, align 8
  %v6 = getelementptr inbounds %struct.Val, %struct.Val* %9, i32 0, i32 1
  %pr = bitcast %union.anon* %v6 to %struct.anon.0*
  %name = getelementptr inbounds %struct.anon.0, %struct.anon.0* %pr, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  %call7 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %8, i8* noundef %10)
  call void @rec_add(%struct.Rec* noundef %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i64 0, i64 0), %struct.Val* noundef %call7)
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end4, %do.end4
  %11 = load %struct.Rec*, %struct.Rec** %ret, align 8
  %12 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %13 = load %struct.Val*, %struct.Val** %proc, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %f = bitcast %union.anon* %v9 to %struct.anon.1*
  %name10 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f, i32 0, i32 0
  %14 = load i8*, i8** %name10, align 8
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb8
  %15 = load %struct.Val*, %struct.Val** %proc, align 8
  %v11 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 1
  %f12 = bitcast %union.anon* %v11 to %struct.anon.1*
  %name13 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f12, i32 0, i32 0
  %16 = load i8*, i8** %name13, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), %cond.false ]
  %call14 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %12, i8* noundef %cond)
  call void @rec_add(%struct.Rec* noundef %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i64 0, i64 0), %struct.Val* noundef %call14)
  %17 = load %struct.Rec*, %struct.Rec** %ret, align 8
  %18 = load %struct.Val*, %struct.Val** %proc, align 8
  %v15 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %f16 = bitcast %union.anon* %v15 to %struct.anon.1*
  %args17 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f16, i32 0, i32 1
  %19 = load %struct.Val*, %struct.Val** %args17, align 8
  call void @rec_add(%struct.Rec* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i64 0, i64 0), %struct.Val* noundef %19)
  %20 = load %struct.Rec*, %struct.Rec** %ret, align 8
  %21 = load %struct.Val*, %struct.Val** %proc, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %21, i32 0, i32 1
  %f19 = bitcast %union.anon* %v18 to %struct.anon.1*
  %body = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f19, i32 0, i32 2
  %22 = load %struct.Val*, %struct.Val** %body, align 8
  call void @rec_add(%struct.Rec* noundef %20, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i64 0, i64 0), %struct.Val* noundef %22)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end4
  br label %do.body20

do.body20:                                        ; preds = %sw.default
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load %struct.Val*, %struct.Val** %proc, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 0
  %25 = load i32, i32* %t21, align 8
  %call22 = call i8* @tsp_type_str(i32 noundef %25)
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.95, i64 0, i64 0), i8* noundef %call22)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end24:                                         ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end24, %cond.end, %sw.bb
  %26 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %27 = load %struct.Rec*, %struct.Rec** %ret, align 8
  %call25 = call %struct.Val* @mk_rec(%struct.Tsp* noundef %26, %struct.Rec* noundef %27, %struct.Val* noundef null)
  store %struct.Val* %call25, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %do.body20, %do.body1
  %28 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @form_Func(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %params = alloca %struct.Val*, align 8
  %body = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 1
  %4 = load %struct.Val*, %struct.Val** %cdr, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %cmp5 = icmp eq i32 %5, 2
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end4
  %6 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call7 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i64 0, i64 0))
  %7 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %7, i32 0, i32 3
  %8 = load %struct.Val*, %struct.Val** %nil, align 8
  %call8 = call %struct.Val* @mk_pair(%struct.Val* noundef %call7, %struct.Val* noundef %8)
  store %struct.Val* %call8, %struct.Val** %params, align 8
  %9 = load %struct.Val*, %struct.Val** %args.addr, align 8
  store %struct.Val* %9, %struct.Val** %body, align 8
  br label %if.end14

if.else:                                          ; preds = %do.end4
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %11, %struct.Val** %params, align 8
  %12 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v11 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 1
  %p12 = bitcast %union.anon* %v11 to %struct.anon.2*
  %cdr13 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p12, i32 0, i32 1
  %13 = load %struct.Val*, %struct.Val** %cdr13, align 8
  store %struct.Val* %13, %struct.Val** %body, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6
  %14 = load %struct.Val*, %struct.Val** %params, align 8
  %15 = load %struct.Val*, %struct.Val** %body, align 8
  %16 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %call15 = call %struct.Val* @mk_func(i32 noundef 512, i8* noundef null, %struct.Val* noundef %14, %struct.Val* noundef %15, %struct.Rec* noundef %16)
  store %struct.Val* %call15, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %do.body1
  %17 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @form_Macro(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %ret = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %4 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %5 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call5 = call %struct.Val* @form_Func(%struct.Tsp* noundef %3, %struct.Rec* noundef %4, %struct.Val* noundef %5)
  store %struct.Val* %call5, %struct.Val** %ret, align 8
  %6 = load %struct.Val*, %struct.Val** %ret, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 0
  store i32 1024, i32* %t, align 8
  %7 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %7, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end4, %do.body1
  %8 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_error(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp slt i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0), i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 64)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.99, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %12 = load %struct.Val*, %struct.Val** %car20, align 8
  %v21 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 1
  %s = bitcast %union.anon* %v21 to i8**
  %13 = load i8*, i8** %s, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i8* noundef %13)
  %14 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v23 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %p24 = bitcast %union.anon* %v23 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p24, i32 0, i32 1
  %15 = load %struct.Val*, %struct.Val** %cdr, align 8
  store %struct.Val* %15, %struct.Val** %args.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end17
  %16 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %t25 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 0
  %17 = load i32, i32* %t25, align 8
  %cmp26 = icmp eq i32 %17, 2
  %lnot = xor i1 %cmp26, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v27 = getelementptr inbounds %struct.Val, %struct.Val* %19, i32 0, i32 1
  %p28 = bitcast %union.anon* %v27 to %struct.anon.2*
  %car29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p28, i32 0, i32 0
  %20 = load %struct.Val*, %struct.Val** %car29, align 8
  call void @tisp_print(%struct._IO_FILE* noundef %18, %struct.Val* noundef %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v30 = getelementptr inbounds %struct.Val, %struct.Val* %21, i32 0, i32 1
  %p31 = bitcast %union.anon* %v30 to %struct.anon.2*
  %cdr32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p31, i32 0, i32 1
  %22 = load %struct.Val*, %struct.Val** %cdr32, align 8
  store %struct.Val* %22, %struct.Val** %args.addr, align 8
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call33 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %23)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %do.body7, %do.body1
  %24 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %24
}

declare dso_local i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_recmerge(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %ret = alloca %struct.Val*, align 8
  %r58 = alloca %struct.Rec*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  %call = call %struct.Val* @mk_val(i32 noundef 4096)
  store %struct.Val* %call, %struct.Val** %ret, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call1 = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call3 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0), i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call3)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end5

do.end5:                                          ; preds = %if.end
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end17, label %if.then7

if.then7:                                         ; preds = %do.body6
  br label %do.body8

do.body8:                                         ; preds = %if.then7
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i8* @tsp_type_str(i32 noundef 4096)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v10 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p11 = bitcast %union.anon* %v10 to %struct.anon.2*
  %car12 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p11, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car12, align 8
  %t13 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t13, align 8
  %call14 = call i8* @tsp_type_str(i32 noundef %9)
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.101, i64 0, i64 0), i8* noundef %call9, i8* noundef %call14)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end16:                                         ; No predecessors!
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %do.body6
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  br label %do.body19

do.body19:                                        ; preds = %do.end18
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v20 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p21 = bitcast %union.anon* %v20 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p21, i32 0, i32 1
  %11 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v22 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %p23 = bitcast %union.anon* %v22 to %struct.anon.2*
  %car24 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p23, i32 0, i32 0
  %12 = load %struct.Val*, %struct.Val** %car24, align 8
  %t25 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t25, align 8
  %and26 = and i32 %13, 4096
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.end41, label %if.then28

if.then28:                                        ; preds = %do.body19
  br label %do.body29

do.body29:                                        ; preds = %if.then28
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call30 = call i8* @tsp_type_str(i32 noundef 4096)
  %15 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v31 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 1
  %p32 = bitcast %union.anon* %v31 to %struct.anon.2*
  %cdr33 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p32, i32 0, i32 1
  %16 = load %struct.Val*, %struct.Val** %cdr33, align 8
  %v34 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %p35 = bitcast %union.anon* %v34 to %struct.anon.2*
  %car36 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p35, i32 0, i32 0
  %17 = load %struct.Val*, %struct.Val** %car36, align 8
  %t37 = getelementptr inbounds %struct.Val, %struct.Val* %17, i32 0, i32 0
  %18 = load i32, i32* %t37, align 8
  %call38 = call i8* @tsp_type_str(i32 noundef %18)
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.101, i64 0, i64 0), i8* noundef %call30, i8* noundef %call38)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end40:                                         ; No predecessors!
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %do.body19
  br label %do.end42

do.end42:                                         ; preds = %if.end41
  %19 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v43 = getelementptr inbounds %struct.Val, %struct.Val* %19, i32 0, i32 1
  %p44 = bitcast %union.anon* %v43 to %struct.anon.2*
  %cdr45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p44, i32 0, i32 1
  %20 = load %struct.Val*, %struct.Val** %cdr45, align 8
  %v46 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 1
  %p47 = bitcast %union.anon* %v46 to %struct.anon.2*
  %car48 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p47, i32 0, i32 0
  %21 = load %struct.Val*, %struct.Val** %car48, align 8
  %v49 = getelementptr inbounds %struct.Val, %struct.Val* %21, i32 0, i32 1
  %r = bitcast %union.anon* %v49 to %struct.Rec**
  %22 = load %struct.Rec*, %struct.Rec** %r, align 8
  %size = getelementptr inbounds %struct.Rec, %struct.Rec* %22, i32 0, i32 0
  %23 = load i32, i32* %size, align 8
  %mul = mul nsw i32 %23, 2
  %conv = sext i32 %mul to i64
  %24 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v50 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 1
  %p51 = bitcast %union.anon* %v50 to %struct.anon.2*
  %car52 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p51, i32 0, i32 0
  %25 = load %struct.Val*, %struct.Val** %car52, align 8
  %v53 = getelementptr inbounds %struct.Val, %struct.Val* %25, i32 0, i32 1
  %r54 = bitcast %union.anon* %v53 to %struct.Rec**
  %26 = load %struct.Rec*, %struct.Rec** %r54, align 8
  %call55 = call %struct.Rec* @rec_new(i64 noundef %conv, %struct.Rec* noundef %26)
  %27 = load %struct.Val*, %struct.Val** %ret, align 8
  %v56 = getelementptr inbounds %struct.Val, %struct.Val* %27, i32 0, i32 1
  %r57 = bitcast %union.anon* %v56 to %struct.Rec**
  store %struct.Rec* %call55, %struct.Rec** %r57, align 8
  %28 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v59 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %p60 = bitcast %union.anon* %v59 to %struct.anon.2*
  %cdr61 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p60, i32 0, i32 1
  %29 = load %struct.Val*, %struct.Val** %cdr61, align 8
  %v62 = getelementptr inbounds %struct.Val, %struct.Val* %29, i32 0, i32 1
  %p63 = bitcast %union.anon* %v62 to %struct.anon.2*
  %car64 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p63, i32 0, i32 0
  %30 = load %struct.Val*, %struct.Val** %car64, align 8
  %v65 = getelementptr inbounds %struct.Val, %struct.Val* %30, i32 0, i32 1
  %r66 = bitcast %union.anon* %v65 to %struct.Rec**
  %31 = load %struct.Rec*, %struct.Rec** %r66, align 8
  store %struct.Rec* %31, %struct.Rec** %r58, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc86, %do.end42
  %32 = load %struct.Rec*, %struct.Rec** %r58, align 8
  %tobool67 = icmp ne %struct.Rec* %32, null
  br i1 %tobool67, label %for.body, label %for.end87

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc, %for.body
  %33 = load i32, i32* %c, align 4
  %34 = load %struct.Rec*, %struct.Rec** %r58, align 8
  %size69 = getelementptr inbounds %struct.Rec, %struct.Rec* %34, i32 0, i32 0
  %35 = load i32, i32* %size69, align 8
  %cmp70 = icmp slt i32 %33, %35
  br i1 %cmp70, label %for.body72, label %for.end

for.body72:                                       ; preds = %for.cond68
  %36 = load %struct.Rec*, %struct.Rec** %r58, align 8
  %items = getelementptr inbounds %struct.Rec, %struct.Rec* %36, i32 0, i32 2
  %37 = load %struct.Entry*, %struct.Entry** %items, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds %struct.Entry, %struct.Entry* %37, i64 %idxprom
  %key = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx, i32 0, i32 0
  %39 = load i8*, i8** %key, align 8
  %tobool73 = icmp ne i8* %39, null
  br i1 %tobool73, label %if.then74, label %if.end84

if.then74:                                        ; preds = %for.body72
  %40 = load i32, i32* %c, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %c, align 4
  %41 = load %struct.Val*, %struct.Val** %ret, align 8
  %v75 = getelementptr inbounds %struct.Val, %struct.Val* %41, i32 0, i32 1
  %r76 = bitcast %union.anon* %v75 to %struct.Rec**
  %42 = load %struct.Rec*, %struct.Rec** %r76, align 8
  %43 = load %struct.Rec*, %struct.Rec** %r58, align 8
  %items77 = getelementptr inbounds %struct.Rec, %struct.Rec* %43, i32 0, i32 2
  %44 = load %struct.Entry*, %struct.Entry** %items77, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %45 to i64
  %arrayidx79 = getelementptr inbounds %struct.Entry, %struct.Entry* %44, i64 %idxprom78
  %key80 = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx79, i32 0, i32 0
  %46 = load i8*, i8** %key80, align 8
  %47 = load %struct.Rec*, %struct.Rec** %r58, align 8
  %items81 = getelementptr inbounds %struct.Rec, %struct.Rec* %47, i32 0, i32 2
  %48 = load %struct.Entry*, %struct.Entry** %items81, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %49 to i64
  %arrayidx83 = getelementptr inbounds %struct.Entry, %struct.Entry* %48, i64 %idxprom82
  %val = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx83, i32 0, i32 1
  %50 = load %struct.Val*, %struct.Val** %val, align 8
  call void @rec_add(%struct.Rec* noundef %42, i8* noundef %46, %struct.Val* noundef %50)
  br label %if.end84

if.end84:                                         ; preds = %if.then74, %for.body72
  br label %for.inc

for.inc:                                          ; preds = %if.end84
  %51 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %51, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond68, !llvm.loop !37

for.end:                                          ; preds = %for.cond68
  br label %for.inc86

for.inc86:                                        ; preds = %for.end
  %52 = load %struct.Rec*, %struct.Rec** %r58, align 8
  %next = getelementptr inbounds %struct.Rec, %struct.Rec* %52, i32 0, i32 3
  %53 = load %struct.Rec*, %struct.Rec** %next, align 8
  store %struct.Rec* %53, %struct.Rec** %r58, align 8
  br label %for.cond, !llvm.loop !38

for.end87:                                        ; preds = %for.cond
  %54 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %54, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %for.end87, %do.body29, %do.body8, %do.body2
  %55 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %55
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_records(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %ret = alloca %struct.Val*, align 8
  %r = alloca %struct.Rec*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %entry29 = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 3
  %1 = load %struct.Val*, %struct.Val** %nil, align 8
  store %struct.Val* %1, %struct.Val** %ret, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %4)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %5 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %6 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 0
  %7 = load i32, i32* %t, align 8
  %and = and i32 %7, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 4096)
  %9 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %9, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %10 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 0
  %11 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %11)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.103, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %12 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %13 = load %struct.Val*, %struct.Val** %car20, align 8
  %v21 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %r22 = bitcast %union.anon* %v21 to %struct.Rec**
  %14 = load %struct.Rec*, %struct.Rec** %r22, align 8
  store %struct.Rec* %14, %struct.Rec** %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %do.end17
  %15 = load %struct.Rec*, %struct.Rec** %r, align 8
  %tobool23 = icmp ne %struct.Rec* %15, null
  br i1 %tobool23, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %c, align 4
  %17 = load %struct.Rec*, %struct.Rec** %r, align 8
  %size = getelementptr inbounds %struct.Rec, %struct.Rec* %17, i32 0, i32 0
  %18 = load i32, i32* %size, align 8
  %cmp25 = icmp slt i32 %16, %18
  br i1 %cmp25, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond24
  %19 = load %struct.Rec*, %struct.Rec** %r, align 8
  %items = getelementptr inbounds %struct.Rec, %struct.Rec* %19, i32 0, i32 2
  %20 = load %struct.Entry*, %struct.Entry** %items, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds %struct.Entry, %struct.Entry* %20, i64 %idxprom
  %key = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx, i32 0, i32 0
  %22 = load i8*, i8** %key, align 8
  %tobool27 = icmp ne i8* %22, null
  br i1 %tobool27, label %if.then28, label %if.end40

if.then28:                                        ; preds = %for.body26
  %23 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %24 = load %struct.Rec*, %struct.Rec** %r, align 8
  %items30 = getelementptr inbounds %struct.Rec, %struct.Rec* %24, i32 0, i32 2
  %25 = load %struct.Entry*, %struct.Entry** %items30, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds %struct.Entry, %struct.Entry* %25, i64 %idxprom31
  %key33 = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx32, i32 0, i32 0
  %27 = load i8*, i8** %key33, align 8
  %call34 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %23, i8* noundef %27)
  %28 = load %struct.Rec*, %struct.Rec** %r, align 8
  %items35 = getelementptr inbounds %struct.Rec, %struct.Rec* %28, i32 0, i32 2
  %29 = load %struct.Entry*, %struct.Entry** %items35, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds %struct.Entry, %struct.Entry* %29, i64 %idxprom36
  %val = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx37, i32 0, i32 1
  %31 = load %struct.Val*, %struct.Val** %val, align 8
  %call38 = call %struct.Val* @mk_pair(%struct.Val* noundef %call34, %struct.Val* noundef %31)
  store %struct.Val* %call38, %struct.Val** %entry29, align 8
  %32 = load %struct.Val*, %struct.Val** %entry29, align 8
  %33 = load %struct.Val*, %struct.Val** %ret, align 8
  %call39 = call %struct.Val* @mk_pair(%struct.Val* noundef %32, %struct.Val* noundef %33)
  store %struct.Val* %call39, %struct.Val** %ret, align 8
  %34 = load i32, i32* %c, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %c, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then28, %for.body26
  br label %for.inc

for.inc:                                          ; preds = %if.end40
  %35 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %35, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond24, !llvm.loop !39

for.end:                                          ; preds = %for.cond24
  br label %for.inc42

for.inc42:                                        ; preds = %for.end
  %36 = load %struct.Rec*, %struct.Rec** %r, align 8
  %next = getelementptr inbounds %struct.Rec, %struct.Rec* %36, i32 0, i32 3
  %37 = load %struct.Rec*, %struct.Rec** %next, align 8
  store %struct.Rec* %37, %struct.Rec** %r, align 8
  br label %for.cond, !llvm.loop !40

for.end43:                                        ; preds = %for.cond
  %38 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %38, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %for.end43, %do.body7, %do.body1
  %39 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @form_def(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %sym = alloca %struct.Val*, align 8
  %val = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %cmp5 = icmp eq i32 %5, 2048
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end4
  %6 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v7 = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 1
  %p8 = bitcast %union.anon* %v7 to %struct.anon.2*
  %car9 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p8, i32 0, i32 0
  %7 = load %struct.Val*, %struct.Val** %car9, align 8
  %v10 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p11 = bitcast %union.anon* %v10 to %struct.anon.2*
  %car12 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p11, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car12, align 8
  store %struct.Val* %8, %struct.Val** %sym, align 8
  %9 = load %struct.Val*, %struct.Val** %sym, align 8
  %t13 = getelementptr inbounds %struct.Val, %struct.Val* %9, i32 0, i32 0
  %10 = load i32, i32* %t13, align 8
  %cmp14 = icmp ne i32 %10, 64
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.then6
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load %struct.Val*, %struct.Val** %sym, align 8
  %t17 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t17, align 8
  %call18 = call i8* @tsp_type_str(i32 noundef %13)
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.105, i64 0, i64 0), i8* noundef %call18)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end20:                                         ; No predecessors!
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.then6
  %14 = load %struct.Val*, %struct.Val** %sym, align 8
  %v22 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %s = bitcast %union.anon* %v22 to i8**
  %15 = load i8*, i8** %s, align 8
  %16 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v23 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %p24 = bitcast %union.anon* %v23 to %struct.anon.2*
  %car25 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p24, i32 0, i32 0
  %17 = load %struct.Val*, %struct.Val** %car25, align 8
  %v26 = getelementptr inbounds %struct.Val, %struct.Val* %17, i32 0, i32 1
  %p27 = bitcast %union.anon* %v26 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p27, i32 0, i32 1
  %18 = load %struct.Val*, %struct.Val** %cdr, align 8
  %19 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %19, i32 0, i32 1
  %p29 = bitcast %union.anon* %v28 to %struct.anon.2*
  %cdr30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p29, i32 0, i32 1
  %20 = load %struct.Val*, %struct.Val** %cdr30, align 8
  %21 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %call31 = call %struct.Val* @mk_func(i32 noundef 512, i8* noundef %15, %struct.Val* noundef %18, %struct.Val* noundef %20, %struct.Rec* noundef %21)
  store %struct.Val* %call31, %struct.Val** %val, align 8
  br label %if.end58

if.else:                                          ; preds = %do.end4
  %22 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v32 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 1
  %p33 = bitcast %union.anon* %v32 to %struct.anon.2*
  %car34 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p33, i32 0, i32 0
  %23 = load %struct.Val*, %struct.Val** %car34, align 8
  %t35 = getelementptr inbounds %struct.Val, %struct.Val* %23, i32 0, i32 0
  %24 = load i32, i32* %t35, align 8
  %cmp36 = icmp eq i32 %24, 64
  br i1 %cmp36, label %if.then37, label %if.else53

if.then37:                                        ; preds = %if.else
  %25 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v38 = getelementptr inbounds %struct.Val, %struct.Val* %25, i32 0, i32 1
  %p39 = bitcast %union.anon* %v38 to %struct.anon.2*
  %car40 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p39, i32 0, i32 0
  %26 = load %struct.Val*, %struct.Val** %car40, align 8
  store %struct.Val* %26, %struct.Val** %sym, align 8
  %27 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v41 = getelementptr inbounds %struct.Val, %struct.Val* %27, i32 0, i32 1
  %p42 = bitcast %union.anon* %v41 to %struct.anon.2*
  %cdr43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p42, i32 0, i32 1
  %28 = load %struct.Val*, %struct.Val** %cdr43, align 8
  %t44 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 0
  %29 = load i32, i32* %t44, align 8
  %cmp45 = icmp eq i32 %29, 2
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then37
  %30 = load %struct.Val*, %struct.Val** %sym, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then37
  %31 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %32 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %33 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v46 = getelementptr inbounds %struct.Val, %struct.Val* %33, i32 0, i32 1
  %p47 = bitcast %union.anon* %v46 to %struct.anon.2*
  %cdr48 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p47, i32 0, i32 1
  %34 = load %struct.Val*, %struct.Val** %cdr48, align 8
  %v49 = getelementptr inbounds %struct.Val, %struct.Val* %34, i32 0, i32 1
  %p50 = bitcast %union.anon* %v49 to %struct.anon.2*
  %car51 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p50, i32 0, i32 0
  %35 = load %struct.Val*, %struct.Val** %car51, align 8
  %call52 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %31, %struct.Rec* noundef %32, %struct.Val* noundef %35)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.Val* [ %30, %cond.true ], [ %call52, %cond.false ]
  store %struct.Val* %cond, %struct.Val** %val, align 8
  br label %if.end57

if.else53:                                        ; preds = %if.else
  br label %do.body54

do.body54:                                        ; preds = %if.else53
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.106, i64 0, i64 0))
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end56:                                         ; No predecessors!
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %cond.end
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end21
  %37 = load %struct.Val*, %struct.Val** %val, align 8
  %tobool = icmp ne %struct.Val* %37, null
  br i1 %tobool, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.end58
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end60:                                         ; preds = %if.end58
  %38 = load %struct.Val*, %struct.Val** %val, align 8
  %t61 = getelementptr inbounds %struct.Val, %struct.Val* %38, i32 0, i32 0
  %39 = load i32, i32* %t61, align 8
  %and = and i32 %39, 1536
  %tobool62 = icmp ne i32 %and, 0
  br i1 %tobool62, label %land.lhs.true, label %if.end71

land.lhs.true:                                    ; preds = %if.end60
  %40 = load %struct.Val*, %struct.Val** %val, align 8
  %v63 = getelementptr inbounds %struct.Val, %struct.Val* %40, i32 0, i32 1
  %f = bitcast %union.anon* %v63 to %struct.anon.1*
  %name = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f, i32 0, i32 0
  %41 = load i8*, i8** %name, align 8
  %tobool64 = icmp ne i8* %41, null
  br i1 %tobool64, label %if.end71, label %if.then65

if.then65:                                        ; preds = %land.lhs.true
  %42 = load %struct.Val*, %struct.Val** %sym, align 8
  %v66 = getelementptr inbounds %struct.Val, %struct.Val* %42, i32 0, i32 1
  %s67 = bitcast %union.anon* %v66 to i8**
  %43 = load i8*, i8** %s67, align 8
  %44 = load %struct.Val*, %struct.Val** %val, align 8
  %v68 = getelementptr inbounds %struct.Val, %struct.Val* %44, i32 0, i32 1
  %f69 = bitcast %union.anon* %v68 to %struct.anon.1*
  %name70 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %f69, i32 0, i32 0
  store i8* %43, i8** %name70, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %land.lhs.true, %if.end60
  %45 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %46 = load %struct.Val*, %struct.Val** %sym, align 8
  %v72 = getelementptr inbounds %struct.Val, %struct.Val* %46, i32 0, i32 1
  %s73 = bitcast %union.anon* %v72 to i8**
  %47 = load i8*, i8** %s73, align 8
  %48 = load %struct.Val*, %struct.Val** %val, align 8
  call void @rec_add(%struct.Rec* noundef %45, i8* noundef %47, %struct.Val* noundef %48)
  %49 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %none = getelementptr inbounds %struct.Tsp, %struct.Tsp* %49, i32 0, i32 2
  %50 = load %struct.Val*, %struct.Val** %none, align 8
  store %struct.Val* %50, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end71, %if.then59, %do.body54, %do.body16, %do.body1
  %51 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @form_undefine(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %r = alloca %struct.Rec*, align 8
  %e = alloca %struct.Entry*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %do.end35

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 64)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.108, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %do.end35

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  store %struct.Rec* %10, %struct.Rec** %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end17
  %11 = load %struct.Rec*, %struct.Rec** %r, align 8
  %tobool18 = icmp ne %struct.Rec* %11, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.Rec*, %struct.Rec** %r, align 8
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v19 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p20 = bitcast %union.anon* %v19 to %struct.anon.2*
  %car21 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p20, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car21, align 8
  %v22 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %s = bitcast %union.anon* %v22 to i8**
  %15 = load i8*, i8** %s, align 8
  %call23 = call %struct.Entry* @entry_get(%struct.Rec* noundef %12, i8* noundef %15)
  store %struct.Entry* %call23, %struct.Entry** %e, align 8
  %16 = load %struct.Entry*, %struct.Entry** %e, align 8
  %key = getelementptr inbounds %struct.Entry, %struct.Entry* %16, i32 0, i32 0
  %17 = load i8*, i8** %key, align 8
  %tobool24 = icmp ne i8* %17, null
  br i1 %tobool24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.body
  %18 = load %struct.Entry*, %struct.Entry** %e, align 8
  %key26 = getelementptr inbounds %struct.Entry, %struct.Entry* %18, i32 0, i32 0
  store i8* null, i8** %key26, align 8
  %19 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %none = getelementptr inbounds %struct.Tsp, %struct.Tsp* %19, i32 0, i32 2
  %20 = load %struct.Val*, %struct.Val** %none, align 8
  store %struct.Val* %20, %struct.Val** %retval, align 8
  br label %do.end35

if.end27:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %21 = load %struct.Rec*, %struct.Rec** %r, align 8
  %next = getelementptr inbounds %struct.Rec, %struct.Rec* %21, i32 0, i32 3
  %22 = load %struct.Rec*, %struct.Rec** %next, align 8
  store %struct.Rec* %22, %struct.Rec** %r, align 8
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  br label %do.body28

do.body28:                                        ; preds = %for.end
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v29 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 1
  %p30 = bitcast %union.anon* %v29 to %struct.anon.2*
  %car31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p30, i32 0, i32 0
  %25 = load %struct.Val*, %struct.Val** %car31, align 8
  %v32 = getelementptr inbounds %struct.Val, %struct.Val* %25, i32 0, i32 1
  %s33 = bitcast %union.anon* %v32 to i8**
  %26 = load i8*, i8** %s33, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.109, i64 0, i64 0), i8* noundef %26)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %do.end35

do.end35:                                         ; preds = %do.body1, %do.body7, %if.then25, %do.body28
  %27 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @form_definedp(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %e = alloca %struct.Entry*, align 8
  %r = alloca %struct.Rec*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  store %struct.Entry* null, %struct.Entry** %e, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 64)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.111, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  store %struct.Rec* %10, %struct.Rec** %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end17
  %11 = load %struct.Rec*, %struct.Rec** %r, align 8
  %tobool18 = icmp ne %struct.Rec* %11, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.Rec*, %struct.Rec** %r, align 8
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v19 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p20 = bitcast %union.anon* %v19 to %struct.anon.2*
  %car21 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p20, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car21, align 8
  %v22 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %s = bitcast %union.anon* %v22 to i8**
  %15 = load i8*, i8** %s, align 8
  %call23 = call %struct.Entry* @entry_get(%struct.Rec* noundef %12, i8* noundef %15)
  store %struct.Entry* %call23, %struct.Entry** %e, align 8
  %16 = load %struct.Entry*, %struct.Entry** %e, align 8
  %key = getelementptr inbounds %struct.Entry, %struct.Entry* %16, i32 0, i32 0
  %17 = load i8*, i8** %key, align 8
  %tobool24 = icmp ne i8* %17, null
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body
  br label %for.end

if.end26:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %18 = load %struct.Rec*, %struct.Rec** %r, align 8
  %next = getelementptr inbounds %struct.Rec, %struct.Rec* %18, i32 0, i32 3
  %19 = load %struct.Rec*, %struct.Rec** %next, align 8
  store %struct.Rec* %19, %struct.Rec** %r, align 8
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %if.then25, %for.cond
  %20 = load %struct.Entry*, %struct.Entry** %e, align 8
  %tobool27 = icmp ne %struct.Entry* %20, null
  br i1 %tobool27, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.end
  %21 = load %struct.Entry*, %struct.Entry** %e, align 8
  %key28 = getelementptr inbounds %struct.Entry, %struct.Entry* %21, i32 0, i32 0
  %22 = load i8*, i8** %key28, align 8
  %tobool29 = icmp ne i8* %22, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %23 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %t30 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %23, i32 0, i32 4
  %24 = load %struct.Val*, %struct.Val** %t30, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.end
  %25 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %25, i32 0, i32 3
  %26 = load %struct.Val*, %struct.Val** %nil, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.Val* [ %24, %cond.true ], [ %26, %cond.false ]
  store %struct.Val* %cond, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %do.body7, %do.body1
  %27 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @val_string(%struct.Tsp* noundef %st, %struct.Val* noundef %args, %struct.Val* (%struct.Tsp*, i8*)* noundef %mk_fn) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %mk_fn.addr = alloca %struct.Val* (%struct.Tsp*, i8*)*, align 8
  %v = alloca %struct.Val*, align 8
  %s = alloca [43 x i8], align 16
  %ret = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  store %struct.Val* (%struct.Tsp*, i8*)* %mk_fn, %struct.Val* (%struct.Tsp*, i8*)** %mk_fn.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 1) #11
  store i8* %call, i8** %ret, align 8
  store i32 1, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %0, i32 0, i32 0
  %1 = load i32, i32* %t, align 8
  %cmp = icmp eq i32 %1, 2048
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v1 = getelementptr inbounds %struct.Val, %struct.Val* %2, i32 0, i32 1
  %p = bitcast %union.anon* %v1 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %3 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %3, %struct.Val** %v, align 8
  %4 = load %struct.Val*, %struct.Val** %v, align 8
  %t2 = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t2, align 8
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 4, label %sw.bb6
    i32 8, label %sw.bb20
    i32 16, label %sw.bb38
    i32 32, label %sw.bb60
    i32 64, label %sw.bb60
    i32 2048, label %sw.bb73
  ]

sw.bb:                                            ; preds = %for.body
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.body
  %6 = load i32, i32* %len, align 4
  %add = add nsw i32 %6, 4
  store i32 %add, i32* %len, align 4
  %7 = load i8*, i8** %ret, align 8
  %8 = load i32, i32* %len, align 4
  %conv = sext i32 %8 to i64
  %mul = mul i64 %conv, 1
  %call4 = call i8* @realloc(i8* noundef %7, i64 noundef %mul) #11
  store i8* %call4, i8** %ret, align 8
  %9 = load i8*, i8** %ret, align 8
  %call5 = call i8* @strcat(i8* noundef %9, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  %arraydecay = getelementptr inbounds [43 x i8], [43 x i8]* %s, i64 0, i64 0
  %10 = load %struct.Val*, %struct.Val** %v, align 8
  %v7 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %n = bitcast %union.anon* %v7 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %11 = load double, double* %num, align 8
  %conv8 = fptosi double %11 to i32
  %call9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 21, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i32 noundef %conv8) #11
  %arraydecay10 = getelementptr inbounds [43 x i8], [43 x i8]* %s, i64 0, i64 0
  %call11 = call i64 @strlen(i8* noundef %arraydecay10) #14
  %12 = load i32, i32* %len, align 4
  %conv12 = sext i32 %12 to i64
  %add13 = add i64 %conv12, %call11
  %conv14 = trunc i64 %add13 to i32
  store i32 %conv14, i32* %len, align 4
  %13 = load i32, i32* %len, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [43 x i8], [43 x i8]* %s, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %14 = load i8*, i8** %ret, align 8
  %15 = load i32, i32* %len, align 4
  %conv15 = sext i32 %15 to i64
  %mul16 = mul i64 %conv15, 1
  %call17 = call i8* @realloc(i8* noundef %14, i64 noundef %mul16) #11
  store i8* %call17, i8** %ret, align 8
  %16 = load i8*, i8** %ret, align 8
  %arraydecay18 = getelementptr inbounds [43 x i8], [43 x i8]* %s, i64 0, i64 0
  %call19 = call i8* @strcat(i8* noundef %16, i8* noundef %arraydecay18) #11
  br label %sw.epilog

sw.bb20:                                          ; preds = %for.body
  %arraydecay21 = getelementptr inbounds [43 x i8], [43 x i8]* %s, i64 0, i64 0
  %17 = load %struct.Val*, %struct.Val** %v, align 8
  %v22 = getelementptr inbounds %struct.Val, %struct.Val* %17, i32 0, i32 1
  %n23 = bitcast %union.anon* %v22 to %struct.anon*
  %num24 = getelementptr inbounds %struct.anon, %struct.anon* %n23, i32 0, i32 0
  %18 = load double, double* %num24, align 8
  %call25 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay21, i64 noundef 22, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), double noundef %18) #11
  %arraydecay26 = getelementptr inbounds [43 x i8], [43 x i8]* %s, i64 0, i64 0
  %call27 = call i64 @strlen(i8* noundef %arraydecay26) #14
  %19 = load i32, i32* %len, align 4
  %conv28 = sext i32 %19 to i64
  %add29 = add i64 %conv28, %call27
  %conv30 = trunc i64 %add29 to i32
  store i32 %conv30, i32* %len, align 4
  %20 = load i32, i32* %len, align 4
  %idxprom31 = sext i32 %20 to i64
  %arrayidx32 = getelementptr inbounds [43 x i8], [43 x i8]* %s, i64 0, i64 %idxprom31
  store i8 0, i8* %arrayidx32, align 1
  %21 = load i8*, i8** %ret, align 8
  %22 = load i32, i32* %len, align 4
  %conv33 = sext i32 %22 to i64
  %mul34 = mul i64 %conv33, 1
  %call35 = call i8* @realloc(i8* noundef %21, i64 noundef %mul34) #11
  store i8* %call35, i8** %ret, align 8
  %23 = load i8*, i8** %ret, align 8
  %arraydecay36 = getelementptr inbounds [43 x i8], [43 x i8]* %s, i64 0, i64 0
  %call37 = call i8* @strcat(i8* noundef %23, i8* noundef %arraydecay36) #11
  br label %sw.epilog

sw.bb38:                                          ; preds = %for.body
  %arraydecay39 = getelementptr inbounds [43 x i8], [43 x i8]* %s, i64 0, i64 0
  %24 = load %struct.Val*, %struct.Val** %v, align 8
  %v40 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 1
  %n41 = bitcast %union.anon* %v40 to %struct.anon*
  %num42 = getelementptr inbounds %struct.anon, %struct.anon* %n41, i32 0, i32 0
  %25 = load double, double* %num42, align 8
  %conv43 = fptosi double %25 to i32
  %26 = load %struct.Val*, %struct.Val** %v, align 8
  %v44 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %n45 = bitcast %union.anon* %v44 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n45, i32 0, i32 1
  %27 = load double, double* %den, align 8
  %conv46 = fptosi double %27 to i32
  %call47 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay39, i64 noundef 43, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv43, i32 noundef %conv46) #11
  %arraydecay48 = getelementptr inbounds [43 x i8], [43 x i8]* %s, i64 0, i64 0
  %call49 = call i64 @strlen(i8* noundef %arraydecay48) #14
  %28 = load i32, i32* %len, align 4
  %conv50 = sext i32 %28 to i64
  %add51 = add i64 %conv50, %call49
  %conv52 = trunc i64 %add51 to i32
  store i32 %conv52, i32* %len, align 4
  %29 = load i32, i32* %len, align 4
  %idxprom53 = sext i32 %29 to i64
  %arrayidx54 = getelementptr inbounds [43 x i8], [43 x i8]* %s, i64 0, i64 %idxprom53
  store i8 0, i8* %arrayidx54, align 1
  %30 = load i8*, i8** %ret, align 8
  %31 = load i32, i32* %len, align 4
  %conv55 = sext i32 %31 to i64
  %mul56 = mul i64 %conv55, 1
  %call57 = call i8* @realloc(i8* noundef %30, i64 noundef %mul56) #11
  store i8* %call57, i8** %ret, align 8
  %32 = load i8*, i8** %ret, align 8
  %arraydecay58 = getelementptr inbounds [43 x i8], [43 x i8]* %s, i64 0, i64 0
  %call59 = call i8* @strcat(i8* noundef %32, i8* noundef %arraydecay58) #11
  br label %sw.epilog

sw.bb60:                                          ; preds = %for.body, %for.body
  %33 = load %struct.Val*, %struct.Val** %v, align 8
  %v61 = getelementptr inbounds %struct.Val, %struct.Val* %33, i32 0, i32 1
  %s62 = bitcast %union.anon* %v61 to i8**
  %34 = load i8*, i8** %s62, align 8
  %call63 = call i64 @strlen(i8* noundef %34) #14
  %35 = load i32, i32* %len, align 4
  %conv64 = sext i32 %35 to i64
  %add65 = add i64 %conv64, %call63
  %conv66 = trunc i64 %add65 to i32
  store i32 %conv66, i32* %len, align 4
  %36 = load i8*, i8** %ret, align 8
  %37 = load i32, i32* %len, align 4
  %conv67 = sext i32 %37 to i64
  %mul68 = mul i64 %conv67, 1
  %call69 = call i8* @realloc(i8* noundef %36, i64 noundef %mul68) #11
  store i8* %call69, i8** %ret, align 8
  %38 = load i8*, i8** %ret, align 8
  %39 = load %struct.Val*, %struct.Val** %v, align 8
  %v70 = getelementptr inbounds %struct.Val, %struct.Val* %39, i32 0, i32 1
  %s71 = bitcast %union.anon* %v70 to i8**
  %40 = load i8*, i8** %s71, align 8
  %call72 = call i8* @strcat(i8* noundef %38, i8* noundef %40) #11
  br label %sw.epilog

sw.bb73:                                          ; preds = %for.body
  br label %sw.default

sw.default:                                       ; preds = %for.body, %sw.bb73
  br label %do.body

do.body:                                          ; preds = %sw.default
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = load %struct.Val*, %struct.Val** %v, align 8
  %t74 = getelementptr inbounds %struct.Val, %struct.Val* %42, i32 0, i32 0
  %43 = load i32, i32* %t74, align 8
  %call75 = call i8* @tsp_type_str(i32 noundef %43)
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.115, i64 0, i64 0), i8* noundef %call75)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb60, %sw.bb38, %sw.bb20, %sw.bb6, %sw.bb3, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %44 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v77 = getelementptr inbounds %struct.Val, %struct.Val* %44, i32 0, i32 1
  %p78 = bitcast %union.anon* %v77 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p78, i32 0, i32 1
  %45 = load %struct.Val*, %struct.Val** %cdr, align 8
  store %struct.Val* %45, %struct.Val** %args.addr, align 8
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  %46 = load %struct.Val* (%struct.Tsp*, i8*)*, %struct.Val* (%struct.Tsp*, i8*)** %mk_fn.addr, align 8
  %47 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %48 = load i8*, i8** %ret, align 8
  %call79 = call %struct.Val* %46(%struct.Tsp* noundef %47, i8* noundef %48)
  store %struct.Val* %call79, %struct.Val** %v, align 8
  %49 = load i8*, i8** %ret, align 8
  call void @free(i8* noundef %49) #11
  %50 = load %struct.Val*, %struct.Val** %v, align 8
  store %struct.Val* %50, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %do.body
  %51 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %51
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_Str(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %4 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call5 = call %struct.Val* @val_string(%struct.Tsp* noundef %3, %struct.Val* noundef %4, %struct.Val* (%struct.Tsp*, i8*)* noundef @mk_str)
  store %struct.Val* %call5, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end4, %do.body1
  %5 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_Sym(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %4 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call5 = call %struct.Val* @val_string(%struct.Tsp* noundef %3, %struct.Val* noundef %4, %struct.Val* (%struct.Tsp*, i8*)* noundef @mk_sym)
  store %struct.Val* %call5, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end4, %do.body1
  %5 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_strlen(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 96
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 96)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.117, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %v21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %s = bitcast %union.anon* %v21 to i8**
  %12 = load i8*, i8** %s, align 8
  %call22 = call i64 @strlen(i8* noundef %12) #14
  %conv = trunc i64 %call22 to i32
  %call23 = call %struct.Val* @mk_int(i32 noundef %conv)
  store %struct.Val* %call23, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end17, %do.body7, %do.body1
  %13 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @form_strformat(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %ret = alloca i8*, align 8
  %str = alloca i8*, align 8
  %ret_len = alloca i32, align 4
  %ret_cap = alloca i32, align 4
  %pos = alloca i32, align 4
  %v = alloca %struct.Val*, align 8
  %l = alloca i32, align 4
  %file = alloca i8*, align 8
  %filec = alloca i64, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  store i32 0, i32* %pos, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v6 = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v6 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end17, label %if.then7

if.then7:                                         ; preds = %do.body5
  br label %do.body8

do.body8:                                         ; preds = %if.then7
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i8* @tsp_type_str(i32 noundef 32)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v10 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p11 = bitcast %union.anon* %v10 to %struct.anon.2*
  %car12 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p11, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car12, align 8
  %t13 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t13, align 8
  %call14 = call i8* @tsp_type_str(i32 noundef %9)
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.118, i64 0, i64 0), i8* noundef %call9, i8* noundef %call14)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end16:                                         ; No predecessors!
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %do.body5
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v19 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p20 = bitcast %union.anon* %v19 to %struct.anon.2*
  %car21 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p20, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car21, align 8
  %v22 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %s = bitcast %union.anon* %v22 to i8**
  %12 = load i8*, i8** %s, align 8
  store i8* %12, i8** %str, align 8
  %13 = load i8*, i8** %str, align 8
  %call23 = call i64 @strlen(i8* noundef %13) #14
  %conv = trunc i64 %call23 to i32
  store i32 %conv, i32* %ret_len, align 4
  %14 = load i32, i32* %ret_len, align 4
  %mul = mul nsw i32 2, %14
  store i32 %mul, i32* %ret_cap, align 4
  %15 = load i32, i32* %ret_cap, align 4
  %conv24 = sext i32 %15 to i64
  %mul25 = mul i64 1, %conv24
  %call26 = call noalias i8* @malloc(i64 noundef %mul25) #11
  store i8* %call26, i8** %ret, align 8
  %tobool27 = icmp ne i8* %call26, null
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %do.end18
  call void @perror(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #13
  call void @exit(i32 noundef 1) #12
  unreachable

if.end29:                                         ; preds = %do.end18
  br label %while.cond

while.cond:                                       ; preds = %if.end87, %if.end29
  %16 = load i8*, i8** %str, align 8
  %17 = load i8, i8* %16, align 1
  %tobool30 = icmp ne i8 %17, 0
  br i1 %tobool30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %str, align 8
  %19 = load i8, i8* %18, align 1
  %conv31 = sext i8 %19 to i32
  %cmp32 = icmp eq i32 %conv31, 123
  br i1 %cmp32, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %20 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx, align 1
  %conv34 = sext i8 %21 to i32
  %cmp35 = icmp ne i32 %conv34, 123
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %land.lhs.true
  %22 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file38 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %22, i32 0, i32 0
  %23 = load i8*, i8** %file38, align 8
  store i8* %23, i8** %file, align 8
  %24 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec39 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %24, i32 0, i32 1
  %25 = load i64, i64* %filec39, align 8
  store i64 %25, i64* %filec, align 8
  %26 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  %27 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file40 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %27, i32 0, i32 0
  store i8* %incdec.ptr, i8** %file40, align 8
  %28 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec41 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %28, i32 0, i32 1
  store i64 0, i64* %filec41, align 8
  %29 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call42 = call %struct.Val* @read_pair(%struct.Tsp* noundef %29, i8 noundef signext 125)
  store %struct.Val* %call42, %struct.Val** %v, align 8
  %tobool43 = icmp ne %struct.Val* %call42, null
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.then37
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end45:                                         ; preds = %if.then37
  %30 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec46 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %30, i32 0, i32 1
  %31 = load i64, i64* %filec46, align 8
  %32 = load i8*, i8** %str, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %add.ptr, i8** %str, align 8
  %33 = load i8*, i8** %file, align 8
  %34 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file47 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %34, i32 0, i32 0
  store i8* %33, i8** %file47, align 8
  %35 = load i64, i64* %filec, align 8
  %36 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec48 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %36, i32 0, i32 1
  store i64 %35, i64* %filec48, align 8
  %37 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %38 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %39 = load %struct.Val*, %struct.Val** %v, align 8
  %call49 = call %struct.Val* @tisp_eval_list(%struct.Tsp* noundef %37, %struct.Rec* noundef %38, %struct.Val* noundef %39)
  store %struct.Val* %call49, %struct.Val** %v, align 8
  %tobool50 = icmp ne %struct.Val* %call49, null
  br i1 %tobool50, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end45
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end52:                                         ; preds = %if.end45
  %40 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %41 = load %struct.Val*, %struct.Val** %v, align 8
  %call53 = call %struct.Val* @val_string(%struct.Tsp* noundef %40, %struct.Val* noundef %41, %struct.Val* (%struct.Tsp*, i8*)* noundef @mk_str)
  store %struct.Val* %call53, %struct.Val** %v, align 8
  %tobool54 = icmp ne %struct.Val* %call53, null
  br i1 %tobool54, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end52
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end56:                                         ; preds = %if.end52
  %42 = load %struct.Val*, %struct.Val** %v, align 8
  %v57 = getelementptr inbounds %struct.Val, %struct.Val* %42, i32 0, i32 1
  %s58 = bitcast %union.anon* %v57 to i8**
  %43 = load i8*, i8** %s58, align 8
  %call59 = call i64 @strlen(i8* noundef %43) #14
  %conv60 = trunc i64 %call59 to i32
  store i32 %conv60, i32* %l, align 4
  %44 = load i32, i32* %l, align 4
  %45 = load i32, i32* %ret_len, align 4
  %add = add nsw i32 %45, %44
  store i32 %add, i32* %ret_len, align 4
  %46 = load i32, i32* %ret_len, align 4
  %47 = load i32, i32* %ret_cap, align 4
  %cmp61 = icmp sge i32 %46, %47
  br i1 %cmp61, label %if.then63, label %if.end70

if.then63:                                        ; preds = %if.end56
  %48 = load i8*, i8** %ret, align 8
  %49 = load i32, i32* %ret_cap, align 4
  %mul64 = mul nsw i32 %49, 2
  store i32 %mul64, i32* %ret_cap, align 4
  %conv65 = sext i32 %mul64 to i64
  %call66 = call i8* @realloc(i8* noundef %48, i64 noundef %conv65) #11
  store i8* %call66, i8** %ret, align 8
  %tobool67 = icmp ne i8* %call66, null
  br i1 %tobool67, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.then63
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i64 0, i64 0)) #13
  call void @exit(i32 noundef 1) #12
  unreachable

if.end69:                                         ; preds = %if.then63
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end56
  %50 = load i8*, i8** %ret, align 8
  %51 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %51 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %50, i64 %idx.ext
  %52 = load %struct.Val*, %struct.Val** %v, align 8
  %v72 = getelementptr inbounds %struct.Val, %struct.Val* %52, i32 0, i32 1
  %s73 = bitcast %union.anon* %v72 to i8**
  %53 = load i8*, i8** %s73, align 8
  %54 = load i32, i32* %l, align 4
  %conv74 = sext i32 %54 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr71, i8* align 1 %53, i64 %conv74, i1 false)
  %55 = load i32, i32* %l, align 4
  %56 = load i32, i32* %pos, align 4
  %add75 = add nsw i32 %56, %55
  store i32 %add75, i32* %pos, align 4
  br label %if.end87

if.else:                                          ; preds = %land.lhs.true, %while.body
  %57 = load i8*, i8** %str, align 8
  %58 = load i8, i8* %57, align 1
  %conv76 = sext i8 %58 to i32
  %cmp77 = icmp eq i32 %conv76, 123
  br i1 %cmp77, label %if.then82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %59 = load i8*, i8** %str, align 8
  %60 = load i8, i8* %59, align 1
  %conv79 = sext i8 %60 to i32
  %cmp80 = icmp eq i32 %conv79, 125
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %lor.lhs.false, %if.else
  %61 = load i8*, i8** %str, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr83, i8** %str, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %lor.lhs.false
  %62 = load i8*, i8** %str, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr85, i8** %str, align 8
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %ret, align 8
  %65 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds i8, i8* %64, i64 %idxprom
  store i8 %63, i8* %arrayidx86, align 1
  br label %if.end87

if.end87:                                         ; preds = %if.end84, %if.end70
  br label %while.cond, !llvm.loop !44

while.end:                                        ; preds = %while.cond
  %66 = load i8*, i8** %ret, align 8
  %67 = load i32, i32* %pos, align 4
  %idxprom88 = sext i32 %67 to i64
  %arrayidx89 = getelementptr inbounds i8, i8* %66, i64 %idxprom88
  store i8 0, i8* %arrayidx89, align 1
  %68 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %69 = load i8*, i8** %ret, align 8
  %call90 = call %struct.Val* @mk_str(%struct.Tsp* noundef %68, i8* noundef %69)
  store %struct.Val* %call90, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then55, %if.then51, %if.then44, %do.body8, %do.body1
  %70 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %70
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @create_int(double noundef %num, double noundef %den) #0 {
entry:
  %num.addr = alloca double, align 8
  %den.addr = alloca double, align 8
  store double %num, double* %num.addr, align 8
  store double %den, double* %den.addr, align 8
  %0 = load double, double* %den.addr, align 8
  %cmp = fcmp oeq double %0, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.121, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.create_int, i64 0, i64 0)) #12
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load double, double* %num.addr, align 8
  %conv = fptosi double %1 to i32
  %call = call %struct.Val* @mk_int(i32 noundef %conv)
  ret %struct.Val* %call
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @create_dec(double noundef %num, double noundef %den) #0 {
entry:
  %num.addr = alloca double, align 8
  %den.addr = alloca double, align 8
  store double %num, double* %num.addr, align 8
  store double %den, double* %den.addr, align 8
  %0 = load double, double* %den.addr, align 8
  %cmp = fcmp oeq double %0, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.121, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.create_dec, i64 0, i64 0)) #12
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load double, double* %num.addr, align 8
  %call = call %struct.Val* @mk_dec(double noundef %1)
  ret %struct.Val* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @create_rat(double noundef %num, double noundef %den) #0 {
entry:
  %num.addr = alloca double, align 8
  %den.addr = alloca double, align 8
  store double %num, double* %num.addr, align 8
  store double %den, double* %den.addr, align 8
  %0 = load double, double* %num.addr, align 8
  %conv = fptosi double %0 to i32
  %1 = load double, double* %den.addr, align 8
  %conv1 = fptosi double %1 to i32
  %call = call %struct.Val* @mk_rat(i32 noundef %conv, i32 noundef %conv1)
  ret %struct.Val* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* (double, double)* @mk_num(i32 noundef %a, i32 noundef %b, i32 noundef %force) #0 {
entry:
  %retval = alloca %struct.Val* (double, double)*, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %force.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %force, i32* %force.addr, align 4
  %0 = load i32, i32* %force.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.Val* (double, double)* @create_rat, %struct.Val* (double, double)** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %force.addr, align 4
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store %struct.Val* (double, double)* @create_dec, %struct.Val* (double, double)** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* %a.addr, align 4
  %and = and i32 %2, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %3 = load i32, i32* %b.addr, align 4
  %and4 = and i32 %3, 8
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  store %struct.Val* (double, double)* @create_dec, %struct.Val* (double, double)** %retval, align 8
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %a.addr, align 4
  %and8 = and i32 %4, 16
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end7
  %5 = load i32, i32* %b.addr, align 4
  %and11 = and i32 %5, 16
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false10, %if.end7
  store %struct.Val* (double, double)* @create_rat, %struct.Val* (double, double)** %retval, align 8
  br label %return

if.end14:                                         ; preds = %lor.lhs.false10
  store %struct.Val* (double, double)* @create_int, %struct.Val* (double, double)** %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then2, %if.then
  %6 = load %struct.Val* (double, double)*, %struct.Val* (double, double)** %retval, align 8
  ret %struct.Val* (double, double)* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_Int(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %n = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %4, %struct.Val** %n, align 8
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %5 = load %struct.Val*, %struct.Val** %n, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t, align 8
  %and = and i32 %6, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end13, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 28)
  %8 = load %struct.Val*, %struct.Val** %n, align 8
  %t9 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t9, align 8
  %call10 = call i8* @tsp_type_str(i32 noundef %9)
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.122, i64 0, i64 0), i8* noundef %call8, i8* noundef %call10)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end12:                                         ; No predecessors!
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %do.body5
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  %10 = load %struct.Val*, %struct.Val** %n, align 8
  %t15 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 0
  %11 = load i32, i32* %t15, align 8
  %12 = load %struct.Val*, %struct.Val** %n, align 8
  %t16 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t16, align 8
  %call17 = call %struct.Val* (double, double)* @mk_num(i32 noundef %11, i32 noundef %13, i32 noundef 1)
  %14 = load %struct.Val*, %struct.Val** %n, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n19 = bitcast %union.anon* %v18 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n19, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %16 = load %struct.Val*, %struct.Val** %n, align 8
  %v20 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %n21 = bitcast %union.anon* %v20 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n21, i32 0, i32 1
  %17 = load double, double* %den, align 8
  %div = fdiv double %15, %17
  %call22 = call %struct.Val* %call17(double noundef %div, double noundef 1.000000e+00)
  store %struct.Val* %call22, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end14, %do.body7, %do.body1
  %18 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_Dec(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %n = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %4, %struct.Val** %n, align 8
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %5 = load %struct.Val*, %struct.Val** %n, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t, align 8
  %and = and i32 %6, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end13, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 28)
  %8 = load %struct.Val*, %struct.Val** %n, align 8
  %t9 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t9, align 8
  %call10 = call i8* @tsp_type_str(i32 noundef %9)
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.123, i64 0, i64 0), i8* noundef %call8, i8* noundef %call10)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end12:                                         ; No predecessors!
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %do.body5
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  %10 = load %struct.Val*, %struct.Val** %n, align 8
  %t15 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 0
  %11 = load i32, i32* %t15, align 8
  %12 = load %struct.Val*, %struct.Val** %n, align 8
  %t16 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t16, align 8
  %call17 = call %struct.Val* (double, double)* @mk_num(i32 noundef %11, i32 noundef %13, i32 noundef 2)
  %14 = load %struct.Val*, %struct.Val** %n, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n19 = bitcast %union.anon* %v18 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n19, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %16 = load %struct.Val*, %struct.Val** %n, align 8
  %v20 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %n21 = bitcast %union.anon* %v20 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n21, i32 0, i32 1
  %17 = load double, double* %den, align 8
  %div = fdiv double %15, %17
  %call22 = call %struct.Val* %call17(double noundef %div, double noundef 1.000000e+00)
  store %struct.Val* %call22, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end14, %do.body7, %do.body1
  %18 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_round(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %n = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %4, %struct.Val** %n, align 8
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %5 = load %struct.Val*, %struct.Val** %n, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t, align 8
  %and = and i32 %6, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end13, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 28)
  %8 = load %struct.Val*, %struct.Val** %n, align 8
  %t9 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t9, align 8
  %call10 = call i8* @tsp_type_str(i32 noundef %9)
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.125, i64 0, i64 0), i8* noundef %call8, i8* noundef %call10)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end12:                                         ; No predecessors!
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %do.body5
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  %10 = load %struct.Val*, %struct.Val** %n, align 8
  %t15 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 0
  %11 = load i32, i32* %t15, align 8
  %12 = load %struct.Val*, %struct.Val** %n, align 8
  %t16 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t16, align 8
  %call17 = call %struct.Val* (double, double)* @mk_num(i32 noundef %11, i32 noundef %13, i32 noundef 0)
  %14 = load %struct.Val*, %struct.Val** %n, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n19 = bitcast %union.anon* %v18 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n19, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %16 = load %struct.Val*, %struct.Val** %n, align 8
  %v20 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %n21 = bitcast %union.anon* %v20 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n21, i32 0, i32 1
  %17 = load double, double* %den, align 8
  %div = fdiv double %15, %17
  %18 = call double @llvm.round.f64(double %div)
  %call22 = call %struct.Val* %call17(double noundef %18, double noundef 1.000000e+00)
  store %struct.Val* %call22, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end14, %do.body7, %do.body1
  %19 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.round.f64(double) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_floor(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %n = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %4, %struct.Val** %n, align 8
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %5 = load %struct.Val*, %struct.Val** %n, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t, align 8
  %and = and i32 %6, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end13, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 28)
  %8 = load %struct.Val*, %struct.Val** %n, align 8
  %t9 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t9, align 8
  %call10 = call i8* @tsp_type_str(i32 noundef %9)
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.127, i64 0, i64 0), i8* noundef %call8, i8* noundef %call10)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end12:                                         ; No predecessors!
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %do.body5
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  %10 = load %struct.Val*, %struct.Val** %n, align 8
  %t15 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 0
  %11 = load i32, i32* %t15, align 8
  %12 = load %struct.Val*, %struct.Val** %n, align 8
  %t16 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t16, align 8
  %call17 = call %struct.Val* (double, double)* @mk_num(i32 noundef %11, i32 noundef %13, i32 noundef 0)
  %14 = load %struct.Val*, %struct.Val** %n, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n19 = bitcast %union.anon* %v18 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n19, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %16 = load %struct.Val*, %struct.Val** %n, align 8
  %v20 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %n21 = bitcast %union.anon* %v20 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n21, i32 0, i32 1
  %17 = load double, double* %den, align 8
  %div = fdiv double %15, %17
  %18 = call double @llvm.floor.f64(double %div)
  %call22 = call %struct.Val* %call17(double noundef %18, double noundef 1.000000e+00)
  store %struct.Val* %call22, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end14, %do.body7, %do.body1
  %19 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_ceil(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %n = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %4, %struct.Val** %n, align 8
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %5 = load %struct.Val*, %struct.Val** %n, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t, align 8
  %and = and i32 %6, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end13, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 28)
  %8 = load %struct.Val*, %struct.Val** %n, align 8
  %t9 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t9, align 8
  %call10 = call i8* @tsp_type_str(i32 noundef %9)
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.129, i64 0, i64 0), i8* noundef %call8, i8* noundef %call10)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end12:                                         ; No predecessors!
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %do.body5
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  %10 = load %struct.Val*, %struct.Val** %n, align 8
  %t15 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 0
  %11 = load i32, i32* %t15, align 8
  %12 = load %struct.Val*, %struct.Val** %n, align 8
  %t16 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t16, align 8
  %call17 = call %struct.Val* (double, double)* @mk_num(i32 noundef %11, i32 noundef %13, i32 noundef 0)
  %14 = load %struct.Val*, %struct.Val** %n, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n19 = bitcast %union.anon* %v18 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n19, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %16 = load %struct.Val*, %struct.Val** %n, align 8
  %v20 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %n21 = bitcast %union.anon* %v20 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n21, i32 0, i32 1
  %17 = load double, double* %den, align 8
  %div = fdiv double %15, %17
  %18 = call double @llvm.ceil.f64(double %div)
  %call22 = call %struct.Val* %call17(double noundef %18, double noundef 1.000000e+00)
  store %struct.Val* %call22, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end14, %do.body7, %do.body1
  %19 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_add(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %a = alloca %struct.Val*, align 8
  %b = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i64 0, i64 0), i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %4, %struct.Val** %a, align 8
  %5 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v5 = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %p6 = bitcast %union.anon* %v5 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p6, i32 0, i32 1
  %6 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v7 = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 1
  %p8 = bitcast %union.anon* %v7 to %struct.anon.2*
  %car9 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p8, i32 0, i32 0
  %7 = load %struct.Val*, %struct.Val** %car9, align 8
  store %struct.Val* %7, %struct.Val** %b, align 8
  br label %do.body10

do.body10:                                        ; preds = %do.end4
  %8 = load %struct.Val*, %struct.Val** %a, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t, align 8
  %and = and i32 %9, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end18, label %if.then11

if.then11:                                        ; preds = %do.body10
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef 28)
  %11 = load %struct.Val*, %struct.Val** %a, align 8
  %t14 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t14, align 8
  %call15 = call i8* @tsp_type_str(i32 noundef %12)
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.131, i64 0, i64 0), i8* noundef %call13, i8* noundef %call15)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end17:                                         ; No predecessors!
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %do.body10
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  br label %do.body20

do.body20:                                        ; preds = %do.end19
  %13 = load %struct.Val*, %struct.Val** %b, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 0
  %14 = load i32, i32* %t21, align 8
  %and22 = and i32 %14, 28
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.end31, label %if.then24

if.then24:                                        ; preds = %do.body20
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call26 = call i8* @tsp_type_str(i32 noundef 28)
  %16 = load %struct.Val*, %struct.Val** %b, align 8
  %t27 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 0
  %17 = load i32, i32* %t27, align 8
  %call28 = call i8* @tsp_type_str(i32 noundef %17)
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.131, i64 0, i64 0), i8* noundef %call26, i8* noundef %call28)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end30:                                         ; No predecessors!
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %do.body20
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  %18 = load %struct.Val*, %struct.Val** %a, align 8
  %t33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 0
  %19 = load i32, i32* %t33, align 8
  %and34 = and i32 %19, 8
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end32
  %20 = load %struct.Val*, %struct.Val** %b, align 8
  %t36 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 0
  %21 = load i32, i32* %t36, align 8
  %and37 = and i32 %21, 8
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then39, label %if.end51

if.then39:                                        ; preds = %lor.lhs.false, %do.end32
  %22 = load %struct.Val*, %struct.Val** %a, align 8
  %v40 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 1
  %n = bitcast %union.anon* %v40 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %23 = load double, double* %num, align 8
  %24 = load %struct.Val*, %struct.Val** %a, align 8
  %v41 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 1
  %n42 = bitcast %union.anon* %v41 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n42, i32 0, i32 1
  %25 = load double, double* %den, align 8
  %div = fdiv double %23, %25
  %26 = load %struct.Val*, %struct.Val** %b, align 8
  %v43 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %n44 = bitcast %union.anon* %v43 to %struct.anon*
  %num45 = getelementptr inbounds %struct.anon, %struct.anon* %n44, i32 0, i32 0
  %27 = load double, double* %num45, align 8
  %28 = load %struct.Val*, %struct.Val** %b, align 8
  %v46 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %n47 = bitcast %union.anon* %v46 to %struct.anon*
  %den48 = getelementptr inbounds %struct.anon, %struct.anon* %n47, i32 0, i32 1
  %29 = load double, double* %den48, align 8
  %div49 = fdiv double %27, %29
  %add = fadd double %div, %div49
  %call50 = call %struct.Val* @mk_dec(double noundef %add)
  store %struct.Val* %call50, %struct.Val** %retval, align 8
  br label %return

if.end51:                                         ; preds = %lor.lhs.false
  %30 = load %struct.Val*, %struct.Val** %a, align 8
  %t52 = getelementptr inbounds %struct.Val, %struct.Val* %30, i32 0, i32 0
  %31 = load i32, i32* %t52, align 8
  %32 = load %struct.Val*, %struct.Val** %b, align 8
  %t53 = getelementptr inbounds %struct.Val, %struct.Val* %32, i32 0, i32 0
  %33 = load i32, i32* %t53, align 8
  %call54 = call %struct.Val* (double, double)* @mk_num(i32 noundef %31, i32 noundef %33, i32 noundef 0)
  %34 = load %struct.Val*, %struct.Val** %a, align 8
  %v55 = getelementptr inbounds %struct.Val, %struct.Val* %34, i32 0, i32 1
  %n56 = bitcast %union.anon* %v55 to %struct.anon*
  %num57 = getelementptr inbounds %struct.anon, %struct.anon* %n56, i32 0, i32 0
  %35 = load double, double* %num57, align 8
  %36 = load %struct.Val*, %struct.Val** %b, align 8
  %v58 = getelementptr inbounds %struct.Val, %struct.Val* %36, i32 0, i32 1
  %n59 = bitcast %union.anon* %v58 to %struct.anon*
  %den60 = getelementptr inbounds %struct.anon, %struct.anon* %n59, i32 0, i32 1
  %37 = load double, double* %den60, align 8
  %38 = load %struct.Val*, %struct.Val** %a, align 8
  %v61 = getelementptr inbounds %struct.Val, %struct.Val* %38, i32 0, i32 1
  %n62 = bitcast %union.anon* %v61 to %struct.anon*
  %den63 = getelementptr inbounds %struct.anon, %struct.anon* %n62, i32 0, i32 1
  %39 = load double, double* %den63, align 8
  %40 = load %struct.Val*, %struct.Val** %b, align 8
  %v64 = getelementptr inbounds %struct.Val, %struct.Val* %40, i32 0, i32 1
  %n65 = bitcast %union.anon* %v64 to %struct.anon*
  %num66 = getelementptr inbounds %struct.anon, %struct.anon* %n65, i32 0, i32 0
  %41 = load double, double* %num66, align 8
  %mul67 = fmul double %39, %41
  %42 = call double @llvm.fmuladd.f64(double %35, double %37, double %mul67)
  %43 = load %struct.Val*, %struct.Val** %a, align 8
  %v68 = getelementptr inbounds %struct.Val, %struct.Val* %43, i32 0, i32 1
  %n69 = bitcast %union.anon* %v68 to %struct.anon*
  %den70 = getelementptr inbounds %struct.anon, %struct.anon* %n69, i32 0, i32 1
  %44 = load double, double* %den70, align 8
  %45 = load %struct.Val*, %struct.Val** %b, align 8
  %v71 = getelementptr inbounds %struct.Val, %struct.Val* %45, i32 0, i32 1
  %n72 = bitcast %union.anon* %v71 to %struct.anon*
  %den73 = getelementptr inbounds %struct.anon, %struct.anon* %n72, i32 0, i32 1
  %46 = load double, double* %den73, align 8
  %mul = fmul double %44, %46
  %call74 = call %struct.Val* %call54(double noundef %42, double noundef %mul)
  store %struct.Val* %call74, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end51, %if.then39, %do.body25, %do.body12, %do.body1
  %47 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_sub(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %a = alloca %struct.Val*, align 8
  %b = alloca %struct.Val*, align 8
  %len = alloca i32, align 4
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  store i32 %call, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %len, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %len, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.132, i64 0, i64 0), i32 noundef %4)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true, %entry
  %5 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %6 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %6, %struct.Val** %a, align 8
  br label %do.body3

do.body3:                                         ; preds = %if.end
  %7 = load %struct.Val*, %struct.Val** %a, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 0
  %8 = load i32, i32* %t, align 8
  %and = and i32 %8, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end11, label %if.then4

if.then4:                                         ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %if.then4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i8* @tsp_type_str(i32 noundef 28)
  %10 = load %struct.Val*, %struct.Val** %a, align 8
  %t7 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 0
  %11 = load i32, i32* %t7, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef %11)
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.133, i64 0, i64 0), i8* noundef %call6, i8* noundef %call8)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end10:                                         ; No predecessors!
  br label %if.end11

if.end11:                                         ; preds = %do.end10, %do.body3
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  %12 = load i32, i32* %len, align 4
  %cmp13 = icmp eq i32 %12, 1
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %do.end12
  %13 = load %struct.Val*, %struct.Val** %a, align 8
  store %struct.Val* %13, %struct.Val** %b, align 8
  %call15 = call %struct.Val* @mk_int(i32 noundef 0)
  store %struct.Val* %call15, %struct.Val** %a, align 8
  br label %if.end34

if.else:                                          ; preds = %do.end12
  %14 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v16 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %p17 = bitcast %union.anon* %v16 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p17, i32 0, i32 1
  %15 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %16 = load %struct.Val*, %struct.Val** %car20, align 8
  store %struct.Val* %16, %struct.Val** %b, align 8
  br label %do.body21

do.body21:                                        ; preds = %if.else
  %17 = load %struct.Val*, %struct.Val** %b, align 8
  %t22 = getelementptr inbounds %struct.Val, %struct.Val* %17, i32 0, i32 0
  %18 = load i32, i32* %t22, align 8
  %and23 = and i32 %18, 28
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.end32, label %if.then25

if.then25:                                        ; preds = %do.body21
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call27 = call i8* @tsp_type_str(i32 noundef 28)
  %20 = load %struct.Val*, %struct.Val** %b, align 8
  %t28 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 0
  %21 = load i32, i32* %t28, align 8
  %call29 = call i8* @tsp_type_str(i32 noundef %21)
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.133, i64 0, i64 0), i8* noundef %call27, i8* noundef %call29)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end31:                                         ; No predecessors!
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %do.body21
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %if.then14
  %22 = load %struct.Val*, %struct.Val** %a, align 8
  %t35 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 0
  %23 = load i32, i32* %t35, align 8
  %and36 = and i32 %23, 8
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %24 = load %struct.Val*, %struct.Val** %b, align 8
  %t38 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 0
  %25 = load i32, i32* %t38, align 8
  %and39 = and i32 %25, 8
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then41, label %if.end53

if.then41:                                        ; preds = %lor.lhs.false, %if.end34
  %26 = load %struct.Val*, %struct.Val** %a, align 8
  %v42 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %n = bitcast %union.anon* %v42 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %27 = load double, double* %num, align 8
  %28 = load %struct.Val*, %struct.Val** %a, align 8
  %v43 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %n44 = bitcast %union.anon* %v43 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n44, i32 0, i32 1
  %29 = load double, double* %den, align 8
  %div = fdiv double %27, %29
  %30 = load %struct.Val*, %struct.Val** %b, align 8
  %v45 = getelementptr inbounds %struct.Val, %struct.Val* %30, i32 0, i32 1
  %n46 = bitcast %union.anon* %v45 to %struct.anon*
  %num47 = getelementptr inbounds %struct.anon, %struct.anon* %n46, i32 0, i32 0
  %31 = load double, double* %num47, align 8
  %32 = load %struct.Val*, %struct.Val** %b, align 8
  %v48 = getelementptr inbounds %struct.Val, %struct.Val* %32, i32 0, i32 1
  %n49 = bitcast %union.anon* %v48 to %struct.anon*
  %den50 = getelementptr inbounds %struct.anon, %struct.anon* %n49, i32 0, i32 1
  %33 = load double, double* %den50, align 8
  %div51 = fdiv double %31, %33
  %sub = fsub double %div, %div51
  %call52 = call %struct.Val* @mk_dec(double noundef %sub)
  store %struct.Val* %call52, %struct.Val** %retval, align 8
  br label %return

if.end53:                                         ; preds = %lor.lhs.false
  %34 = load %struct.Val*, %struct.Val** %a, align 8
  %t54 = getelementptr inbounds %struct.Val, %struct.Val* %34, i32 0, i32 0
  %35 = load i32, i32* %t54, align 8
  %36 = load %struct.Val*, %struct.Val** %b, align 8
  %t55 = getelementptr inbounds %struct.Val, %struct.Val* %36, i32 0, i32 0
  %37 = load i32, i32* %t55, align 8
  %call56 = call %struct.Val* (double, double)* @mk_num(i32 noundef %35, i32 noundef %37, i32 noundef 0)
  %38 = load %struct.Val*, %struct.Val** %a, align 8
  %v57 = getelementptr inbounds %struct.Val, %struct.Val* %38, i32 0, i32 1
  %n58 = bitcast %union.anon* %v57 to %struct.anon*
  %num59 = getelementptr inbounds %struct.anon, %struct.anon* %n58, i32 0, i32 0
  %39 = load double, double* %num59, align 8
  %40 = load %struct.Val*, %struct.Val** %b, align 8
  %v60 = getelementptr inbounds %struct.Val, %struct.Val* %40, i32 0, i32 1
  %n61 = bitcast %union.anon* %v60 to %struct.anon*
  %den62 = getelementptr inbounds %struct.anon, %struct.anon* %n61, i32 0, i32 1
  %41 = load double, double* %den62, align 8
  %42 = load %struct.Val*, %struct.Val** %a, align 8
  %v63 = getelementptr inbounds %struct.Val, %struct.Val* %42, i32 0, i32 1
  %n64 = bitcast %union.anon* %v63 to %struct.anon*
  %den65 = getelementptr inbounds %struct.anon, %struct.anon* %n64, i32 0, i32 1
  %43 = load double, double* %den65, align 8
  %44 = load %struct.Val*, %struct.Val** %b, align 8
  %v66 = getelementptr inbounds %struct.Val, %struct.Val* %44, i32 0, i32 1
  %n67 = bitcast %union.anon* %v66 to %struct.anon*
  %num68 = getelementptr inbounds %struct.anon, %struct.anon* %n67, i32 0, i32 0
  %45 = load double, double* %num68, align 8
  %mul69 = fmul double %43, %45
  %neg = fneg double %mul69
  %46 = call double @llvm.fmuladd.f64(double %39, double %41, double %neg)
  %47 = load %struct.Val*, %struct.Val** %a, align 8
  %v70 = getelementptr inbounds %struct.Val, %struct.Val* %47, i32 0, i32 1
  %n71 = bitcast %union.anon* %v70 to %struct.anon*
  %den72 = getelementptr inbounds %struct.anon, %struct.anon* %n71, i32 0, i32 1
  %48 = load double, double* %den72, align 8
  %49 = load %struct.Val*, %struct.Val** %b, align 8
  %v73 = getelementptr inbounds %struct.Val, %struct.Val* %49, i32 0, i32 1
  %n74 = bitcast %union.anon* %v73 to %struct.anon*
  %den75 = getelementptr inbounds %struct.anon, %struct.anon* %n74, i32 0, i32 1
  %50 = load double, double* %den75, align 8
  %mul = fmul double %48, %50
  %call76 = call %struct.Val* %call56(double noundef %46, double noundef %mul)
  store %struct.Val* %call76, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end53, %if.then41, %do.body26, %do.body5, %do.body
  %51 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_mul(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %a = alloca %struct.Val*, align 8
  %b = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.134, i64 0, i64 0), i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %4, %struct.Val** %a, align 8
  %5 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v5 = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %p6 = bitcast %union.anon* %v5 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p6, i32 0, i32 1
  %6 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v7 = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 1
  %p8 = bitcast %union.anon* %v7 to %struct.anon.2*
  %car9 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p8, i32 0, i32 0
  %7 = load %struct.Val*, %struct.Val** %car9, align 8
  store %struct.Val* %7, %struct.Val** %b, align 8
  br label %do.body10

do.body10:                                        ; preds = %do.end4
  %8 = load %struct.Val*, %struct.Val** %a, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t, align 8
  %and = and i32 %9, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end18, label %if.then11

if.then11:                                        ; preds = %do.body10
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef 28)
  %11 = load %struct.Val*, %struct.Val** %a, align 8
  %t14 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t14, align 8
  %call15 = call i8* @tsp_type_str(i32 noundef %12)
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.135, i64 0, i64 0), i8* noundef %call13, i8* noundef %call15)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end17:                                         ; No predecessors!
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %do.body10
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  br label %do.body20

do.body20:                                        ; preds = %do.end19
  %13 = load %struct.Val*, %struct.Val** %b, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 0
  %14 = load i32, i32* %t21, align 8
  %and22 = and i32 %14, 28
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.end31, label %if.then24

if.then24:                                        ; preds = %do.body20
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call26 = call i8* @tsp_type_str(i32 noundef 28)
  %16 = load %struct.Val*, %struct.Val** %b, align 8
  %t27 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 0
  %17 = load i32, i32* %t27, align 8
  %call28 = call i8* @tsp_type_str(i32 noundef %17)
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.135, i64 0, i64 0), i8* noundef %call26, i8* noundef %call28)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end30:                                         ; No predecessors!
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %do.body20
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  %18 = load %struct.Val*, %struct.Val** %a, align 8
  %t33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 0
  %19 = load i32, i32* %t33, align 8
  %and34 = and i32 %19, 8
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end32
  %20 = load %struct.Val*, %struct.Val** %b, align 8
  %t36 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 0
  %21 = load i32, i32* %t36, align 8
  %and37 = and i32 %21, 8
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then39, label %if.end51

if.then39:                                        ; preds = %lor.lhs.false, %do.end32
  %22 = load %struct.Val*, %struct.Val** %a, align 8
  %v40 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 1
  %n = bitcast %union.anon* %v40 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %23 = load double, double* %num, align 8
  %24 = load %struct.Val*, %struct.Val** %a, align 8
  %v41 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 1
  %n42 = bitcast %union.anon* %v41 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n42, i32 0, i32 1
  %25 = load double, double* %den, align 8
  %div = fdiv double %23, %25
  %26 = load %struct.Val*, %struct.Val** %b, align 8
  %v43 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %n44 = bitcast %union.anon* %v43 to %struct.anon*
  %num45 = getelementptr inbounds %struct.anon, %struct.anon* %n44, i32 0, i32 0
  %27 = load double, double* %num45, align 8
  %28 = load %struct.Val*, %struct.Val** %b, align 8
  %v46 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %n47 = bitcast %union.anon* %v46 to %struct.anon*
  %den48 = getelementptr inbounds %struct.anon, %struct.anon* %n47, i32 0, i32 1
  %29 = load double, double* %den48, align 8
  %div49 = fdiv double %27, %29
  %mul = fmul double %div, %div49
  %call50 = call %struct.Val* @mk_dec(double noundef %mul)
  store %struct.Val* %call50, %struct.Val** %retval, align 8
  br label %return

if.end51:                                         ; preds = %lor.lhs.false
  %30 = load %struct.Val*, %struct.Val** %a, align 8
  %t52 = getelementptr inbounds %struct.Val, %struct.Val* %30, i32 0, i32 0
  %31 = load i32, i32* %t52, align 8
  %32 = load %struct.Val*, %struct.Val** %b, align 8
  %t53 = getelementptr inbounds %struct.Val, %struct.Val* %32, i32 0, i32 0
  %33 = load i32, i32* %t53, align 8
  %call54 = call %struct.Val* (double, double)* @mk_num(i32 noundef %31, i32 noundef %33, i32 noundef 0)
  %34 = load %struct.Val*, %struct.Val** %a, align 8
  %v55 = getelementptr inbounds %struct.Val, %struct.Val* %34, i32 0, i32 1
  %n56 = bitcast %union.anon* %v55 to %struct.anon*
  %num57 = getelementptr inbounds %struct.anon, %struct.anon* %n56, i32 0, i32 0
  %35 = load double, double* %num57, align 8
  %36 = load %struct.Val*, %struct.Val** %b, align 8
  %v58 = getelementptr inbounds %struct.Val, %struct.Val* %36, i32 0, i32 1
  %n59 = bitcast %union.anon* %v58 to %struct.anon*
  %num60 = getelementptr inbounds %struct.anon, %struct.anon* %n59, i32 0, i32 0
  %37 = load double, double* %num60, align 8
  %mul61 = fmul double %35, %37
  %38 = load %struct.Val*, %struct.Val** %a, align 8
  %v62 = getelementptr inbounds %struct.Val, %struct.Val* %38, i32 0, i32 1
  %n63 = bitcast %union.anon* %v62 to %struct.anon*
  %den64 = getelementptr inbounds %struct.anon, %struct.anon* %n63, i32 0, i32 1
  %39 = load double, double* %den64, align 8
  %40 = load %struct.Val*, %struct.Val** %b, align 8
  %v65 = getelementptr inbounds %struct.Val, %struct.Val* %40, i32 0, i32 1
  %n66 = bitcast %union.anon* %v65 to %struct.anon*
  %den67 = getelementptr inbounds %struct.anon, %struct.anon* %n66, i32 0, i32 1
  %41 = load double, double* %den67, align 8
  %mul68 = fmul double %39, %41
  %call69 = call %struct.Val* %call54(double noundef %mul61, double noundef %mul68)
  store %struct.Val* %call69, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end51, %if.then39, %do.body25, %do.body12, %do.body1
  %42 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_div(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %a = alloca %struct.Val*, align 8
  %b = alloca %struct.Val*, align 8
  %len = alloca i32, align 4
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  store i32 %call, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %len, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %len, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.136, i64 0, i64 0), i32 noundef %4)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true, %entry
  %5 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %6 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %6, %struct.Val** %a, align 8
  br label %do.body3

do.body3:                                         ; preds = %if.end
  %7 = load %struct.Val*, %struct.Val** %a, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 0
  %8 = load i32, i32* %t, align 8
  %and = and i32 %8, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end11, label %if.then4

if.then4:                                         ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %if.then4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i8* @tsp_type_str(i32 noundef 28)
  %10 = load %struct.Val*, %struct.Val** %a, align 8
  %t7 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 0
  %11 = load i32, i32* %t7, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef %11)
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.137, i64 0, i64 0), i8* noundef %call6, i8* noundef %call8)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end10:                                         ; No predecessors!
  br label %if.end11

if.end11:                                         ; preds = %do.end10, %do.body3
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  %12 = load i32, i32* %len, align 4
  %cmp13 = icmp eq i32 %12, 1
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %do.end12
  %13 = load %struct.Val*, %struct.Val** %a, align 8
  store %struct.Val* %13, %struct.Val** %b, align 8
  %call15 = call %struct.Val* @mk_int(i32 noundef 1)
  store %struct.Val* %call15, %struct.Val** %a, align 8
  br label %if.end34

if.else:                                          ; preds = %do.end12
  %14 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v16 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %p17 = bitcast %union.anon* %v16 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p17, i32 0, i32 1
  %15 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %16 = load %struct.Val*, %struct.Val** %car20, align 8
  store %struct.Val* %16, %struct.Val** %b, align 8
  br label %do.body21

do.body21:                                        ; preds = %if.else
  %17 = load %struct.Val*, %struct.Val** %b, align 8
  %t22 = getelementptr inbounds %struct.Val, %struct.Val* %17, i32 0, i32 0
  %18 = load i32, i32* %t22, align 8
  %and23 = and i32 %18, 28
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.end32, label %if.then25

if.then25:                                        ; preds = %do.body21
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call27 = call i8* @tsp_type_str(i32 noundef 28)
  %20 = load %struct.Val*, %struct.Val** %b, align 8
  %t28 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 0
  %21 = load i32, i32* %t28, align 8
  %call29 = call i8* @tsp_type_str(i32 noundef %21)
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.137, i64 0, i64 0), i8* noundef %call27, i8* noundef %call29)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end31:                                         ; No predecessors!
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %do.body21
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %if.then14
  %22 = load %struct.Val*, %struct.Val** %a, align 8
  %t35 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 0
  %23 = load i32, i32* %t35, align 8
  %and36 = and i32 %23, 8
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %24 = load %struct.Val*, %struct.Val** %b, align 8
  %t38 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 0
  %25 = load i32, i32* %t38, align 8
  %and39 = and i32 %25, 8
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then41, label %if.end54

if.then41:                                        ; preds = %lor.lhs.false, %if.end34
  %26 = load %struct.Val*, %struct.Val** %a, align 8
  %v42 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %n = bitcast %union.anon* %v42 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %27 = load double, double* %num, align 8
  %28 = load %struct.Val*, %struct.Val** %a, align 8
  %v43 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %n44 = bitcast %union.anon* %v43 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n44, i32 0, i32 1
  %29 = load double, double* %den, align 8
  %div = fdiv double %27, %29
  %30 = load %struct.Val*, %struct.Val** %b, align 8
  %v45 = getelementptr inbounds %struct.Val, %struct.Val* %30, i32 0, i32 1
  %n46 = bitcast %union.anon* %v45 to %struct.anon*
  %num47 = getelementptr inbounds %struct.anon, %struct.anon* %n46, i32 0, i32 0
  %31 = load double, double* %num47, align 8
  %32 = load %struct.Val*, %struct.Val** %b, align 8
  %v48 = getelementptr inbounds %struct.Val, %struct.Val* %32, i32 0, i32 1
  %n49 = bitcast %union.anon* %v48 to %struct.anon*
  %den50 = getelementptr inbounds %struct.anon, %struct.anon* %n49, i32 0, i32 1
  %33 = load double, double* %den50, align 8
  %div51 = fdiv double %31, %33
  %div52 = fdiv double %div, %div51
  %call53 = call %struct.Val* @mk_dec(double noundef %div52)
  store %struct.Val* %call53, %struct.Val** %retval, align 8
  br label %return

if.end54:                                         ; preds = %lor.lhs.false
  %34 = load %struct.Val*, %struct.Val** %a, align 8
  %t55 = getelementptr inbounds %struct.Val, %struct.Val* %34, i32 0, i32 0
  %35 = load i32, i32* %t55, align 8
  %36 = load %struct.Val*, %struct.Val** %b, align 8
  %t56 = getelementptr inbounds %struct.Val, %struct.Val* %36, i32 0, i32 0
  %37 = load i32, i32* %t56, align 8
  %call57 = call %struct.Val* (double, double)* @mk_num(i32 noundef %35, i32 noundef %37, i32 noundef 1)
  %38 = load %struct.Val*, %struct.Val** %a, align 8
  %v58 = getelementptr inbounds %struct.Val, %struct.Val* %38, i32 0, i32 1
  %n59 = bitcast %union.anon* %v58 to %struct.anon*
  %num60 = getelementptr inbounds %struct.anon, %struct.anon* %n59, i32 0, i32 0
  %39 = load double, double* %num60, align 8
  %40 = load %struct.Val*, %struct.Val** %b, align 8
  %v61 = getelementptr inbounds %struct.Val, %struct.Val* %40, i32 0, i32 1
  %n62 = bitcast %union.anon* %v61 to %struct.anon*
  %den63 = getelementptr inbounds %struct.anon, %struct.anon* %n62, i32 0, i32 1
  %41 = load double, double* %den63, align 8
  %mul = fmul double %39, %41
  %42 = load %struct.Val*, %struct.Val** %a, align 8
  %v64 = getelementptr inbounds %struct.Val, %struct.Val* %42, i32 0, i32 1
  %n65 = bitcast %union.anon* %v64 to %struct.anon*
  %den66 = getelementptr inbounds %struct.anon, %struct.anon* %n65, i32 0, i32 1
  %43 = load double, double* %den66, align 8
  %44 = load %struct.Val*, %struct.Val** %b, align 8
  %v67 = getelementptr inbounds %struct.Val, %struct.Val* %44, i32 0, i32 1
  %n68 = bitcast %union.anon* %v67 to %struct.anon*
  %num69 = getelementptr inbounds %struct.anon, %struct.anon* %n68, i32 0, i32 0
  %45 = load double, double* %num69, align 8
  %mul70 = fmul double %43, %45
  %call71 = call %struct.Val* %call57(double noundef %mul, double noundef %mul70)
  store %struct.Val* %call71, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end54, %if.then41, %do.body26, %do.body5, %do.body
  %46 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_mod(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %a = alloca %struct.Val*, align 8
  %b = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i64 0, i64 0), i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %4, %struct.Val** %a, align 8
  %5 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v5 = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %p6 = bitcast %union.anon* %v5 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p6, i32 0, i32 1
  %6 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v7 = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 1
  %p8 = bitcast %union.anon* %v7 to %struct.anon.2*
  %car9 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p8, i32 0, i32 0
  %7 = load %struct.Val*, %struct.Val** %car9, align 8
  store %struct.Val* %7, %struct.Val** %b, align 8
  br label %do.body10

do.body10:                                        ; preds = %do.end4
  %8 = load %struct.Val*, %struct.Val** %a, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t, align 8
  %and = and i32 %9, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end18, label %if.then11

if.then11:                                        ; preds = %do.body10
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef 4)
  %11 = load %struct.Val*, %struct.Val** %a, align 8
  %t14 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t14, align 8
  %call15 = call i8* @tsp_type_str(i32 noundef %12)
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.139, i64 0, i64 0), i8* noundef %call13, i8* noundef %call15)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end17:                                         ; No predecessors!
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %do.body10
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  br label %do.body20

do.body20:                                        ; preds = %do.end19
  %13 = load %struct.Val*, %struct.Val** %b, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 0
  %14 = load i32, i32* %t21, align 8
  %and22 = and i32 %14, 4
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.end31, label %if.then24

if.then24:                                        ; preds = %do.body20
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call26 = call i8* @tsp_type_str(i32 noundef 4)
  %16 = load %struct.Val*, %struct.Val** %b, align 8
  %t27 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 0
  %17 = load i32, i32* %t27, align 8
  %call28 = call i8* @tsp_type_str(i32 noundef %17)
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.139, i64 0, i64 0), i8* noundef %call26, i8* noundef %call28)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end30:                                         ; No predecessors!
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %do.body20
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  %18 = load %struct.Val*, %struct.Val** %b, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %n = bitcast %union.anon* %v33 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %19 = load double, double* %num, align 8
  %cmp34 = fcmp oeq double %19, 0.000000e+00
  br i1 %cmp34, label %if.then35, label %if.end39

if.then35:                                        ; preds = %do.end32
  br label %do.body36

do.body36:                                        ; preds = %if.then35
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0))
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end38:                                         ; No predecessors!
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %do.end32
  %21 = load %struct.Val*, %struct.Val** %a, align 8
  %v40 = getelementptr inbounds %struct.Val, %struct.Val* %21, i32 0, i32 1
  %n41 = bitcast %union.anon* %v40 to %struct.anon*
  %num42 = getelementptr inbounds %struct.anon, %struct.anon* %n41, i32 0, i32 0
  %22 = load double, double* %num42, align 8
  %conv = fptosi double %22 to i32
  %23 = load %struct.Val*, %struct.Val** %b, align 8
  %v43 = getelementptr inbounds %struct.Val, %struct.Val* %23, i32 0, i32 1
  %n44 = bitcast %union.anon* %v43 to %struct.anon*
  %num45 = getelementptr inbounds %struct.anon, %struct.anon* %n44, i32 0, i32 0
  %24 = load double, double* %num45, align 8
  %conv46 = fptosi double %24 to i32
  %call47 = call i32 @abs(i32 noundef %conv46) #15
  %rem = srem i32 %conv, %call47
  %call48 = call %struct.Val* @mk_int(i32 noundef %rem)
  store %struct.Val* %call48, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end39, %do.body36, %do.body25, %do.body12, %do.body1
  %25 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_pow(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %b = alloca %struct.Val*, align 8
  %p = alloca %struct.Val*, align 8
  %bnum = alloca double, align 8
  %bden = alloca double, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i64 0, i64 0), i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p5 = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p5, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %4, %struct.Val** %b, align 8
  %5 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v6 = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %p7 = bitcast %union.anon* %v6 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p7, i32 0, i32 1
  %6 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v8 = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 1
  %p9 = bitcast %union.anon* %v8 to %struct.anon.2*
  %car10 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p9, i32 0, i32 0
  %7 = load %struct.Val*, %struct.Val** %car10, align 8
  store %struct.Val* %7, %struct.Val** %p, align 8
  br label %do.body11

do.body11:                                        ; preds = %do.end4
  %8 = load %struct.Val*, %struct.Val** %b, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t, align 8
  %and = and i32 %9, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end19, label %if.then12

if.then12:                                        ; preds = %do.body11
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i8* @tsp_type_str(i32 noundef 2140)
  %11 = load %struct.Val*, %struct.Val** %b, align 8
  %t15 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t15, align 8
  %call16 = call i8* @tsp_type_str(i32 noundef %12)
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.141, i64 0, i64 0), i8* noundef %call14, i8* noundef %call16)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end18:                                         ; No predecessors!
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %do.body11
  br label %do.end20

do.end20:                                         ; preds = %if.end19
  br label %do.body21

do.body21:                                        ; preds = %do.end20
  %13 = load %struct.Val*, %struct.Val** %p, align 8
  %t22 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 0
  %14 = load i32, i32* %t22, align 8
  %and23 = and i32 %14, 2140
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.end32, label %if.then25

if.then25:                                        ; preds = %do.body21
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call27 = call i8* @tsp_type_str(i32 noundef 2140)
  %16 = load %struct.Val*, %struct.Val** %p, align 8
  %t28 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 0
  %17 = load i32, i32* %t28, align 8
  %call29 = call i8* @tsp_type_str(i32 noundef %17)
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.141, i64 0, i64 0), i8* noundef %call27, i8* noundef %call29)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end31:                                         ; No predecessors!
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %do.body21
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  %18 = load %struct.Val*, %struct.Val** %b, align 8
  %v34 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %n = bitcast %union.anon* %v34 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %19 = load double, double* %num, align 8
  %20 = load %struct.Val*, %struct.Val** %p, align 8
  %v35 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 1
  %n36 = bitcast %union.anon* %v35 to %struct.anon*
  %num37 = getelementptr inbounds %struct.anon, %struct.anon* %n36, i32 0, i32 0
  %21 = load double, double* %num37, align 8
  %22 = load %struct.Val*, %struct.Val** %p, align 8
  %v38 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 1
  %n39 = bitcast %union.anon* %v38 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n39, i32 0, i32 1
  %23 = load double, double* %den, align 8
  %div = fdiv double %21, %23
  %call40 = call double @pow(double noundef %19, double noundef %div) #11
  store double %call40, double* %bnum, align 8
  %24 = load %struct.Val*, %struct.Val** %b, align 8
  %v41 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 1
  %n42 = bitcast %union.anon* %v41 to %struct.anon*
  %den43 = getelementptr inbounds %struct.anon, %struct.anon* %n42, i32 0, i32 1
  %25 = load double, double* %den43, align 8
  %26 = load %struct.Val*, %struct.Val** %p, align 8
  %v44 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %n45 = bitcast %union.anon* %v44 to %struct.anon*
  %num46 = getelementptr inbounds %struct.anon, %struct.anon* %n45, i32 0, i32 0
  %27 = load double, double* %num46, align 8
  %28 = load %struct.Val*, %struct.Val** %p, align 8
  %v47 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %n48 = bitcast %union.anon* %v47 to %struct.anon*
  %den49 = getelementptr inbounds %struct.anon, %struct.anon* %n48, i32 0, i32 1
  %29 = load double, double* %den49, align 8
  %div50 = fdiv double %27, %29
  %call51 = call double @pow(double noundef %25, double noundef %div50) #11
  store double %call51, double* %bden, align 8
  %30 = load double, double* %bnum, align 8
  %31 = load double, double* %bnum, align 8
  %conv = fptosi double %31 to i32
  %conv52 = sitofp i32 %conv to double
  %cmp53 = fcmp oeq double %30, %conv52
  br i1 %cmp53, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.end33
  %32 = load double, double* %bden, align 8
  %33 = load double, double* %bden, align 8
  %conv55 = fptosi double %33 to i32
  %conv56 = sitofp i32 %conv55 to double
  %cmp57 = fcmp oeq double %32, %conv56
  br i1 %cmp57, label %if.then66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.end33
  %34 = load %struct.Val*, %struct.Val** %b, align 8
  %t59 = getelementptr inbounds %struct.Val, %struct.Val* %34, i32 0, i32 0
  %35 = load i32, i32* %t59, align 8
  %and60 = and i32 %35, 8
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then66, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false
  %36 = load %struct.Val*, %struct.Val** %p, align 8
  %t63 = getelementptr inbounds %struct.Val, %struct.Val* %36, i32 0, i32 0
  %37 = load i32, i32* %t63, align 8
  %and64 = and i32 %37, 8
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then66, label %if.end71

if.then66:                                        ; preds = %lor.lhs.false62, %lor.lhs.false, %land.lhs.true
  %38 = load %struct.Val*, %struct.Val** %b, align 8
  %t67 = getelementptr inbounds %struct.Val, %struct.Val* %38, i32 0, i32 0
  %39 = load i32, i32* %t67, align 8
  %40 = load %struct.Val*, %struct.Val** %p, align 8
  %t68 = getelementptr inbounds %struct.Val, %struct.Val* %40, i32 0, i32 0
  %41 = load i32, i32* %t68, align 8
  %call69 = call %struct.Val* (double, double)* @mk_num(i32 noundef %39, i32 noundef %41, i32 noundef 0)
  %42 = load double, double* %bnum, align 8
  %43 = load double, double* %bden, align 8
  %call70 = call %struct.Val* %call69(double noundef %42, double noundef %43)
  store %struct.Val* %call70, %struct.Val** %retval, align 8
  br label %return

if.end71:                                         ; preds = %lor.lhs.false62
  %44 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %45 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call72 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %45, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0))
  %46 = load %struct.Val*, %struct.Val** %b, align 8
  %47 = load %struct.Val*, %struct.Val** %p, align 8
  %call73 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %44, i32 noundef 3, %struct.Val* noundef %call72, %struct.Val* noundef %46, %struct.Val* noundef %47)
  store %struct.Val* %call73, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end71, %if.then66, %do.body26, %do.body13, %do.body1
  %48 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %48
}

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_lt(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %t = getelementptr inbounds %struct.Tsp, %struct.Tsp* %1, i32 0, i32 4
  %2 = load %struct.Val*, %struct.Val** %t, align 8
  store %struct.Val* %2, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t1 = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t1, align 8
  %and = and i32 %5, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end11, label %if.then2

if.then2:                                         ; preds = %do.body
  br label %do.body3

do.body3:                                         ; preds = %if.then2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i8* @tsp_type_str(i32 noundef 28)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v5 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p6 = bitcast %union.anon* %v5 to %struct.anon.2*
  %car7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p6, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car7, align 8
  %t8 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t8, align 8
  %call9 = call i8* @tsp_type_str(i32 noundef %9)
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.143, i64 0, i64 0), i8* noundef %call4, i8* noundef %call9)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v14 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p15 = bitcast %union.anon* %v14 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p15, i32 0, i32 1
  %11 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v16 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %p17 = bitcast %union.anon* %v16 to %struct.anon.2*
  %car18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p17, i32 0, i32 0
  %12 = load %struct.Val*, %struct.Val** %car18, align 8
  %t19 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t19, align 8
  %and20 = and i32 %13, 28
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end35, label %if.then22

if.then22:                                        ; preds = %do.body13
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i8* @tsp_type_str(i32 noundef 28)
  %15 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %cdr27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 1
  %16 = load %struct.Val*, %struct.Val** %cdr27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %p29 = bitcast %union.anon* %v28 to %struct.anon.2*
  %car30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p29, i32 0, i32 0
  %17 = load %struct.Val*, %struct.Val** %car30, align 8
  %t31 = getelementptr inbounds %struct.Val, %struct.Val* %17, i32 0, i32 0
  %18 = load i32, i32* %t31, align 8
  %call32 = call i8* @tsp_type_str(i32 noundef %18)
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.143, i64 0, i64 0), i8* noundef %call24, i8* noundef %call32)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end34:                                         ; No predecessors!
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %do.body13
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  %19 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v37 = getelementptr inbounds %struct.Val, %struct.Val* %19, i32 0, i32 1
  %p38 = bitcast %union.anon* %v37 to %struct.anon.2*
  %car39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p38, i32 0, i32 0
  %20 = load %struct.Val*, %struct.Val** %car39, align 8
  %v40 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 1
  %n = bitcast %union.anon* %v40 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %21 = load double, double* %num, align 8
  %22 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v41 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 1
  %p42 = bitcast %union.anon* %v41 to %struct.anon.2*
  %cdr43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p42, i32 0, i32 1
  %23 = load %struct.Val*, %struct.Val** %cdr43, align 8
  %v44 = getelementptr inbounds %struct.Val, %struct.Val* %23, i32 0, i32 1
  %p45 = bitcast %union.anon* %v44 to %struct.anon.2*
  %car46 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p45, i32 0, i32 0
  %24 = load %struct.Val*, %struct.Val** %car46, align 8
  %v47 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 1
  %n48 = bitcast %union.anon* %v47 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n48, i32 0, i32 1
  %25 = load double, double* %den, align 8
  %mul = fmul double %21, %25
  %26 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v49 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %p50 = bitcast %union.anon* %v49 to %struct.anon.2*
  %cdr51 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p50, i32 0, i32 1
  %27 = load %struct.Val*, %struct.Val** %cdr51, align 8
  %v52 = getelementptr inbounds %struct.Val, %struct.Val* %27, i32 0, i32 1
  %p53 = bitcast %union.anon* %v52 to %struct.anon.2*
  %car54 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p53, i32 0, i32 0
  %28 = load %struct.Val*, %struct.Val** %car54, align 8
  %v55 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %n56 = bitcast %union.anon* %v55 to %struct.anon*
  %num57 = getelementptr inbounds %struct.anon, %struct.anon* %n56, i32 0, i32 0
  %29 = load double, double* %num57, align 8
  %30 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v58 = getelementptr inbounds %struct.Val, %struct.Val* %30, i32 0, i32 1
  %p59 = bitcast %union.anon* %v58 to %struct.anon.2*
  %car60 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p59, i32 0, i32 0
  %31 = load %struct.Val*, %struct.Val** %car60, align 8
  %v61 = getelementptr inbounds %struct.Val, %struct.Val* %31, i32 0, i32 1
  %n62 = bitcast %union.anon* %v61 to %struct.anon*
  %den63 = getelementptr inbounds %struct.anon, %struct.anon* %n62, i32 0, i32 1
  %32 = load double, double* %den63, align 8
  %mul64 = fmul double %29, %32
  %cmp65 = fcmp olt double %mul, %mul64
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end36
  %33 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %t66 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %33, i32 0, i32 4
  %34 = load %struct.Val*, %struct.Val** %t66, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end36
  %35 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %35, i32 0, i32 3
  %36 = load %struct.Val*, %struct.Val** %nil, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.Val* [ %34, %cond.true ], [ %36, %cond.false ]
  store %struct.Val* %cond, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %do.body23, %do.body3, %if.then
  %37 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_gt(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %t = getelementptr inbounds %struct.Tsp, %struct.Tsp* %1, i32 0, i32 4
  %2 = load %struct.Val*, %struct.Val** %t, align 8
  store %struct.Val* %2, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t1 = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t1, align 8
  %and = and i32 %5, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end11, label %if.then2

if.then2:                                         ; preds = %do.body
  br label %do.body3

do.body3:                                         ; preds = %if.then2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i8* @tsp_type_str(i32 noundef 28)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v5 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p6 = bitcast %union.anon* %v5 to %struct.anon.2*
  %car7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p6, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car7, align 8
  %t8 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t8, align 8
  %call9 = call i8* @tsp_type_str(i32 noundef %9)
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.144, i64 0, i64 0), i8* noundef %call4, i8* noundef %call9)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v14 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p15 = bitcast %union.anon* %v14 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p15, i32 0, i32 1
  %11 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v16 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %p17 = bitcast %union.anon* %v16 to %struct.anon.2*
  %car18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p17, i32 0, i32 0
  %12 = load %struct.Val*, %struct.Val** %car18, align 8
  %t19 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t19, align 8
  %and20 = and i32 %13, 28
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end35, label %if.then22

if.then22:                                        ; preds = %do.body13
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i8* @tsp_type_str(i32 noundef 28)
  %15 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %cdr27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 1
  %16 = load %struct.Val*, %struct.Val** %cdr27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %p29 = bitcast %union.anon* %v28 to %struct.anon.2*
  %car30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p29, i32 0, i32 0
  %17 = load %struct.Val*, %struct.Val** %car30, align 8
  %t31 = getelementptr inbounds %struct.Val, %struct.Val* %17, i32 0, i32 0
  %18 = load i32, i32* %t31, align 8
  %call32 = call i8* @tsp_type_str(i32 noundef %18)
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.144, i64 0, i64 0), i8* noundef %call24, i8* noundef %call32)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end34:                                         ; No predecessors!
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %do.body13
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  %19 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v37 = getelementptr inbounds %struct.Val, %struct.Val* %19, i32 0, i32 1
  %p38 = bitcast %union.anon* %v37 to %struct.anon.2*
  %car39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p38, i32 0, i32 0
  %20 = load %struct.Val*, %struct.Val** %car39, align 8
  %v40 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 1
  %n = bitcast %union.anon* %v40 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %21 = load double, double* %num, align 8
  %22 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v41 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 1
  %p42 = bitcast %union.anon* %v41 to %struct.anon.2*
  %cdr43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p42, i32 0, i32 1
  %23 = load %struct.Val*, %struct.Val** %cdr43, align 8
  %v44 = getelementptr inbounds %struct.Val, %struct.Val* %23, i32 0, i32 1
  %p45 = bitcast %union.anon* %v44 to %struct.anon.2*
  %car46 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p45, i32 0, i32 0
  %24 = load %struct.Val*, %struct.Val** %car46, align 8
  %v47 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 1
  %n48 = bitcast %union.anon* %v47 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n48, i32 0, i32 1
  %25 = load double, double* %den, align 8
  %mul = fmul double %21, %25
  %26 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v49 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %p50 = bitcast %union.anon* %v49 to %struct.anon.2*
  %cdr51 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p50, i32 0, i32 1
  %27 = load %struct.Val*, %struct.Val** %cdr51, align 8
  %v52 = getelementptr inbounds %struct.Val, %struct.Val* %27, i32 0, i32 1
  %p53 = bitcast %union.anon* %v52 to %struct.anon.2*
  %car54 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p53, i32 0, i32 0
  %28 = load %struct.Val*, %struct.Val** %car54, align 8
  %v55 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %n56 = bitcast %union.anon* %v55 to %struct.anon*
  %num57 = getelementptr inbounds %struct.anon, %struct.anon* %n56, i32 0, i32 0
  %29 = load double, double* %num57, align 8
  %30 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v58 = getelementptr inbounds %struct.Val, %struct.Val* %30, i32 0, i32 1
  %p59 = bitcast %union.anon* %v58 to %struct.anon.2*
  %car60 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p59, i32 0, i32 0
  %31 = load %struct.Val*, %struct.Val** %car60, align 8
  %v61 = getelementptr inbounds %struct.Val, %struct.Val* %31, i32 0, i32 1
  %n62 = bitcast %union.anon* %v61 to %struct.anon*
  %den63 = getelementptr inbounds %struct.anon, %struct.anon* %n62, i32 0, i32 1
  %32 = load double, double* %den63, align 8
  %mul64 = fmul double %29, %32
  %cmp65 = fcmp ogt double %mul, %mul64
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end36
  %33 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %t66 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %33, i32 0, i32 4
  %34 = load %struct.Val*, %struct.Val** %t66, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end36
  %35 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %35, i32 0, i32 3
  %36 = load %struct.Val*, %struct.Val** %nil, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.Val* [ %34, %cond.true ], [ %36, %cond.false ]
  store %struct.Val* %cond, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %do.body23, %do.body3, %if.then
  %37 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_lte(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %t = getelementptr inbounds %struct.Tsp, %struct.Tsp* %1, i32 0, i32 4
  %2 = load %struct.Val*, %struct.Val** %t, align 8
  store %struct.Val* %2, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t1 = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t1, align 8
  %and = and i32 %5, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end11, label %if.then2

if.then2:                                         ; preds = %do.body
  br label %do.body3

do.body3:                                         ; preds = %if.then2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i8* @tsp_type_str(i32 noundef 28)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v5 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p6 = bitcast %union.anon* %v5 to %struct.anon.2*
  %car7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p6, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car7, align 8
  %t8 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t8, align 8
  %call9 = call i8* @tsp_type_str(i32 noundef %9)
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.145, i64 0, i64 0), i8* noundef %call4, i8* noundef %call9)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v14 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p15 = bitcast %union.anon* %v14 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p15, i32 0, i32 1
  %11 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v16 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %p17 = bitcast %union.anon* %v16 to %struct.anon.2*
  %car18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p17, i32 0, i32 0
  %12 = load %struct.Val*, %struct.Val** %car18, align 8
  %t19 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t19, align 8
  %and20 = and i32 %13, 28
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end35, label %if.then22

if.then22:                                        ; preds = %do.body13
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i8* @tsp_type_str(i32 noundef 28)
  %15 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %cdr27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 1
  %16 = load %struct.Val*, %struct.Val** %cdr27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %p29 = bitcast %union.anon* %v28 to %struct.anon.2*
  %car30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p29, i32 0, i32 0
  %17 = load %struct.Val*, %struct.Val** %car30, align 8
  %t31 = getelementptr inbounds %struct.Val, %struct.Val* %17, i32 0, i32 0
  %18 = load i32, i32* %t31, align 8
  %call32 = call i8* @tsp_type_str(i32 noundef %18)
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.145, i64 0, i64 0), i8* noundef %call24, i8* noundef %call32)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end34:                                         ; No predecessors!
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %do.body13
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  %19 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v37 = getelementptr inbounds %struct.Val, %struct.Val* %19, i32 0, i32 1
  %p38 = bitcast %union.anon* %v37 to %struct.anon.2*
  %car39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p38, i32 0, i32 0
  %20 = load %struct.Val*, %struct.Val** %car39, align 8
  %v40 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 1
  %n = bitcast %union.anon* %v40 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %21 = load double, double* %num, align 8
  %22 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v41 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 1
  %p42 = bitcast %union.anon* %v41 to %struct.anon.2*
  %cdr43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p42, i32 0, i32 1
  %23 = load %struct.Val*, %struct.Val** %cdr43, align 8
  %v44 = getelementptr inbounds %struct.Val, %struct.Val* %23, i32 0, i32 1
  %p45 = bitcast %union.anon* %v44 to %struct.anon.2*
  %car46 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p45, i32 0, i32 0
  %24 = load %struct.Val*, %struct.Val** %car46, align 8
  %v47 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 1
  %n48 = bitcast %union.anon* %v47 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n48, i32 0, i32 1
  %25 = load double, double* %den, align 8
  %mul = fmul double %21, %25
  %26 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v49 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %p50 = bitcast %union.anon* %v49 to %struct.anon.2*
  %cdr51 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p50, i32 0, i32 1
  %27 = load %struct.Val*, %struct.Val** %cdr51, align 8
  %v52 = getelementptr inbounds %struct.Val, %struct.Val* %27, i32 0, i32 1
  %p53 = bitcast %union.anon* %v52 to %struct.anon.2*
  %car54 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p53, i32 0, i32 0
  %28 = load %struct.Val*, %struct.Val** %car54, align 8
  %v55 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %n56 = bitcast %union.anon* %v55 to %struct.anon*
  %num57 = getelementptr inbounds %struct.anon, %struct.anon* %n56, i32 0, i32 0
  %29 = load double, double* %num57, align 8
  %30 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v58 = getelementptr inbounds %struct.Val, %struct.Val* %30, i32 0, i32 1
  %p59 = bitcast %union.anon* %v58 to %struct.anon.2*
  %car60 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p59, i32 0, i32 0
  %31 = load %struct.Val*, %struct.Val** %car60, align 8
  %v61 = getelementptr inbounds %struct.Val, %struct.Val* %31, i32 0, i32 1
  %n62 = bitcast %union.anon* %v61 to %struct.anon*
  %den63 = getelementptr inbounds %struct.anon, %struct.anon* %n62, i32 0, i32 1
  %32 = load double, double* %den63, align 8
  %mul64 = fmul double %29, %32
  %cmp65 = fcmp ole double %mul, %mul64
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end36
  %33 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %t66 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %33, i32 0, i32 4
  %34 = load %struct.Val*, %struct.Val** %t66, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end36
  %35 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %35, i32 0, i32 3
  %36 = load %struct.Val*, %struct.Val** %nil, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.Val* [ %34, %cond.true ], [ %36, %cond.false ]
  store %struct.Val* %cond, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %do.body23, %do.body3, %if.then
  %37 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_gte(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %t = getelementptr inbounds %struct.Tsp, %struct.Tsp* %1, i32 0, i32 4
  %2 = load %struct.Val*, %struct.Val** %t, align 8
  store %struct.Val* %2, %struct.Val** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t1 = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t1, align 8
  %and = and i32 %5, 28
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end11, label %if.then2

if.then2:                                         ; preds = %do.body
  br label %do.body3

do.body3:                                         ; preds = %if.then2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i8* @tsp_type_str(i32 noundef 28)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v5 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p6 = bitcast %union.anon* %v5 to %struct.anon.2*
  %car7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p6, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car7, align 8
  %t8 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t8, align 8
  %call9 = call i8* @tsp_type_str(i32 noundef %9)
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.146, i64 0, i64 0), i8* noundef %call4, i8* noundef %call9)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v14 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p15 = bitcast %union.anon* %v14 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p15, i32 0, i32 1
  %11 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v16 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %p17 = bitcast %union.anon* %v16 to %struct.anon.2*
  %car18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p17, i32 0, i32 0
  %12 = load %struct.Val*, %struct.Val** %car18, align 8
  %t19 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t19, align 8
  %and20 = and i32 %13, 28
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end35, label %if.then22

if.then22:                                        ; preds = %do.body13
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i8* @tsp_type_str(i32 noundef 28)
  %15 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %cdr27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 1
  %16 = load %struct.Val*, %struct.Val** %cdr27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 1
  %p29 = bitcast %union.anon* %v28 to %struct.anon.2*
  %car30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p29, i32 0, i32 0
  %17 = load %struct.Val*, %struct.Val** %car30, align 8
  %t31 = getelementptr inbounds %struct.Val, %struct.Val* %17, i32 0, i32 0
  %18 = load i32, i32* %t31, align 8
  %call32 = call i8* @tsp_type_str(i32 noundef %18)
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.146, i64 0, i64 0), i8* noundef %call24, i8* noundef %call32)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end34:                                         ; No predecessors!
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %do.body13
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  %19 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v37 = getelementptr inbounds %struct.Val, %struct.Val* %19, i32 0, i32 1
  %p38 = bitcast %union.anon* %v37 to %struct.anon.2*
  %car39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p38, i32 0, i32 0
  %20 = load %struct.Val*, %struct.Val** %car39, align 8
  %v40 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 1
  %n = bitcast %union.anon* %v40 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %21 = load double, double* %num, align 8
  %22 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v41 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 1
  %p42 = bitcast %union.anon* %v41 to %struct.anon.2*
  %cdr43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p42, i32 0, i32 1
  %23 = load %struct.Val*, %struct.Val** %cdr43, align 8
  %v44 = getelementptr inbounds %struct.Val, %struct.Val* %23, i32 0, i32 1
  %p45 = bitcast %union.anon* %v44 to %struct.anon.2*
  %car46 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p45, i32 0, i32 0
  %24 = load %struct.Val*, %struct.Val** %car46, align 8
  %v47 = getelementptr inbounds %struct.Val, %struct.Val* %24, i32 0, i32 1
  %n48 = bitcast %union.anon* %v47 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n48, i32 0, i32 1
  %25 = load double, double* %den, align 8
  %mul = fmul double %21, %25
  %26 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v49 = getelementptr inbounds %struct.Val, %struct.Val* %26, i32 0, i32 1
  %p50 = bitcast %union.anon* %v49 to %struct.anon.2*
  %cdr51 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p50, i32 0, i32 1
  %27 = load %struct.Val*, %struct.Val** %cdr51, align 8
  %v52 = getelementptr inbounds %struct.Val, %struct.Val* %27, i32 0, i32 1
  %p53 = bitcast %union.anon* %v52 to %struct.anon.2*
  %car54 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p53, i32 0, i32 0
  %28 = load %struct.Val*, %struct.Val** %car54, align 8
  %v55 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %n56 = bitcast %union.anon* %v55 to %struct.anon*
  %num57 = getelementptr inbounds %struct.anon, %struct.anon* %n56, i32 0, i32 0
  %29 = load double, double* %num57, align 8
  %30 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v58 = getelementptr inbounds %struct.Val, %struct.Val* %30, i32 0, i32 1
  %p59 = bitcast %union.anon* %v58 to %struct.anon.2*
  %car60 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p59, i32 0, i32 0
  %31 = load %struct.Val*, %struct.Val** %car60, align 8
  %v61 = getelementptr inbounds %struct.Val, %struct.Val* %31, i32 0, i32 1
  %n62 = bitcast %union.anon* %v61 to %struct.anon*
  %den63 = getelementptr inbounds %struct.anon, %struct.anon* %n62, i32 0, i32 1
  %32 = load double, double* %den63, align 8
  %mul64 = fmul double %29, %32
  %cmp65 = fcmp oge double %mul, %mul64
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end36
  %33 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %t66 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %33, i32 0, i32 4
  %34 = load %struct.Val*, %struct.Val** %t66, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end36
  %35 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %35, i32 0, i32 3
  %36 = load %struct.Val*, %struct.Val** %nil, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.Val* [ %34, %cond.true ], [ %36, %cond.false ]
  store %struct.Val* %cond, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %do.body23, %do.body3, %if.then
  %37 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_sin(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.148, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @sin(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_cos(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.150, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @cos(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_tan(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.151, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.152, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @tan(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.151, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @tan(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_sinh(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.154, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @sinh(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @sinh(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_cosh(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.156, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @cosh(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @cosh(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_tanh(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.158, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @tanh(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @tanh(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_asin(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.160, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @asin(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @asin(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_acos(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.161, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.162, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @acos(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.161, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @acos(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_atan(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.163, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.164, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @atan(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.163, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @atan(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_asinh(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.165, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.166, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @asinh(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.165, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @asinh(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_acosh(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.168, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @acosh(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @acosh(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_atanh(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.170, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @atanh(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @atanh(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_exp(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.171, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.172, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @exp(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.171, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_log(%struct.Tsp* noundef %st, %struct.Rec* noundef %vars, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %vars.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %vars, %struct.Rec** %vars.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 2140
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 2140)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.174, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %t21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 0
  %12 = load i32, i32* %t21, align 8
  %and22 = and i32 %12, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %do.end17
  %13 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v25 = getelementptr inbounds %struct.Val, %struct.Val* %13, i32 0, i32 1
  %p26 = bitcast %union.anon* %v25 to %struct.anon.2*
  %car27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p26, i32 0, i32 0
  %14 = load %struct.Val*, %struct.Val** %car27, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %14, i32 0, i32 1
  %n = bitcast %union.anon* %v28 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %15 = load double, double* %num, align 8
  %call29 = call double @log(double noundef %15) #11
  %call30 = call %struct.Val* @mk_dec(double noundef %call29)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

if.end31:                                         ; preds = %do.end17
  %16 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call32 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %17, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0))
  %18 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v33 = getelementptr inbounds %struct.Val, %struct.Val* %18, i32 0, i32 1
  %p34 = bitcast %union.anon* %v33 to %struct.anon.2*
  %car35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p34, i32 0, i32 0
  %19 = load %struct.Val*, %struct.Val** %car35, align 8
  %call36 = call %struct.Val* (%struct.Tsp*, i32, ...) @mk_list(%struct.Tsp* noundef %16, i32 noundef 2, %struct.Val* noundef %call32, %struct.Val* noundef %19)
  store %struct.Val* %call36, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then24, %do.body7, %do.body1
  %20 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %20
}

; Function Attrs: nounwind
declare dso_local double @log(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_numerator(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.175, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 20
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 20)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.176, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %v21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %n = bitcast %union.anon* %v21 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %12 = load double, double* %num, align 8
  %conv = fptosi double %12 to i32
  %call22 = call %struct.Val* @mk_int(i32 noundef %conv)
  store %struct.Val* %call22, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end17, %do.body7, %do.body1
  %13 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_denominator(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.177, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 20
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 20)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.178, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %v21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %n = bitcast %union.anon* %v21 to %struct.anon*
  %den = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 1
  %12 = load double, double* %den, align 8
  %conv = fptosi double %12 to i32
  %call22 = call %struct.Val* @mk_int(i32 noundef %conv)
  store %struct.Val* %call22, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end17, %do.body7, %do.body1
  %13 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_parens(i8* noundef %s, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pcount = alloca i32, align 4
  %bcount = alloca i32, align 4
  %ccount = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %pcount, align 4
  store i32 0, i32* %bcount, align 4
  store i32 0, i32* %ccount, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom1
  %8 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %8 to i32
  switch i32 %conv3, label %sw.epilog [
    i32 40, label %sw.bb
    i32 91, label %sw.bb4
    i32 123, label %sw.bb6
    i32 41, label %sw.bb8
    i32 93, label %sw.bb9
    i32 125, label %sw.bb11
  ]

sw.bb:                                            ; preds = %for.body
  %9 = load i32, i32* %pcount, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %pcount, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.body
  %10 = load i32, i32* %bcount, align 4
  %inc5 = add nsw i32 %10, 1
  store i32 %inc5, i32* %bcount, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  %11 = load i32, i32* %ccount, align 4
  %inc7 = add nsw i32 %11, 1
  store i32 %inc7, i32* %ccount, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  %12 = load i32, i32* %pcount, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %pcount, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  %13 = load i32, i32* %bcount, align 4
  %dec10 = add nsw i32 %13, -1
  store i32 %dec10, i32* %bcount, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %for.body
  %14 = load i32, i32* %ccount, align 4
  %dec12 = add nsw i32 %14, -1
  store i32 %dec12, i32* %ccount, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb11, %sw.bb9, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %15 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %15, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %land.end
  %16 = load i32, i32* %pcount, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %17 = load i32, i32* %pcount, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %18 = load i32, i32* %bcount, align 4
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  %19 = load i32, i32* %bcount, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end
  %20 = load i32, i32* %ccount, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_file(i8* noundef %fname) #0 {
entry:
  %retval = alloca i8*, align 8
  %fname.addr = alloca i8*, align 8
  %buf = alloca [8192 x i8], align 16
  %file = alloca i8*, align 8
  %len = alloca i32, align 4
  %n = alloca i32, align 4
  %fd = alloca i32, align 4
  %parens = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8
  store i8* null, i8** %file, align 8
  store i32 0, i32* %len, align 4
  store i32 0, i32* %parens, align 4
  %0 = load i8*, i8** %fname.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %fd, align 4
  br label %if.end3

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %fname.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* noundef %1, i32 noundef 0)
  store i32 %call, i32* %fd, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %fname.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.191, i64 0, i64 0), i8* noundef %3)
  store i8* null, i8** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %if.end3
  %4 = load i32, i32* %fd, align 4
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i64 0, i64 0
  %call4 = call i64 @read(i32 noundef %4, i8* noundef %arraydecay, i64 noundef 8192)
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %n, align 4
  %cmp5 = icmp sgt i32 %conv, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %file, align 8
  %6 = load i32, i32* %len, align 4
  %7 = load i32, i32* %n, align 4
  %add = add nsw i32 %6, %7
  %add7 = add nsw i32 %add, 1
  %conv8 = sext i32 %add7 to i64
  %call9 = call i8* @realloc(i8* noundef %5, i64 noundef %conv8) #11
  store i8* %call9, i8** %file, align 8
  %8 = load i8*, i8** %file, align 8
  %tobool10 = icmp ne i8* %8, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %while.body
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i64 0, i64 0)) #13
  call void @exit(i32 noundef 1) #12
  unreachable

if.end12:                                         ; preds = %while.body
  %9 = load i8*, i8** %file, align 8
  %10 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %arraydecay13 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i64 0, i64 0
  %11 = load i32, i32* %n, align 4
  %conv14 = sext i32 %11 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 16 %arraydecay13, i64 %conv14, i1 false)
  %12 = load i32, i32* %n, align 4
  %13 = load i32, i32* %len, align 4
  %add15 = add nsw i32 %13, %12
  store i32 %add15, i32* %len, align 4
  %14 = load i8*, i8** %file, align 8
  %15 = load i32, i32* %len, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %16 = load i32, i32* %fd, align 4
  %cmp16 = icmp eq i32 %16, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end12
  %arraydecay18 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i64 0, i64 0
  %17 = load i32, i32* %n, align 4
  %call19 = call i32 @count_parens(i8* noundef %arraydecay18, i32 noundef %17)
  %18 = load i32, i32* %parens, align 4
  %add20 = add nsw i32 %18, %call19
  store i32 %add20, i32* %parens, align 4
  %cmp21 = icmp sle i32 %add20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true
  br label %while.end

if.end24:                                         ; preds = %land.lhs.true, %if.end12
  br label %while.cond, !llvm.loop !46

while.end:                                        ; preds = %if.then23, %while.cond
  %19 = load i32, i32* %fd, align 4
  %tobool25 = icmp ne i32 %19, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %while.end
  %20 = load i32, i32* %fd, align 4
  %call27 = call i32 @close(i32 noundef %20)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %while.end
  %21 = load i32, i32* %n, align 4
  %cmp29 = icmp slt i32 %21, 0
  br i1 %cmp29, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end28
  br label %do.body32

do.body32:                                        ; preds = %if.then31
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load i8*, i8** %fname.addr, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.192, i64 0, i64 0), i8* noundef %23)
  store i8* null, i8** %retval, align 8
  br label %return

do.end34:                                         ; No predecessors!
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %if.end28
  %24 = load i8*, i8** %file, align 8
  store i8* %24, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end35, %do.body32, %do.body
  %25 = load i8*, i8** %retval, align 8
  ret i8* %25
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #2

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @close(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_write(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %mode = alloca i8*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.193, i64 0, i64 0), i8** %mode, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp slt i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i64 0, i64 0), i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 1
  %4 = load %struct.Val*, %struct.Val** %cdr, align 8
  %v5 = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 1
  %p6 = bitcast %union.anon* %v5 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p6, i32 0, i32 0
  %5 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t, align 8
  %cmp7 = icmp eq i32 %6, 2
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.end4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.195, i64 0, i64 0), i8** %mode, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end4
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v10 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p11 = bitcast %union.anon* %v10 to %struct.anon.2*
  %car12 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p11, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car12, align 8
  %t13 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t13, align 8
  %cmp14 = icmp eq i32 %9, 64
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end9
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v16 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p17 = bitcast %union.anon* %v16 to %struct.anon.2*
  %car18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p17, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car18, align 8
  %v19 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %s = bitcast %union.anon* %v19 to i8**
  %12 = load i8*, i8** %s, align 8
  %call20 = call i32 @strncmp(i8* noundef %12, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i64 0, i64 0), i64 noundef 7) #14
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then15
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then15
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %13, %cond.true ], [ %14, %cond.false ]
  store %struct._IO_FILE* %cond, %struct._IO_FILE** %f, align 8
  br label %if.end54

if.else:                                          ; preds = %if.end9
  %15 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v21 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 1
  %p22 = bitcast %union.anon* %v21 to %struct.anon.2*
  %car23 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p22, i32 0, i32 0
  %16 = load %struct.Val*, %struct.Val** %car23, align 8
  %t24 = getelementptr inbounds %struct.Val, %struct.Val* %16, i32 0, i32 0
  %17 = load i32, i32* %t24, align 8
  %cmp25 = icmp ne i32 %17, 32
  br i1 %cmp25, label %if.then26, label %if.else35

if.then26:                                        ; preds = %if.else
  br label %do.body27

do.body27:                                        ; preds = %if.then26
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v28 = getelementptr inbounds %struct.Val, %struct.Val* %19, i32 0, i32 1
  %p29 = bitcast %union.anon* %v28 to %struct.anon.2*
  %car30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p29, i32 0, i32 0
  %20 = load %struct.Val*, %struct.Val** %car30, align 8
  %t31 = getelementptr inbounds %struct.Val, %struct.Val* %20, i32 0, i32 0
  %21 = load i32, i32* %t31, align 8
  %call32 = call i8* @tsp_type_str(i32 noundef %21)
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.197, i64 0, i64 0), i8* noundef %call32)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end34:                                         ; No predecessors!
  br label %if.end53

if.else35:                                        ; preds = %if.else
  %22 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v36 = getelementptr inbounds %struct.Val, %struct.Val* %22, i32 0, i32 1
  %p37 = bitcast %union.anon* %v36 to %struct.anon.2*
  %car38 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p37, i32 0, i32 0
  %23 = load %struct.Val*, %struct.Val** %car38, align 8
  %v39 = getelementptr inbounds %struct.Val, %struct.Val* %23, i32 0, i32 1
  %s40 = bitcast %union.anon* %v39 to i8**
  %24 = load i8*, i8** %s40, align 8
  %25 = load i8*, i8** %mode, align 8
  %call41 = call noalias %struct._IO_FILE* @fopen(i8* noundef %24, i8* noundef %25)
  store %struct._IO_FILE* %call41, %struct._IO_FILE** %f, align 8
  %tobool42 = icmp ne %struct._IO_FILE* %call41, null
  br i1 %tobool42, label %if.end52, label %if.then43

if.then43:                                        ; preds = %if.else35
  br label %do.body44

do.body44:                                        ; preds = %if.then43
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v45 = getelementptr inbounds %struct.Val, %struct.Val* %27, i32 0, i32 1
  %p46 = bitcast %union.anon* %v45 to %struct.anon.2*
  %car47 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p46, i32 0, i32 0
  %28 = load %struct.Val*, %struct.Val** %car47, align 8
  %v48 = getelementptr inbounds %struct.Val, %struct.Val* %28, i32 0, i32 1
  %s49 = bitcast %union.anon* %v48 to i8**
  %29 = load i8*, i8** %s49, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.198, i64 0, i64 0), i8* noundef %29)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end51:                                         ; No predecessors!
  br label %if.end52

if.end52:                                         ; preds = %do.end51, %if.else35
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %do.end34
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %cond.end
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %cmp55 = icmp eq %struct._IO_FILE* %30, %31
  br i1 %cmp55, label %land.lhs.true, label %if.end67

land.lhs.true:                                    ; preds = %if.end54
  %32 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v56 = getelementptr inbounds %struct.Val, %struct.Val* %32, i32 0, i32 1
  %p57 = bitcast %union.anon* %v56 to %struct.anon.2*
  %car58 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p57, i32 0, i32 0
  %33 = load %struct.Val*, %struct.Val** %car58, align 8
  %v59 = getelementptr inbounds %struct.Val, %struct.Val* %33, i32 0, i32 1
  %s60 = bitcast %union.anon* %v59 to i8**
  %34 = load i8*, i8** %s60, align 8
  %call61 = call i32 @strncmp(i8* noundef %34, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.199, i64 0, i64 0), i64 noundef 7) #14
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then63, label %if.end67

if.then63:                                        ; preds = %land.lhs.true
  br label %do.body64

do.body64:                                        ; preds = %if.then63
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.200, i64 0, i64 0))
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end66:                                         ; No predecessors!
  br label %if.end67

if.end67:                                         ; preds = %do.end66, %land.lhs.true, %if.end54
  %36 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v68 = getelementptr inbounds %struct.Val, %struct.Val* %36, i32 0, i32 1
  %p69 = bitcast %union.anon* %v68 to %struct.anon.2*
  %cdr70 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p69, i32 0, i32 1
  %37 = load %struct.Val*, %struct.Val** %cdr70, align 8
  %v71 = getelementptr inbounds %struct.Val, %struct.Val* %37, i32 0, i32 1
  %p72 = bitcast %union.anon* %v71 to %struct.anon.2*
  %cdr73 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p72, i32 0, i32 1
  %38 = load %struct.Val*, %struct.Val** %cdr73, align 8
  store %struct.Val* %38, %struct.Val** %args.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end67
  %39 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %t74 = getelementptr inbounds %struct.Val, %struct.Val* %39, i32 0, i32 0
  %40 = load i32, i32* %t74, align 8
  %cmp75 = icmp eq i32 %40, 2
  %lnot = xor i1 %cmp75, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %42 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v76 = getelementptr inbounds %struct.Val, %struct.Val* %42, i32 0, i32 1
  %p77 = bitcast %union.anon* %v76 to %struct.anon.2*
  %car78 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p77, i32 0, i32 0
  %43 = load %struct.Val*, %struct.Val** %car78, align 8
  call void @tisp_print(%struct._IO_FILE* noundef %41, %struct.Val* noundef %43)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v79 = getelementptr inbounds %struct.Val, %struct.Val* %44, i32 0, i32 1
  %p80 = bitcast %union.anon* %v79 to %struct.anon.2*
  %cdr81 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p80, i32 0, i32 1
  %45 = load %struct.Val*, %struct.Val** %cdr81, align 8
  store %struct.Val* %45, %struct.Val** %args.addr, align 8
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp82 = icmp eq %struct._IO_FILE* %46, %47
  br i1 %cmp82, label %if.then84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %cmp83 = icmp eq %struct._IO_FILE* %48, %49
  br i1 %cmp83, label %if.then84, label %if.else86

if.then84:                                        ; preds = %lor.lhs.false, %for.end
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call85 = call i32 @fflush(%struct._IO_FILE* noundef %50)
  br label %if.end88

if.else86:                                        ; preds = %lor.lhs.false
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call87 = call i32 @fclose(%struct._IO_FILE* noundef %51)
  br label %if.end88

if.end88:                                         ; preds = %if.else86, %if.then84
  %52 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %none = getelementptr inbounds %struct.Tsp, %struct.Tsp* %52, i32 0, i32 2
  %53 = load %struct.Val*, %struct.Val** %none, align 8
  store %struct.Val* %53, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end88, %do.body64, %do.body44, %do.body27, %do.body1
  %54 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %54
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_read(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %file = alloca i8*, align 8
  %fname = alloca i8*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  store i8* null, i8** %fname, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.201, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call5 = call i32 @tsp_lstlen(%struct.Val* noundef %3)
  %cmp6 = icmp eq i32 %call5, 1
  br i1 %cmp6, label %if.then7, label %if.end25

if.then7:                                         ; preds = %do.end4
  br label %do.body8

do.body8:                                         ; preds = %if.then7
  %4 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %5 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t, align 8
  %and = and i32 %6, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end19, label %if.then9

if.then9:                                         ; preds = %do.body8
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i8* @tsp_type_str(i32 noundef 32)
  %8 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 1
  %p13 = bitcast %union.anon* %v12 to %struct.anon.2*
  %car14 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p13, i32 0, i32 0
  %9 = load %struct.Val*, %struct.Val** %car14, align 8
  %t15 = getelementptr inbounds %struct.Val, %struct.Val* %9, i32 0, i32 0
  %10 = load i32, i32* %t15, align 8
  %call16 = call i8* @tsp_type_str(i32 noundef %10)
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.202, i64 0, i64 0), i8* noundef %call11, i8* noundef %call16)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end18:                                         ; No predecessors!
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %do.body8
  br label %do.end20

do.end20:                                         ; preds = %if.end19
  %11 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %p22 = bitcast %union.anon* %v21 to %struct.anon.2*
  %car23 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p22, i32 0, i32 0
  %12 = load %struct.Val*, %struct.Val** %car23, align 8
  %v24 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 1
  %s = bitcast %union.anon* %v24 to i8**
  %13 = load i8*, i8** %s, align 8
  store i8* %13, i8** %fname, align 8
  br label %if.end25

if.end25:                                         ; preds = %do.end20, %do.end4
  %14 = load i8*, i8** %fname, align 8
  %call26 = call i8* @read_file(i8* noundef %14)
  store i8* %call26, i8** %file, align 8
  %tobool27 = icmp ne i8* %call26, null
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end25
  %15 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %15, i32 0, i32 3
  %16 = load %struct.Val*, %struct.Val** %nil, align 8
  store %struct.Val* %16, %struct.Val** %retval, align 8
  br label %return

if.end29:                                         ; preds = %if.end25
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %18 = load i8*, i8** %file, align 8
  %call30 = call %struct.Val* @mk_str(%struct.Tsp* noundef %17, i8* noundef %18)
  store %struct.Val* %call30, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end29, %if.then28, %do.body10, %do.body1
  %19 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_parse(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %ret = alloca %struct.Val*, align 8
  %expr = alloca %struct.Val*, align 8
  %file = alloca i8*, align 8
  %filec = alloca i64, align 8
  %pos = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  %0 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file1 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %0, i32 0, i32 0
  %1 = load i8*, i8** %file1, align 8
  store i8* %1, i8** %file, align 8
  %2 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec2 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %2, i32 0, i32 1
  %3 = load i64, i64* %filec2, align 8
  store i64 %3, i64* %filec, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %4)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body3

do.body3:                                         ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call4 = call i32 @tsp_lstlen(%struct.Val* noundef %6)
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call4)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %8, %struct.Val** %expr, align 8
  %9 = load %struct.Val*, %struct.Val** %expr, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %9, i32 0, i32 0
  %10 = load i32, i32* %t, align 8
  %cmp7 = icmp eq i32 %10, 2
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %do.end6
  %11 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call9 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.203, i64 0, i64 0))
  store %struct.Val* %call9, %struct.Val** %retval, align 8
  br label %return

if.end10:                                         ; preds = %do.end6
  br label %do.body11

do.body11:                                        ; preds = %if.end10
  %12 = load %struct.Val*, %struct.Val** %expr, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %12, i32 0, i32 0
  %13 = load i32, i32* %t12, align 8
  %and = and i32 %13, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end20, label %if.then13

if.then13:                                        ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i8* @tsp_type_str(i32 noundef 32)
  %15 = load %struct.Val*, %struct.Val** %expr, align 8
  %t16 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 0
  %16 = load i32, i32* %t16, align 8
  %call17 = call i8* @tsp_type_str(i32 noundef %16)
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.204, i64 0, i64 0), i8* noundef %call15, i8* noundef %call17)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end19:                                         ; No predecessors!
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %do.body11
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  %17 = load %struct.Val*, %struct.Val** %expr, align 8
  %v22 = getelementptr inbounds %struct.Val, %struct.Val* %17, i32 0, i32 1
  %s = bitcast %union.anon* %v22 to i8**
  %18 = load i8*, i8** %s, align 8
  %19 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file23 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %19, i32 0, i32 0
  store i8* %18, i8** %file23, align 8
  %20 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec24 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %20, i32 0, i32 1
  store i64 0, i64* %filec24, align 8
  %21 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call25 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %21, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0))
  %22 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %22, i32 0, i32 3
  %23 = load %struct.Val*, %struct.Val** %nil, align 8
  %call26 = call %struct.Val* @mk_pair(%struct.Val* noundef %call25, %struct.Val* noundef %23)
  store %struct.Val* %call26, %struct.Val** %ret, align 8
  %24 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %24, %struct.Val** %pos, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end21
  %25 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file27 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %25, i32 0, i32 0
  %26 = load i8*, i8** %file27, align 8
  %27 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec28 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %27, i32 0, i32 1
  %28 = load i64, i64* %filec28, align 8
  %add = add i64 %28, 0
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %add
  %29 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %29 to i32
  %tobool29 = icmp ne i32 %conv, 0
  br i1 %tobool29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %30 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %call30 = call %struct.Val* @tisp_read_line(%struct.Tsp* noundef %30, i32 noundef 0)
  store %struct.Val* %call30, %struct.Val** %expr, align 8
  %tobool31 = icmp ne %struct.Val* %call30, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %31 = phi i1 [ false, %for.cond ], [ %tobool31, %land.rhs ]
  br i1 %31, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %32 = load %struct.Val*, %struct.Val** %expr, align 8
  %33 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil32 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %33, i32 0, i32 3
  %34 = load %struct.Val*, %struct.Val** %nil32, align 8
  %call33 = call %struct.Val* @mk_pair(%struct.Val* noundef %32, %struct.Val* noundef %34)
  %35 = load %struct.Val*, %struct.Val** %pos, align 8
  %v34 = getelementptr inbounds %struct.Val, %struct.Val* %35, i32 0, i32 1
  %p35 = bitcast %union.anon* %v34 to %struct.anon.2*
  %cdr = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p35, i32 0, i32 1
  store %struct.Val* %call33, %struct.Val** %cdr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load %struct.Val*, %struct.Val** %pos, align 8
  %v36 = getelementptr inbounds %struct.Val, %struct.Val* %36, i32 0, i32 1
  %p37 = bitcast %union.anon* %v36 to %struct.anon.2*
  %cdr38 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p37, i32 0, i32 1
  %37 = load %struct.Val*, %struct.Val** %cdr38, align 8
  store %struct.Val* %37, %struct.Val** %pos, align 8
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %land.end
  %38 = load i8*, i8** %file, align 8
  %39 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %file39 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %39, i32 0, i32 0
  store i8* %38, i8** %file39, align 8
  %40 = load i64, i64* %filec, align 8
  %41 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %filec40 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %41, i32 0, i32 1
  store i64 %40, i64* %filec40, align 8
  %42 = load %struct.Val*, %struct.Val** %ret, align 8
  %v41 = getelementptr inbounds %struct.Val, %struct.Val* %42, i32 0, i32 1
  %p42 = bitcast %union.anon* %v41 to %struct.anon.2*
  %cdr43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p42, i32 0, i32 1
  %43 = load %struct.Val*, %struct.Val** %cdr43, align 8
  %t44 = getelementptr inbounds %struct.Val, %struct.Val* %43, i32 0, i32 0
  %44 = load i32, i32* %t44, align 8
  %cmp45 = icmp eq i32 %44, 2048
  br i1 %cmp45, label %land.lhs.true, label %if.end63

land.lhs.true:                                    ; preds = %for.end
  %45 = load %struct.Val*, %struct.Val** %ret, align 8
  %v47 = getelementptr inbounds %struct.Val, %struct.Val* %45, i32 0, i32 1
  %p48 = bitcast %union.anon* %v47 to %struct.anon.2*
  %cdr49 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p48, i32 0, i32 1
  %46 = load %struct.Val*, %struct.Val** %cdr49, align 8
  %v50 = getelementptr inbounds %struct.Val, %struct.Val* %46, i32 0, i32 1
  %p51 = bitcast %union.anon* %v50 to %struct.anon.2*
  %cdr52 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p51, i32 0, i32 1
  %47 = load %struct.Val*, %struct.Val** %cdr52, align 8
  %t53 = getelementptr inbounds %struct.Val, %struct.Val* %47, i32 0, i32 0
  %48 = load i32, i32* %t53, align 8
  %cmp54 = icmp eq i32 %48, 2
  br i1 %cmp54, label %if.then56, label %if.end63

if.then56:                                        ; preds = %land.lhs.true
  %49 = load %struct.Val*, %struct.Val** %ret, align 8
  %v57 = getelementptr inbounds %struct.Val, %struct.Val* %49, i32 0, i32 1
  %p58 = bitcast %union.anon* %v57 to %struct.anon.2*
  %cdr59 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p58, i32 0, i32 1
  %50 = load %struct.Val*, %struct.Val** %cdr59, align 8
  %v60 = getelementptr inbounds %struct.Val, %struct.Val* %50, i32 0, i32 1
  %p61 = bitcast %union.anon* %v60 to %struct.anon.2*
  %car62 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p61, i32 0, i32 0
  %51 = load %struct.Val*, %struct.Val** %car62, align 8
  store %struct.Val* %51, %struct.Val** %retval, align 8
  br label %return

if.end63:                                         ; preds = %land.lhs.true, %for.end
  %52 = load %struct.Val*, %struct.Val** %ret, align 8
  store %struct.Val* %52, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end63, %if.then56, %do.body14, %if.then8, %do.body3
  %53 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %53
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_load(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %tib = alloca %struct.Val*, align 8
  %tibenv = alloca void (%struct.Tsp*)*, align 8
  %name = alloca [4096 x i8], align 16
  %paths = alloca [4 x i8*], align 16
  %i = alloca i32, align 4
  %file = alloca i8*, align 8
  %body = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  %0 = bitcast [4 x i8*]* %paths to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i8*]* @__const.prim_load.paths to i8*), i64 32, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %1)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %3)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.208, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %4 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %5 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %5, %struct.Val** %tib, align 8
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %6 = load %struct.Val*, %struct.Val** %tib, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %6, i32 0, i32 0
  %7 = load i32, i32* %t, align 8
  %and = and i32 %7, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end13, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 32)
  %9 = load %struct.Val*, %struct.Val** %tib, align 8
  %t9 = getelementptr inbounds %struct.Val, %struct.Val* %9, i32 0, i32 0
  %10 = load i32, i32* %t9, align 8
  %call10 = call i8* @tsp_type_str(i32 noundef %10)
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.209, i64 0, i64 0), i8* noundef %call8, i8* noundef %call10)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end12:                                         ; No predecessors!
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %do.body5
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end14
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %paths, i64 0, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %tobool15 = icmp ne i8* %12, null
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  %13 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [4 x i8*], [4 x i8*]* %paths, i64 0, i64 %idxprom16
  %14 = load i8*, i8** %arrayidx17, align 8
  %call18 = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef %14) #11
  %arraydecay19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  %15 = load %struct.Val*, %struct.Val** %tib, align 8
  %v20 = getelementptr inbounds %struct.Val, %struct.Val* %15, i32 0, i32 1
  %s = bitcast %union.anon* %v20 to i8**
  %16 = load i8*, i8** %s, align 8
  %call21 = call i8* @strcat(i8* noundef %arraydecay19, i8* noundef %16) #11
  %arraydecay22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  %call23 = call i8* @strcat(i8* noundef %arraydecay22, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.210, i64 0, i64 0)) #11
  %arraydecay24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  %call25 = call i32 @access(i8* noundef %arraydecay24, i32 noundef 4) #11
  %cmp26 = icmp ne i32 %call25, -1
  br i1 %cmp26, label %if.then27, label %if.end34

if.then27:                                        ; preds = %for.body
  %arraydecay28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  %call29 = call i8* @read_file(i8* noundef %arraydecay28)
  store i8* %call29, i8** %file, align 8
  %17 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %18 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %19 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %20 = load i8*, i8** %file, align 8
  %call30 = call %struct.Val* @mk_sym(%struct.Tsp* noundef %19, i8* noundef %20)
  %21 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %nil = getelementptr inbounds %struct.Tsp, %struct.Tsp* %21, i32 0, i32 3
  %22 = load %struct.Val*, %struct.Val** %nil, align 8
  %call31 = call %struct.Val* @mk_pair(%struct.Val* noundef %call30, %struct.Val* noundef %22)
  %call32 = call %struct.Val* @prim_parse(%struct.Tsp* noundef %17, %struct.Rec* noundef %18, %struct.Val* noundef %call31)
  store %struct.Val* %call32, %struct.Val** %body, align 8
  %23 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %24 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %25 = load %struct.Val*, %struct.Val** %body, align 8
  %call33 = call %struct.Val* @tisp_eval_body(%struct.Tsp* noundef %23, %struct.Rec* noundef %24, %struct.Val* noundef %25)
  %26 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %none = getelementptr inbounds %struct.Tsp, %struct.Tsp* %26, i32 0, i32 2
  %27 = load %struct.Val*, %struct.Val** %none, align 8
  store %struct.Val* %27, %struct.Val** %retval, align 8
  br label %return

if.end34:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  %29 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %libh = getelementptr inbounds %struct.Tsp, %struct.Tsp* %29, i32 0, i32 8
  %30 = load i8**, i8*** %libh, align 8
  %31 = bitcast i8** %30 to i8*
  %32 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %libhc = getelementptr inbounds %struct.Tsp, %struct.Tsp* %32, i32 0, i32 9
  %33 = load i64, i64* %libhc, align 8
  %add = add i64 %33, 1
  %mul = mul i64 %add, 8
  %call35 = call i8* @realloc(i8* noundef %31, i64 noundef %mul) #11
  %34 = bitcast i8* %call35 to i8**
  %35 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %libh36 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %35, i32 0, i32 8
  store i8** %34, i8*** %libh36, align 8
  %tobool37 = icmp ne i8** %34, null
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %for.end
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i64 0, i64 0)) #13
  call void @exit(i32 noundef 1) #12
  unreachable

if.end39:                                         ; preds = %for.end
  %arraydecay40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay40, i8 0, i64 4096, i1 false)
  %arraydecay41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  %call42 = call i8* @strcpy(i8* noundef %arraydecay41, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.211, i64 0, i64 0)) #11
  %arraydecay43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  %36 = load %struct.Val*, %struct.Val** %tib, align 8
  %v44 = getelementptr inbounds %struct.Val, %struct.Val* %36, i32 0, i32 1
  %s45 = bitcast %union.anon* %v44 to i8**
  %37 = load i8*, i8** %s45, align 8
  %call46 = call i8* @strcat(i8* noundef %arraydecay43, i8* noundef %37) #11
  %arraydecay47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  %call48 = call i8* @strcat(i8* noundef %arraydecay47, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.212, i64 0, i64 0)) #11
  %arraydecay49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  %call50 = call i8* @dlopen(i8* noundef %arraydecay49, i32 noundef 1) #11
  %38 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %libh51 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %38, i32 0, i32 8
  %39 = load i8**, i8*** %libh51, align 8
  %40 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %libhc52 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %40, i32 0, i32 9
  %41 = load i64, i64* %libhc52, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* %call50, i8** %arrayidx53, align 8
  %tobool54 = icmp ne i8* %call50, null
  br i1 %tobool54, label %if.end62, label %if.then55

if.then55:                                        ; preds = %if.end39
  br label %do.body56

do.body56:                                        ; preds = %if.then55
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load %struct.Val*, %struct.Val** %tib, align 8
  %v57 = getelementptr inbounds %struct.Val, %struct.Val* %43, i32 0, i32 1
  %s58 = bitcast %union.anon* %v57 to i8**
  %44 = load i8*, i8** %s58, align 8
  %call59 = call i8* @dlerror() #11
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.213, i64 0, i64 0), i8* noundef %44, i8* noundef %call59)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end61:                                         ; No predecessors!
  br label %if.end62

if.end62:                                         ; preds = %do.end61, %if.end39
  %call63 = call i8* @dlerror() #11
  %arraydecay64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay64, i8 0, i64 4096, i1 false)
  %arraydecay65 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  %call66 = call i8* @strcpy(i8* noundef %arraydecay65, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.214, i64 0, i64 0)) #11
  %arraydecay67 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  %45 = load %struct.Val*, %struct.Val** %tib, align 8
  %v68 = getelementptr inbounds %struct.Val, %struct.Val* %45, i32 0, i32 1
  %s69 = bitcast %union.anon* %v68 to i8**
  %46 = load i8*, i8** %s69, align 8
  %call70 = call i8* @strcat(i8* noundef %arraydecay67, i8* noundef %46) #11
  %47 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %libh71 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %47, i32 0, i32 8
  %48 = load i8**, i8*** %libh71, align 8
  %49 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %libhc72 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %49, i32 0, i32 9
  %50 = load i64, i64* %libhc72, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %48, i64 %50
  %51 = load i8*, i8** %arrayidx73, align 8
  %arraydecay74 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i64 0, i64 0
  %call75 = call i8* @dlsym(i8* noundef %51, i8* noundef %arraydecay74) #11
  %52 = bitcast i8* %call75 to void (%struct.Tsp*)*
  store void (%struct.Tsp*)* %52, void (%struct.Tsp*)** %tibenv, align 8
  %call76 = call i8* @dlerror() #11
  %tobool77 = icmp ne i8* %call76, null
  br i1 %tobool77, label %if.then78, label %if.end85

if.then78:                                        ; preds = %if.end62
  br label %do.body79

do.body79:                                        ; preds = %if.then78
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = load %struct.Val*, %struct.Val** %tib, align 8
  %v80 = getelementptr inbounds %struct.Val, %struct.Val* %54, i32 0, i32 1
  %s81 = bitcast %union.anon* %v80 to i8**
  %55 = load i8*, i8** %s81, align 8
  %call82 = call i8* @dlerror() #11
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.215, i64 0, i64 0), i8* noundef %55, i8* noundef %call82)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end84:                                         ; No predecessors!
  br label %if.end85

if.end85:                                         ; preds = %do.end84, %if.end62
  %56 = load void (%struct.Tsp*)*, void (%struct.Tsp*)** %tibenv, align 8
  %57 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  call void %56(%struct.Tsp* noundef %57)
  %58 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %libhc86 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %58, i32 0, i32 9
  %59 = load i64, i64* %libhc86, align 8
  %inc87 = add i64 %59, 1
  store i64 %inc87, i64* %libhc86, align 8
  %60 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %none88 = getelementptr inbounds %struct.Tsp, %struct.Tsp* %60, i32 0, i32 2
  %61 = load %struct.Val*, %struct.Val** %none88, align 8
  store %struct.Val* %61, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end85, %do.body79, %do.body56, %if.then27, %do.body7, %do.body1
  %62 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %62
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @access(i8* noundef, i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind
declare dso_local i8* @dlopen(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @dlerror() #1

; Function Attrs: nounwind
declare dso_local i8* @dlsym(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_cd(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %dir = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.216, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  store %struct.Val* %4, %struct.Val** %dir, align 8
  %5 = load %struct.Val*, %struct.Val** %dir, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 0
  %6 = load i32, i32* %t, align 8
  %and = and i32 %6, 96
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end11, label %if.then5

if.then5:                                         ; preds = %do.end4
  br label %do.body6

do.body6:                                         ; preds = %if.then5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load %struct.Val*, %struct.Val** %dir, align 8
  %t7 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t7, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef %9)
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.217, i64 0, i64 0), i8* noundef %call8)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end10:                                         ; No predecessors!
  br label %if.end11

if.end11:                                         ; preds = %do.end10, %do.end4
  %10 = load %struct.Val*, %struct.Val** %dir, align 8
  %v12 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %s = bitcast %union.anon* %v12 to i8**
  %11 = load i8*, i8** %s, align 8
  %call13 = call i32 @chdir(i8* noundef %11) #11
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @perror(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.218, i64 0, i64 0)) #13
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end11
  %12 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %none = getelementptr inbounds %struct.Tsp, %struct.Tsp* %12, i32 0, i32 2
  %13 = load %struct.Val*, %struct.Val** %none, align 8
  store %struct.Val* %13, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %do.body6, %do.body1
  %14 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %14
}

; Function Attrs: nounwind
declare dso_local i32 @chdir(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_pwd(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %cwd = alloca [4096 x i8], align 16
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.219, i64 0, i64 0), i32 noundef 0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cwd, i64 0, i64 0
  %call5 = call i8* @getcwd(i8* noundef %arraydecay, i64 noundef 4096) #11
  %tobool = icmp ne i8* %call5, null
  br i1 %tobool, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end4
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %cwd, i64 0, i64 0
  %3 = load i8, i8* %arrayidx, align 16
  %conv = sext i8 %3 to i32
  %cmp6 = icmp ne i32 %conv, 40
  br i1 %cmp6, label %if.then8, label %if.end12

if.then8:                                         ; preds = %land.lhs.true
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.220, i64 0, i64 0))
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end11:                                         ; No predecessors!
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %land.lhs.true, %do.end4
  %5 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %arraydecay13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cwd, i64 0, i64 0
  %call14 = call %struct.Val* @mk_str(%struct.Tsp* noundef %5, i8* noundef %arraydecay13)
  store %struct.Val* %call14, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %do.body9, %do.body1
  %6 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %6
}

; Function Attrs: nounwind
declare dso_local i8* @getcwd(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_exit(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.221, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  %3 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v = getelementptr inbounds %struct.Val, %struct.Val* %3, i32 0, i32 1
  %p = bitcast %union.anon* %v to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %4 = load %struct.Val*, %struct.Val** %car, align 8
  %t = getelementptr inbounds %struct.Val, %struct.Val* %4, i32 0, i32 0
  %5 = load i32, i32* %t, align 8
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end16, label %if.then6

if.then6:                                         ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @tsp_type_str(i32 noundef 4)
  %7 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v9 = getelementptr inbounds %struct.Val, %struct.Val* %7, i32 0, i32 1
  %p10 = bitcast %union.anon* %v9 to %struct.anon.2*
  %car11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p10, i32 0, i32 0
  %8 = load %struct.Val*, %struct.Val** %car11, align 8
  %t12 = getelementptr inbounds %struct.Val, %struct.Val* %8, i32 0, i32 0
  %9 = load i32, i32* %t12, align 8
  %call13 = call i8* @tsp_type_str(i32 noundef %9)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.222, i64 0, i64 0), i8* noundef %call8, i8* noundef %call13)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body5
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %10 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v18 = getelementptr inbounds %struct.Val, %struct.Val* %10, i32 0, i32 1
  %p19 = bitcast %union.anon* %v18 to %struct.anon.2*
  %car20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p19, i32 0, i32 0
  %11 = load %struct.Val*, %struct.Val** %car20, align 8
  %v21 = getelementptr inbounds %struct.Val, %struct.Val* %11, i32 0, i32 1
  %n = bitcast %union.anon* %v21 to %struct.anon*
  %num = getelementptr inbounds %struct.anon, %struct.anon* %n, i32 0, i32 0
  %12 = load double, double* %num, align 8
  %conv = fptosi double %12 to i32
  call void @exit(i32 noundef %conv) #12
  unreachable

return:                                           ; preds = %do.body7, %do.body1
  %13 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @prim_now(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.223, i64 0, i64 0), i32 noundef 0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %call5 = call i64 @time(i64* noundef null) #11
  %conv = trunc i64 %call5 to i32
  %call6 = call %struct.Val* @mk_int(i32 noundef %conv)
  store %struct.Val* %call6, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %do.end4, %do.body1
  %3 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %3
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Val* @form_time(%struct.Tsp* noundef %st, %struct.Rec* noundef %env, %struct.Val* noundef %args) #0 {
entry:
  %retval = alloca %struct.Val*, align 8
  %st.addr = alloca %struct.Tsp*, align 8
  %env.addr = alloca %struct.Rec*, align 8
  %args.addr = alloca %struct.Val*, align 8
  %v = alloca %struct.Val*, align 8
  %t = alloca i64, align 8
  store %struct.Tsp* %st, %struct.Tsp** %st.addr, align 8
  store %struct.Rec* %env, %struct.Rec** %env.addr, align 8
  store %struct.Val* %args, %struct.Val** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call = call i32 @tsp_lstlen(%struct.Val* noundef %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %call2 = call i32 @tsp_lstlen(%struct.Val* noundef %2)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call2)
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %call5 = call i64 @clock() #11
  store i64 %call5, i64* %t, align 8
  %3 = load %struct.Tsp*, %struct.Tsp** %st.addr, align 8
  %4 = load %struct.Rec*, %struct.Rec** %env.addr, align 8
  %5 = load %struct.Val*, %struct.Val** %args.addr, align 8
  %v6 = getelementptr inbounds %struct.Val, %struct.Val* %5, i32 0, i32 1
  %p = bitcast %union.anon* %v6 to %struct.anon.2*
  %car = getelementptr inbounds %struct.anon.2, %struct.anon.2* %p, i32 0, i32 0
  %6 = load %struct.Val*, %struct.Val** %car, align 8
  %call7 = call %struct.Val* @tisp_eval(%struct.Tsp* noundef %3, %struct.Rec* noundef %4, %struct.Val* noundef %6)
  store %struct.Val* %call7, %struct.Val** %v, align 8
  %tobool = icmp ne %struct.Val* %call7, null
  br i1 %tobool, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.end4
  store %struct.Val* null, %struct.Val** %retval, align 8
  br label %return

if.end9:                                          ; preds = %do.end4
  %call10 = call i64 @clock() #11
  %7 = load i64, i64* %t, align 8
  %sub = sub nsw i64 %call10, %7
  store i64 %sub, i64* %t, align 8
  %8 = load i64, i64* %t, align 8
  %conv = sitofp i64 %8 to double
  %div = fdiv double %conv, 1.000000e+06
  %mul = fmul double %div, 1.000000e+02
  %call11 = call %struct.Val* @mk_dec(double noundef %mul)
  store %struct.Val* %call11, %struct.Val** %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %do.body1
  %9 = load %struct.Val*, %struct.Val** %retval, align 8
  ret %struct.Val* %9
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git b9f11c52040c387bbb748e2eed04075b3f5c32ad)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
