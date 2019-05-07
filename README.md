Homework 3: Boolean Evaluator
=============================

The purpose of this assignment is to:

1. Implement a program which evaluates boolean algebra expressions.
2. Practice symbolic computation in Racket.

Getting Started
---------------

Open up ``hw-3.rkt`` in either Dr. Racket or another s-expression aware editor.
See the slides for recommendations on how to make Vim or EMACS easier to work
with Lisp dialects.

You are working with a restricted subset of Racket, as defined in
``language.rkt``.  This subset of Racket only lets you write pure-functional
code. Here are the functions, macros, and symbols you have access to::

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
    _
    < > = <= >=
    eqv? eq? equal?
    car cdr cadr cdar
    cons
    null?
    curry curryr
    print
    println

If there is a particular function you would like to use that is not on this
list, please email me or post on Piazza with a request for that function to be
included in the list.

You will want to replace the parts of the code that say ``(todo)``. Note that
when ``(todo)`` was placed in a match statement, you may need to change the
cases or add more cases to the match (so change the entire match statement,
not just the ``(todo)``.

You can define any helper functions your code needs. Also, you can change any of
the starter code you want, as long as each of the functions still adheres to the
function specification.

Boolean Expression Representation
---------------------------------

To be able to use *symbolic computation*, we need a way to represent boolean
expressions in Racket data structures.

=============== =============================== =================
Connective      Boolean Algebra Representation  S-Expression
--------------- ------------------------------- -----------------
**Conjunction** :math:`a \wedge b \wedge \dots` ``(and a b ...)``
**Disjunction** :math:`a \vee b \vee \dots`     ``(or a b ...)``
**Negation**    :math:`\neg a`                  ``(not a)``
=============== =============================== =================

Dictionaries in Racket
----------------------

The ``boolean-eval`` function takes a dictionary of assignments as the second
parameter to the function. The basic usage of dictionaries is as follows::

    ;; Create a dictionary
    #hash((a . #f) (b . #t) (c . #t))

    ;; Access ``key`` in a dictionary (``d``)
    (dict-ref d key)

    ;; Example
    > (dict-ref #hash((a . "foo") (b . "bar") (c . "baz")) 'a)
    "foo"

You should not need to use any other dictionary functions in this assignment.

Running your Code
-----------------

If you are using Dr. Racket, you can run your code by clicking "Run" and
entering expressions into the REPL at the bottom.

If you are using Racket from another editor, type "racket" at your terminal to
get a REPL. You can enter into your code using the following command::

   ,en hw-3.rkt

Run any commands you need. To reload, you can type the same ``,en`` command
again.

Note: the grader will run additional test cases from the ones you were given.
Please be sure to test all of your code. Create additional test cases to the
ones you were given.

Submitting your Code
--------------------

Submit your ``hw-3.rkt`` file on Canvas.
