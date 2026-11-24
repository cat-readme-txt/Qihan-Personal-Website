#import "@local/manuscript:0.1.0" as manuscript: *

#show: article.with(
  author: "Daniel Gonzalez Cedre",
  doctype: "Lecture Note",
  title: "Logical Connectives",
  number: 1,
  date: datetime(year: 2026, month: 08, day: 31),
)

= Logical Connectives

Now that we have ways of building simple expressions using predicates, terms, and quantifiers, we should naturally ask how we can express more complicated ideas such as the following.

- #quote[The number $1$ is not prime, but every prime number greater than $2$ is odd.]
- #quote[Every person of taste appreciates the Mazda Miata.]
- #quote[If Alcaraz doesn't take the first set against Sinner, then Sinner will finish undefeated.]

We can think of each of these sentences as #quote[compound expressions] that are formed by taking simpler expressions---represented by some number of quantifiers and predicates applied to terms---and connecting them together to produce a final truth value.
This requires us to define a collection of _connectives_
#marginalis[
  These are somtimes called _logical connectives_ because they connect together complete logical expressions.
  They are sometimes also called _sentential connectives_ or _propositional connectives_ since they connect _sentences_ together.
]
for manipulating expressions according to their truth values.

In the same way that we might think of predicates as #quote[functions] that transform _objects_ into _truth values,_ we can think of logical connectives as #quote[functions] that transform _truth values_ into other _truth values._
Since we only have two truth values, we can define an $n$-ary connective by specifying, for each possible arrangement of $n$ input truth values, which of $top$ or $bot$ to produce as the output truth value.
#marginalis[
  Throughout this article, we will sometimes use the notation $x mapsto^(f) y$ to denote a function named $f$ which maps a given input $x$ to the output $y$.
  The more common syntax $f(x) = y$ that you have surely encountered until this point conveys basically the same thing; however, this syntax has the advantage of allowing us to write $x mapsto y$ to denote an _anonymous_ function mapping the input $x$ to the output $y$.
  This is only convenient (and never necessary) in those situations when we want to talk about a mapping without having to give it a name, such as at the beginning of the next section.
]
We can easily represent these associations in a table, which we appropriately refer to as a #define(end: ".")[truth table]
Due to the abusive treatment of truth tables in other contexts, we emphasize that #emph[truth tables #strong[only] serve to help us #strong[define] the logical connectives].
They do not play any role in the art of proof writing, and in fact they are not strictly necessary to include at any point in the development of our logical system (they only serve as a concise and intuitive visual for understanding how the logical connectives might be interpreted as functions that map between truth values).

// For the sake of the discussion that follows, we will define a few predicates here that will be used throughout the remainder of this article.
// We also fix a universe of discourse containing all of the natural numbers $0$, $1$, $2$, ...
For the remainder of this discussion, we fix a universe of discourse consisting of all of the natural numbers $0$, $1$, $2$, ... and introduce the following predicates.

$
// =(x, y)     &:= #quote[#text-math[$x$] is equal to #text-math[$y$].] \
// lt(x, y)    &:= #quote[#text-math[$x$] is less than #text-math[$y$].] \
// lt.eq(x, y) &:= #quote[#text-math[$x$] is less than or equal to #text-math[$y$].] \
gt(x, y)    &:= #quote[#text-math[$x$] is greater than #text-math[$y$].] \
gt.eq(x, y) &:= #quote[#text-math[$x$] is greater than or equal to #text-math[$y$].] \
nu(x)       &:= #quote[#text-math[$x$] is a natural number.] \
pi(x)       &:= #quote[#text-math[$x$] is prime.] \
epsilon(x)  &:= #quote[#text-math[$x$] is even.] \
omicron(x)  &:= #quote[#text-math[$x$] is odd.] \
$

== Negations

The simplest kind of logical connective we could imagine would be a unary function $x mapsto x$ whose output is the same its unmodified input.
#illumination({
  show table.cell: set text(fill: colors.bg)
  show table.cell.where(y: 0): set text(fill: colors.fg)
  show table.cell.where(x: 0): set text(fill: colors.fg)
  tablet(
    align: horizon + center,
    columns: 2,
    $p$, $not p$,
    $top$, table.cell(fill: red)[$bot$],
    $bot$, table.cell(fill: green)[$top$],
  )},
  caption: [
    A truth table defining the _negation_ $not p$ of a formula $p$.
  ]
)
There is obviously no need for introducing syntax for such a connective because it doesn't really do anything.
The next-simplest logical connective then might be a unary connective that _inverts_ its input, mapping each truth value input to the _other_ one as its output.
If $p$ represents a well-formed sentence with a truth value, then we denote by $not p$#apostille[$not$] the sentence with the opposite truth value.
This is described in Table 1.
Equipped with this first logical connective, we could now express a thought like #quote[$3$ is not even] by saying #quote[$not epsilon(3)$.]
#marginalis[
  You might think this means the same thing as #quote[$3$ is odd,] and that we therefore could have just said #quote[$omicron(3)$,] but those sentences don't (necessarily) mean the same thing!
  We will soon discover that the complementary relationship between even and odd that might seen very natural and obvious actually requires quite a bit of proof.
]

== Junctions

The other unary connectives are not particularly interesting, and it seems weird to call them #quote[connectives] anyways since they don't really #quote[connect] anything together; you need at least _two_ things to connect!
The rest of our logical connectives will be binary, and the simplest way to connect two sentences together should be to just _assert both at the same time._
This is usually done by the English word #quote[and,] and we will call the associated connective the #define[conjunction] and use the symbol $and$#apostille[$and$] to denote it.
We define this connective in Table 2.
For example, if you wanted to communicate the sentence #quote[$3$ is odd and $3$ is prime,] you could write #quote[$omicron(3) and pi(3)$.]
#illumination({
  show table.cell: set text(fill: colors.bg)
  show table.cell.where(y: 0): set text(fill: colors.fg)
  show table.cell.where(x: 0): set text(fill: colors.fg)
  show table.cell.where(x: 1): set text(fill: colors.fg)
  tablet(
    align: horizon + center,
    columns: 4,
    $p$, $q$, $p and q$, $p or q$,
    $top$, $top$, table.cell(fill: green)[$top$], table.cell(fill: green)[$top$],
    $top$, $bot$, table.cell(fill: red)[$bot$],   table.cell(fill: green)[$top$],
    $bot$, $top$, table.cell(fill: red)[$bot$],   table.cell(fill: green)[$top$],
    $bot$, $bot$, table.cell(fill: red)[$bot$],   table.cell(fill: red)[$bot$],
  )},
  caption: [
    A truth table defining the _conjunction_ $p and q$ and _disjunction_ $p or q$ of two formulae $p$ and $q$.
  ]
)

Alternatively, given two sentences we want to connect together, we may decide that the _overall_ phrase should be true without necessarily asserting that _both_ of the sentences are themselves _individually true._
Using the English word #quote[or,] we can express that _at least one_ of the sentences is _true_ even if we weren't sure which one it was.
We call this kind of connective a #define[disjunction] and denote it with the $or$#apostille[$or$] symbol.
As before, this connective is defined in Table 2.

== Conditionals

Despite not seeming as #quote[basic] or #quote[simple] as the $and$ and $or$, the kind of reasoning that our next connective encodes is by far the most common kind of unquantified expression in everyday mathematical speech.
To motivate this discussion, consider the following sentence.

- #quote[Every prime number greater than $2$ is odd.]

If our universe of discourse only contained prime numbers greater than $2$, then $forall x (omicron(x))$ would be a straightforward symbolization of that sentence; but, our universe of discourse contains _all_ of the natural numbers.
In order to formalize this sentence, we need a way to assert the predicate $omicron(dot)$ _only_ for those natural numbers that satisfy both $pi(dot)$ and $gt(dot, 2)$ _without asserting anything_ for those natural numbers that fail to satisfy both conditions.
One natural way to communicate this in English would be with a _conditional_ expression.

- #quote[For every natural number $x$, if $x$ is prime and $x$ is greater than $2$, then $x$ is odd.]

The core part of that expression, #quote[if $x$ is prime and $x$ is greater than $2$, then $x$ is odd,] should be interpreted to assert #quote[$x$ is odd]  when the condition #quote[$x$ is prime and $x$ is greater than $2$] is _true_ but _not to assert anything_ when that condition is _false._
This idea is captured by our next connective---#define[material implication]---which we use the symbol $arrow$#apostille[$arrow$] to denote.
In this example, our #quote[premise] is $pi(x) and x gt 2$ and our #quote[conclusion] is $omicron(x)$, so we can symbolize our sentence using this new connective as follows.
#marginalis[
  Notice the use of parentheses in the expression.
  If we had instead written $forall x (pi(x) and x gt 3 arrow omicron(x))$, it would be ambiguous whether we meant to say $(pi(x) and x gt 3) arrow omicron(x)$ for all $x$ or $pi(x) and (x gt 3 arrow omicron(x))$ for all $x$.
  Parentheses are required here because $and$ and $arrow$ do not associate.
]
$
forall x ((pi(x) and x gt 2) arrow omicron(x))
$
An important thing to note: since we only want to assert $omicron(x)$ when $pi(x) and x gt 2$ is satisfied, we need to be careful in defining what truth values $arrow$ will produce for different inputs.
We certainly want $top arrow top$ to be $top$, and we also need $top arrow bot$ to be $bot$.
But what do we do about the situations (#ie $bot arrow top$ and $bot arrow bot$) where the premise to the conditional is _false?_
If we take the idea that these should resolve as $bot$, then our statement $(pi(x) and x gt 2) arrow pi(x)$ above would be _false_ when $x := 1$ because its premise $pi(1) and 1 gt 2$ would be _false,_ and that would then cause our entire universal quantification to be _false._
Think about that: do you think that the number $1$ is a _counterexample_ to the statement #quote[Every prime number greater than 2 is odd]_?_
Hopefully, you don't.
That's not generally what we understand #quote[if / then] to mean.
Our only option then is to define $bot arrow top$ and $bot arrow bot$ to be $top$.
We can summarize this as an interpretation of $arrow$ that is $bot$ only when its premise is $top$ and its conclusion is $bot$; otherwise, we interpret $arrow$ to be $top$.
We define this connective in Table 3.
#illumination({
  show table.cell: set text(fill: colors.bg)
  show table.cell.where(y: 0): set text(fill: colors.fg)
  show table.cell.where(x: 0): set text(fill: colors.fg)
  show table.cell.where(x: 1): set text(fill: colors.fg)
  tablet(
    align: horizon + center,
    columns: 4,
    $p$, $q$, $p arrow q$, $p arrow.l.r q$,
    $top$, $top$, table.cell(fill: green)[$top$], table.cell(fill: green)[$top$],
    $top$, $bot$, table.cell(fill: red)[$bot$],   table.cell(fill: red)[$bot$],
    $bot$, $top$, table.cell(fill: green)[$top$], table.cell(fill: red)[$bot$],
    $bot$, $bot$, table.cell(fill: green)[$top$], table.cell(fill: green)[$top$],
  )},
  caption: [
    A truth table defining the _material conditional_ $p arrow q$ and _biconditional_ $p arrow.l.r q$ of two formulae $p$ and $q$.
  ]
)

We should be careful to note that conditional expressions can manifest in many different and sometimes unintuitive ways in natural English.
Below, we list several equivalent ways to express $p arrow q$ in English, where $p := #quote[Espresso is nourishing]$ and $q := #quote[Alcaraz drink espresso.]$

- #quote[#strong[If] espresso is nourishing, #strong[then] Alcaraz drinks espresso.]
- #quote[Alcaraz drinks espresso #strong[if] it is nourishing.]
- #quote[Espresso is #strong[only] nourishing #strong[if] Alcaraz drinks it.]
- #quote[Espresso is nourishing #strong[only if] Alcaraz drink it.]
- #quote[Alcaraz drinking espresso #strong[requires] that espresso is nourishing.]
- #quote[For Alcaraz to drink espresso, it is #strong[sufficient] that espresso is nourishing.]
- #quote[For espresso to be nourishing, it is #strong[necessary] that Alcaraz drinks it.]
- #quote[Alcaraz drinks espresso #strong[unless] espresso is not nourishing.]

Because conditional statements are so common in mathematics, in formal logic, and in general, there are many different ways to refer to the components $p$ and $q$ in an expression like $p arrow q$, just as there are many synonyms for #quote[conditional.]
We list some examples in Table 4 below.

#figure(
  {
    show table.cell: it => smallcaps(text(top-edge: "ascender", bottom-edge: "descender")[#it])
    tablet(
      columns: 3,
      align: (col, row) => {
        if row == 0 {
          center
        } else if col == 0 {
          left
        } else if col == 2 {
          right
        } else {
          center
        }
      },
      [$p$], [$arrow$], [$q$],
      [implicant], [implication], [implicand],
      [premise], [implication], [inference],
      [antecedent], [sequent], [consequent],
      [prescedent], [sequent], [consequent],
      [condition], [conditional], [conclusion],
      [assumption], [], [conclusion],
      [supposition], [], [deduction],
      [hypothesis], [], [thesis],
    )
  },
  caption: [
    Some common and uncommon words used to represent the different components of a statement like $p arrow q$.
    The first and last columns correspond to references for $p$ and $q$ respectively, while the middle column provides some ways to refer to the _entire_ conditional $p arrow q$ that are consonant with the phrases in that row.
  ]
)
