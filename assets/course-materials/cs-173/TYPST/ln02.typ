#import "@local/manuscript:0.1.0" as manuscript: *

#show: article.with(
  author: "Daniel Gonzalez Cedre",
  doctype: "Lecture Note",
  title: "The Syntax of the First-Order Logic",
  number: 2,
  date: datetime(year: 2026, month: 09, day: 02),
)

= The Syntax of the First-Order Logic

Now that we have some intuitive understanding of predicates, quantifiers, terms, truth values, and the common logical connectives, we are ready to define the _syntax_ of our new language, which we will call the _first-order logic._
A grammatically correct expression will be referred to as a _well-formed formula._
#marginalis[This is often abbreviated #quote[wff.]]
#marginalis[The word #quote[formula] is synonymous with the word #quote[expression] for our purposes here.]
We will specify this grammar _recursively_ by defining what a well-formed formula is in terms of other well-formed formulae.
In order for this to make any sense, we will specify our grammar using two different kinds of rules.
The first kind of rules give us explicit examples of _wffs_ without reference to the phrase #quote[well-formed formula.]
#marginalis[These are often called #quote[base cases] or #quote[bases] in a recursive definition.]
These account for the first three rules in the definition below.
The rest of the rules attempt to define what a _wff_ is by referring to another _wff._
#marginalis[Usually called #quote[recursive cases.]]

#definition(name: "Well-Formed Formulae", label: <def-wff>)[
  We define an expression $lambda$ as a #define[well-formed formula] if and only if $lambda$ is syntactically equal
  #marginalis[
    In this definition, when we say that $lambda$ is _syntactically equal_ to another expression, we are referring to _string equality:_ two strings are equal precisely when they have exactly the same characters arranged in exactly the same order.
    For example, the sentence $not not top$ is logically equivalent to $top$, but those two sentences are not _equal as strings_ because the first uses the $not$ symbol, which doesn't appear in the second.
  ]
  to any of the following expressions.

  1. $top$.

  2. $bot$.

  3. $pi(t_1, t_2, ..., t_n)$, where
    $n$ is a positive natural number,
    $pi$ is an $n$-ary predicate,
    and $t_1$, $t_2$, ..., $t_n$ are terms---constant or variable symbols representing objects.

  4. $not (phi)$, where $phi$ is a _wff._

  5. $(phi) and (psi)$, where $phi$ and $psi$ are both _wffs._

  6. $(phi) or (psi)$, where $phi$ and $psi$ are both _wffs._

  7. $(phi) arrow (psi)$, where $phi$ and $psi$ are both _wffs._

  8. $(phi) arrow.l.r (psi)$, where $phi$ and $psi$ are both _wffs._

  9. $forall x (phi)$, where $phi$ is a _wff_ in which $x$ does not appear as a bound variable.

  10. $exists x (phi)$, where $phi$ is a _wff_ in which $x$ does not appear as a bound variable.
]

For an example of a well-formed formula, let's first define the following predicates.
$
lt(x, y) &:= #quote[#text-math[$x$] is less than #text-math[$y$]] \
eq(x, y) &:= #quote[#text-math[$x$] is the same object as #text-math[$y$]]\
$
Now consider the expression below, which says #quote[between any two distinct numbers, there lies another number] if we take a universe of discourse containing numbers.
$
forall x forall y (x lt y arrow exists z (x lt z and z lt y))
$
This expression fulfills our definition of a well-formed formula because the _grammar_ that @def-wff recursively lays out is capable of _parsing_ this sentence.
We demonstrate this below by tagging each part of the sentence according to the numbered rule from @def-wff that justifies why that portion of the sentence is a _wff._
#pagebreak()
$
#text(fill: violet)[$under(
  forall x
  (#text(fill: violet)[$under(
    forall y (
      #text(fill: orange)[$under(
        (#text(fill: blue)[$under(
          x < y,
          #math-text[3.]
        )$])
        ->
        (#text(fill: green)[$under(
          exists z (
            #text(fill: red)[$under(
              (#text(fill: blue)[$under(
                x < z,
                #math-text[3.]
              )$])
              and
              (#text(fill: blue)[$under(
                z < y,
                #math-text[3.]
              )$]),
              #math-text[5.],
              level: #1
            )$]
          ),
          #math-text[10.],
          level: #2
        )$]),
        #math-text[7.],
        level: #3
      )$]
    ),
    #math-text[9.],
    level: #4
  )$]),
  #math-text[9.],
  level: #5
)$]
$
#v(6*1.4em)
At the bottom of the hierarchy are the #emph[#text(fill: blue)[predicates applied to terms],] which are _wffs_ because of #emph[#text(fill: blue)[rule 3.]]
By combining two such predicate blocks using a #emph[#text(fill: red)[conjunction],] we obtain a _wff_ thanks to #emph[#text(fill: red)[rule 5.]]
If we take this conjunctive block and #emph[#text(fill: green)[existentially quantify]] one of its variables, then #emph[#text(fill: green)[rule 10.]] tells us that is also a _wff._
Now, we can construct a _wff_ according to #emph[#text(fill: orange)[rule 7.]] by placing a predicate block in a #emph[#text(fill: orange)[conditional statement]] that has the existential block as its conclusion.
Finally, we can take this conditional block and #emph[#text(fill: violet)[quantify two of its variables]] to produce a _wff_ by two successive applications of #emph[#text(fill: violet)[rule 9.]]

Note that there are several pairs of parentheses in this parsed expression that were not present in the original; however, these parentheses were not strictly required in order to unambiguously parse the expression.
Since they were not required, we will permit ourselves to drop them, and we will still understand this to be a well-formed formula.
That's not to say that we can drop any pairs of parentheses that we feel like, because some _are_ required.
#marginalis[
  It is possible for us to impose a #quote[presedence] on the symbols in our language so that any expression can be unambiguously parsed without quantifiers by, for example, saying that $and$ takes higher presedence than $arrow$ (as is often the practice) in a similar way that, in grade school, you may have been taught that multiplication takes higher presedence than addition.
  We will not do this, but be aware that this is the case in some other contexts.
]
$
forall x forall y forall z (x lt y and y lt z arrow x lt z)
$
The above expression is not well-formed because we don't know if the fragment inside the parentheses is meant to be parsed as $((x lt y) and (y lt z)) arrow (x lt z)$ or as $(x lt y) and ((y lt z) arrow (x lt z))$, and those say very different things.
Similarly, expressions that involve a mix of $and$ and $or$ _require_ parentheses.
$
forall x forall y forall z (x lt y and y lt z and x lt z)
$
However, it is common to see expressions like the one above written with less parentheses than you might expect because $and$ is an _associative_ logical connective.
#marginalis[More on this later.]
We don't necessarily need parentheses around the individual predicate blocks above, like $(x lt y) and (y lt z) and (x lt z)$ precisely because $lt$ is a _predicate_ and $and$ is a _logical connective,_ and these two kinds of things take different types of inputs.
Trying to parse that expression like $(x lt (y and y) lt z) and (x lt z)$ would be nonsensical because $y$ is sometimes treated like a _term_ and sometimes like a _formula,_ and it can't be both.
In general, symbols that don't associate or that can't be disambiguated based on #quote[types] like these _require parentheses!_
#marginalis[If ever in doubt, err on the side of using _more_ rather than _less_ parentheses to ensure your expression is well-formed and therefore unambiguous.]

Let's quickly look at one more example, and let's take a universe of discourse consisting of the all of the natural numbers $0$, $1$, $2$, ... and so on.
$
forall y (x lt y or x = y)
$
This expression is clearly a well-formed formula---it's a universally quantified predicate, which is an application of #emph[#text(fill: violet)[rule 10.]] to an instance of #emph[#text(fill: blue)[rule 3.]]
Yet, we should be able to see that this sentence _has no truth value_ because it contains a _free variable_---namely, $x$.
In order to figure out what this means, we need to resolve this ambiguity by either quantifying $x$ or replacing $x$ with a constant term.
Importantly, even if we concede that $x$ is a variable (as opposed to a constant), we can't infer the truth value of this statement because we don't understand what role $x$ is playing in that expression.
If $x$ is interpreted as being arbitrary,
#marginalis[
  This corresponds with universally quantifying $x$.
  There are some people---some of them may even be intelligent---who interpert free variables as being implicitly universally quantified.
  We will not be following in this morally dubious tradition.
]
then this would read $forall x forall y (x lt y or x = y)$, which is clearly _false_ because $1 lt.not 0$ and $1 eq.not 0$.
If we interpret $x$ as being unspecified but particular,
#marginalis[
  This corresponds with existential quantification.
  I am not aware of anyone who interprets free variables as implicitly existentially quantified, thank God.
]
then this would read $exists x forall y (x lt y or x = y)$, which is _true_ because every natural number is greater than or equal to $0$, so we could fix $x := 0$ and verify that $forall y (0 lt y or 0 = y)$ is _true._

The well-formed formulae are the schema for those sentences that are grammatically correct, but in order to carry _meaning_---in order to carry a _truth value_--- a well-formed formula must contain _no free variables!_
These are the actual kinds of utterances that we want to communicate when we speak in our language, so let's give them a name.

#definition(name: "Proposition", label: <def-prop>)[
  We call a formula $lambda$ a #define[proposition] if and only if $lambda$ is a _wff_ with no free variables.
  // We refer to a _wff_ $lambda$ as a #define[proposition] if and only if $lambda$ contains no free variables.
  // We refer to $lambda$ as a #define[proposition] if and only if $lambda$ is a _wff_ with no free variables.
]

== Notes on Quantification of Variables

In the same way that Modern English lexicography has simplified and standardized throughout the hundreds of years of the language's development, there are several considerations and #quote[best practices] that we should be aware of in order to make sure we fully understand the meaning of first-order logic's syntax.

First of all, we will #emph[#strong[never]] re-quantify a variable that has already been quantified within a given scope.
Consider the following example.
$
#text(fill: red)[$forall x$] forall y ((0 lt x and x lt y) arrow #text(fill: red)[$exists x$] (#text(fill: blue)[$x = y$]))
$
In the above expression, in the inner #text(fill: blue)[$x = y$] fragment, does $x$ refer to the one that was quantified _existentially_ (by #text(fill: red)[$exists x$]) or the one that was quantified _universally_ (by #text(fill: red)[$forall x$])?
The statement would resolve to _true_ in the former case, but _false_ in the latter case!
#marginalis[Supposing we take a universe of discourse consisting of all natural numbers as we have normally been doing.]
We _could_ disambiguate this problem in several ways that would allow us to re-quantify variables that are already quantified in the same scope,
#marginalis[
  In fact, this is a somewhat common perspective particularly among those who take inspiration from the semantics of programming languages, where it is more common to allow rebinding variables in nested scopes (#eg Haskell).
  This is sometimes referred to as #quote[shadowing,] and is distinct from just reassigning values to a variable because it takes into account lexical scoping.
  However, different programming languages resolve lexical scoping in different and potentially incompatible ways, and some programming languages even explicitly disallow this kind of behavior (#eg Erlang).
  Also, the first-order logic isn't a programming language.
]
but there is absolutely no reason to even allow for the possibility of this level of confusion.
If you ever find yourself in such a situation, just #emph[#strong[use a different symbol]!]
This is explicitly enforced in #emph[#text(fill: violet)[rule 9.]] and #emph[#text(fill: violet)[rule 10.]] of @def-wff.

Second, we should be careful to note the #emph[#strong[order of quantification]] because it can severely impact the meaning of a sentence.
Let's consider the following proposition.
$
forall x exists y (x lt y)
$
Reading this in order from left to right: #quote[For each $x$, there exists a $y$ such that $x lt y$.]
This means that for each $x$, we can find a corresponding $y$ that is greater than that particular $x$; different values of $x$ may have different corresponding $y$ values.
This is clearly _true_ in the natural number universe since, given $x$, we could let $y := x + 1$.
In other words, $y$ _is dependent on_ $x$ because $y$ is quantified _after_ $x$.
Contrast that with the sentence below, which simply swaps the order of the two quantifiers.
$
exists y forall x (x lt y)
$
Again, reading this in order: #quote[There exists a $y$ such that, for all $x$, we have $x lt y$.]
This means that there exists a $y$ that is #emph[greater than any $x$!]
In this situation, there is only one value of $y$ that must work _for all_ of the different values $x$ can take.
This is clearly _false_ in the natural number universe because, if we thought we had such a value of $y$, then $y + 1$ would be even greater, and when $x := y + 1$ we would see $y + 1 lt.not y$.
Here, $y$ does not depend on $x$; it's $x$ who depends on $y$ because of the order of quantification.
