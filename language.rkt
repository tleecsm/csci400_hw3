#lang racket/base
(require racket/match)
(require racket/function)
(require racket/dict)
(provide
  _
  andmap ormap
  boolean?
  case
  cond
  define
  define/match
  dict-ref
  else
  error
  if
  lambda
  let let*
  list? list list*
  map
  match
  symbol?
  todo

  < > = <= >=
  eqv? eq? equal?
  car cdr cadr cdar
  cons
  null?
  curry curryr

  ; printing
  print
  println

  ; quotes
  quote
  quasiquote
  unquote
  unquote-splicing

  #%app
  #%module-begin
  #%top-interaction
  #%datum)

(define-syntax-rule (todo)
  (error
    (caar (continuation-mark-set->context
            (current-continuation-marks)))
    "not implemented"))
