#import "@local/manuscript:0.1.0" as manuscript: *

#show: article.with(
  author: "Daniel Gonzalez Cedre",
  doctype: "Lecture Note",
  title: "A Theory of Arithmetic",
  number: 5,
  date: datetime(year: 2026, month: 09, day: 11),
)

= A Theory of Arithmetic

Having developed a working understanding of the language of the first-order logic and what the rules for the #quote[equality] predicate are, we are finally ready to study our first mathematical theory: the _first-order theory of arithmetic according to Peano._
#marginalis[This is named after #hyperlink("https://en.wikipedia.org/wiki/Giuseppe_Peano")[Giuseppe Peano]_._]
#marginalis[
  Actually, this is a lie.
  If we wanted this to actually be the first-order theory usually called #quote[Peano arithmetic,] we would need to transform our definitions for addition and multiplication---which we will see below soon---from #emph[definitions] into #emph[axioms,] and include $+$ and $dot$ as binary functional symbols in the syntax of the theory.
  None of this is #emph[actually] significant for us, and recursive definitions will play a large role in this course, so we instead choose to introduce $+$ and $dot$ as definitions rather than axioms.
]
As discussed previously, this requires us to specify a few things up-front.

We will take a universe of discourse consisting of all and only those objects that provably exist.
The members of our universe will be referred to as #define(end: ".")[natural numbers]

We will use the constant symbol #quote[$0$]#apostille[$0$] to denote a particular natural number, who we call #quote[zero,] and whose fundamental properties are given by the axioms of arithmetic.

We will not initially consider any predicate symbols other than the binary $=$ predicate for #quote[equality] that we are familiar with from our study of the first-order logic.
#marginalis[
  We will, of course, eventually want to study concepts such as #quote[less than or equal] and #quote[being prime,] but we will incorporate these ideas as _definitions within our theory_ in terms of the primitive notions we are introducing now.
]

We will introduce one unary functional symbol #quote[$frak("suc")$.]
Given an arbitrary natural number $x$, we denote by $suc(x)$#apostille[$suc(x)$] the #quote[next number after $x$.]
We will not be more specific than that, but the precise meaning of what #quote[next] means will be revealed, in part, by the axioms we write below and the properties that $0$ is meant to embody.

== Axiomatizing the Structure of a Discrete Line

This theory is meant to describe the fundamental nature of the #quote[nonnegative whole numbers,] along with their basic algebraic operations, and the consequences that follow.
To that end, and for the sake of understanding the axioms that follow, we should try to have a _picture_ in our heads because this #quote[fundamental nature] is actually, secretly, about something much more important than #quote[numbers.]
What we are trying to understand is the following #emph[#strong[structure].]

#import "number-line.typ": natural-numbers
#figure(
  natural-numbers,
  caption: [
    The abstract structure of the natural number line.
    Any point on this line can be reached by starting at zero and taking a finite number of discrete, consecutive steps in one direction.
  ]
)

Notice the _shape_ of the natural number line.
The important aspect of this structure is the _arrangement_ of the numbers on this line with respect to one another.
Crucially, the line #emph[#strong[begins at zero],] and #emph[#strong[proceeds in one direction]] from there on _forever_ by taking #emph[#strong[discrete steps]] one-at-a-time.
These properties are what fundamentally characterize #quote[the natural numbers] and the #quote[arithmetic] we perform with those #quote[numbers,] so this structure is what we want to encode with our axioms for arithmetic.

The first axiom, then, asserts explicitly that $0$ is a natural number by telling us that $0$ is equal to something in our universe of discourse.

#axiom(number: 0, name: "Zero is a Natural Number", label: <ax-0>)[
  $exists x (x = 0)$.
]

Now, we would like to say that $0$ is the #quote[first] natural number.
To express this idea, we must rely on the $suc(dot)$ functional symbol we introduced.
There are several different, yet equivalent, ways we could now write #quote[zero is the first natural number,] but the simplest might be to say that #emph[zero has no predecessors.]
Instead of introducing a whole new symbol for the concept of a #quote[predecessor,] we can use our successor functional symbol to say that #quote[no natural number has zero as its successor.]

#axiom(name: "Zero is the First Natural Number", label: <ax-1>)[
  $forall x (suc(x) eq.not 0)$.
]

These first two axioms establish that our natural number line starts at zero.
Of course, we also need _the rest_ of the numbers to exist.
We can ensure this by asserting that, whenever we have a natural number $x$, the _successor_ of $x$ must exist.

#axiom(name: "The Successor of a Natural Number is a Natural Number", label: <ax-2>)[
  $forall x exists y (y = suc(x))$.
]

Up until this point we know, at a minimum, the natural number line looks as follows.

#import "number-line.typ": successor-numbers
#figure(
  successor-numbers,
  caption: [
    The first natural number $0$ along with its first two successors.
  ]
)

Being required to continue to use #quote[$frak("suc")$] to refer to the things on this line will get incredibly tedious remarkably quickly, so we introduce the following definitions.
$
1 &:= suc(0) \
2 &:= suc(1) \
3 &:= suc(2) \
4 &:= suc(3) \
  &thin thin dots.v
$
We proceed from this point forward with the understanding that these definitions go on _forever,_ assigning to each position on the natural number line the symbol the we would _normally_ think of as representing #quote[the number] that belongs at that position.

Immediately, one might begin to wonder: do any of these symbols $1$, $2$, $3$, ..., actually refer to _anything real?_
Are these _natural numbers?_
Let's verify that $1$ actually exists.

#lemma(name: "One is a Natural Number", delimiter: "")[
  $exists x (x = 1)$.
]
#proof[
  Recall that $exists x (x = 0)$ from @ax-0.
  In otherwords, there exists some natural number $x$ such that $x = 0$.
  Now, remembering @ax-2, we can infer that there exists a natural number $y$ such that $y = suc(x)$.
  Since $x = 0$, this obviously implies $y = suc(0)$.
  Again, relying on our eiditic memory, we remember that $suc(0) = 1$ by definition.
  This then means $y = 1$.
  We thus conclude that $exists z (z = 1)$.
]

#axiom(name: "Natural Numbers with Equal Successors are Equal", label: <ax-3>)[
  $forall x forall y (suc(x) = suc(y) implies x = y)$.
]

#axiom(name: "Schema of Weak Induction", label: <ax-4>)[
  For any well-formed formula $phi$ with at most one free variable, the following holds.
  $ (phi(0) and forall k (phi(k) arrow.double phi(suc(k)))) implies forall x (phi(x)) $
]

// #theorem(delimiter: none)[
//   $forall n (n = 0 or exists m (n = suc(m)))$.
// ]
// #proof[
//   Let $n$ be an arbitrary natural number.
//   Notice that either $n = 0$ or $n eq.not 0$, so we take two cases.
//   #case[
//     Suppose that $n = 0$.
//     Then, we clearly know $n = 0 or exists m (n = suc(m))$.
//   ]
// ]
// #proof[
//   We will prove $forall n (n = 0 or exists m (n = suc(m)))$ by weak induction.
//   #case-basis[
//     Notice that $0 = 0$.
//     Therefore, we know $0 = 0 or exists m (n = suc(m))$.
//   ]
//   #case-inductive[
//     Let $k$ be a natural number.
//   ]
// ]

== The Fundamental Algebraic Structure

=== Addition

#definition(name: "Addition")[
  For every pair of natural numbers $n$ and $m$, we define the following binary _operation._
  $
  &n + 0      &&:= n \
  &n + suc(m) &&:= suc(n + m) \
  $
  We call this binary operation #quote[addition] and use the notation $n + m$ to denote #quote[the sum of $n$ with $m$] when $n$ and $m$ are natural numbers.
]

#lemma(delimiter: "")[
  $1 + 1 = 2$.
]
#proof[
  Recall that $1 = suc(0)$ by definition, and that $2 = suc(1)$ by definition.
  We can leisurely observe the following deduction.
  $
  1 + 1 &= 1 + suc(0) &&wide #math-text[by definition of] 1 \
  &= suc(1 + 0) &&wide #math-text[by definition of addition] \
  &= suc(1)     &&wide #math-text[by definition of addition] \
  &= 2          &&wide #math-text[by definition of] 2 \
  $
  Therefore, we can conclude that $1 + 1 = 2$.
]

#lemma(delimiter: "")[
  $forall x (x + 1 = suc(x))$.
]
#proof[
  Let $n$ be an arbitrary natural number.
  We must observe the following.
  $
  n + 1 &= n + suc(0) &&wide #math-text[by definition of] 1 \
  &= suc(n + 0) &&wide #math-text[by definition of addition] \
  &= suc(n)     &&wide #math-text[by definition of addition] \
  $
  This shows us that $n + 1 = suc(n)$.
  We therefore conclude $forall x (x + 1 = suc(x))$.
]

#lemma(delimiter: "")[
  $forall x (suc(x) = 1 + x)$.
]
#proof[
  We will prove $forall x (1 + x = suc(x))$ by weak induction.
  #case-basis[
    The definition of the symbol #quote[$1$] tells us that $suc(0) = 1$, and the definition of addition implies $1 = 1 + 0$.
    Therefore, we know $suc(0) = 1 + 0$.
  ]
  #case-inductive[
    Let $k$ be an arbitrary natural number.
    Assume $1 + k = suc(k)$.
    #marginalis[This is our _inductive hypothesis._]
    Now, observe.
    $
    1 + suc(k) &= suc(1 + k) &&wide #math-text[by definition of addition] \
               &= suc(suc(k)) &&wide #math-text[by the #emph[inductive hypothesis]] \
    $
    This shows us that $1 + suc(k) = suc(suc(k))$ as required.
  ]
  Therefore, by @ax-4#emph[,] we conclude that $forall n (1 + n = suc(n))$ as desired.
]

#theorem(name: "Zero is the Additive Identity")[
  The natural number $0$ is an _identity element_ with respect to _addition._
  This means that adding $0$ to any natural number leaves that number unchanged.
  $ forall x (x + 0 = x) and forall x (0 + x = x) $
  In fact, zero is the _only_ natural number with this property important property.
  $ forall x ((forall y (x + y = y) and forall y (y + x = y)) implies x = 0) $
]

#theorem(name: "Associativity of Addition")[
  The order in which we carry out a sequence of repeated additions does not impact the final result.
  This makes $+$ an example of what's called an _associative_ operation.
  $
  forall x forall y forall z (x + (y + z) = (x + y) + z)
  $
]

#theorem(name: "Commutativity of Addition")[
  The order in which we provide the inputs to addition does not affect the output.
  $
  forall x forall y (x + y = y + x)
  $
]

=== Multiplication

#definition(name: "Multiplication")[
  For every pair of natural numbers $n$ and $m$, we define the following binary operation.
  $
  &n dot 0      &&:= 0 \
  &n dot suc(m) &&:= (n dot m) + n \
  $
  We call this binary operation #quote[multiplication] and use the notation $n dot m$ to denote #quote[the product of $n$ with $m$.]
  If the context is clear, it is common to simplify the notation by writing $n m$ to mean $n dot m$, though this should be done with care to avoid confusion.
  To simplify notation for mixed expressions involving both $dot$ and $+$, we adopt the convention that multiplication takes precedence over addition.
  This means we will consider $(x dot y) + z = x dot y + z$ to be _true_ for all natural numbers $x$, $y$, and $z$.
]

Multiplication was defined recursively in terms of addition.
If we closely analyze the above definition, we might actually realize that this definition encodes the idea that _multiplication is nothing more than repeated addition._
We can describe the relationship between multiplication and addition as follows.

#theorem(name: "Distributivity of Multiplication over Addition", label: <thm-dist>)[
  Multiplication on the right by a sum of two numbers is equivalent to adding together two products by #quote[distributing] the multiplication operation over the sum.
  $ forall x forall y forall z (x dot (y + z) = (x dot y) + (x dot z)) $
]

There are some even more surprising relationship between multiplication and addition.
For example, if we multiply using the _additive identity,_ then the result gets #quote[annihilated] and we just get the additive identity back.
We also cannot multiply nonzero numbers together to produce $0$---the only way to produce the additive identity as a product of two numbers is by annihilating one of them using zero.

#theorem[
  Multiplying by the zero, additive identity, annihilates the other number.
  The result then is zero, the additive identity, again.
  $ forall x (x dot 0 = 0) and forall x (0 dot x = 0) $
  Further, if a product of two numbers results in zero, then one of the two _factors_ of the product must have been zero.
  This is usually expressed by saying #quote[there are no nonzero zero-divisors.]
  $ forall x forall y (x dot y = 0 implies ((x = 0) or (y = 0))) $
]

If we squint our eyes and consider multiplication as an operation in its own right, #quote[forgetting] that multiplication is just iterated addition, we will notice that multiplication actually has many of the same properties that we discovered about addition.

#theorem(name: "One is the Multiplicative Identity")[
  The natural number $1$ is an _identity element_ with respect to _multiplication._
  This means that multiplying any natural number by $1$ leaves that number unchanged.
  $ forall x (x dot 1 = x) and forall x (1 dot x = x) $
]

#theorem(name: "Associativity of Multiplication")[
  The order in which we carry out a sequence of repeated multiplications does not impact the final result.
  This makes $dot$ yet another example of an _associative_ operation.
  $ forall x forall y forall z (x dot (y dot z) = (x dot y) dot z) $
]

#theorem(name: "Commutativity of Multiplication")[
  The order in which inputs are provided to multiplication does not affect the result.
  $ forall x forall y (x dot y = y dot x) $
]

Note that, thanks to commutativity, there is no meaningful distinction between #quote[distributivity on the #strong[right]] and #quote[distributivity on the #strong[left]] for multiplication over addition.
More precisely, for any natural numbers $a$, $b$, and $c$, not only do we know that $a dot (b + c) = (a dot b) + (a dot c)$ thanks to @thm-dist, but we also know that it works the other way: $(a + b) dot c = (a dot c) + (b dot c)$.

=== Putting Things in Order

#definition(name: "Inequality")[
  For every pair of natural numbers $n$ and $m$, we define the following _relation._
  $ n lt.eq m deff exists p (n + p = m) $
  We call this a #quote[weak inequality,] implying the idea of a #emph[strict inequality,] defined below.
  $
  n lt m    deff& n lt.eq m and n eq.not m \
            // iff & exists p (n + p = m and p eq.not 0) \
  $
]

Note the use of a new symbol $:arrow.double.l.r$#apostille[$:arrow.double.l.r$] in the above definition.
#marginalis[
  This symbol is usually verbalized as #quote[[...] if and only if, by definition, [...].]
]
In the same way that we use $:=$ and $=$ to distinguish between #emph[defining] and #emph[comparing] #strong[#emph[objects],] we use the symbols $:arrow.double.l.r$ and $arrow.double.l.r$ to distinguish between #emph[defining] and #emph[comparing] #strong[#emph[expressions].]

#lemma[
  For every pair of natural numbers $n$ and $m$, the following inequalities are equivalent.
  $
  n lt m &iff exists p (n + p = m and p eq.not 0) \
         &iff exists p ((n + p) + 1 = m)
  $
]

#corollary[
  For any natural number $n$ such that $0 lt n$, we have $exists m (m + 1 = n)$.
]

These orders have some very important properties.

#theorem(name: "The Weak Inequality of Natural Numbers is a Linear Order")[
  Because $x + 0 = x$ for every natural number $x$, the $lt.eq$ order on the natural numbers has a property we call #define(end: ",")[reflexivity] similar to our first axiom for equality.
  $ forall x (x lt.eq x) $
  However, unlike equality, the $lt.eq$ order is _not symmetric:_ we have $2 lt.eq 3$, but $3 lt.eq.not 2$.
  Instead, the $lt.eq$ order has a different property called #define(end: ".")[antisymmetry]
  $ forall x forall y ((x lt.eq y and y lt.eq x) implies x = y) $
  Finally, this order has a property we call #define(end: ".")[transitivity]
  $ forall x forall y forall z ((x lt.eq y and y lt.eq z) implies x lt.eq z) $
  These three properties make $lt.eq$ an example of a #define[partial order] on the natural numbers.
  There is one more property---often taken for granted---that ensures any two natural numbers can always be compared.
  This is called #define(end: ".")[totality]
  $
  forall x forall y (x lt.eq y or y lt.eq x)
  $
  An equivalent way to express this property, using the _strict_ version of inequality, is sometimes called #define(end: ".")[trichotomy]
  $ forall x forall y ((x = y) or (x lt y) or (y lt x)) $
  With all these properties, we call $lt.eq$ an example of a #define[linear order] on the naturals.
]

#theorem(name: "Monotonicity of Addition")[
  Adding the same number on both sides of an inequality #quote[preserves] the inequality.
  $ forall x forall y forall z (x lt.eq y implies x + z lt.eq y + z) $
]

#theorem(name: "Monotonicity of Multiplication")[
  Multiplying the same _natural_ number
  #marginalis[
    Note the importance of our universe of discourse for this discussion.
    If we had taken a universe of discourse that contained #quote[negative numbers,] whatever those are, then this theorem would no longer be _true_ as written.
  ]
  on both sides of an inequality #quote[preserves] the inequality, just as we saw before with addition.
  $ forall x forall y forall z (x lt.eq y implies x dot z lt.eq y dot z) $
]

// == Derived Operations

// #definition(name: "Exponentiation")[
//   For every pair of natural numbers $n$ and $m$, we make the following definition.
//   $
//   &n^0        &&:= 1 \
//   &n^(suc(m)) &&:= n^m dot n \
//   $
// ]

// == Curiosities

// #definition(name: "Factorial")[
//   henlo
// ]


