# CS 173 - Chapter 2 definitions - Fall 2026

**Scope:** All 25 numbered definitions in the uploaded LN08-LN11, together with definitions introduced in prose, footnotes, and PS04-PS07. Original lecture numbering is preserved. An entry marked **unnumbered** has no numbered Definition heading in the source. Statements of axioms, theorems, lemmas, and corollaries are in the companion results file.

**Coverage limit:** The fall notes index lists LN12, *Graph Theory*, but both its PDF and Typst links returned 404 when checked on November 16, 2026. The graph definitions here therefore come from the uploaded PS07. This file cannot include additional definitions from an unavailable LN12 or from unprovided classroom discussion.

**Notation:** All objects are sets unless a smaller universe is specified. The symbols $\varnothing$ and the notes' empty-set symbol denote the same set. Write $s(x)$ for the notes' successor notation. Natural numbers include $0$. Statements are paraphrased with their mathematical content retained; apparent source errors are explicitly flagged.

## LN08 - A Theory of Sets

### Sets and elementhood - unnumbered, pp. 1-2

A **set** is an object in the universe of the set theory being studied. The axioms specify which constructions exist and how sets behave.

The primitive binary predicate $x\in A$ means that $x$ is an **element** or **member** of $A$; $x\notin A$ abbreviates $\neg(x\in A)$. Equality is supplied by the underlying logic. Other set notation is defined using membership and equality.

### Definition 8.1 - Set Roster Notation - p. 3

For a specified finite list $x_1,\ldots,x_n$,

$$
z\in\{x_1,\ldots,x_n\}
\iff(z=x_1\lor\cdots\lor z=x_n).
$$

Order and repeated entries do not change the set. For $n=0$, the disjunction is false, so the roster has no members. The notes treat ellipses in a roster as informal shorthand, rather than a formal definition of an arbitrary collection.

### Definition 8.2 - Set Comprehension Notation - p. 4

For a formula $\varphi$ with its other parameters fixed,

$$
z\in\{x\mid\varphi(x)\}\iff\varphi(z).
$$

Bounded comprehension is the abbreviation

$$
\{x\in A\mid\varphi(x)\}:=\{x\mid x\in A\land\varphi(x)\}.
$$

Writing comprehension notation alone does not prove that the described collection is a set. Separation guarantees the bounded construction when its ambient set already exists.

### Definition 8.3 - Unions - p. 5

**Binary union:**

$$
A\cup B:=\{x\mid x\in A\lor x\in B\}.
$$

**Unary union**, or union of a family:

$$
\bigcup\mathcal A
:=\{x\mid\exists S(S\in\mathcal A\land x\in S)\}
=\bigcup_{S\in\mathcal A}S.
$$

An element of the union belongs to at least one member of the family. The family consists of sets; its union collects their members.

### Definition 8.4 - Subsets - p. 6

$$
A\subseteq B\iff\forall x(x\in A\Rightarrow x\in B).
$$

Every element of $A$ must also belong to $B$. The relation $A\in B$ instead asserts that the whole set $A$ is one member of $B$.

### Definition 8.5 - Some More Binary Set Operations - p. 7

**Intersection:**

$$
A\cap B:=\{x\mid x\in A\land x\in B\}.
$$

**Difference**, also called the **relative complement** of $B$ in $A$:

$$
A\setminus B:=\{x\mid x\in A\land x\notin B\}.
$$

**Symmetric difference:**

$$
A\triangle B:=\{x\mid x\in A\iff x\notin B\}.
$$

Equivalently, $x$ belongs to $A\triangle B$ exactly when it belongs to one of $A,B$ and not the other. The biconditional in the source is an exclusive-or condition on membership in $A,B$.

### Definition 8.6 - Emptiness - p. 8

$$
A\text{ is empty}\iff\forall x(x\notin A).
$$

### Definition 8.7 - The Empty Set - p. 8

$$
\varnothing:=\{x\mid x\ne x\}.
$$

The empty set is the unique set with no elements. Its existence and uniqueness are results, rather than extra clauses of the notation.

### Definition 8.8 - Power Set - p. 9

$$
\mathcal P(A):=\{S\mid S\subseteq A\}.
$$

Thus $S\in\mathcal P(A)$ means precisely $S\subseteq A$.

### Intersection of a nonempty family - unnumbered notation used in LN08 p. 9 and PS05

For $\mathcal A\ne\varnothing$,

$$
\bigcap\mathcal A
:=\{x\mid\forall S(S\in\mathcal A\Rightarrow x\in S)\}.
$$

An element must belong to every member of the family. The nonempty-family restriction matters: without an ambient universal set, this unbounded formula for $\bigcap\varnothing$ would describe every set, rather than a set supplied by these axioms.

### Partial order and its properties - unnumbered terminology, pp. 6-7

A relation $R$ on a set $X$ is a **partial order** when it is:

- **Reflexive:** $(\forall x\in X)\,xRx$.
- **Antisymmetric:** $(\forall x,y\in X)((xRy\land yRx)\Rightarrow x=y)$.
- **Transitive:** $(\forall x,y,z\in X)((xRy\land yRz)\Rightarrow xRz)$.

These are the properties used when the notes call $\subseteq$ a partial order. A **linear order**, mentioned in LN09 p. 4, is a partial order in which any two elements are comparable: $xRy$ or $yRx$.

## LN09 - Setting the Foundation

### Membership-minimal element - unnumbered, p. 1

An element $y\in X$ is **$\in$-minimal in $X$** when

$$
y\cap X=\varnothing,
$$

equivalently, no member of $X$ is a member of $y$. Regularity guarantees such an element for each nonempty $X$.

### Zero and successor - unnumbered, p. 2

$$
0:=\varnothing,
\qquad s(x):=x\cup\{x\}.
$$

The successive numerals are $1:=s(0)$, $2:=s(1)$, and so on. These definitions apply to zero and the successor of arbitrary sets; the set of natural numbers is then specified using inductivity.

### Inductive set and the natural numbers - unnumbered, p. 2

A set $I$ is **inductive** when

$$
0\in I\quad\land\quad(\forall x\in I)\,s(x)\in I.
$$

The course's set $\mathbb N$ is the least inductive set:

$$
\mathbb N\text{ is inductive}
\quad\land\quad
\forall I(I\text{ is inductive}\Rightarrow\mathbb N\subseteq I).
$$

Existence is asserted by the lecture's Infinity axiom, and uniqueness follows from Extensionality.

### Order on natural numbers - recalled definition, p. 4

For $a,b\in\mathbb N$,

$$
a\le b\iff(\exists c\in\mathbb N)(a+c=b).
$$

### Algebraic vocabulary - unnumbered, pp. 4-6

For an operation $\star$ on a set $X$:

- **Identity element:** $e\in X$ with $e\star x=x\star e=x$ for all $x\in X$.
- **Associative:** $x\star(y\star z)=(x\star y)\star z$.
- **Commutative:** $x\star y=y\star x$.
- **Monoid:** a set with an associative binary operation and an identity element.
- **Commutative monoid:** a monoid whose operation is commutative.
- **Group:** a monoid in which every element has a two-sided inverse. The group discussed explicitly in the notes is $(\mathbb Z,+)$.

For a set with operations $+$ and $\cdot$ and identities $0,1$:

- **Distributivity:** $x(y+z)=xy+xz$ and $(x+y)z=xz+yz$.
- **Multiplicative annihilator:** $0x=x0=0$ for all $x$.
- **Semiring:** $(X,+)$ is a commutative monoid, $(X,\cdot)$ is a monoid, multiplication distributes over addition, and $0$ is a multiplicative annihilator.
- **Commutative semiring:** a semiring whose multiplication is commutative.
- **Ordered semiring:** a semiring equipped with a partial order compatible with addition and multiplication by nonnegative elements. The displayed conditions are $x\le y\Rightarrow x+z\le y+z$, and $x\le y$, $0\le z\Rightarrow xz\le yz$ and $zx\le zy$.
- **Additive cancellation:** $x+z=y+z\Rightarrow x=y$.
- **Nonzero multiplicative cancellation:** $xz=yz$ and $z\ne0\Rightarrow x=y$.
- **No nonzero zero-divisors / domain property:** $xy=0\Rightarrow x=0\lor y=0$. This is the property used in the notes' description of $\mathbb N$ as a **semidomain**.
- **Ring:** a semiring in which every element has an additive inverse; equivalently, its additive commutative monoid is an abelian group.
- **Ordered ring:** a ring with an order compatible with addition and multiplication by nonnegative elements. Multiplying an inequality by a negative element reverses its direction.
- **Field:** a commutative ring with $0\ne1$ in which every nonzero element has a multiplicative inverse.
- **Ordered field:** a field with an order compatible with addition and multiplication by nonnegative elements.

The semiring and ring terminology is explained in the prose around Theorems 9.6-9.9. The body of Theorem 9.10 is unfinished in the upload; the field terminology above makes explicit the standard meaning of its announced title, rather than attributing extra numbered definitions to the notes.

### Positive and negative - unnumbered, p. 5

$$
x\text{ is positive}\iff0<x,
\qquad
x\text{ is negative}\iff x<0.
$$

Zero is neither positive nor negative.

### Definition 9.1 - Additive Inverses - p. 5

In the stated number system, $y$ is an **additive inverse** of $x$ when

$$
x+y=0.
$$

The numbered definition initially takes $x,y\in\mathbb N$; the discussion then extends the concept to $\mathbb Z$, where every element has such an inverse, denoted $-x$.

### Definition 9.2 - Multiplicative Inverses - p. 6

In the stated number system, $y$ is a **multiplicative inverse** of $x$ when

$$
xy=1.
$$

The numbered definition initially takes $x,y\in\mathbb Z$. It does not assert that every nonzero integer has an integer inverse. In $\mathbb Q$, every nonzero element has an inverse; zero has none.

### Number-system notation - unnumbered, pp. 5-6

The discussion introduces $\mathbb Z$ as the integers, $\mathbb Q$ as the rationals, and $\mathbb R$ as the reals. Their full set-theoretic constructions are not supplied in these uploads. The notes explicitly use the conventional identifications

$$
\mathbb N\subseteq\mathbb Z\subseteq\mathbb Q\subseteq\mathbb R
$$

under the labels *Noble Lie 9.1-9.3*. Their status is recorded in the companion results file.

## LN10 - Functions and Measurements

### Definition 10.1 - Ordered Pair - p. 1

$$
(a,b):=\{\{a\},\{a,b\}\}.
$$

This is the set-theoretic encoding of an ordered pair, with first coordinate $a$ and second coordinate $b$.

### Definition 10.2 - Cartesian Product - p. 1

$$
A\times B
:=\{p\mid\exists a\in A\ \exists b\in B\ (p=(a,b))\}
=\{(a,b)\mid a\in A\land b\in B\}.
$$

### Definition 10.3 - Unique Existential Quantification - p. 1

$$
\exists!x\,\varphi(x)
\iff
\exists x\bigl(\varphi(x)\land\forall y(\varphi(y)\Rightarrow y=x)\bigr).
$$

Exactly one object satisfies the condition: one exists, and every object satisfying it is that same object.

### Definition 10.4 - Function - pp. 1-2

$$
f:X\to Y
\iff
f\subseteq X\times Y
\quad\land\quad
(\forall x\in X)(\exists!y\in Y)((x,y)\in f).
$$

Every input in $X$ has exactly one output in $Y$. Different inputs may share an output; injectivity is an additional property.

The notes use the following associated definitions:

- **Domain:** $\operatorname{dom}(f):=X$.
- **Codomain:** $\operatorname{cod}(f):=Y$.
- **Evaluation:** $f(x)=y\iff(x,y)\in f$.
- **Image of an input:** $y=f(x)$ is the image of $x$ under $f$.
- **Preimage of an output:** $x$ is a preimage of $y$ when $f(x)=y$.
- **Range:**

$$
\operatorname{ran}(f)
:=\{y\in Y\mid\exists x\in X\ (f(x)=y)\}.
$$

The lecture treats a function as including its declared domain and codomain. The ordered-pair set describes its graph; the declared codomain is part of the course's function convention.

### Equality of functions - unnumbered, p. 2; repeated in PS06

Under that convention, $f=g$ exactly when all three conditions hold:

$$
\operatorname{dom}(f)=\operatorname{dom}(g),
\qquad
\operatorname{cod}(f)=\operatorname{cod}(g),
$$

$$
(\forall x\in\operatorname{dom}(f))\ f(x)=g(x).
$$

### Minimum and maximum of two numbers - unnumbered, pp. 2-3

$$
\min:\mathbb R\times\mathbb R\to\mathbb R,
\qquad
\min(x,y)=\begin{cases}x&x\le y,\\y&x>y.\end{cases}
$$

$$
\max:\mathbb R\times\mathbb R\to\mathbb R,
\qquad
\max(x,y)=\begin{cases}x&x\ge y,\\y&x<y.\end{cases}
$$

### Bounds, infimum, and supremum - unnumbered, pp. 2-3; LN11 p. 2 footnotes

In a specified ordered number system, $S$ is **bounded below** when

$$
\exists\ell\ \forall s\in S\ (\ell\le s),
$$

and **bounded above** when

$$
\exists u\ \forall s\in S\ (s\le u).
$$

Such $\ell$ and $u$ are **lower bounds** and **upper bounds**, respectively. **Bounded**, without qualification, means both bounded above and bounded below.

For a nonempty $S\subseteq\mathbb R$ bounded below, its **infimum** $\inf S$ is its greatest lower bound. More explicitly, $L=\inf S$ means

$$
(\forall s\in S)(L\le s)
\quad\land\quad
\forall\ell\bigl((\forall s\in S)(\ell\le s)\Rightarrow\ell\le L\bigr).
$$

The **infimum map** has domain the nonempty below-bounded subsets of $\mathbb R$ and codomain $\mathbb R$.

For a nonempty $S\subseteq\mathbb R$ bounded above, its **supremum** $\sup S$ is its least upper bound. Thus $U=\sup S$ means

$$
(\forall s\in S)(s\le U)
\quad\land\quad
\forall u\bigl((\forall s\in S)(s\le u)\Rightarrow U\le u\bigr).
$$

The **supremum map** has domain the nonempty above-bounded subsets of $\mathbb R$ and codomain $\mathbb R$. An infimum or supremum need not be a member of the underlying set.

### Floor, ceiling, and absolute value - unnumbered, p. 3

$$
\lfloor\cdot\rfloor:\mathbb R\to\mathbb Z,
\qquad
\lfloor r\rfloor:=\sup\{m\in\mathbb Z\mid m\le r\}.
$$

The floor is the greatest integer at most $r$.

$$
\lceil\cdot\rceil:\mathbb R\to\mathbb Z,
\qquad
\lceil r\rceil:=\inf\{m\in\mathbb Z\mid r\le m\}.
$$

The ceiling is the least integer at least $r$. **Source correction:** LN10 prints $\sup$ in this ceiling formula. The displayed integer set is unbounded above, so $\inf$ is the intended operation.

$$
|\cdot|:\mathbb R\to\mathbb R,
\qquad
|r|:=\begin{cases}r&r\ge0,\\-r&r<0.\end{cases}
$$

The range of absolute value is contained in $\mathbb R_{\ge0}$. The notes also discuss restricting its domain and codomain to other number systems. **Source correction:** the p. 2 example's $\mathbb Z\times\mathbb Z\to\mathbb N$ is a typing error for the unary absolute-value map $\mathbb Z\to\mathbb N$.

### Definition 10.5 - Injections, Surjections, and Bijections - p. 3

For $f:X\to Y$:

**Injective**, or an **injection**:

$$
(\forall x,x'\in X)(x\ne x'\Rightarrow f(x)\ne f(x')),
$$

equivalently,

$$
(\forall x,x'\in X)(f(x)=f(x')\Rightarrow x=x').
$$

**Surjective**, or a **surjection**:

$$
(\forall y\in Y)(\exists x\in X)(f(x)=y).
$$

**Bijective**, or a **bijection**: both injective and surjective.

### Definition 10.6 - Relative Cardinality - pp. 3-4

$$
|A|\le|B|
\iff\exists f(f:A\to B\land f\text{ is injective}).
$$

$$
|A|\ge|B|\iff|B|\le|A|.
$$

$$
|A|=|B|
\iff\exists f(f:A\to B\land f\text{ is bijective}).
$$

$$
|A|<|B|\iff|A|\le|B|\land|A|\ne|B|,
\qquad
|A|>|B|\iff|B|<|A|.
$$

Equal cardinality is equality of size, not necessarily equality of sets.

### Compatibility - unnumbered in LN10 p. 5; explicitly defined in PS06

The function $g$ is **compatible with $f$** for the composition $g\circ f$ when

$$
\operatorname{dom}(g)=\operatorname{cod}(f).
$$

This is the course's exact-intermediate-set convention for composition.

### Definition 10.7 - Function Composition - p. 5

For $f:X\to Y$ and $g:Y\to Z$,

$$
g\circ f:X\to Z,
\qquad
(g\circ f)(x):=g(f(x)).
$$

First apply $f$, then $g$.

### Definition 10.8 - Identity Function - p. 5

$$
\operatorname{id}_X:X\to X,
\qquad
\operatorname{id}_X(x):=x.
$$

### Definition 10.9 - Inverse Functions - p. 6

For $f:X\to Y$ and functions in the opposite direction:

- $g:Y\to X$ is a **left inverse** when $g\circ f=\operatorname{id}_X$.
- $h:Y\to X$ is a **right inverse** when $f\circ h=\operatorname{id}_Y$.
- $t:Y\to X$ is a **two-sided inverse** when both $t\circ f=\operatorname{id}_X$ and $f\circ t=\operatorname{id}_Y$.

When a two-sided inverse exists, it is unique and is denoted $f^{-1}:Y\to X$. This inverse-function notation is separate from the informal use of the word *preimage* for an input mapping to an output.

## LN11 - Learning How to Count

### Definition 11.1 - Finity - p. 1

$$
A\text{ is finite}
\iff(\exists n\in\mathbb N)(|A|\le|n|).
$$

Equivalently, there is an injection $A\to n$, where $n=\{m\in\mathbb N\mid m<n\}$.

$$
A\text{ is infinite}
\iff A\text{ is not finite}
\iff(\forall n\in\mathbb N)(|A|\nleq|n|).
$$

### Definition 11.2 - Finite Cardinal Numbers - p. 1

For a finite set $A$, $\#A$ is the unique $n\in\mathbb N$ such that

$$
|A|=|n|.
$$

Each natural number is a **finite cardinal number**, and $\mathbb N$ contains all finite cardinal numbers. The notation $\#A$ here is reserved for finite sets.

### Sums and products indexed by finite sets - unnumbered, p. 1

If $I$ is finite, $\#I=n$, $\eta:n\to I$ is a bijection, and $f:I\to\mathbb N$, then

$$
\sum_{i\in I}f(i):=\sum_{j=0}^{n-1}f(\eta(j)),
\qquad
\prod_{i\in I}f(i):=\prod_{j=0}^{n-1}f(\eta(j)).
$$

An empty sum is $0$ and an empty product is $1$. **Source correction:** the p. 1 display uses upper endpoint $n$ even though the indexing domain is $n=\{0,\ldots,n-1\}$; the consistent endpoint is $n-1$.

### Definition 11.3 - Factorials - p. 2

$$
0!:=1,
\qquad
s(n)!:=s(n)\cdot n!.
$$

Equivalently, $n!=\prod_{i=1}^{n}i$, with the empty-product convention giving $0!=1$.

### Definition 11.4 - Combination - p. 3

A set $Y$ is a **$k$-combination of $X$** when

$$
Y\subseteq X\quad\land\quad|Y|=|k|.
$$

It is an unordered selection of $k$ distinct elements: $Y$ is a subset, rather than an ordered list.

### Definition 11.5 - Binomial Coefficients - p. 3

For $n,k\in\mathbb N$,

$$
\binom nk:=\#\{S\subseteq n\mid\#S=k\}.
$$

This is the number of $k$-element subsets of an $n$-element set. **Source correction:** the defining display omits the cardinality symbol before the collection; its surrounding prose clearly defines a number, so $\#$ is included here. Lemma 11.3 supplies the zero convention for out-of-range lower indices.

### Definition 11.6 - Permutation - p. 4

A **permutation on $X$** is a bijection

$$
p:X\to X.
$$

### Splitting or factoring a permutation over a subset - unnumbered, p. 4

For a permutation $p:N\to N$ and $K\subseteq N$, the notes say $p$ **splits** or **factors over $K$** when it is obtained by combining a permutation $p_K:K\to K$ and a permutation $p_{N\setminus K}:N\setminus K\to N\setminus K$:

$$
p(x)=\begin{cases}
p_K(x)&x\in K,\\
p_{N\setminus K}(x)&x\in N\setminus K.
\end{cases}
$$

Equivalently, $p(K)=K$, so $p$ also preserves the complement setwise. **Source clarification:** the piecewise statement avoids the source's expressions that evaluate a restricted map outside its domain.

## Additional definitions in PS04-PS07

Definitions repeated verbatim in homework are covered above: roster notation, comprehension, emptiness, zero and successor, ordered pairs, Cartesian products, functions, compatibility, composition, and identity functions.

### Membership-transitive set - PS04, problem 1(d)

A set $X$ is **$\in$-transitive** when

$$
\forall y\forall z\bigl((y\in X\land z\in y)\Rightarrow z\in X\bigr).
$$

Equivalently, every member of $X$ is a subset of $X$. This is a property of a set; it is distinct from the transitivity property of a relation.

### Choice function - PS06, theorem and footnote

For a nonempty family $\mathcal X$ of nonempty sets, a **choice function on $\mathcal X$** is a function

$$
\tau:\mathcal X\to\bigcup\mathcal X
\quad\text{such that}\quad
(\forall S\in\mathcal X)\,\tau(S)\in S.
$$

It selects one member from each member-set of the family. Existence is a theorem, recorded in the companion results file.

### Graph - PS07

A **graph** $G$ consists of a finite vertex set $V(G)$ and an edge set satisfying

$$
E(G)\subseteq\{e\subseteq V(G)\mid\#e=2\}.
$$

Thus these graphs are finite, undirected, simple, and loopless: an edge is a two-element subset of the vertices, and an edge set cannot contain duplicate members.

### Path graph - PS07

For $n\in\mathbb N$, the **path graph of length $n$**, denoted $P_n$, has

$$
V(P_n)=\{i\in\mathbb N\mid i\le n\},
\qquad
E(P_n)=\{\{i,i+1\}\mid i\in\mathbb N,\ i<n\}.
$$

It has $n+1$ vertices and $n$ edges. In particular, $P_0$ has one vertex and no edges.

### Cycle graph - PS07

For $n\ge3$, the **cycle graph of length $n$**, denoted $C_n$, has

$$
V(C_n)=V(P_{n-1}),
\qquad
E(C_n)=E(P_{n-1})\cup\{\{n-1,0\}\}.
$$

It has $n$ vertices and $n$ edges.

### Graph homomorphism - PS07

A **graph homomorphism** $f:G\to H$ is a function $f:V(G)\to V(H)$ satisfying

$$
(\forall u,v\in V(G))\bigl(
\{u,v\}\in E(G)\Rightarrow\{f(u),f(v)\}\in E(H)
\bigr).
$$

It preserves edges in the forward direction.

### Graph monomorphism and epimorphism - PS07 course conventions

- A **graph monomorphism** is an injective graph homomorphism; the handout writes $G\hookrightarrow H$.
- A **graph epimorphism** is a graph homomorphism surjective on vertices; the handout also uses a two-headed arrow.

These are the vertex-function conventions used in the handout.

### Graph isomorphism - PS07 wording and a necessary distinction

**As written in PS07:** a bijective graph homomorphism is called a *graph isomorphism*.

**Mathematical distinction:** for general simple graphs, that condition alone does not imply an isomorphism in the standard sense. The standard definition requires a bijection $f:V(G)\to V(H)$ with

$$
\{u,v\}\in E(G)\iff\{f(u),f(v)\}\in E(H),
$$

equivalently, both $f$ and $f^{-1}$ are graph homomorphisms. For example, the identity vertex map from a three-vertex path to a triangle is a bijective homomorphism, but its inverse does not preserve the triangle's closing edge. The source's wording is recorded explicitly here so its convention is not silently replaced by a different definition.

### Walk and path in a graph - PS07

A **walk of length $k$ in $G$** is a graph homomorphism

$$
f:P_k\to G.
$$

It is a walk **from $v$ to $w$** when $f(0)=v$ and $f(k)=w$.

A **path of length $k$ in $G$** is a graph monomorphism

$$
p:P_k\hookrightarrow G,
$$

with the analogous endpoint conditions $p(0)=v$, $p(k)=w$. The vertex map of a path is injective; a walk may repeat vertices.

### Circuit and cycle in a graph - PS07

For $k\ge3$:

- A **circuit of length $k$ in $G$** is a graph homomorphism $f:C_k\to G$.
- A **cycle of length $k$ in $G$** is a graph monomorphism $p:C_k\hookrightarrow G$.

These definitions use maps from cycle graphs; they do not add an edge-distinctness requirement to circuits beyond what is explicitly stated.

### Cofinite subset - PS07, problem 1

For $Y\subseteq X$,

$$
Y\text{ is cofinite in }X\iff X\setminus Y\text{ is finite}.
$$

## Source map and completeness check

| Source | Numbered definitions included | Additional material |
|---|---|---|
| LN08, *A Theory of Sets*, September 30, 2026 | 8.1-8.8 | Membership, family intersections, order vocabulary |
| LN09, *Setting the Foundation*, October 14, 2026 | 9.1-9.2 | Zero, successor, inductive sets, number systems, algebraic vocabulary |
| LN10, *Functions and Measurements*, October 16, 2026 | 10.1-10.9 | Associated function notation, numerical functions, bounds, compatibility |
| LN11, *Learning How to Count*, October 30, 2026 | 11.1-11.6 | Finite indexed operations; splitting permutations |
| PS04-PS07, Fall 2026 uploads | Homework definitions have no lecture numbering | Membership transitivity, choice functions, graphs and graph maps, walks, paths, circuits, cycles, cofinite subsets |

Source links: [fall lecture-note index](https://cs173.tech/resources/notes), [fall problem-set index](https://cs173.tech/assignments/problems), [LN08](https://cs173.tech/resources/notes/ln08.pdf), [LN09](https://cs173.tech/resources/notes/ln09.pdf), [LN10](https://cs173.tech/resources/notes/ln10.pdf), [LN11](https://cs173.tech/resources/notes/ln11.pdf). The uploaded fall PDFs are the authority for the extracted content; prior-semester additions are not included.
