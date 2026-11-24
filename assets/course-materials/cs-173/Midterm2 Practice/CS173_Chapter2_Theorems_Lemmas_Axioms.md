# CS 173 - Chapter 2 theorems, lemmas, corollaries, and axioms - Fall 2026

**Scope:** Every numbered theorem, lemma, and corollary in the uploaded LN08-LN11: **49 entries**. This file also includes all **9 set-theory axioms numbered 0-8**, the three explicitly labeled *Noble Lies*, unnumbered results stated in the notes, and the theorem declared in PS06. Homework exercise claims are collected separately at the end so they are not mistaken for numbered lecture theorems. Statements are supplied without proofs.

**Coverage limit:** The fall notes index lists LN12, *Graph Theory*, but its linked PDF and Typst source both returned 404 on November 16, 2026. Graph material here is restricted to what the uploaded PS07 declares or asks students to establish. No unseen LN12 theorem is inferred.

**Conventions:** All unqualified variables range over sets. $\mathbb N$ includes $0$, $s(x)=x\cup\{x\}$, and $n=\{m\in\mathbb N\mid m<n\}$. The symbol $\#A$ denotes a finite numerical cardinality; $|A|\le|B|$ means that an injection $A\to B$ exists. Sources are the uploaded fall materials. Apparent errors are flagged where a statement needs correction; original labels and numbering are retained.

## Axioms of the course's set theory

### Axiom 0 - Infinity - LN09 p. 2; PS05

There exists a least inductive set:

$$
\exists N\Bigl[
0\in N\land(\forall n\in N)(s(n)\in N)
\land
\forall M\bigl((0\in M\land(\forall m\in M)(s(m)\in M))\Rightarrow N\subseteq M\bigr)
\Bigr].
$$

This is the form used in the lecture. The resulting unique set is denoted $\mathbb N$. LN08's preliminary proposal, that the natural numbers form a set, is replaced by this precise statement.

### Axiom 1 - Extensionality - LN08 p. 2

$$
\forall A\forall B\bigl(A=B\iff\forall x(x\in A\iff x\in B)\bigr).
$$

Equivalently, $A=B\iff(A\subseteq B\land B\subseteq A)$.

### Axiom 2 - Pairing - LN08 p. 4

$$
\forall A\forall B\exists P\forall x\bigl(x\in P\iff(x=A\lor x=B)\bigr).
$$

Thus $\{A,B\}$ exists for any two sets $A,B$, including $A=B$.

### Axiom 3 - Union - LN08 p. 5

$$
\forall\mathcal A\exists U\forall x\Bigl(
x\in U\iff\exists S(S\in\mathcal A\land x\in S)
\Bigr).
$$

Equivalently, $\bigcup\mathcal A$ exists for every set $\mathcal A$.

### Axiom Schema 4 - Separation - LN08 p. 8

For each eligible formula $\varphi$ with its other parameters fixed,

$$
\forall A\exists B\forall x\bigl(x\in B\iff(x\in A\land\varphi(x))\bigr).
$$

Equivalently, $\{x\in A\mid\varphi(x)\}$ exists whenever $A$ exists. This is bounded comprehension, not unrestricted set formation.

### Axiom 5 - Power - LN08 p. 9

$$
\forall A\exists P\forall S\bigl(S\in P\iff S\subseteq A\bigr).
$$

Thus $\mathcal P(A)$ exists for every set $A$.

### Axiom 6 - Regularity - LN09 p. 1

$$
\forall X\bigl(X\ne\varnothing\Rightarrow\exists y(y\in X\land X\cap y=\varnothing)\bigr).
$$

Equivalently, every nonempty set contains an element $y$ such that no element of the original set belongs to $y$.

### Axiom Schema 7 - Replacement - LN10 p. 4

For each eligible formula $\varphi(x,y)$ with its other parameters fixed,

$$
\forall X\Bigl[
(\forall x\in X)(\exists!y)\,\varphi(x,y)
\Rightarrow
\exists Y\forall y\bigl(y\in Y\iff\exists x\in X\,\varphi(x,y)\bigr)
\Bigr].
$$

The outputs of a definable, uniquely valued rule on an existing set form a set, even when an ambient set of outputs was not supplied in advance.

### Axiom 8 - Dichotomy / Dichotomy of Cardinalities - LN10 p. 4; PS06

$$
\forall A\forall B\bigl(|A|\le|B|\lor|B|\le|A|\bigr).
$$

There is an injection in at least one direction between any two sets. Both directions may exist.

## LN08 - A Theory of Sets

### Theorem 8.1 - Existence of Pairwise Unions - p. 6

$$
\forall A\forall B\exists U(U=A\cup B).
$$

The construction uses Pairing and the unary Union axiom, with $A\cup B=\bigcup\{A,B\}$.

### Lemma 8.1 - Commutativity and Associativity of Union - p. 6

For all sets $A,B,C$,

$$
A\cup B=B\cup A,
\qquad
A\cup(B\cup C)=(A\cup B)\cup C.
$$

### Theorem 8.2 - The Subset Relation Is a Partial Order - p. 7

For all sets $A,B,C$:

1. $A\subseteq A$.
2. $A\subseteq B$ and $B\subseteq A$ imply $A=B$.
3. $A\subseteq B$ and $B\subseteq C$ imply $A\subseteq C$.

These are reflexivity, antisymmetry, and transitivity, respectively.

### Lemma 8.2 - Inclusions Among Basic Set Operations - p. 7

For every $A,B$,

$$
A\cap B\subseteq A,
\qquad A\subseteq A\cup B,
\qquad A\setminus B\subseteq A,
$$

$$
A\setminus B\subseteq A\triangle B,
\qquad A\triangle B\subseteq A\cup B.
$$

### Theorem 8.3 - Existence of Intersections and Differences - p. 8

For any sets $A,B$, all three sets exist:

$$
A\cap B,\qquad A\setminus B,\qquad A\triangle B.
$$

Formally, each expression $T$ satisfies $\exists S(S=T)$. These are constructed by Separation from known ambient sets.

### Theorem 8.4 - Empty Sets Exist - p. 8

$$
\exists E\forall x(x\notin E).
$$

### Lemma 8.3 - The Empty Set Is Empty - p. 8

$$
\forall x(x\notin\varnothing).
$$

### Corollary 8.1 - The Empty Set Exists - p. 8

$$
\exists E(E=\varnothing).
$$

### Lemma 8.4 - The Empty Set Is Unique - p. 8

$$
\forall E\bigl((\forall x)(x\notin E)\Rightarrow E=\varnothing\bigr).
$$

### Theorem 8.5 - Identities Involving the Empty Set - p. 9

For every set $A$:

1. $\varnothing\subseteq A$, and $A\subseteq\varnothing\Rightarrow A=\varnothing$.
2. $A\cup\varnothing=A$, and $\bigcup\varnothing=\varnothing$.
3. $A\cap\varnothing=\varnothing$.
4. $A\setminus\varnothing=A$.
5. $\varnothing\setminus A=\varnothing$.
6. $A\triangle\varnothing=A$.

### Lemma 8.5 - Distinguished Members of a Power Set - p. 9

For every set $A$,

$$
\varnothing\in\mathcal P(A),
\qquad A\in\mathcal P(A).
$$

### Corollary 8.2 - Intersection and Union of a Power Set - p. 9

For every set $A$,

$$
\bigcap\mathcal P(A)=\varnothing,
\qquad
\bigcup\mathcal P(A)=A.
$$

### Additional unnumbered facts stated in LN08

For all sets $A,B$:

$$
A\triangle B=B\triangle A,
$$

$$
A\triangle B=(A\cup B)\setminus(A\cap B)
=(A\setminus B)\cup(B\setminus A).
$$

The source also notes that difference is not commutative in general: there are $A,B$ with $A\setminus B\ne B\setminus A$.

## LN09 - Setting the Foundation

### Theorem 9.1 - Sets Do Not Contain Themselves - p. 1

$$
\forall x(x\notin x).
$$

### Theorem 9.2 - Two Sets Cannot Both Contain Each Other - p. 1

$$
\forall x\forall y\neg(x\in y\land y\in x),
$$

equivalently, $\forall x\forall y(x\notin y\lor y\notin x)$.

### Lemma 9.1 - Arithmetic Axioms Recovered in Set Theory - p. 2

With $0=\varnothing$ and $s(x)=x\cup\{x\}$:

0. $(\exists x\in\mathbb N)(x=0)$.
1. $(\forall x\in\mathbb N)(s(x)\ne0)$.
2. $(\forall x\in\mathbb N)(\exists y\in\mathbb N)(y=s(x))$.
3. $(\forall x,y\in\mathbb N)(s(x)=s(y)\Rightarrow x=y)$.

### Theorem 9.3 - Characterization of the Natural Numbers - pp. 2-3

$$
(\forall n\in\mathbb N)\bigl(n=0\lor(\exists m\in\mathbb N)(n=s(m))\bigr).
$$

Every natural number is zero or a successor.

### Theorem 9.4 - Weak Induction - p. 3

For an eligible formula $\varphi$,

$$
\Bigl(\varphi(0)\land(\forall k\in\mathbb N)(\varphi(k)\Rightarrow\varphi(s(k)))\Bigr)
\iff
(\forall n\in\mathbb N)\,\varphi(n).
$$

### Corollary 9.1 - Strong Induction - p. 3

For an eligible formula $\varphi$,

$$
\Bigl[(\forall k\in\mathbb N)\Bigl(
(\forall j\in\mathbb N)(j<k\Rightarrow\varphi(j))
\Rightarrow\varphi(k)\Bigr)\Bigr]
\iff
(\forall n\in\mathbb N)\,\varphi(n).
$$

At $k=0$, the hypothesis about smaller naturals is vacuous, so this formulation includes the base case.

### Theorem 9.5 - Natural Numbers Are Initial Segments - p. 3

$$
(\forall n\in\mathbb N)\quad
n=\{m\in\mathbb N\mid m<n\}.
$$

### Theorem 9.6 - The Natural Numbers Form an Ordered Semiring - p. 4

For all $x,y,z\in\mathbb N$:

1. $0\in\mathbb N$ and $0+x=x+0=x$.
2. $x+(y+z)=(x+y)+z$.
3. $x+y=y+x$.
4. $1\in\mathbb N$ and $1x=x1=x$.
5. $x(yz)=(xy)z$.
6. $x(y+z)=xy+xz$ and $(x+y)z=xz+yz$.
7. $0x=x0=0$.
8. $xy=yx$.
9. $x\le y\Rightarrow x+z\le y+z$.
10. $x\le y$ and $0\le z$ imply $xz\le yz$ and $zx\le zy$.

The natural order is a linear order, as stated in the accompanying prose. Items 1-3 make $(\mathbb N,+)$ a commutative monoid; items 4-5 and 8 do the same for multiplication. The remaining algebraic laws give the commutative semiring structure, and 9-10 give compatibility with order.

### Theorem 9.7 - Addition and Multiplication Are Cancellative - p. 4

For $x,y,z\in\mathbb N$,

$$
x+z=y+z\Rightarrow x=y,
$$

$$
xz=yz\land z\ne0\Rightarrow x=y.
$$

The accompanying discussion also states cancellation for inequalities:

$$
x+z\le y+z\iff x\le y,
$$

and, when $z>0$,

$$
xz\le yz\iff x\le y.
$$

### Theorem 9.8 - The Natural Numbers Form a Semidomain - p. 5

There are no nonzero zero-divisors:

$$
(\forall x,y\in\mathbb N)(xy=0\Rightarrow x=0\lor y=0).
$$

### Theorem 9.9 - The Integers Are an Ordered Ring - p. 5

The ordinary addition, multiplication, and order on $\mathbb Z$ satisfy the ordered-ring laws described in LN09. In addition to the semiring laws, every integer has an additive inverse:

$$
(\forall x\in\mathbb Z)(\exists y\in\mathbb Z)(x+y=0).
$$

Thus $(\mathbb Z,+)$ is a commutative group. The order is preserved by addition and by multiplication by nonnegative integers. **Qualification:** multiplication by a negative integer reverses inequalities; the source's shorthand about preserving order is not an assertion of preservation under arbitrary negative multipliers.

### Theorem 9.10 - The Rationals Are an Ordered Field - p. 6

$$
(\mathbb Q,+,\cdot,\le)\text{ is an ordered field}.
$$

In particular, every nonzero rational has a rational multiplicative inverse. **Source status:** this theorem title is present, but the uploaded body is unfinished. No additional unnamed theorem numbers or missing exposition are invented here.

### Noble Lie 9.1 - Identifying Naturals with Integers - p. 5

$$
\mathbb N\subseteq\mathbb Z.
$$

### Noble Lie 9.2 - Identifying Integers with Rationals - p. 6

$$
\mathbb Z\subseteq\mathbb Q.
$$

### Noble Lie 9.3 - Identifying Rationals with Reals - p. 6

$$
\mathbb Q\subseteq\mathbb R.
$$

**Status of all three:** the notes explicitly label these conventional identifications *Noble Lies*, because literal membership depends on the chosen set-theoretic encodings. The intended mathematical content is that copies of the smaller number systems embed into the larger ones with their usual structure. These are not additional ZFC axioms or numbered theorems.

### Additional unnumbered observation - LN09 p. 2

The least inductive set specified by Axiom 0 is unique. If $N,N'$ are both inductive and each lies inside every inductive set, then $N\subseteq N'$ and $N'\subseteq N$, hence $N=N'$.

## LN10 - Functions and Measurements

### Theorem 10.1 - Characteristic Property of Ordered Pairs - p. 1

$$
(a,b)=(x,y)\iff(a=x\land b=y).
$$

All four variables range over arbitrary sets. In particular, $(a,b)=(b,a)$ iff $a=b$.

### Lemma 10.1 - Extraction of Coordinates - p. 1

For $p=(x,y)=\{\{x\},\{x,y\}\}$,

$$
x=\bigcup\bigcap p.
$$

If $x\ne y$, then

$$
y=\bigcup\Bigl((\bigcup p)\setminus(\bigcap p)\Bigr).
$$

When $x=y$, the first-coordinate extraction also recovers the second coordinate. The supporting identities used in PS05 are $\bigcap p=\{x\}$ and $\bigcup p=\{x,y\}$.

### Theorem 10.2 - Existence of Cartesian Products - p. 1

$$
\forall A\forall B\exists P(P=A\times B).
$$

### Lemma 10.2 - Inclusion Implies Cardinal Comparison - p. 4

$$
\forall A\forall B(A\subseteq B\Rightarrow|A|\le|B|).
$$

The witness is the inclusion map $A\to B$, $a\mapsto a$.

### Corollary 10.1 - An Injected Set Has a Copy Inside the Codomain - p. 4

$$
\forall A\forall B\bigl(|A|\le|B|\Rightarrow\exists C(C\subseteq B\land|A|=|C|)\bigr).
$$

For an injection $f:A\to B$, take $C=\operatorname{ran}(f)$ and give the same rule codomain $C$.

### Lemma 10.3 - Reflexivity of Equal Cardinality - p. 5

$$
\forall X\quad |X|=|X|.
$$

The identity function supplies a bijection.

### Theorem 10.3 - Injections, Surjections, and Inverses - p. 6

Let $X,Y$ be **nonempty** sets and $f:X\to Y$.

1. $f$ is injective iff there is a surjective $g:Y\to X$ satisfying
   $$g\circ f=\operatorname{id}_X.$$
2. $f$ is surjective iff there is an injective $g:Y\to X$ satisfying
   $$f\circ g=\operatorname{id}_Y.$$
3. $f$ is bijective iff there is a unique bijection $g:Y\to X$ satisfying both
   $$g\circ f=\operatorname{id}_X,\qquad f\circ g=\operatorname{id}_Y.$$

The two-sided inverse is denoted $f^{-1}$. The nonemptiness hypotheses are part of the displayed theorem; dropping them indiscriminately creates an exception for injections from an empty domain to a nonempty codomain.

### Theorem 10.4 - Cantor-Schroder-Bernstein - pp. 6-7

$$
\forall X\forall Y\bigl((|X|\le|Y|\land|Y|\le|X|)\Rightarrow|X|=|Y|\bigr).
$$

Injections in both directions imply existence of a bijection. The notes explicitly state that Axiom 8 is not needed to prove this theorem.

### Corollary 10.2 - Sets Are Almost Partially Ordered by Relative Cardinalities - p. 7

For arbitrary sets $A,B,C$:

1. $|A|\le|A|$.
2. $|A|\le|B|$ and $|B|\le|A|$ imply $|A|=|B|$.
3. $|A|\le|B|$ and $|B|\le|C|$ imply $|A|\le|C|$.

The word *almost* matters: item 2 concludes equality of cardinalities, not equality of the underlying sets.

### Additional unnumbered results stated in LN10

**Range is contained in codomain - p. 2.** For $f:X\to Y$,

$$
\operatorname{ran}(f)\subseteq Y.
$$

**Existence of greatest lower and least upper bounds - pp. 2-3.** Every nonempty below-bounded subset of $\mathbb R$ has a real infimum; every nonempty above-bounded subset has a real supremum. Analogous existence statements hold for subsets of $\mathbb Z$ or $\mathbb N$ with the corresponding bounds and codomains. They do not hold for arbitrary suitably bounded subsets of $\mathbb Q$ with rational codomain. **Source clarification:** the p. 3 example $\{q\in\mathbb Q\mid q^2>2\}$ is itself unbounded above; a bounded example illustrating the intended failure of rational suprema is $\{q\in\mathbb Q\mid q\ge0,\ q^2<2\}$, whose real supremum is $\sqrt2\notin\mathbb Q$.

**Identity laws for composition - p. 5.** For $f:X\to Y$,

$$
\operatorname{id}_Y\circ f=f=f\circ\operatorname{id}_X.
$$

**Associativity of composition - p. 6.** For $f:W\to X$, $g:X\to Y$, $h:Y\to Z$,

$$
h\circ(g\circ f)=(h\circ g)\circ f.
$$

This concerns parenthesization, not permission to change the order of the functions.

**Uniqueness of a two-sided inverse - p. 6.** A function has at most one two-sided inverse.

## LN11 - Learning How to Count

### Lemma 11.1 - Unique Finite Cardinal Representative - p. 1

For every **finite** set $X$,

$$
(\exists!n\in\mathbb N)(|n|=|X|).
$$

**Source correction:** the uploaded display writes $\forall X$ without restricting $X$ to finite sets. That would incorrectly make every set finite and contradict Theorem 11.1. The surrounding discussion identifies the intended finite-set hypothesis.

### Theorem 11.1 - The Set of Natural Numbers Is Infinite - p. 2

$$
\mathbb N\text{ is infinite}.
$$

### Theorem 11.2 - Pigeonhole Principle - p. 2

The source gives three forms:

1. **Surjection comparison:** for $B\ne\varnothing$,
   $$|A|<|B|\iff\text{there is no surjection }A\to B.$$
2. **Injection comparison:** for arbitrary $A,B$,
   $$|A|>|B|\iff\text{there is no injection }A\to B.$$
3. **Generalized finite form:** for finite $A,B$ with $B\ne\varnothing$ and any $f:A\to B$, some $b\in B$ satisfies
   $$
   \#\{a\in A\mid f(a)=b\}
   \ge\left\lceil\frac{\#A}{\#B}\right\rceil
   =\left\lfloor\frac{\#A-1}{\#B}\right\rfloor+1.
   $$

**Source qualification:** the upload omits the empty-target qualifications in 1 and 3. A nonempty set has no function to $\varnothing$, while the displayed quotient in 3 is undefined when $B=\varnothing$. The restrictions above make the stated forms valid. For nonempty $B$, the first form uses the course's set-theoretic framework, including choice where needed for arbitrary sets.

### Lemma 11.2 - Subsets of Finite Sets Are Finite - p. 2

If $A$ is finite and $B\subseteq A$, then $B$ is finite.

### Corollary 11.1 - Bounded Discrete Sets Are Finite - p. 2

1. If $N\subseteq\mathbb N$ is nonempty and bounded above, then $N$ is finite.
2. If $Z\subseteq\mathbb Z$ is nonempty and bounded both above and below, then $Z$ is finite.

The empty cases are finite as well; the displayed source statement explicitly assumes nonemptiness.

### Corollary 11.2 - Cardinalities of Differences - p. 3

Let $A$ be finite and $B$ be any set.

1. $\#(A\setminus B)\le\#A$.
2. If $B$ is finite, then $\#(A\setminus B)\ge\#A-\#B$.
3. If $B\subseteq A$, then $\#(A\setminus B)=\#A-\#B$.

The difference on the right in 2 may be negative; the inequality is interpreted in the integers.

### Theorem 11.3 - The Inclusion-Exclusion Theorem - p. 3

For a finite family $\mathcal A$ of finite sets,

$$
\#\left(\bigcup\mathcal A\right)
=\sum_{\substack{\mathcal B\subseteq\mathcal A\\\mathcal B\ne\varnothing}}
(-1)^{\#\mathcal B+1}\,
\#\left(\bigcap\mathcal B\right).
$$

For an indexed list $A_0,\ldots,A_{n-1}$ of finite sets, the corresponding indexed form is

$$
\#\left(\bigcup_{i=0}^{n-1}A_i\right)
=\sum_{\substack{\varnothing\ne J\subseteq\{0,\ldots,n-1\}}}
(-1)^{\#J+1}\,
\#\left(\bigcap_{j\in J}A_j\right).
$$

**Source correction:** the final intersection must be over the sets $A_j$ selected by the indices in $J$, not the intersection of the indices themselves. For an empty family, the union and the sum both have size zero.

### Corollary 11.3 - Two-Set Inclusion-Exclusion - p. 3

If $A,B$ are finite, their union is finite and

$$
\#(A\cup B)=\#A+\#B-\#(A\cap B).
$$

### Lemma 11.3 - Out-of-Range Binomial Coefficients - p. 3

For $n\in\mathbb N$ and $k\in\mathbb Z$,

$$
k<0\text{ or }k>n\quad\Rightarrow\quad\binom nk=0.
$$

For negative lower indices this is the stated extension convention for binomial coefficients.

### Lemma 11.4 - Symmetry of Binomial Coefficients - p. 3

$$
\binom nk=\binom n{n-k}.
$$

For ordinary combinations, take $0\le k\le n$. The source states the identity for $n,k\in\mathbb N$; when $k>n$, both sides are zero under Lemma 11.3's convention.

### Theorem 11.4 - Pascal's Recurrence - p. 3

For $n\in\mathbb N$,

$$
\binom n0=\binom nn=1.
$$

For $n,k\in\mathbb N$, using the zero convention where necessary,

$$
\binom{n+1}{k+1}=\binom n{k+1}+\binom nk.
$$

### Theorem 11.5 - Binomial Theorem - p. 3

For $x,y\in\mathbb R$ and $n\in\mathbb N$,

$$
(x+y)^n=\sum_{k=0}^{n}\binom nk x^k y^{n-k}.
$$

**Source correction:** the uploaded display has different symbols for the summation index and the index in its summand. A single consistent index $k$ is used here.

### Lemma 11.5 - Size of a Cartesian Product - p. 4

For finite $A,B$,

$$
\#(A\times B)=\#A\cdot\#B.
$$

### Theorem 11.6 - Counting Functions and Permutations - p. 4

For finite sets $X,Y$,

$$
\#\{f\mid f:X\to Y\}=(\#Y)^{\#X}.
$$

For finite $X$,

$$
\#\{p\mid p:X\to X\text{ is bijective}\}=(\#X)!.
$$

For the counting formula, $0^0=1$ is the empty-choice convention: there is exactly one function $\varnothing\to\varnothing$. There are no functions from a nonempty set to $\varnothing$.

### Theorem 11.7 - Power Sets and Binary-Valued Functions - p. 4

For every set $X$,

$$
|\mathcal P(X)|=|\{f\mid f:X\to\{0,1\}\}|.
$$

The correspondence associates $S\subseteq X$ to the function that equals $1$ on $S$ and $0$ on $X\setminus S$. In particular, for finite $X$,

$$
\#\mathcal P(X)=2^{\#X}.
$$

### Theorem 11.8 - Combinations Are Quotients of Permutations - p. 4

For $n\in\mathbb N$ and $0\le k\le n$,

$$
\binom nk=\frac{n!}{k!(n-k)!}.
$$

**Source qualification:** the factorial quotient requires $k\le n$; otherwise $(n-k)!$ is not a factorial of a natural number. For $k>n$, use the separate zero convention from Lemma 11.3.

### Additional unnumbered count stated in LN11 p. 4

If $N$ is finite, $\#N=n$, and $K\subseteq N$ has $\#K=k$, then the number of permutations on $N$ that split over $K$ is

$$
k!(n-k)!.
$$

This counts permutations preserving the specified subset setwise, by independently permuting it and its complement.

## Additional theorem declared in homework

### Existence of Choice Functions - PS06, p. 1

Let $\mathcal X$ be a nonempty family of nonempty sets:

$$
\mathcal X\ne\varnothing,
\qquad
(\forall S\in\mathcal X)(S\ne\varnothing).
$$

Then a function exists with

$$
\tau:\mathcal X\to\bigcup\mathcal X,
\qquad
(\forall S\in\mathcal X)\,\tau(S)\in S.
$$

This is a theorem explicitly supplied in the homework, not merely an exercise goal.

### Set identities supplied for use in PS05

For any sets $A,B$, the assignment permits

$$
\bigcup\{A,B\}=A\cup B,
\qquad
\bigcap\{A,B\}=A\cap B.
$$

The finite-union and finite-intersection existence results listed on PS04's first page are instances of the LN08 construction results above. PS04 also supplies existence and uniqueness of the empty set, combining Theorem 8.4 and Lemma 8.4.

## Homework claims - exercise goals, not extra numbered lecture theorems

The following are the mathematical claims students are asked to establish in the uploaded assignments. An exercise's appearance is not, by itself, permission to assume its conclusion while proving that exercise.

### PS04 - Recovering arithmetic and constructing finite sets

With $s(x)=x\cup\{x\}$ and $0=\varnothing$:

- **1(a):** $(\forall x)(s(x)\ne0)$, for arbitrary sets $x$.
- **1(b):** $(\forall x)(\exists y)(y=s(x))$.
- **1(c):** assuming the no-two-cycle membership result, $(\forall x,y)(s(x)=s(y)\Rightarrow x=y)$.
- **1(d):** every $n\in\mathbb N$ is $\in$-transitive: $y\in n$ and $z\in y$ imply $z\in n$.
- **2:** for each $n\in\mathbb N$ and every list of $n$ objects, their finite roster set exists. The problem states distinctness of the listed objects; the existence claim remains valid without that restriction.

### PS05 - Ordered pairs, products, and unique maps

- **1(a):** $\bigcup\bigcap(x,y)=x$.
- **1(b):** if $x\ne y$, then $\bigcup((\bigcup(x,y))\setminus(\bigcap(x,y)))=y$.
- **2:** $A\times B$ exists for every pair of sets $A,B$.
- **3(a):** there is a set $I$ such that, for every $Y$, there is exactly one function $I\to Y$. The witness is $I=\varnothing$.
- **3(b):** there is a set $T$ such that, for every $X$, there is exactly one function $X\to T$. Any singleton is a witness.

### PS06 - Composition and one-sided inverses

- **1(a):** the composite of compatible injections is injective.
- **1(b):** the composite of compatible surjections is surjective. Consequently the composite of compatible bijections is bijective.
- **2(a):** for nonempty $A,B$, every injection $f:A\to B$ has a left inverse $g:B\to A$ with $g\circ f=\operatorname{id}_A$.
- **2(b):** for nonempty $A,B$, every surjection $f:A\to B$ has a right inverse $g:B\to A$ with $f\circ g=\operatorname{id}_B$.
- **3(a):** for nonempty $A,B$, if $f:A\to B$ is injective and $g:B\to A$ satisfies $g\circ f=\operatorname{id}_A$, then $g$ is surjective.
- **3(b):** for nonempty $A,B$, if $f:A\to B$ is surjective and $g:B\to A$ satisfies $f\circ g=\operatorname{id}_B$, then $g$ is injective.

The exercise conclusions in 3 actually follow from the displayed inverse equations alone; the assignment's additional injective/surjective hypotheses have been retained here.

### PS07 - Cofinite sets, a counting claim, and walks

- **1:** there are infinitely many cofinite subsets of $\mathbb N$.
- **2:** let $S=\{2,3,6,8,10,19,24,25,32,33,50,60\}$. Every $X\subseteq S$ with $\#X\ge9$ contains three pairwise distinct elements summing to $68$.
- **3:** for every graph $G$ and $v,w\in V(G)$, if a walk from $v$ to $w$ exists, then a path from $v$ to $w$ exists. The assignment suggests strong induction on the walk length.

## Background results mentioned for motivation in LN08 p. 1

These appear as examples motivating a stronger theory; they are not developed as numbered Chapter 2 results in the uploads.

- **Least-Element Principle:** every nonempty subset of $\mathbb N$ has a least member.
- **Szemeredi's Theorem:** a subset of the natural numbers with positive upper density contains arithmetic progressions of arbitrarily large finite length.
- **Prime Number Theorem:** the $n$th prime is asymptotic to $n\log n$ as $n\to\infty$.
- **Fundamental Theorem of Arithmetic:** every integer greater than $1$ has a prime factorization, unique up to reordering of the factors.

## Source map and completeness check

| Source | Theorems | Lemmas | Corollaries | Total numbered results |
|---|---|---|---|---|
| LN08 | 8.1-8.5 | 8.1-8.5 | 8.1-8.2 | 12 |
| LN09 | 9.1-9.10 | 9.1 | 9.1 | 12 |
| LN10 | 10.1-10.4 | 10.1-10.3 | 10.1-10.2 | 9 |
| LN11 | 11.1-11.8 | 11.1-11.5 | 11.1-11.3 | 16 |
| **Total** | **27** | **14** | **8** | **49** |

The 9 axioms, 3 *Noble Lies*, unnumbered facts, PS06 choice-function theorem, and homework exercise claims are additional to this total.

Source links: [fall lecture-note index](https://cs173.tech/resources/notes), [fall problem-set index](https://cs173.tech/assignments/problems), [LN08](https://cs173.tech/resources/notes/ln08.pdf), [LN09](https://cs173.tech/resources/notes/ln09.pdf), [LN10](https://cs173.tech/resources/notes/ln10.pdf), [LN11](https://cs173.tech/resources/notes/ln11.pdf). Numbering and page references follow the uploaded Fall 2026 PDFs, rather than earlier semesters or the generated practice bank.
