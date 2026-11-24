#import "@local/manuscript:0.1.0" as manuscript: *

#show: article.with(
  author: "Daniel Gonzalez Cedre",
  doctype: "Lecture Note",
  title: "Repeating Ourselves",
  number: 6,
  date: datetime(year: 2026, month: 09, day: 18),
)

= Repeating Ourselves

Although we have not formally introduced the notion of a #quote[function,] we have already encountered many examples of things that behave like #quote[functions.]
In this section, we will continue to treat the concept of a #quote[function] informally,
#marginalis[We will soon encounter this more formally, but the time is not yet ripe.]
but we have already encountered many examples of things that #quote[behave like functions.]
In particular, the operations $+$ and $dot$ that we have defined behave like _binary_ functions, in that they take _two_ natural number inputs and produce exactly one natural output.

// == Repetition

#definition(name: "Exponentiation")[
  For every pair of natural numbers $n$ and $m$, we define the following binary operation.
  $
  &n^0      &&:= 1 \
  &n^suc(m) &&:= n^m dot n \
  $
  We call this binary operation #quote[exponentiation] and use the notation $x^y$#apostille[$x^y$] to denote the exponential #quote[$x$ raised to the power $y$] when $x$ and $y$ are natural numbers.
  As we did with multiplication, we will take the convention that exponentition has _higher precedence_ than both _multiplication_ and _addition,_ so expressions like $w + x^y dot z$ can be parsed unambiguously as $w + ((x^y) dot z)$ despite the lack of parentheses.
]

As a first matter, note $forall x (x = x^1)$.
The computation below should be convincing.
$
x^1 = x^(suc(0)) = x^0 dot x = 1 dot x = x
$

Now, this operation is of a different kind than the ones that we've encountered so far in several ways.
Most obviously---as is heavily implied by the notation we introduced---exponentiation is #emph[#strong[not commutative]!]
For example, $2^3 = 8 eq.not 9 = 3^2$.

Exponentiation is also #emph[#strong[not associative]!]
By convention, the notation for exponentiation is implicitly #quote[associative to the right,] which means that an expression like $a^(b^c)$ should be parsed as $a^((b^c))$.
To make this clear, the following example writes the implied parentheses explicitly.
$ 2^((3^2)) = 2^9 = 512 eq.not 64 = 8^2 = (2^3)^2 $
Instead, exponentials interact with multiplication in several ways that might seem unintuitive if we do not keep in mind that it really is just repeated multiplication.

#lemma[
  Repeated (left-associated) powers can be simplified as products in the exponent.
  $
  forall x forall y forall z ((x^y)^z = x^(y dot z))
  $
]

#lemma(name: "Exponentiation is Homomorphic")[
  Exponentials split multiplicatively over sums.
  $
  forall x forall y forall z (x^(y + z) = x^y dot x^z)
  $
]

#lemma(name: "Distributivity of Exponentiation over Multiplication")[
  Raising a product of two natural numbers to a power is equivalent to taking the product of each of the factors individually raised to that power.
  $
  forall x forall y forall z ((x dot y)^z = x^z dot y^z)
  $
  It is important to note that, because #emph[exponentiation is #strong[not commutative],] distributivity does not work from the _left;_ it only works from the _right_ as stated above.
]
Distributing exponentiation over multiplication _from the left_ would look something like $x^(y dot z) = x^y dot x^z$, and this is clearly not _true_ for all natural numbers $x$, $y$, and $z$.
Look.
$ 2^(2 dot 3) = 2^6 = 64 eq.not 32 = 4 dot 8 = 2^2 dot 2^3 $

There is one more important way in which the exponential map is similar to addition and multiplication: it is an #define[increasing] function.
#marginalis[
  In fact, it is #emph[#strong[strictly] increasing] as opposed to merely #emph[#strong[monotonically] increasing.]
  The difference between the two depends on whether we are asserting a _strict_ or _weak_ inequality.
  In general, a function $f$ is #define[monotonically increasing] _iff_ $x lt y arrow.double f(x) lt.eq f(y)$ for every $x$ and $y$.
  We say that $f$ is #define[strictly increasing] _iff_ $x lt y arrow.double f(x) lt f(y)$ for every $x$ and $y$ in its domain.
]
When we described this property for addition and multiplication, we called it #quote[monotonicity.]
As a reminder, we expressed the monotonicity of addition as follows: for every pair of natural numbers $x$ and $y$, if $x lt.eq y$, then $x + z lt.eq y + z$ for every natural number $z$.
The thing to notice here is that adding the same quantity on both sides of an inequality _preserves the inequality._
This is precisely the property that exponentiation with a fixed natural base $b gt.eq 1$ has.

#lemma(name: "Exponentiation is a Strictly Increasing Function", label: <thm-exp-mono>)[
  Let $b$ be a natural number such that $b gt.eq 2$.
  Then, using $b$ as the base of an exponential on both sides of an inequality preserves that inequality.
  $
  forall x forall y (x lt y implies b^x lt b^y)
  $
]

Since $forall x forall y (x lt y implies x lt.eq y)$, the theorems we have discussed regarding monotonicity of addition, multiplication, and now exponentiation apply to both weak and strict inequalities.
However, notice @thm-exp-mono does not hold when $b = 0$.

One final important property the exponential map has---which it shares in common with the $suc(circle.dotted)$ functional---is that it can _never produce zero_ as an output (except in the special case when the base of the exponential is zero).
In fact, the exponential map with a nonzero base is _always positive._

#lemma(name: "Exponentials are Always Positive")[
  Let $b$ be a natural number such that $b eq.not 0$.
  The following then holds.
  $
  forall n (b^n eq.not 0)
  $
  This immediately implies $forall n (b^n > 0)$ because $forall n (n = 0 or exists m (n = suc(m)))$.
]

// #definition(name: "Tetration")[
//   ...henlo...
// ]

// #definition(name: "Arrow Notation")[
//   ...henlo...
// ]

== Inversion

#theorem(name: "Addition is Cancellative")[
  Eliminating the same summand from both sides of an equation preserves equality.
  $
  forall x forall y forall z (x + z = y + z implies x = y)
  $
]

#definition(name: "Differences")[
  Given two natural numbers $x$ and $y$ satisfying the relation $x gt.eq y$, we know that there exists a natural number $k$ such that $x = y + k$.
  In such situations, we define the #define[difference] between $x$ and $y$ to be $x - y := k$.#apostille[$x - y$]
]

#lemma(newline: false, delimiter: "")[
  For all $n$ and $m$, if $n gt.eq m$, then $(n - m) + m = n$ and $(n + m) - m = n$.
  #marginale[_Addition and subtraction cancel out._]
]

#lemma(newline: false, delimiter: "")[
  For all $x$, $y$, and $z$, if $y gt.eq z$, then $x + (y - z) = (x + y) - z$.
  #marginale[_Addition and subtraction associate._]
]

#lemma(newline: false, delimiter: "")[
  For all $x$, $y$, and $z$, if $y gt.eq z$, then $x dot (y - z) = (x dot y) - (x dot z)$.
  #marginale[_Products distribute over differences._]
]

#theorem(name: "Multiplication is Cancellative")[
  Eliminating a _nonzero_ factor from both sides of an equation preserves equality.
  $
  forall x forall y forall z (((x dot z = y dot z) and (z eq.not 0)) implies x = y)
  $
]

// #definition(name: "Quotients")[
//   ...henlo...
// ]

#definition(name: "Logarithms")[
  Let $b$ be a natural number such that $b gt.eq 2$.
  Let $x$ be a natural number and suppose that $x = b^y$ for some natural number $y$.
  In such situations, we define the #define[base-#text-math[$b$] logarithm] of $x$ to be $log_b (x) := y$.#apostille[$log_b (x)$]
]

It is important to note that $log_b (x)$ is _only_ defined when $x$ is a power of $b$; in those situations, $log_b (x)$ represents the natural number $y$ that you would have to raise $b$ to in order to obtain $x$.
This means that $log_b (x)$ for a fixed base $b gt.eq 2$ is #define[not necessarily defined] for every natural number $x$.
The reason it makes sense to think of this as a #quote[function] is actually because the exponential map with base $b gt.eq 2$ always maps _distinct inputs_ to _distinct outputs:_
$(x eq.not y) arrow.double (b^x eq.not b^y)$ for every $x$ and $y$.
This allows us to think about #quote[undoing] the exponential---taking the #quote[inverse] exponential.

#lemma(name: "Logarithms are Inverse Exponentials")[
  Let $b$ be a natural number satisfying $b gt.eq 2$.
  Base-$b$ logarithms undo base-$b$ powers.
  $
  forall x (log_b (b^x) = x)
  $
  Taking the base-$b$ exponential of a base-$b$ logarithm
  #marginalis[
    _This is only possible for powers of $b$!_
  ]
  is equivalent to doing nothing.
  $
  forall x (exists y (x = b^y) implies (b^(log_b (x)) = x))
  $
]

Because $log_b (circle.dotted)$ behaves like an #quote[inverse] for $b^(circle.dotted)$, it has a relationship with addition and multiplication similar to that of exponentiation, but in the #quote[reverse] direction.

#lemma[
  Let $b$ be a natural number such that $b gt.eq 2$, and suppose $x$ is a natural number satisfying the condition $exists y (x = b^y)$.
  Then, raising $x$ to a power within a logarithm is equivalent to linearly scaling that logarithm by the power.
  $
  forall n (log_b (x^n) = n dot log_b (x))
  $
]

#lemma(name: "Logarithms are Homomorphic")[
  Let $b$ be a natural number such that $b gt.eq 2$.
  Suppose $x$ and $y$ are arbitrary natural numbers satisfying $exists z (x = b^z)$ and $exists z (y = b^z)$.
  The following equality then holds.
  $
  log_b (x dot y) = log_b (x) + log_b (y)
  $
  This tells us that logarithms split additively over products when possible.
]

#theorem(name: "Change of Base")[
  Let $k$ and $ell$ be natural numbers such that $k gt.eq 2$ and $ell gt.eq 2$ satisfying the condition $exists j (ell = k^j)$.
  Then, for any natural number $x$ satisfying $exists y (x = k^y)$ and $exists y (x = ell^y)$, the following identity holds.
  $
  log_k (ell) dot log_ell (x) = log_k (x)
  $
]

These theorems about logarithms all have various preconditions requiring certain numbers to be powers of other numbers, which is unfortunately necessary because our universe of discourse contains _only_ natural numbers.
However, as it turns out, these theorems are all still _true_ in _any_ algebraic structure that implements #quote[addition] $circle.dotted + circle.dotted$, #quote[multiplication] $circle.dotted dot circle.dotted$, and #quote[exponentiation] $circle.dotted^(circle.dotted)$ consistent with the operations we have studied for natural numbers.
This means that, in the future, if we were to consider an algebraic structure like the _real numbers,_ for example, these theorems would become much more powerful (because the preconditions to all of these theorems would be satisfied _almost always_ in a structure like the _reals._)

== Iteration

// #let smash(body, side: center) = math.display(
//   box(width: 0pt, align(
//     side.inv(),
//     box(width: float.inf * 1pt, $ script(body) $))
//   )
// )

#definition(name: "Iterated Sums")[
  Given an arbitrary sequence of natural numbers $a_0$, $a_1$, $a_2$, ..., and any two natural numbers $n$ and $m$, we recursively define below what it means to iterate the addition operation $+$ over a contiguous finite segment of this sequence using the $Sigma$ symbol.
  #apostille[$Sigma$]
  // $
  // #grid(
  //   align: (center + horizon, left + horizon),
  //   columns: (auto, auto),
  //   column-gutter: 0.3em,
  //   row-gutter: 0.8em,
  //   $ sum_(i = n + suc(m))^(n) a_i $, $ := 0 $,
  //   $ sum_(i = n)^(n + 0) a_i $,      $ := a_n $,
  //   $ sum_(i = n)^(n + suc(m)) a_i $, $ := (sum_(i = n)^(n + m) a_i) + a_(n + suc(m)) $
  // )
  // $
  $
  &#h(-0.4em)sum_(i = n + suc(m))^(n) #h(-1em) a_i &&:= 0 \
  &#h(1em) sum_(i = n)^(n + 0) a_i      &&:= a_n \
  &sum_(i = n)^(n + suc(m)) #h(-0.8em) a_i &&:= (sum_(i = n)^(n + m) a_i) + a_(n + suc(m))
  $
]

Let's briefly explain the notation above by looking at the _second_ and _third_ lines first; we will return to the _first_ line afterwards.
The $Sigma$ represents the fact that we are iterating the $+$ operation; above and below $Sigma$ are the #quote[limits] of this summation.
The #quote[lower limits of summation] for the second and third line look something like $i = n$, indicating that the variable $i$ within the #quote[body] of the summation begins at $n$.
We then iterate through the values in the sequence $a_n$, $a_(n + 1)$, $a_(n + 2)$, ... until the reach the #quote[upper limit of summation,] applying the $+$ operation as we go.

The _base case_ of our recursion is on the second line.
Here, the upper limit is $n + 0$, which is just $n$; this means we begin at $a_n$ and stop at $a_n$, so our result is just the $n$#super[th] term in the sequence $a_n$.

The _recursive case_ of our definition is on the third line.
There, the upper limit is $n + suc(m)$, indicating we start from the $n$#super[th] term in the sequence and continue until the $(n + suc(m))$#super[th] term, computing the following.
$
a_n + a_(n + 1) + ... + a_(n + m) + a_(n + suc(m))
&= (a_n + a_(n + 1) + ... + a_(n + m))  & + a_(n + suc(m)) \
&= (sum_(i = n)^(n + m) a_i)            & + a_(n + suc(m)) \
$

Now, returning to the first line: this represents a _degenerate case_---corresponding to what's typically called an #quote[empty sum]---in which the lower limit of summation is _strictly greater_ than the upper limit of summation.
In this situation, we want to define this in such a way that the #quote[empty sum] captures the idea of #quote[doing nothing.]
Since zero---the additive identity---is the number that corresponds with #quote[doing nothing with respect to addition,] it should feel perfectly reasonable to define the output of an empty sum to be $0$, a number that does nothing with respect to the iterated operation.

#lemma(name: "Gauss' Little Formula")[
  For every natural number $n$, we have $display(2 dot sum_(i = 0)^(n) i = n dot (n + 1))$.
]
#proof[
  We will show $2 dot sum_(i = 0)^(n) i = n dot (n + 1)$ by induction.
  #case-basis[
    We need to show $2 dot sum_(i = 0)^(0) i = 0 dot (0 + 1)$.
    Witness now the following argument.
    $
    2 dot sum_(i = 0)^(0) i &= 2 dot 0       &&quad #math-text[by definition of] Sigma \
                            &= 0             &&quad #math-text[since] forall x (x dot 0 = 0) \
                            &= 0 dot 1       &&quad #math-text[since] forall x (0 dot x = 0) \
                            &= 0 dot (0 + 1) &&quad #math-text[because] forall x (0 + x = x) \
    $
    It should now be clear that $2 dot sum_(i = 0)^(0) i = 0 dot (0 + 1)$ as desired.
  ]
  #case-inductive[
    Let $k$ be a natural number.
    Assume that $2 dot sum_(i = 0)^(k) i = k dot (k + 1)$.
    We now need to show that $2 dot sum_(i = 0)^(k + 1) i = (k + 1) dot ((k + 1) + 1)$.
    We begin on the left and observe.
    $
    2 dot sum_(i = 0)^(k + 1) i &= 2 dot ((sum_(i = 0)^(k) i) + (k + 1)) &&quad #math-text[by definition of] Sigma \
                                &= 2 dot (sum_(i = 0)^(k) i) + 2 dot (k + 1) &&quad #math-text[by distributivity of] dot #math-text[over] + \
                                &= k dot (k + 1) + 2 dot (k + 1) &&quad #math-text[by the _inductive hypothesis_] \
                                &= (k + 1) dot k + (k + 1) dot 2 &&quad #math-text[by commutativity of] dot \
                                &= (k + 1) dot (k + 2)           &&quad #math-text[by distributivity of] dot #math-text[over] + \
                                &= (k + 1) dot (k + (1 + 1))     &&quad #math-text[because] 1 + 1 = 2 \
                                &= (k + 1) dot ((k + 1) + 1)     &&quad #math-text[by associativity of] + \
    $
    As a result, we have $2 dot sum_(i = 0)^(k + 1) i = (k + 1) dot ((k + 1) + 1)$ as desired.
  ]
  We therefore conclude $2 dot sum_(i = 0)^(n) i = n dot (n + 1)$ for every natural number $n$ by _Axiom 4._
]

#theorem(name: "Geometric Sums Formula")[
  Let $x$ be an arbitrary natural number $x$ such that $x gt 0$.
  Then, for every natural number $n$, the following equality holds.
  $
  (x - 1) dot sum_(i = 0)^(n) x^i = x^(n + 1) - 1
  $
]
#proof[
  Fix an arbitrary natural number $x$ such that $x gt 0$.
  We proceed by induction.
  #case-basis[
    We will first prove that $(x - 1) dot sum_(i = 0)^(0) x^i = x^(0 + 1) - 1$.
    Let us observe.
    $
    (x - 1) dot sum_(i = 0)^(0) x^i &= (x - 1) dot (x^0) &&quad #math-text[by definition of] Sigma \
                                    &= (x - 1) dot 1     &&quad #math-text[by definition of exponentiation] \
                                    &= x - 1             &&quad #math-text[since] forall n (n dot 1 = n) \
                                    &= x^1 - 1           &&quad #math-text[since] forall n (n = n^1) \
                                    &= x^(0 + 1) - 1     &&quad #math-text[because] 0 + 1 = 1 \
    $
    This then shows us that $(x - 1) dot sum_(i = 0)^(0) x^i = x^(0 + 1) - 1$, which is what we needed.
  ]
  #case-inductive[
    Let $k$ be a natural number.
    Assume $(x - 1) dot sum_(i = 0)^(k) x^i = x^(k + 1) - 1$.
    Check this out.
    $
    (x - 1) dot sum_(i = 0)^(k + 1) x^i &= (x - 1) dot (sum_(i = 0)^(k) x^i + x^(k + 1))
                                        &&quad #math-text[by definition of] Sigma \
                                        &= (x - 1) dot sum_(i = 0)^(k) x^i + (x - 1) dot x^(k + 1)
                                        &&quad #math-text[by distributing] dot #math-text[over] + \
                                        &= (x^(k + 1) - 1) + (x - 1) dot x^(k + 1)
                                        &&quad #math-text[by the _inductive hypothesis_] \
                                        // &= (x^(k + 1) - 1) + (x dot x^(k + 1) - 1 dot x^(k + 1))
                                        // &&quad #math-text[by distributing] dot #math-text[over] + \
                                        // &= (x^(k + 1) - 1) + (x^(k + 1) dot x - 1 dot x^(k + 1))
                                        // &&quad #math-text[by commutativity of] dot \
                                        // &= (x^(k + 1) - 1) + (x^((k + 1) + 1) - 1 dot x^(k + 1))
                                        // &&quad #math-text[by definition of exponentiation] \
    $
    The rest is just simplification.
    We show those details below.
    #fullblock({
      // show math.equation: set block(breakable: true)
      [
      $
      (x^(k + 1) - 1) + (x - 1) dot x^(k + 1) &= (x^(k + 1) - 1) + x^(k + 1) dot (x - 1)
                                              &&quad #math-text[by commutativity of] dot \
                                              &= (x^(k + 1) - 1) + (x^(k + 1) dot x - x^(k + 1) dot 1)
                                              &&quad #math-text[by distributing] dot #math-text[over] - \
                                              &= (x^(k + 1) - 1) + (x^((k + 1) + 1) - x^(k + 1) dot 1)
                                              &&quad #math-text[by definition of exponentiation] \
                                              &= (x^(k + 1) - 1) + (x^((k + 1) + 1) - x^(k + 1))
                                              &&quad #math-text[since] forall n (n dot 1 = n) \
                                              &= (x^((k + 1) + 1) - x^(k + 1)) + (x^(k + 1) - 1)
                                              &&quad #math-text[by commutativity of] + \
                                              &= ((x^((k + 1) + 1) - x^(k + 1)) + x^(k + 1)) - 1
                                              &&quad #math-text[by associativity of] + #math-text[with] - \
                                              &= x^((k + 1) + 1) - 1
                                              &&quad #math-text[by] forall n forall m (m lt.eq n arrow.double (n - m) + m = n) \
      $
    ]})
    _Finally,_ this shows $(x - 1) dot sum_(i = 0)^(k + 1) x^i = x^((k + 1) + 1) - 1$, finishing our inductive step.
  ]
  We therefore conclude $(x - 1) dot sum_(i = 0)^(n) x^i = x^(n + 1) - 1$ for every $n$ by _Axiom 4_.
]

#definition(name: "Iterated Products")[
  Given an arbitrary sequence of natural numbers $a_0$, $a_1$, $a_2$, ..., and any two natural numbers $n$ and $m$, we recursively define below what it means to iterate multiplication $dot$ over a contiguous finite segment of this sequence using the $Pi$ symbol.
  #apostille[$Pi$]
  $
  &#h(-0.4em)product_(i = n + suc(m))^(n) #h(-1em) a_i &&:= 1 \
  &#h(1em) product_(i = n)^(n + 0) a_i      &&:= a_n \
  &product_(i = n)^(n + suc(m)) #h(-0.8em) a_i &&:= (product_(i = n)^(n + m) a_i) dot a_(n + suc(m))
  $
]
