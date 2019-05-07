#lang s-exp "language.rkt"

;; NOTE: you may want to convert some of these ``define`` statements to
;; ``define/match`` or some other type of definition.

;; Implement boolean AND across a list of booleans. You should implment this
;; recursively, and you *cannot* use the built-in ``and`` macro. This function
;; should short-circuit as soon as a #f is seen, and when the function is
;; called with no arguments #t should be returned.
;;
;; Arguments:
;; - ``expression``: will be a list of #t and #f values (although some of the
;;   tests include other things to check the functionality of your functions).
;;
;; Example: (and '())
;;    ==>   #t
;; Example: (and '(#f))
;;    ==>   #f
;; Example: (and '(#t #t))
;;    ==>   #t
;; Example: (and '(#f (error "should not evaluate this because first argument is false")))
;;    ==>   #f
(define (and expression)
  (todo))

;; Implement boolean OR across a list of booleans. You should implment this
;; recursively, and you *cannot* use the built-in ``or`` macro. This function
;; should short-circuit as soon as a #t is seen, and when the function is
;; called with no arguments #f should be returned.
;;
;; Arguments:
;; - ``expression``: will be a list of #t and #f values (although some of the
;;   tests include other things to check the functionality of your functions).
;;
;; Example: (or '())
;;    ==>   #f
;; Example: (or '(#f))
;;    ==>   #f
;; Example: (or '(#f #t))
;;    ==>   #t
;; Example: (or '(#t (error "should not evaluate this because first argument is false")))
;;    ==>   #t
(define (or expression)
  (todo))

;; Implement boolean NOT on a single boolean. You *cannot* use the built-in
;; ``not`` macro. This function will always be passed a single argument.
;;
;; Arguments:
;; - ``expression``: will be either #t or #f.
;;
;; Example: (not #t)
;;    ==>   #f
;; Example: (not #f)
;;    ==>   #t
(define (not expression)
  (todo))

;; Implement a function to simplify XOR, IMPLIES, and IFF statements to OR,
;; AND, and NOT statements. There are no specific requirements for how this
;; function be implemented, but you will need to ensure that you are
;; *recursively* simplifying the expressions.
;;
;; Arguments:
;; - ``expression``: will be either a boolean literal (#t or #f) or a list
;;   which represents a boolean expression (see the README.rst file for details
;;   on the exact format of these expressions).
;;
;; Reductions of XOR, IMPLIES, and IFF to AND, OR, and NOT expressions:
;;
;;  - (a XOR b)     -> ((a AND -b) OR (-a AND b))
;;  - (a IMPLIES b) -> (-a OR b)
;;  - (a IFF b)     -> ((a AND b) OR (-a AND -b))
;;
;; You need to perform this simplification recursively.
;;
;; Do not change any other expressions. However, if they contain expressions
;; which need to be simplified, then simplify the sub-expressions recursively.
;;
;; Example: (boolean-simplify '(and a b c))
;;    ==>   '(and a b c)
;; Example: (boolean-simplify '(xor a b))
;;    ==>   '(or (and a (not b)) (and (not a) b))
;; Example: (boolean-simplify '(implies a b))
;;    ==>   '(or (not a) b)
;; Example: (boolean-simplify '(iff a b))
;;    ==>   '(or (and a b) (and (not a) (not b)))
;; Example: (boolean-simplify '(and (implies a b) b))
;;    ==>   '(and (or (not a) b) b)
;; Example: (boolean-simplify '(implies (implies a b) b))
;;    ==>   '(or (not (or (not a) b)) b)
(define (boolean-simplify expression)
  (todo))

;; Implement a function that evaluates whether a given boolean expression is
;; true or false. You are given the expression (which may contain literal
;; boolean values or symbols) and a dictionary of symbols to their boolean
;; assignment. You are always guaranteed to have well-formed input, so you will
;; not have to worry about cases where a symbol is not in the dictionary.
;;
;; This boolean-eval function should only *directly* handle AND, OR, and NOT.
;; The grader will check this!
;;
;; Any expression that is not handled by boolean-simplify or this function
;; should cause an error (see the starter code). (Note that the starter code
;; uses boolean-simplify to automatically convert the more complicated boolean
;; logic connectives.)
;;
;; Arguments:
;; - ``expression``: will be either a boolean literal (#t or #f) or a list
;;   which represents a boolean expression (see the README.rst file for details
;;   on the exact format of these expressions).
;; - ``bindings``: a dictionary of symbols to their boolean literal values.
;;
;; Example: (boolean-eval #t #hash())
;;    ==>   #t
;; Example: (boolean-eval 'a #hash((a . #f)))
;;    ==>   #f
;; Example: (boolean-eval '(and) #hash())
;;    ==>   #t
;; Example: (boolean-eval '(and #t b) #hash((a . #t) (b . #t))
;;    ==>   #t
;; Example: (boolean-eval '(and a b) #hash((a . #t) (b . #t))
;;    ==>   #t
;; Example: (boolean-eval '(iff a (and x y)) #hash((a . #f) (b . #t) (x . #f) (y . #t)))
;;    ==>   #t
(define (boolean-eval expression bindings)
  (define/match (rec expression)
    [(_) (todo)]

    ; This is the error which you need to throw if the expression is not an
    ; AND, OR, or NOT.
    [(_) (error "invalid expression" expression)])
  (rec (boolean-simplify expression)))
