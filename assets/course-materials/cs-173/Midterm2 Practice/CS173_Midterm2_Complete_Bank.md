---
title: "CS 173 Midterm 2"
subtitle: "180 questions with fully worked solutions"
author: "CS 173 | Discrete Structures | Fall 2026"
date: "Practice bank prepared November 15, 2026"
lang: en-US
---


# Start here

This bank contains **180 questions with worked solutions**: 60 multiple choice (M01-M60), 60 free response (F01-F60), and 60 proofs (P01-P60). Each format has five levels, with 12 questions per level. Levels are a study progression, not a prediction of the exam's difficulty.

**Core scope.** The uploaded Fall 2026 LN08-LN11 and PS04-PS07 determine the content. Sets and axioms, set-theoretic naturals, basic algebraic structures, functions, relative cardinality, finite counting, and the graph definitions in PS07 are covered. The current fall notes index lists LN12 on graph theory, but its PDF and source links were unavailable when checked. Graph questions are therefore grounded in the uploaded PS07; additional LN12 topics are not assumed. Earlier course material was consulted only as supplementary context, without expanding the core syllabus.

**Exam structure.** The supplied ES01 solution scan was used to interpret the intended first-midterm prompts wherever EP01 and ES01 differed. The six mixed papers below use its structure: 10 multiple-choice questions, 2 non-proof responses, and 3 proofs. The new bank's multiple-choice questions each have exactly one correct answer. The proof bank includes general arguments, induction, and exercises with explicitly restricted assumptions. These are original practice materials, with deliberate revisits of foundational homework results; they are not official exam questions or a forecast.

**Stretch boundary.** P58-P60 are explicitly marked synthesis exercises. Their conclusions are derived from the chapter's tools rather than assumed as additional syllabus theorems. Complete the core questions before using these as an extra challenge.

**Conventions.** $\mathbb N$ includes $0$. A natural number $n$ is the set $\{0,\ldots,n-1\}$, and $s(x)=x\cup\{x\}$. Write $\#A$ for a finite set's numerical size, and $|A|\le|B|$ for the existence of an injection $A\to B$. A function includes its declared domain and codomain, matching the lecture convention. Its graph is the set of ordered pairs. All graph questions use finite, simple, undirected, loopless graphs; $P_k$ has $k+1$ vertices and length $k$. $K_m$ denotes the graph on $m$ vertices containing every two-element edge.

**Clean statements.** Ceiling is the least integer at least the input, so its bounds-based formula uses an infimum, as F55 explains. Pigeonhole ratios use a nonempty box set; nonempty-domain assumptions are stated when constructing arbitrary left inverses. Empty-function cases are treated directly. Graph questions use homomorphisms and monomorphisms and do not rely on the handout's terminology for a bijective homomorphism. Each binomial coefficient denotes a count, and finite sums have the indicated consistent endpoints.

## How to use the bank

1. Work through Levels 1 and 2 without consulting solutions. Fix definition errors before moving on.
2. Use Levels 3 and 4 for exam practice, writing complete calculations and carefully typed function constructions.
3. For each proof, mark the exact goal, the hypotheses, the witness or construction, and the definition or theorem used. Induction needs an explicit statement, a base case, a hypothesis, a step, and a conclusion.
4. Attempt a mixed paper on a separate sheet, then grade with the matching question IDs in the worked companion. An optional practice budget is 75 minutes; this is a study suggestion, not the official exam duration.

| Level | Focus | Multiple choice | Free response | Proofs |
|---|---|---|---|---|
| 1 | Foundations | M01-M12 | F01-F12 | P01-P12 |
| 2 | Applying definitions | M13-M24 | F13-F24 | P13-P24 |
| 3 | Exam-level reasoning | M25-M36 | F25-F36 | P25-P36 |
| 4 | Hard applications | M37-M48 | F37-F48 | P37-P48 |
| 5 | Synthesis and challenge | M49-M60 | F49-F60 | P49-P60 |

## Mixed practice papers

Each row selects **10 M questions, 2 F questions, and 3 P questions**, in that order. The same IDs appear in both booklets and in the separate mock-exam booklet. These selections reuse the bank and do not add to the count of 180. All 60 multiple-choice questions appear exactly once across the six papers. A suggested 100-point scheme is 2 points per M question, 10 per F question, and 20 per P question.

| Paper | Multiple choice | Free response | Proofs |
|---|---|---|---|
| 1 | M01, M02, M13, M14, M25, M26, M37, M38, M49, M50 | F04, F22 | P03, P20, P13 |
| 2 | M03, M04, M15, M16, M27, M28, M39, M40, M51, M52 | F09, F31 | P10, P21, P23 |
| 3 | M05, M06, M17, M18, M29, M30, M41, M42, M53, M54 | F20, F39 | P27, P40, P19 |
| 4 | M07, M08, M19, M20, M31, M32, M43, M44, M55, M56 | F26, F48 | P12, P49, P24 |
| 5 | M09, M10, M21, M22, M33, M34, M45, M46, M57, M58 | F38, F56 | P37, P53, P14 |
| 6 | M11, M12, M23, M24, M35, M36, M47, M48, M59, M60 | F51, F60 | P48, P52, P22 |

## Topic routes

| Topic | Useful starting questions | Deeper practice |
|---|---|---|
| Membership, subsets, unions, intersections, differences | M01-M09; F01-F05; P01-P05 | M52-M53; F17-F19; P06-P08 |
| Axioms, Regularity, naturals and induction | M05-M09; F04-F05; F18-F19 | F54; P13-P24 |
| Basic algebraic structures and numerical functions | M18-M22; F11-F12 | F20; F25; F42; F55 |
| Ordered pairs, products and functions | M10-M19; F06-F10 | F13-F16; P09; P22-P24 |
| Composition, inverses and cancellation | M23; M25-M28; F09-F10 | M49-M51; M54-M55; F25-F29; F53; P25-P32; P60 |
| Cardinality, finiteness and infinite sets | M24; M29-M31; M42; M58-M59 | F21; F42-F43; F49; P33-P38; P47; P58-P59 |
| Counting and pigeonholes | M32-M42; F22-F24; F30-F41 | M54-M57; M60; F44; F50-F52; F60; P37-P48 |
| Graphs, graph maps, walks and paths | M43-M48; F45-F48 | F56-F59; P49-P57 |

## Proof-writing checks

- For a set equality, prove both membership directions or one chain of equivalences, then invoke Extensionality.
- For existence from axioms, name an already existing ambient set before applying Separation.
- For a function construction, specify both types, define every input's output, and justify uniqueness.
- For equal typed functions, check domain, codomain, and pointwise values.
- For surjectivity, start with an arbitrary codomain element and construct its preimage. For injectivity, assume equal outputs and derive equal inputs.
- For a contradiction, introduce the negated claim explicitly before using it. End by stating exactly which assumption has been ruled out.
- For a counting argument, identify the finite collection counted and justify that choices are exhaustive and counted once.
- For a shortened walk, verify the splice edge and both endpoints, including deletion through the last vertex.


# Multiple-choice quick key

The full explanations follow in Part I.

| Questions | Answers |
|---|---|
| M01-M10 | M01: C; M02: C; M03: B; M04: A; M05: B; M06: D; M07: B; M08: A; M09: D; M10: C |
| M11-M20 | M11: A; M12: D; M13: B; M14: C; M15: B; M16: A; M17: C; M18: D; M19: B; M20: A |
| M21-M30 | M21: D; M22: C; M23: B; M24: A; M25: C; M26: D; M27: B; M28: A; M29: D; M30: B |
| M31-M40 | M31: C; M32: A; M33: D; M34: B; M35: C; M36: A; M37: D; M38: B; M39: C; M40: A |
| M41-M50 | M41: B; M42: D; M43: C; M44: A; M45: B; M46: D; M47: C; M48: A; M49: B; M50: D |
| M51-M60 | M51: A; M52: C; M53: B; M54: D; M55: C; M56: A; M57: D; M58: B; M59: C; M60: A |


# Part I: Multiple choice

Select exactly one answer in each question. Every item has one correct option.

## Level 1: Foundations

### M01 | Level 1 | LN08 | Empty sets

Which statement holds for every set $A$?

**A.** $\varnothing\in A$  
**B.** $A\in\varnothing$  
**C.** $\varnothing\subseteq A$  
**D.** $\{\varnothing\}\subseteq A$  

**Worked solution.** **C.** By definition, $\varnothing\subseteq A$ means $\forall x(x\in\varnothing\Rightarrow x\in A)$. Each antecedent is false, so the implication is true. In contrast, $\varnothing\in A$ requires $A$ to contain a particular element; $A=\varnothing$ refutes it. The same example refutes A and D.

### M02 | Level 1 | LN08 | Nested sets

Let $A=\{\varnothing,\{\varnothing\},\{\varnothing,\{\varnothing\}\}\}$. What is $\#A$?

**A.** $1$  
**B.** $2$  
**C.** $3$  
**D.** $4$  

**Worked solution.** **C.** The three displayed elements have respectively zero, one, and two elements, so they are distinct. Counting elements of $A$, rather than symbols or elements inside its elements, gives $3$.

### M03 | Level 1 | LN08 | Elementhood

Let $A=\{\{0\},\{2\}\}$. Which statement is true?

**A.** $0\in A$  
**B.** $\{0\}\in A$  
**C.** $2\in A$  
**D.** $\{0,2\}\in A$  

**Worked solution.** **B.** The set $\{0\}$ is one of the two elements explicitly listed in $A$. The empty set $0$ is not a listed element; $2=\{0,1\}$ is neither of the two listed singletons. The set $\{0,2\}$ has two elements, so it is not one of those singletons either.

### M04 | Level 1 | LN08 | Unary union

If $\mathcal A=\{\{0,2\},\{2,4\},\varnothing\}$, what is $\bigcup\mathcal A$?

**A.** $\{0,2,4\}$  
**B.** $\{\{0,2\},\{2,4\}\}$  
**C.** $\{2\}$  
**D.** $\varnothing$  

**Worked solution.** **A.** An object belongs to $\bigcup\mathcal A$ exactly when it belongs to at least one member of $\mathcal A$. The empty member contributes nothing, and duplicate occurrences of $2$ do not create extra elements.

### M05 | Level 1 | LN08 | Extensionality

Which axiom directly lets us conclude $A=B$ after proving $\forall x(x\in A\Leftrightarrow x\in B)$?

**A.** Pairing  
**B.** Extensionality  
**C.** Union  
**D.** Power  

**Worked solution.** **B.** Extensionality states that two sets are equal exactly when they have the same elements. Pairing, Union, and Power assert the existence of particular sets; they do not supply this equality criterion.

### M06 | Level 1 | LN08 | Separation

Which collection is directly guaranteed to be a set by applying Separation to a known set $A$? Here $\varphi$ is a formula with the displayed free variable, with any other parameters fixed.

**A.** $\{x\mid\varphi(x)\}$ for every formula  
**B.** $\{x\mid x=x\}$  
**C.** $\{x\mid x\notin x\}$  
**D.** $\{x\in A\mid\varphi(x)\}$  

**Worked solution.** **D.** Separation filters a previously existing set: $\{x\in A\mid\varphi(x)\}$. Unrestricted comprehension does not follow from this axiom. The other choices omit the required ambient bound.

### M07 | Level 1 | LN08 | Power sets

What is $\mathcal P(\varnothing)$?

**A.** $\varnothing$  
**B.** $\{\varnothing\}$  
**C.** $\{\{\varnothing\}\}$  
**D.** $\{\varnothing,\{\varnothing\}\}$  

**Worked solution.** **B.** The empty set has exactly one subset, namely itself. Thus its power set contains one element, $\varnothing$, rather than containing no elements.

### M08 | Level 1 | LN09 | Set-theoretic naturals

With $0=\varnothing$ and $s(x)=x\cup\{x\}$, what is $s(2)$?

**A.** $\{0,1,2\}$  
**B.** $\{2\}$  
**C.** $\{0,1\}$  
**D.** $\{\{0,1,2\}\}$  

**Worked solution.** **A.** Since $2=\{0,1\}$, its successor is $2\cup\{2\}=\{0,1,2\}=3$. It is essential to add $2$ as one new element.

### M09 | Level 1 | LN09 | Membership versus inclusion

For the set-theoretic natural numbers, which statement is false?

**A.** $2\in4$  
**B.** $2\subseteq4$  
**C.** $4\subseteq4$  
**D.** $4\in4$  

**Worked solution.** **D.** The number $4$ is $\{0,1,2,3\}$, so $2\in4$ and $2=\{0,1\}\subseteq4$. Every set is a subset of itself. But $4\notin4$, both by the displayed roster and by Regularity.

### M10 | Level 1 | LN10 | Functions

Which relation is a function from $\{0,1\}$ to $\{a,b\}$, where $a\ne b$?

**A.** $\{(0,a)\}$  
**B.** $\{(0,a),(0,b)\}$  
**C.** $\{(0,a),(1,a)\}$  
**D.** $\{(1,b)\}$  

**Worked solution.** **C.** Each input must occur with exactly one output in the codomain. C gives both inputs the single output $a$, which is allowed. A omits input $1$; B gives $0$ two outputs and omits $1$; D omits $0$.

### M11 | Level 1 | LN10 | Range

For every function $f:X\to Y$, which statement must hold?

**A.** $\operatorname{ran}(f)\subseteq Y$  
**B.** $\operatorname{ran}(f)=Y$  
**C.** $Y\subseteq\operatorname{ran}(f)$  
**D.** $\operatorname{ran}(f)\subseteq X$  

**Worked solution.** **A.** Every actual output is an element of the declared codomain, so $\operatorname{ran}(f)\subseteq Y$. Equality need not hold unless $f$ is surjective. There is no general requirement that outputs lie in $X$.

### M12 | Level 1 | LN10 | Identity

Which equation holds for every function $f:X\to Y$?

**A.** $f=\operatorname{id}_X$  
**B.** $f\circ f=f$ for every $f$  
**C.** $\operatorname{id}_X=\operatorname{id}_Y$  
**D.** $\operatorname{id}_Y\circ f=f=f\circ\operatorname{id}_X$  

**Worked solution.** **D.** Both displayed compositions are well typed, with domain $X$ and codomain $Y$. At every $x\in X$, they produce $f(x)$. The alternatives either confuse identity maps on different sets or assert a property not possessed by arbitrary functions.

## Level 2: Applying definitions

### M13 | Level 2 | LN10 | Ordered pairs

Under $(a,b)=\{\{a\},\{a,b\}\}$, what is $(a,a)$?

**A.** $\{a\}$  
**B.** $\{\{a\}\}$  
**C.** $\{\varnothing,\{a\}\}$  
**D.** $\varnothing$  

**Worked solution.** **B.** Both would-be members become $\{a\}$, and a set lists a repeated member only once. Hence $(a,a)=\{\{a\}\}$.

### M14 | Level 2 | LN10 | Cartesian products

Which identity holds for all sets $A,B,C$?

**A.** $A\times B=B\times A$  
**B.** $A\times\varnothing=A$  
**C.** $A\times(B\cup C)=(A\times B)\cup(A\times C)$  
**D.** $A\times B=A\cup B$  

**Worked solution.** **C.** A pair belongs to the left side exactly when its first coordinate is in $A$ and its second is in $B$ or $C$, which is precisely membership in the right side. Coordinate order prevents the other proposed identities in general.

### M15 | Level 2 | LN10 | Empty functions

How many functions $\varnothing\to\varnothing$ exist?

**A.** $0$  
**B.** $1$  
**C.** $2$  
**D.** Infinitely many  

**Worked solution.** **B.** The only subset of $\varnothing\times\varnothing=\varnothing$ is the empty relation. Its requirement of one output for each input is vacuously satisfied. Thus there is exactly one function; it is also bijective.

### M16 | Level 2 | LN10 | Empty functions

For $B\ne\varnothing$, the unique function $f:\varnothing\to B$ is:

**A.** Injective but not surjective  
**B.** Surjective but not injective  
**C.** Bijective  
**D.** Neither injective nor surjective  

**Worked solution.** **A.** Injectivity quantifies over pairs of inputs, and there are none, so it holds vacuously. Every $b\in B$ lacks a preimage, so surjectivity fails.

### M17 | Level 2 | LN10 | Injections

For $\mathbb N=\{0,1,2,\ldots\}$, classify $f:\mathbb N\to\mathbb N$ given by $f(n)=n^2$.

**A.** Bijective  
**B.** Surjective but not injective  
**C.** Injective but not surjective  
**D.** Neither  

**Worked solution.** **C.** Squaring is strictly increasing on nonnegative integers, so distinct inputs have distinct squares. The codomain element $2$ is not a square, so $f$ is not surjective.

### M18 | Level 2 | LN10 | Floor function

Classify $f:\mathbb R\to\mathbb Z$ given by $f(x)=\lfloor x\rfloor$.

**A.** Injective but not surjective  
**B.** Bijective  
**C.** Neither  
**D.** Surjective but not injective  

**Worked solution.** **D.** Every integer $m$ is hit by the input $m$. However, $\lfloor0\rfloor=\lfloor1/2\rfloor=0$ although the inputs differ, so injectivity fails.

### M19 | Level 2 | LN10 | Typed functions

Let $f:\mathbb N\to\mathbb N$ and $g:\mathbb N\to\mathbb Z$ both send $n$ to $n$. Using the lecture convention that a function includes its declared codomain, which is correct?

**A.** $f=g$ because their formulas agree  
**B.** $f\ne g$ because their codomains differ  
**C.** $g$ is surjective  
**D.** $f$ is not injective  

**Worked solution.** **B.** Their domains and value rules agree, but their codomains differ, so they are different typed functions. The function $f$ is surjective and $g$ misses every negative integer.

### M20 | Level 2 | LN09 | Algebraic structures

Why is $(\mathbb N,+)$ not a group?

**A.** Some elements have no additive inverse in $\mathbb N$  
**B.** Addition has no identity  
**C.** Addition is not associative  
**D.** Addition is not closed  

**Worked solution.** **A.** For example, there is no $n\in\mathbb N$ with $1+n=0$. Addition does have an identity, is associative, and is closed on $\mathbb N$; the missing requirement is an additive inverse for each element.

### M21 | Level 2 | LN09 | Algebraic structures

Which set with the displayed operation is a group?

**A.** $(\mathbb N,+)$  
**B.** $(\mathbb Z,\cdot)$  
**C.** $(\mathbb Q,\cdot)$  
**D.** $(\mathbb Q\setminus\{0\},\cdot)$  

**Worked solution.** **D.** Nonzero rationals are closed under multiplication, multiplication is associative, $1$ is an identity, and each nonzero rational $q$ has a nonzero rational inverse $1/q$. Zero prevents $\mathbb Q$ under multiplication from being a group; the other options lack inverses.

### M22 | Level 2 | LN09 | Cancellation

Which extra hypothesis makes $xz=yz\Rightarrow x=y$ valid for natural numbers?

**A.** $x\ne0$  
**B.** $y\ne0$  
**C.** $z\ne0$  
**D.** No extra hypothesis is needed  

**Worked solution.** **C.** Multiplicative cancellation requires $z\ne0$. If $z=0$, both products are zero regardless of $x,y$; for instance, $1\cdot0=2\cdot0$ does not imply $1=2$.

### M23 | Level 2 | LN10 | Composition

Let $f:\mathbb Z\to\mathbb Z$, $f(n)=n+1$, and $g:\mathbb Z\to\mathbb Z$, $g(n)=2n$. What is $(g\circ f)(n)$?

**A.** $2n+1$  
**B.** $2n+2$  
**C.** $3n+1$  
**D.** $n+2$  

**Worked solution.** **B.** Apply $f$ first: $g(f(n))=g(n+1)=2(n+1)=2n+2$. The expression $2n+1$ instead describes $f\circ g$.

### M24 | Level 2 | LN10 | Relative cardinality

What does $|A|\le |B|$ mean by definition in the notes?

**A.** There exists an injection $A\to B$  
**B.** $A\subseteq B$  
**C.** There exists a bijection $A\to B$  
**D.** Every function $A\to B$ is injective  

**Worked solution.** **A.** The definition is existence of an injection from $A$ into $B$. Inclusion implies this comparison but is not necessary: distinct singleton sets have the same size without either being a subset of the other.

## Level 3: Exam-level reasoning

### M25 | Level 3 | LN10 | Composition implications

If $f:A\to B$ and $g:B\to C$ satisfy that $g\circ f$ is injective, what must follow?

**A.** $g$ is injective  
**B.** $f$ is surjective  
**C.** $f$ is injective  
**D.** $g$ is surjective  

**Worked solution.** **C.** If $f(a)=f(a')$, applying $g$ gives $(g\circ f)(a)=(g\circ f)(a')$, so $a=a'$. Thus $f$ is injective. The map $g$ may identify points outside $f(A)$, and neither map need be surjective.

### M26 | Level 3 | LN10 | Composition implications

If $g\circ f:A\to C$ is surjective, what must follow?

**A.** $f$ is surjective  
**B.** $f$ is injective  
**C.** $g$ is injective  
**D.** $g$ is surjective  

**Worked solution.** **D.** Every $c\in C$ equals $g(f(a))$ for some $a$, so $f(a)\in B$ is a preimage of $c$ under $g$. Hence $g$ is surjective. Surjectivity of $f$ onto all of $B$ is not forced.

### M27 | Level 3 | LN10 | Left inverses

If $g:B\to A$ and $g\circ f=\operatorname{id}_A$, which pair of conclusions follows?

**A.** $f$ surjective; $g$ injective  
**B.** $f$ injective; $g$ surjective  
**C.** Both functions bijective  
**D.** Neither property is forced  

**Worked solution.** **B.** Equal $f$-outputs become equal inputs after applying $g$, so $f$ is injective. Also every $a\in A$ is $g(f(a))$, so $g$ is surjective. These arguments also work for empty sets when the functions exist.

### M28 | Level 3 | LN10 | Right inverses

If $h:B\to A$ and $f\circ h=\operatorname{id}_B$, which pair of conclusions follows?

**A.** $f$ surjective; $h$ injective  
**B.** $f$ injective; $h$ surjective  
**C.** Both functions bijective  
**D.** Neither property is forced  

**Worked solution.** **A.** Each $b$ has $h(b)$ as an $f$-preimage, so $f$ is surjective. If $h(b)=h(b')$, apply $f$ to obtain $b=b'$, so $h$ is injective.

### M29 | Level 3 | LN10 | Infinite cardinality

Let $E=\{2n\mid n\in\mathbb N\}$. Which statement is correct?

**A.** $E=\mathbb N$  
**B.** $|E|<|\mathbb N|$  
**C.** $|E|>|\mathbb N|$  
**D.** $E\subsetneq\mathbb N$ and $|E|=|\mathbb N|$  

**Worked solution.** **D.** The function $n\mapsto2n$ is an injection onto $E$ and is surjective onto $E$ by its definition, so $|E|=|\mathbb N|$. Nevertheless, $1\notin E$, so $E$ is a proper subset. Proper inclusion does not force smaller infinite cardinality.

### M30 | Level 3 | LN10 | Cantor-Schroder-Bernstein

If there are injections $A\to B$ and $B\to A$, which conclusion is justified?

**A.** $A=B$  
**B.** $|A|=|B|$  
**C.** Both sets are finite  
**D.** Both given injections are surjective  

**Worked solution.** **B.** Cantor-Schroder-Bernstein gives a bijection between $A$ and $B$. It does not say the sets are equal or finite, and the particular injections supplied need not themselves be surjective.

### M31 | Level 3 | LN11 | Finite sets

Let $A$ be finite and $f:A\to A$ injective. Which statement must be true?

**A.** $f=\operatorname{id}_A$  
**B.** $f$ has a fixed point  
**C.** $f$ is bijective  
**D.** $A=\varnothing$  

**Worked solution.** **C.** An injection on a finite set uses $\#A$ distinct outputs inside a set of that same size, so it hits them all and is bijective. The result fails without finiteness: $n\mapsto n+1$ on $\mathbb N$ misses $0$.

### M32 | Level 3 | LN11 | Characteristic functions

If $X$ is finite with $\#X=5$, how many functions $X\to\{0,1\}$ are there?

**A.** $32$  
**B.** $10$  
**C.** $25$  
**D.** $120$  

**Worked solution.** **A.** Each of the five inputs independently chooses one of two outputs, giving $2^5=32$. Equivalently, each such function specifies the subset of inputs that map to $1$.

### M33 | Level 3 | LN11 | Counting functions

How many functions are there from a four-element set to a three-element set?

**A.** $12$  
**B.** $64$  
**C.** $24$  
**D.** $81$  

**Worked solution.** **D.** There are three independent output choices for each of four inputs, so the number is $3^4=81$. Repeated outputs are allowed.

### M34 | Level 3 | LN11 | Counting injections

How many injections are there from a three-element set into a five-element set?

**A.** $10$  
**B.** $60$  
**C.** $125$  
**D.** $15$  

**Worked solution.** **B.** The first input has $5$ output choices, the second must avoid that output and has $4$, and the third has $3$. The product is $5\cdot4\cdot3=60$.

### M35 | Level 3 | LN11 | Counting surjections

How many surjections are there from a three-element set onto a two-element set?

**A.** $8$  
**B.** $4$  
**C.** $6$  
**D.** $2$  

**Worked solution.** **C.** There are $2^3=8$ functions. Exactly two are not surjective, the two constant functions. Therefore there are $8-2=6$ surjections.

### M36 | Level 3 | LN11 | Pigeonhole principle

Seventeen objects are placed in four boxes. What is the largest integer $t$ such that some box is guaranteed to contain at least $t$ objects?

**A.** $5$  
**B.** $4$  
**C.** $6$  
**D.** $8$  

**Worked solution.** **A.** The generalized pigeonhole principle gives $\lceil17/4\rceil=5$. This is sharp because a distribution of $5,4,4,4$ has no box with six objects.

## Level 4: Hard applications

### M37 | Level 4 | LN11 | Iterated power sets

If $\#A=3$, what is $\#\mathcal P(\mathcal P(A))$?

**A.** $6$  
**B.** $64$  
**C.** $16$  
**D.** $256$  

**Worked solution.** **D.** First $\#\mathcal P(A)=2^3=8$. Applying the power-set counting formula again gives $2^8=256$, not $2^{3\cdot2}$.

### M38 | Level 4 | LN11 | Inclusion-exclusion

In a group of $50$ people, $28$ take course A, $24$ take course B, and $10$ take both. How many take neither?

**A.** $2$  
**B.** $8$  
**C.** $18$  
**D.** $12$  

**Worked solution.** **B.** The union has $28+24-10=42$ people. Its complement in the group therefore has $50-42=8$ people.

### M39 | Level 4 | LN11 | Combinations with restrictions

A committee of four is chosen from ten people. Two specified people must be on it and a third specified person must not be on it. How many committees are possible?

**A.** $42$  
**B.** $35$  
**C.** $21$  
**D.** $28$  

**Worked solution.** **C.** After fixing the two required people and removing the forbidden person, choose the remaining two members from the other seven: $\binom72=21$. Committee order does not matter.

### M40 | Level 4 | LN11 | Binomial coefficients

What is the coefficient of $x^2$ in $(1+3x)^4$?

**A.** $54$  
**B.** $36$  
**C.** $18$  
**D.** $81$  

**Worked solution.** **A.** Choose the $3x$ term from two of the four factors and the $1$ term from the other two. The coefficient is $\binom42 3^2=6\cdot9=54$.

### M41 | Level 4 | LN11 | Binomial identities

For an integer $n\ge1$, what is $\sum_{k=0}^{n}(-1)^k\binom nk$?

**A.** $1$  
**B.** $0$  
**C.** $2^n$  
**D.** $(-1)^n$  

**Worked solution.** **B.** The binomial theorem with $x=1,y=-1$ gives $(1-1)^n=0$ when $n\ge1$. The condition excludes $n=0$, for which the sum is $1$.

### M42 | Level 4 | LN11 | Proper finite subsets

Let $A\subseteq B$, where $B$ is finite. Which statement is necessarily true?

**A.** $A=B$  
**B.** $|A|=|B|$  
**C.** $A\subsetneq B$  
**D.** $\#A=\#B$ implies $A=B$  

**Worked solution.** **D.** A proper subset of a finite set has strictly fewer elements. Thus equal finite cardinalities together with inclusion force equality. Inclusion alone does not imply equal cardinalities.

### M43 | Level 4 | PS07 | Path graphs

How many vertices and edges does $P_7$ have under the handout definition?

**A.** 7 vertices, 7 edges  
**B.** 7 vertices, 6 edges  
**C.** 8 vertices, 7 edges  
**D.** 8 vertices, 8 edges  

**Worked solution.** **C.** Its vertices are $0,1,\ldots,7$, which gives eight vertices. Its edges are $\{i,i+1\}$ for $0\le i<7$, which gives seven edges. The subscript denotes length.

### M44 | Level 4 | PS07 | Walks and paths

In the graph with vertices $\{0,1\}$ and sole edge $\{0,1\}$, the sequence $(0,1,0,1)$ determines:

**A.** A walk of length 3 that is not a path  
**B.** A path of length 3  
**C.** A cycle of length 4  
**D.** No walk  

**Worked solution.** **A.** Each consecutive pair is an edge, so this is a length-three walk. Its vertex map repeats both vertices, so it is not injective and hence is not a path.

### M45 | Level 4 | PS07 | Graph homomorphisms

Let $K_2$ be the graph on $\{0,1\}$ with its sole possible edge. Which map is a homomorphism $C_6\to K_2$?

**A.** $f(i)=0$ for all $i$  
**B.** $f(i)=0$ for even $i$, and $f(i)=1$ for odd $i$  
**C.** $f(i)=0$ for $i<3$, and $f(i)=1$ otherwise  
**D.** $f(0)=1$ and $f(i)=0$ for $i>0$  

**Worked solution.** **B.** Alternating $0,1,0,1,0,1$ makes every consecutive cycle edge cross the edge of $K_2$; the closing edge $\{5,0\}$ also crosses it. A constant map collapses edges to a singleton, and the other choices have equal outputs on some adjacent vertices.

### M46 | Level 4 | PS07 | Odd cycles

How many graph homomorphisms $C_5\to K_2$ exist?

**A.** $2$  
**B.** $5$  
**C.** $10$  
**D.** $0$  

**Worked solution.** **D.** Once the image of vertex $0$ is chosen, adjacency forces the images to alternate. Vertex $4$ then has the same image as $0$, so the closing edge would map to a singleton instead of an edge. Neither starting choice works.

### M47 | Level 4 | PS07 | Loopless graphs

A graph $G$ has at least one edge. Can a constant vertex map from $G$ into a simple loopless graph $H$ be a graph homomorphism?

**A.** Always  
**B.** Only when $H$ has at least two vertices  
**C.** Never  
**D.** Only when $G$ has an odd number of vertices  

**Worked solution.** **C.** Both endpoints of an edge of $G$ would map to the same vertex $h$, producing $\{h\}$ rather than a two-element edge. Such a set cannot belong to $E(H)$.

### M48 | Level 4 | PS07 + LN11 | Counting edges

What is the maximum number of edges in a simple loopless graph with six vertices?

**A.** $15$  
**B.** $30$  
**C.** $36$  
**D.** $6$  

**Worked solution.** **A.** Each edge is a distinct two-element subset of the vertex set. There are $\binom62=15$ such subsets, all of which can occur together in the complete graph.

## Level 5: Synthesis and challenge

### M49 | Level 5 | LN10 | Bijective composites

Suppose $g\circ f:A\to C$ is bijective. Which is the strongest conclusion that always follows about the separate maps?

**A.** Both $f$ and $g$ are bijective  
**B.** $f$ is injective and $g$ is surjective  
**C.** $f$ is surjective and $g$ is injective  
**D.** Both $f$ and $g$ are injective  

**Worked solution.** **B.** The injectivity of the composite forces $f$ to be injective, and its surjectivity forces $g$ to be surjective. For a counterexample to the stronger alternatives, take $A=C=\{0\}$, $B=\{0,1\}$, $f(0)=0$, and $g(0)=g(1)=0$. The composite is bijective while $f$ is not onto $B$ and $g$ is not injective.

### M50 | Level 5 | LN10 | Empty-set exception

Which injection has no left inverse?

**A.** $\operatorname{id}_{\varnothing}$  
**B.** $\operatorname{id}_{\{0\}}$  
**C.** $f:\{0\}\to\{0,1\}$ with $f(0)=0$  
**D.** The unique function $\varnothing\to\{0\}$  

**Worked solution.** **D.** The unique map $\varnothing\to\{0\}$ is injective, but a left inverse would have to be a function $\{0\}\to\varnothing$, which cannot exist. The identity maps have themselves as inverses, and the last nonempty-domain injection admits a left inverse by assigning unused codomain points arbitrarily to $0$.

### M51 | Level 5 | LN10 + PS06 | Choice

For a surjection $f:A\to B$, a right inverse is constructed by choosing one input from each nonempty fiber. Which theorem in the homework justifies all those choices at once for an arbitrary family of fibers?

**A.** Existence of choice functions  
**B.** Extensionality alone  
**C.** Pascal\'s recurrence  
**D.** The finite pigeonhole principle alone  

**Worked solution.** **A.** The theorem on choice functions chooses one member from each nonempty fiber $f^{-1}(\{b\})$. Those choices define $h(b)$ with $f(h(b))=b$. Extensionality proves equality once membership is known; it does not perform these simultaneous choices.

### M52 | Level 5 | LN08 | Power sets of unions

For arbitrary sets $A,B$, when does $\mathcal P(A\cup B)=\mathcal P(A)\cup\mathcal P(B)$ hold?

**A.** For all $A,B$  
**B.** Exactly when $A\cap B=\varnothing$  
**C.** Exactly when $A\subseteq B$ or $B\subseteq A$  
**D.** Exactly when $A=B$  

**Worked solution.** **C.** If one set contains the other, both sides reduce to the larger power set. If neither contains the other, choose $a\in A\setminus B$ and $b\in B\setminus A$. Then $\{a,b\}$ is a subset of $A\cup B$ but is a subset of neither $A$ nor $B$, refuting equality.

### M53 | Level 5 | LN08 | Power sets of intersections

Which identity holds for every pair of sets $A,B$?

**A.** $\mathcal P(A\cup B)=\mathcal P(A)\cup\mathcal P(B)$  
**B.** $\mathcal P(A\cap B)=\mathcal P(A)\cap\mathcal P(B)$  
**C.** $\mathcal P(A\setminus B)=\mathcal P(A)\setminus\mathcal P(B)$  
**D.** $\mathcal P(A\triangle B)=\mathcal P(A)\triangle\mathcal P(B)$  

**Worked solution.** **B.** An arbitrary set $S$ belongs to $\mathcal P(A\cap B)$ iff $S\subseteq A\cap B$, iff $S\subseteq A$ and $S\subseteq B$, iff $S\in\mathcal P(A)\cap\mathcal P(B)$. The other equalities fail, for example for suitable disjoint singleton sets.

### M54 | Level 5 | PS06 + LN11 | Counting right inverses

A surjection $f:A\to\{0,1,2\}$ has fibers of sizes $2,3,4$, respectively. How many right inverses does $f$ have?

**A.** $9$  
**B.** $12$  
**C.** $4^3$  
**D.** $24$  

**Worked solution.** **D.** A right inverse independently selects one preimage of each of the three outputs. The number of choices is $2\cdot3\cdot4=24$. Every such selection is automatically injective because different fibers are disjoint.

### M55 | Level 5 | PS06 + LN11 | Counting left inverses

An injection $f:A\to B$ has $\#A=2$ and $\#B=5$. How many left inverses $g:B\to A$ does it have?

**A.** $2$  
**B.** $10$  
**C.** $8$  
**D.** $32$  

**Worked solution.** **C.** On the two points of $f(A)$, $g$ is forced by $g(f(a))=a$. Each of the other three points of $B$ may independently be sent to either of the two elements of $A$. Thus there are $2^3=8$ left inverses.

### M56 | Level 5 | LN11 | Permutations preserving a subset

Let $S\subseteq X$, $\#X=7$, and $\#S=3$. How many permutations $p:X\to X$ satisfy $p(S)=S$?

**A.** $144$  
**B.** $35$  
**C.** $5040$  
**D.** $24$  

**Worked solution.** **A.** Choose a permutation of $S$ in $3!$ ways and a permutation of its four-element complement in $4!$ ways. These choices are independent and uniquely determine $p$, giving $3!4!=144$.

### M57 | Level 5 | LN11 | Infinite discrete sets

Which statement is necessarily true?

**A.** Every infinite subset of $\mathbb R$ is unbounded  
**B.** Every infinite subset of $\mathbb Z$ is unbounded above  
**C.** Every bounded subset of $\mathbb R$ is finite  
**D.** Every infinite subset of $\mathbb N$ is unbounded above  

**Worked solution.** **D.** If an infinite subset $S$ of $\mathbb N$ were bounded above by $u\in\mathbb N$, it would be contained in the finite set $\{0,\ldots,u\}$, a contradiction. Infinite real sets can be bounded, and infinite integer sets need not be bounded below.

### M58 | Level 5 | LN09 | Regularity

Which configuration is forbidden by Regularity?

**A.** $a\in b$ and $a\subseteq b$  
**B.** $a\in b$, $b\in c$, and $c\in a$  
**C.** $a\in c$ and $b\in c$  
**D.** $a\subseteq b$ and $b\subseteq c$  

**Worked solution.** **B.** In a three-cycle of membership, each element of $\{a,b,c\}$ contains another member of that set, so it has no element disjoint from the set, contradicting Regularity. The other options occur among small well-founded sets; for example $a=0,b=1,c=2$ realizes C and D, and $a=0,b=1$ realizes A.

### M59 | Level 5 | LN10 | Cardinal comparison versus equality

On the collection of sets, define $A\mathrel{R}B$ iff $|A|\le|B|$. Why is $R$ not antisymmetric with respect to equality of sets?

**A.** Some set has no identity injection  
**B.** Injections do not compose  
**C.** Distinct sets can have equal cardinality  
**D.** Cantor-Schroder-Bernstein fails for finite sets  

**Worked solution.** **C.** Take $A=\{0\}$ and $B=\{1\}$. There are injections both ways, but $A\ne B$. Cantor-Schroder-Bernstein gives equality of cardinalities, not equality of sets. Reflexivity and transitivity of cardinal comparison still hold.

### M60 | Level 5 | PS06 + LN11 | Injective choice functions

Let $\mathcal A=\{\{0,1\},\{1,2\},\{0,2\}\}$. How many injective choice functions $\tau:\mathcal A\to\{0,1,2\}$ exist, where $\tau(S)\in S$ for each $S\in\mathcal A$?

**A.** $2$  
**B.** $6$  
**C.** $8$  
**D.** $3$  

**Worked solution.** **A.** List outputs in the order $\{0,1\},\{1,2\},\{0,2\}$. If the first output is $0$, distinctness forces the remaining outputs to be $1,2$. If the first output is $1$, distinctness forces the remaining outputs to be $2,0$. Thus the only injective choices are $(0,1,2)$ and $(1,2,0)$. Without injectivity there would instead be $2^3=8$ choice functions.



# Part II: Free response - no formal proofs

Give the requested value, construction, classification, counterexample, or concise explanation. Formal proofs are not required.

## Level 1: Foundations

### F01 | Level 1 | LN08 | Set operations

Let $A=\{0,1,3,5\}$ and $B=\{1,2,3,4\}$. Compute $A\cup B$, $A\cap B$, $A\setminus B$, $B\setminus A$, and $A\triangle B$.

**Worked solution.** The union keeps every element occurring in either roster; the intersection keeps only the common elements. Removing the common elements from each side gives the two differences:
$$A\cup B=\{0,1,2,3,4,5\},\qquad A\cap B=\{1,3\},$$
$$A\setminus B=\{0,5\},\qquad B\setminus A=\{2,4\}.$$
The symmetric difference keeps elements belonging to exactly one set, so
$$A\triangle B=(A\setminus B)\cup(B\setminus A)=\{0,2,4,5\}.$$

### F02 | Level 1 | LN08 | Families of sets

Let $\mathcal A=\{\{0,1,2\},\{1,2,3\},\{2,4\}\}$. Compute $\bigcup\mathcal A$ and $\bigcap\mathcal A$. Then compute the union and intersection of $\mathcal A\cup\{\varnothing\}$.

**Worked solution.** Taking elements that occur anywhere gives $\bigcup\mathcal A=\{0,1,2,3,4\}$. Only $2$ occurs in all three members, so $\bigcap\mathcal A=\{2\}$. Adding an empty member contributes no new element to the union, which stays $\{0,1,2,3,4\}$. It makes the intersection empty, because no element belongs to that empty member.

### F03 | Level 1 | LN08 | Power sets

List $\mathcal P(\{0,2\})$. Also compute $\#\mathcal P(\{0,2\})$ and $\#\mathcal P(\mathcal P(\{0,2\}))$.

**Worked solution.** A two-element set has the empty subset, two singleton subsets, and itself:
$$\mathcal P(\{0,2\})=\{\varnothing,\{0\},\{2\},\{0,2\}\}.$$
Thus its power set has $4$ elements. A power set of a four-element set has $2^4=16$ elements, so the second requested cardinality is $16$.

### F04 | Level 1 | LN09 | Natural numbers as sets

Write $0,1,2,3$ entirely using braces and $\varnothing$, with no numeral inside any brace. Then evaluate $\bigcup3$.

**Worked solution.** Repeatedly apply $s(x)=x\cup\{x\}$:
$$0=\varnothing,\qquad1=\{\varnothing\},\qquad2=\{\varnothing,\{\varnothing\}\},$$
$$3=\{\varnothing,\{\varnothing\},\{\varnothing,\{\varnothing\}\}\}.$$
Since $3=\{0,1,2\}$, its union is $0\cup1\cup2=\{0,1\}=2$. The operation removes one level of set brackets, rather than computing an arithmetical sum.

### F05 | Level 1 | LN09 | Successor of an arbitrary set

Let $x=\{\{\varnothing\}\}$. Compute $s(x)$ and $\#s(x)$. Is $x$ a natural number in the set-theoretic encoding? Give a short explanation.

**Worked solution.** Here $x=\{1\}$, so
$$s(x)=x\cup\{x\}=\{1,\{1\}\}=\{\{\varnothing\},\{\{\varnothing\}\}\}.$$
The two members are different, so $\#s(x)=2$. The set $x$ is not a natural number: it contains $1$ but not $0$, whereas every natural number containing $1$ is an initial segment and also contains $0$. Being a set with one element does not make it the particular natural number $1$.

### F06 | Level 1 | LN10 | Cartesian products

(a) Let $A=\{0,1\}$ and $B=\{2,3,4\}$. List $A\times B$ and compute $\#(A\times B)$. Is $(2,0)$ in $A\times B$? (b) For the encoded pair $p=(0,2)$, compute $\bigcap p$, $\bigcup p$, $\bigcup\bigcap p$, and $\bigcup((\bigcup p)\setminus(\bigcap p))$.

**Worked solution.** Choose the first coordinate from $A$ and the second from $B$:
$$A\times B=\{(0,2),(0,3),(0,4),(1,2),(1,3),(1,4)\}.$$
There are $2\cdot3=6$ pairs. The pair $(2,0)$ is not included: $2\notin A$ and $0\notin B$, so it violates both coordinate requirements.

(b) Since $p=\{\{0\},\{0,2\}\}$, the intersection is $\{0\}$ and the union is $\{0,2\}$. Thus $\bigcup\bigcap p=\bigcup\{0\}=0$, while $\bigcup((\bigcup p)\setminus(\bigcap p))=\bigcup\{2\}=2$. These operations recover the two coordinates; recall that $0$ is itself the empty set.

### F07 | Level 1 | LN10 | Testing function definitions

Let $A=\{0,1,2\}$ and $B=\{a,b\}$, where $a\ne b$. Decide which of the following relations are functions $A\to B$, and state the failed requirement for each that is not:
$$R_1=\{(0,a),(1,b)\},\quad R_2=\{(0,a),(1,a),(2,b)\},$$
$$R_3=\{(0,a),(0,b),(1,a),(2,b)\}.$$

**Worked solution.** Only $R_2$ is a function $A\to B$: all three inputs occur, each with one output. The relation $R_1$ fails existence of an output for input $2$. The relation $R_3$ fails uniqueness for input $0$, which has the two different outputs $a$ and $b$. Reusing an output for different inputs, as $R_2$ does, is allowed.

### F08 | Level 1 | LN10 | Range and fibers

A function $f:\{0,1,2,3,4\}\to\{a,b,c,d\}$ has values $a,c,a,c,b$ in input order. Find its range, the set of preimages of $c$, and the set of preimages of $d$. Classify injectivity and surjectivity.

**Worked solution.** The actual outputs are $a,b,c$, so $\operatorname{ran}(f)=\{a,b,c\}$. The fiber over $c$ is $\{1,3\}$, while the fiber over $d$ is $\varnothing$. Repetition, for example $f(0)=f(2)$, shows that $f$ is not injective. The missing output $d$ shows that it is not surjective onto its declared codomain.

### F09 | Level 1 | LN10 | Composition tables

Let $f:\{0,1,2\}\to\{a,b,c\}$ satisfy $f(0)=b,f(1)=a,f(2)=c$. Let $g:\{a,b,c\}\to\{u,v\}$ satisfy $g(a)=v,g(b)=u,g(c)=v$. List $g\circ f$ as ordered pairs and state its domain and codomain.

**Worked solution.** Following each input through $f$ and then $g$ gives $0\mapsto b\mapsto u$, $1\mapsto a\mapsto v$, and $2\mapsto c\mapsto v$. Thus
$$g\circ f=\{(0,u),(1,v),(2,v)\}:\{0,1,2\}\to\{u,v\}.$$
The domain comes from $f$ and the codomain from $g$.

### F10 | Level 1 | LN10 | Inverse tables

Let $f:\{0,1,2\}\to\{a,b,c\}$ have $f(0)=c,f(1)=a,f(2)=b$. Write the inverse as a typed function and as a set of ordered pairs. Compute $(f^{-1}\circ f)(2)$.

**Worked solution.** Each output occurs exactly once, so reversing each input-output pair gives
$$f^{-1}:\{a,b,c\}\to\{0,1,2\},\qquad f^{-1}=\{(a,1),(b,2),(c,0)\}.$$
Since $f(2)=b$ and $f^{-1}(b)=2$, the composition evaluated at $2$ is $2$, as required for $\operatorname{id}_{\{0,1,2\}}$.

### F11 | Level 1 | LN10 | Floor, ceiling, absolute value

Evaluate $\lfloor-7/3\rfloor$, $\lceil-7/3\rceil$, $\lfloor7/3\rfloor$, $\lceil7/3\rceil$, and $|-7/3|$.

**Worked solution.** Since $-3<-7/3<-2$, the greatest integer below it is $-3$ and the least integer above it is $-2$. Since $2<7/3<3$, the positive floor and ceiling are $2$ and $3$. Absolute value removes the negative sign. In order, the results are
$$-3,\quad-2,\quad2,\quad3,\quad7/3.$$

### F12 | Level 1 | LN09 | Algebraic structures

For each structure, state whether it is a monoid and whether it is a group: $(\mathbb N,+)$, $(\mathbb Z,+)$, $(\mathbb Z,\cdot)$, and $(\mathbb Q\setminus\{0\},\cdot)$. Give a short reason for each group decision. Also classify $\mathbb N,\mathbb Z,\mathbb Q,\mathbb R$ under their usual addition and multiplication as a semiring, ring, or field, and explain why zero has no multiplicative inverse.

**Worked solution.** All four are monoids: their operations are closed and associative, with identity $0$ for addition and $1$ for multiplication. Their group status is:

| Structure | Group? | Reason |
|---|---|---|
| $(\mathbb N,+)$ | No | $1$ has no additive inverse in $\mathbb N$. |
| $(\mathbb Z,+)$ | Yes | Each $z$ has the inverse $-z$. |
| $(\mathbb Z,\cdot)$ | No | $2$ has no integer multiplicative inverse; $0$ also has none. |
| $(\mathbb Q\setminus\{0\},\cdot)$ | Yes | Each $q$ has inverse $1/q$ in this set. |

With their usual addition and multiplication, $\mathbb N$ is a commutative semiring, $\mathbb Z$ is a commutative ring, and $\mathbb Q$ and $\mathbb R$ are fields. Passing from the naturals to the integers supplies additive inverses; passing to the rationals supplies multiplicative inverses for nonzero elements. Zero cannot have a multiplicative inverse, because $0\cdot y=0\ne1$ for every $y$.

## Level 2: Applying definitions

### F13 | Level 2 | LN08 | Translating definitions

Rewrite the following using quantifiers, $\in$, $=$, and logical connectives, without $\subseteq$, $\cap$, or $\setminus$: (a) $A\subseteq B$; (b) $A\cap B=\varnothing$; (c) $A\setminus B\ne\varnothing$.

**Worked solution.** Expand each operation by its membership condition:

(a) $\forall x(x\in A\Rightarrow x\in B)$.

(b) $\forall x\neg(x\in A\land x\in B)$, or equivalently $\neg\exists x(x\in A\land x\in B)$.

(c) $\exists x(x\in A\land x\notin B)$.

The first two are universal requirements; the last asks for one witness in $A$ outside $B$.

### F14 | Level 2 | LN10 | Negating injectivity

For $f:X\to Y$, write a quantified formula for "$f$ is not injective." Then give witnesses for $f:\mathbb Z\to\mathbb N$, $f(n)=n^2$.

**Worked solution.** Negating the universal injectivity condition gives
$$\exists x\in X\ \exists x'\in X\ (x\ne x'\land f(x)=f(x')).$$
For the displayed squaring function, take $x=1$ and $x'=-1$. They are distinct integers but both have output $1$.

### F15 | Level 2 | LN10 | Negating surjectivity

For $f:X\to Y$, write a quantified formula for "$f$ is not surjective." Then give a missing output for $f:\mathbb Z\to\mathbb Z$, $f(n)=2n+1$.

**Worked solution.** Negating $\forall y\in Y\ \exists x\in X\ (f(x)=y)$ yields
$$\exists y\in Y\ \forall x\in X\ (f(x)\ne y).$$
Choose $y=0$: solving $2n+1=0$ would require $n=-1/2$, which is not an integer. Thus $0$ is a codomain element with no preimage.

### F16 | Level 2 | LN10 | Unique existence

Expand $(\forall x\in X)(\exists!y\in Y)((x,y)\in f)$ without the $\exists!$ symbol. Explain in one sentence what the two parts inside the expansion do.

**Worked solution.** One expansion is
$$\forall x\bigl(x\in X\Rightarrow\exists y\bigl[y\in Y\land(x,y)\in f\ \land\ \forall z((z\in Y\land(x,z)\in f)\Rightarrow z=y)\bigr]\bigr).$$
The existential clause supplies an output for each input, and the universal clause says that every candidate output equals that one, establishing uniqueness. For the full definition of $f:X\to Y$, also require $f\subseteq X\times Y$.

### F17 | Level 2 | LN08 | Separation templates

For each desired set, give a known ambient set and a filtering property that constructs it by Separation: $A\cap B$, $A\setminus B$, and $A\triangle B$. You may assume $A\cup B$ exists.

**Worked solution.** Use the following bounded comprehensions:
$$A\cap B=\{x\in A\mid x\in B\},\qquad A\setminus B=\{x\in A\mid x\notin B\},$$
$$A\triangle B=\{x\in A\cup B\mid\neg(x\in A\land x\in B)\}.$$
The first two filter $A$. The last filters $A\cup B$, keeping exactly the elements that do not lie in both sets. Each displayed ambient set is already known to exist.

### F18 | Level 2 | LN08 | Axiom-based constructions

Given arbitrary sets $a,b,c$, describe a sequence of Pairing and Union applications that constructs $\{a,b,c\}$. Do not use a general finite-set existence theorem.

**Worked solution.** Pairing first constructs $p=\{a,b\}$ and $r=\{c,c\}=\{c\}$. Pairing again constructs $t=\{p,r\}$. The Union axiom then constructs
$$\bigcup t=p\cup r=\{a,b,c\}.$$
This recipe works even if some of $a,b,c$ coincide, because repeated entries do not alter a set.

### F19 | Level 2 | LN08 + LN09 + LN10 | Comprehension pitfalls

A student writes: "By Separation, $R=\{x\mid x\notin x\}$ is a set." Identify the missing ingredient. For an actual set $A$, what does $R_A=\{x\in A\mid x\notin x\}$ equal when Regularity is available? Finally, contrast Separation with Replacement: what kind of collection does Replacement guarantee, and what uniqueness requirement does it impose?

**Worked solution.** The unbounded expression has no previously existing ambient set from which Separation can filter elements. Separation therefore does not justify that assertion. The bounded expression $R_A$ is legitimate. Regularity implies $x\notin x$ for every set $x$, so its filtering condition removes nothing: $R_A=A$.

Separation keeps selected members of an existing ambient set. Replacement instead collects the outputs of a definable rule on an existing domain $X$, provided every input in $X$ has exactly one output in the universe. Formally, if $(\forall x\in X)\exists!y\,\varphi(x,y)$, it gives a set $Y=\{y\mid\exists x\in X\,\varphi(x,y)\}$. Its outputs need not have been supplied inside a preselected output set.

### F20 | Level 2 | LN10 | Bounds and extrema

For each set below, give its real infimum and supremum and say whether it has a minimum and a maximum: $S=(0,1)$, $T=\{1/n\mid n\in\mathbb N,\ n\ge1\}$, and $U=\{z\in\mathbb Z\mid-3\le z\le4\}$.

**Worked solution.** For $S$, the endpoints are bounds but are absent; for $T$, its values approach $0$ without reaching it and its largest value is $1$; $U$ contains both endpoints.

| Set | Infimum | Supremum | Minimum | Maximum |
|---|---|---|---|---|
| $S$ | $0$ | $1$ | None | None |
| $T$ | $0$ | $1$ | None | $1$ |
| $U$ | $-3$ | $4$ | $-3$ | $4$ |

An extremum must belong to the set; a supremum or infimum need not.

### F21 | Level 2 | LN10 | Infinite-set counterexamples

Give (a) an injective function $\mathbb N\to\mathbb N$ that is not surjective, and (b) a surjective function $\mathbb N\to\mathbb N$ that is not injective. State a missing output in (a) and a collision in (b).

**Worked solution.** (a) Take $f(n)=n+1$. Distinct inputs give distinct outputs, and output $0$ is missing.

(b) Take $g(n)=\lfloor n/2\rfloor$. Every $k\in\mathbb N$ is hit by $2k$, but $g(0)=g(1)=0$ gives a collision. Infinite sets therefore allow either one of injectivity and surjectivity without the other for a self-map.

### F22 | Level 2 | LN11 | Counting functions

How many functions are there from $\{0,1,2,3,4\}$ to $\{a,b,c\}$? How many satisfy $f(0)=a$ and $f(1)=b$?

**Worked solution.** With no restrictions, each of five inputs has three output choices, giving $3^5=243$. With two outputs fixed, only the other three inputs are free, each with three choices, so the count is $3^3=27$. Repeated output values are allowed in both counts.

### F23 | Level 2 | LN11 | Counting injections

How many injections exist from a four-element set into a six-element set? How many bijections exist between these sets?

**Worked solution.** For the four inputs in a fixed order, choose distinct outputs in $6,5,4,3$ ways. Thus the number of injections is
$$6\cdot5\cdot4\cdot3=360.$$
There are no bijections: four distinct outputs cannot cover a six-element codomain.

### F24 | Level 2 | LN11 | Counting onto maps

Count the surjections from a four-element set onto $\{0,1\}$. Then count those surjections satisfying $f(a)=0$ for one fixed domain element $a$.

**Worked solution.** There are $2^4=16$ functions in all; remove the two constant functions to get $14$ surjections. If $f(a)=0$ is fixed, the remaining three inputs have $2^3=8$ assignments. The only one that is not onto sends all of them to $0$. Hence the restricted count is $8-1=7$.

## Level 3: Exam-level reasoning

### F25 | Level 3 | LN10 | Composite inverses

Let $f,g:\mathbb R\to\mathbb R$ satisfy $f(x)=3x-2$ and $g(x)=x^3$. Find $h=g\circ f$ and a formula for $h^{-1}$, including domain and codomain.

**Worked solution.** First apply the affine map and then cube:
$$h(x)=(3x-2)^3,\qquad h:\mathbb R\to\mathbb R.$$
Solve $y=(3x-2)^3$ for $x$: take the real cube root, add $2$, and divide by $3$. Therefore
$$h^{-1}(y)=\frac{\sqrt[3]{y}+2}{3},\qquad h^{-1}:\mathbb R\to\mathbb R.$$
These operations are defined for every real $y$ and undo the operations of $h$ in reverse order.

### F26 | Level 3 | PS06 | All left inverses

Let $f:\{0,1\}\to\{a,b,c\}$ satisfy $f(0)=b$ and $f(1)=a$. List every left inverse $g:\{a,b,c\}\to\{0,1\}$.

**Worked solution.** The equation $g\circ f=\operatorname{id}_{\{0,1\}}$ forces $g(b)=0$ and $g(a)=1$. The value at $c$, which is outside the range of $f$, is free. Consequently there are exactly two left inverses:
$$g_0=\{(a,1),(b,0),(c,0)\},\qquad g_1=\{(a,1),(b,0),(c,1)\}.$$
Each satisfies both forced equalities, so each really is a left inverse.

### F27 | Level 3 | PS06 | All right inverses

Let $f:\{0,1,2,3\}\to\{a,b\}$ have $f(0)=f(1)=a$ and $f(2)=f(3)=b$. List every right inverse $h:\{a,b\}\to\{0,1,2,3\}$.

**Worked solution.** The equation $f\circ h=\operatorname{id}_{\{a,b\}}$ requires $h(a)\in\{0,1\}$ and $h(b)\in\{2,3\}$. Choosing independently gives four functions:
$$\{(a,0),(b,2)\},\quad\{(a,0),(b,3)\},$$
$$\{(a,1),(b,2)\},\quad\{(a,1),(b,3)\}.$$
Each chosen value lies in the correct fiber, which verifies the right-inverse equation.

### F28 | Level 3 | LN10 | Compatibility

Let $A,B,C$ be pairwise distinct sets, and let $f:A\to B$, $g:B\to C$, and $h:C\to B$. Under the lecture rule requiring exact equality of intermediate domain and codomain, list all well-typed compositions of two maps chosen from $f,g,h$, allowing a map to be repeated. Give their domains and codomains.

**Worked solution.** A composite $v\circ u$ is allowed exactly when the codomain of $u$ equals the domain of $v$. The complete list is
$$g\circ f:A\to C,\qquad h\circ g:B\to B,\qquad g\circ h:C\to C.$$
No map has codomain $A$, so no composition can have $f$ as its outer map. The distinctness assumptions eliminate all remaining potential matches, including self-compositions.

### F29 | Level 3 | PS05 | Empty and singleton universal properties

Find sets $I,T$ such that there is exactly one function $I\to Y$ for every set $Y$, and exactly one function $X\to T$ for every set $X$. Give the actual function in each case, including when the other set is empty. A short explanation is sufficient.

**Worked solution.** Take $I=\varnothing$. For every $Y$, the empty relation is the only function $\varnothing\to Y$, because there are no inputs or possible ordered pairs.

Take any singleton $T=\{t\}$. For every $X$, the only possible function is $x\mapsto t$, with graph $\{(x,t)\mid x\in X\}$. If $X=\varnothing$, this is again the empty relation. A nonempty $I$ could not map to $Y=\varnothing$, and a target $T$ with zero or multiple elements would give zero or multiple functions from a singleton.

### F30 | Level 3 | LN11 | Restricted subsets

Let $X$ have eight elements. Fix disjoint subsets $R,F\subseteq X$ with $\#R=2$ and $\#F=3$. Count (a) all $S\subseteq X$ with $R\subseteq S$ and $S\cap F=\varnothing$; (b) those such $S$ with $\#S=4$.

**Worked solution.** The two required elements are fixed in, the three forbidden elements are fixed out, and the remaining $8-2-3=3$ elements are free. Thus (a) has $2^3=8$ choices. In (b), the subset already contains two elements, so exactly two of the three free elements must be selected. The count is $\binom32=3$.

### F31 | Level 3 | LN11 | Three-set inclusion-exclusion

In a universe of $80$ people, sets $A,B,C$ have sizes $35,30,28$. The pairwise intersection sizes are $\#(A\cap B)=12$, $\#(A\cap C)=10$, and $\#(B\cap C)=9$. Exactly $4$ people belong to all three. How many belong to at least one set, and how many to none?

**Worked solution.** Use inclusion-exclusion, where each pairwise intersection includes the triple intersection:
$$\#(A\cup B\cup C)=35+30+28-12-10-9+4=66.$$
The triple intersection is added back because the earlier additions and subtractions give its members total weight zero. The number outside all three sets is $80-66=14$.

### F32 | Level 3 | LN11 | Exactly-one and exactly-two counts

Using the data in F31, compute the numbers of people belonging to exactly two sets and to exactly one set.

**Worked solution.** First remove the triple intersection from each pairwise intersection. The three exactly-two regions have sizes $12-4=8$, $10-4=6$, and $9-4=5$, so their total is $19$. The union has $66$ members, of whom $19$ are in exactly two sets and $4$ are in all three. Thus the exactly-one count is $66-19-4=43$. As a cross-check, the sum of individual sizes is $93=43+2\cdot19+3\cdot4$.

### F33 | Level 3 | LN11 | Binary strings

How many binary strings of length eight (a) contain exactly three ones, and (b) contain at least one one? Interpret a string as a function from an eight-element position set to $\{0,1\}$.

**Worked solution.** (a) Choose the three positions containing ones; all other positions are then zeros. This gives $\binom83=56$ strings.

(b) There are $2^8=256$ functions in all. Exactly one is the all-zero string, so $256-1=255$ strings contain at least one one.

### F34 | Level 3 | LN11 | Permutations with a block

Six distinct books, including books A and B, are placed in a row. Count arrangements in which A and B are adjacent. Then count arrangements in which A is immediately to the left of B.

**Worked solution.** Treat the adjacent pair as one block. The block and the four other books make five distinct objects, with $5!$ orders. Within the block there are two orders, AB or BA, so adjacency gives $2\cdot5!=240$. If A must immediately precede B, only AB is allowed inside the block, leaving $5!=120$ arrangements.

### F35 | Level 3 | LN11 | Generalized pigeonhole principle

What is the smallest number of people needed to guarantee that at least six share a birth month? Assume twelve possible months. Explain why one fewer person does not suffice.

**Worked solution.** With at most five people in each of twelve months, the total can be $12\cdot5=60$. One additional person forces some month to have at least six, so the threshold is $61$. The guarantee fails for $60$ people: put exactly five in each month. Equivalently, $\lceil61/12\rceil=6$.

### F36 | Level 3 | LN11 | Pairing pigeonholes

What is the smallest number of distinct integers selected from $\{1,2,\ldots,40\}$ that guarantees two selected integers sum to $41$? Describe the pigeonholes and an example showing sharpness.

**Worked solution.** Partition the set into twenty pairs $\{1,40\},\{2,39\},\ldots,\{20,21\}$. Selecting $21$ numbers forces both members of some pair to be selected, giving sum $41$. Selecting only $20$ need not work: $\{1,2,\ldots,20\}$ has no pair with sum $41$. Thus the exact threshold is $21$.

## Level 4: Hard applications

### F37 | Level 4 | LN11 | Combinations with spacing

How many three-element subsets of $\{1,2,\ldots,9\}$ contain no consecutive integers? Describe a transformation that turns this into an ordinary combination count.

**Worked solution.** Write the subset uniquely as $a_1<a_2<a_3$, with $a_{i+1}\ge a_i+2$. Set $b_1=a_1$, $b_2=a_2-1$, and $b_3=a_3-2$. Then $1\le b_1<b_2<b_3\le7$. Conversely, from such a triple recover $(a_1,a_2,a_3)=(b_1,b_2+1,b_3+2)$, so no choices are lost or repeated. The count is therefore $\binom73=35$.

### F38 | Level 4 | LN11 | Surjections by inclusion-exclusion

Count the surjections from a five-element set onto a three-element set. Explain each term in your calculation.

**Worked solution.** Start with all $3^5$ functions. For each of the three codomain elements, there are $2^5$ functions omitting it, so subtract $3\cdot2^5$. A function omitting two specified elements has only one available output, and has been subtracted twice; add these $\binom32 1^5$ cases back. Omitting all three is impossible for a nonempty domain. The result is
$$3^5-3\cdot2^5+3\cdot1^5=243-96+3=150.$$

### F39 | Level 4 | LN11 | Preserving versus fixing a subset

Let $X$ have eight elements and $S\subseteq X$ have three elements. Count permutations $p:X\to X$ satisfying (a) $p(S)=S$; (b) $p(s)=s$ for every $s\in S$.

**Worked solution.** (a) Setwise preservation allows any permutation inside $S$ and independently any permutation of its five-element complement, giving $3!5!=720$.

(b) Pointwise fixing leaves no choice on $S$, while the complement can still be permuted arbitrarily. The count is $5!=120$. The distinction is whether the three points may move among themselves.

### F40 | Level 4 | LN11 | Binomial theorem with signs

Find the coefficient of $x^3$ in $(2x-3)^5$ and the constant term of this polynomial.

**Worked solution.** To obtain $x^3$, choose $2x$ in three factors and $-3$ in the other two. Its coefficient is
$$\binom53 2^3(-3)^2=10\cdot8\cdot9=720.$$
The constant term chooses $-3$ from every factor and is $(-3)^5=-243$. Keeping the sign inside the power prevents a sign error.

### F41 | Level 4 | LN11 | Counting divisibility unions

How many integers in $\{1,2,\ldots,180\}$ are divisible by at least one of $2,3,5$? How many by none of them?

**Worked solution.** The separate counts are $90,60,36$. Pairwise intersections are multiples of $6,10,15$, with counts $30,18,12$, and the triple intersection consists of multiples of $30$, with count $6$. Hence
$$90+60+36-30-18-12+6=132$$
integers are divisible by at least one. The complement has $180-132=48$ integers. Each floor division is exact for this endpoint.

### F42 | Level 4 | LN11 | Boundedness and finiteness

Classify each set as finite or infinite, and say whether it is bounded above and below in $\mathbb R$: $\{n\in\mathbb N\mid n\le12\}$, $\mathbb Z_{\le0}$, and $\{1/n\mid n\ge1\}$. Explain briefly why the bounded-discrete-set corollary does not make the last set finite.

**Worked solution.** The first set has $13$ members and is bounded below by $0$ and above by $12$. The nonpositive integers are infinite and bounded above by $0$, but have no lower bound. The reciprocals are infinite and bounded below by $0$ and above by $1$.

The corollary applies to a bounded subset of $\mathbb Z$ (or an above-bounded subset of $\mathbb N$). The reciprocal set is not a subset of either discrete number set; infinitely many distinct real values can fit inside a bounded interval.

### F43 | Level 4 | LN10 | Explicit infinite bijections

Give an explicit bijection $b:\mathbb Z\to\mathbb N$ that sends $0,1,-1,2,-2,3,-3$ to $0,1,2,3,4,5,6$, respectively. Give its inverse formula and use it to find the preimage of $17$. Does this explicit construction require the Dichotomy axiom? State what that axiom asserts.

**Worked solution.** The required formula is
$$b(z)=\begin{cases}2z-1&z>0,\\-2z&z\le0.\end{cases}$$
Positive integers supply the odd natural outputs; nonpositive integers supply the even ones, including zero. Thus
$$b^{-1}(n)=\begin{cases}(n+1)/2&n\text{ odd},\\-n/2&n\text{ even}.\end{cases}$$
These two rules undo each other on both parity classes. Since $17$ is odd, its preimage is $9$.

This explicit construction does not require Dichotomy. That axiom says any two sets have comparable cardinalities: $|A|\le|B|$ or $|B|\le|A|$, meaning an injection exists in at least one direction. Comparability alone does not assert equal cardinality or supply a particular bijection.

### F44 | Level 4 | LN10 + LN11 | Idempotent maps

A function $p:X\to X$ is called idempotent when $p\circ p=p$. Count the idempotent functions on a three-element set $X$. Hint: classify them by the size of their range.

**Worked solution.** If $y=p(x)$ is in the range, then $p(y)=p(p(x))=p(x)=y$; every range element is fixed. Conversely, choose a nonempty range $R$, fix each point of $R$, and send each remaining point to any member of $R$. This gives all idempotents exactly once. For a three-element set, the count is
$$\binom31 1^2+\binom32 2^1+\binom33 3^0=3+6+1=10.$$
The range cannot be empty because the domain is nonempty.

### F45 | Level 4 | PS07 | Walk, path, circuit, cycle

Let $G$ have vertex set $\{0,1,2,3\}$ and edges $\{0,1\},\{1,2\},\{2,0\},\{2,3\}$. For each sequence, decide whether it gives a walk; if so, give its length and say whether it is a path: $(0,1,2,3)$, $(0,2,0,1)$, $(0,3)$. Also classify the map $C_3\to G$ taking $i$ to $i$ for $i=0,1,2$.

**Worked solution.** The first sequence uses three edges and has no repeated vertex, so it is a length-three path and hence a walk. The second also uses three valid edges, so it is a length-three walk, but vertex $0$ repeats and it is not a path. The third fails because $\{0,3\}$ is not an edge.

The $C_3$ map preserves the three edges $\{0,1\},\{1,2\},\{2,0\}$ and is injective. It is therefore a cycle of length three and, in particular, a circuit.

### F46 | Level 4 | PS07 | Constructing a graph map

Give a graph homomorphism $f:P_4\to P_2$ whose image contains every vertex of $P_2$. List its five values in order. Is it a monomorphism?

**Worked solution.** Use the vertex sequence $(0,1,2,1,0)$, so $f(0)=0,f(1)=1,f(2)=2,f(3)=1,f(4)=0$. Each consecutive pair is either $\{0,1\}$ or $\{1,2\}$, an edge of $P_2$, and all three target vertices occur. It is not a monomorphism because $f(0)=f(4)$ and $f(1)=f(3)$ repeat values. Thus it is a surjective vertex homomorphism but not a path in $P_2$.

### F47 | Level 4 | PS07 | Counting cycle homomorphisms

How many graph homomorphisms $C_4\to K_2$ are there? How many of them are monomorphisms?

**Worked solution.** Choose the image of vertex $0$ in two ways. Every later image is forced to alternate, and the closing edge works because the cycle length is even. The two value lists are $(0,1,0,1)$ and $(1,0,1,0)$. Thus there are two homomorphisms. Neither is injective: four source vertices cannot inject into two target vertices. The monomorphism count is zero.

### F48 | Level 4 | PS07 + LN11 | Counting paths

Let $K_5$ be the complete graph on five vertices, and fix a starting vertex $v$. How many paths of length three start at $v$? Count vertex maps $P_3\hookrightarrow K_5$, so different vertex sequences are counted separately.

**Worked solution.** A path must use four distinct vertices. Starting at $v$, choose the next vertex in $4$ ways, the next in $3$, and the last in $2$. Completeness guarantees all consecutive pairs are edges. The count is $4\cdot3\cdot2=24$. There is no division by reversal because the starting vertex is fixed and the question counts maps.

## Level 5: Synthesis and challenge

### F49 | Level 5 | PS07 | Cofinite subsets

Give two different explicit infinite families of distinct cofinite subsets of $\mathbb N$: one whose complements are singletons and one whose complements have sizes $0,1,2,\ldots$. State the complement of the $n$th member of each family.

**Worked solution.** For the first family, use $A_n=\mathbb N\setminus\{n\}$ for $n\in\mathbb N$, so $\mathbb N\setminus A_n=\{n\}$. Distinct indices omit different points.

For the second, use $B_n=\{m\in\mathbb N\mid m\ge n\}$, so $\mathbb N\setminus B_n=\{0,1,\ldots,n-1\}=n$. At $n=0$, this complement is empty. The complements have different finite sizes, so the family members are distinct and cofinite.

### F50 | Level 5 | LN10 + LN11 | Relations versus functions

For a two-element set $X$, count (a) all relations $R\subseteq X\times X$, (b) all functions $X\to X$, (c) all injections $X\to X$, and (d) all surjections $X\to X$. Explain why the counts differ.

**Worked solution.** The product $X\times X$ has four pairs, so an arbitrary relation chooses any subset of those pairs: $2^4=16$. A function independently picks one output per input, giving $2^2=4$. Injections must use two distinct outputs, giving $2!=2$. On a finite two-element set, surjections are exactly the bijections, so there are also $2$ surjections. General relations need not supply exactly one output per input, which explains their larger count.

### F51 | Level 5 | LN11 | Recovering a cardinality

A finite set $X$ satisfies $\#\mathcal P(\mathcal P(X))=65536$. Find $\#X$ and the number of permutations of $X$.

**Worked solution.** Let $n=\#X$. The equation is $2^{2^n}=65536=2^{16}$, so $2^n=16=2^4$ and $n=4$. Therefore $X$ has $4!=24$ permutations. There are two successive power-set operations, so two exponent comparisons are needed.

### F52 | Level 5 | LN11 | Partitions into three blocks

How many partitions of a six-element set into exactly three nonempty blocks are there? First count onto functions to three labeled outputs, then account for the fact that the blocks of a partition have no labels.

**Worked solution.** An onto function to $\{0,1,2\}$ assigns each element to one of three nonempty labeled fibers. Inclusion-exclusion gives
$$3^6-3\cdot2^6+3\cdot1^6=729-192+3=540.$$
Each partition into three nonempty blocks produces exactly $3!=6$ such functions by labeling its three distinct blocks. Thus the desired count is $540/6=90$. Nonemptiness is what ensures three actual blocks exist to label.

### F53 | Level 5 | LN10 | Counterexamples for composites

Construct explicit functions on finite nonempty sets showing that a bijective composite $g\circ f:A\to C$ need not make $f$ surjective or $g$ injective. Then give a separate example showing $g\circ f\ne f\circ g$ even when both are well typed.

**Worked solution.** For the first request, take $A=C=\{0\}$, $B=\{0,1\}$, $f(0)=0$, and $g(0)=g(1)=0$. Then $g\circ f$ is the identity on a singleton, but $f$ misses $1$ and $g$ identifies its two inputs.

For noncommutativity, use maps on $\{0,1\}$: let $u$ swap $0$ and $1$, and let $v$ be constantly $0$. The composite $u\circ v$ is constantly $1$, while $v\circ u$ is constantly $0$. Their domains and codomains agree but their values do not.

### F54 | Level 5 | LN09 | Finding a Regularity witness

Let $X=\{1,2,\{2\}\}$, using the set-theoretic natural numbers. Find every $y\in X$ for which $X\cap y=\varnothing$. Show the three intersections explicitly.

**Worked solution.** Recall $1=\{0\}$ and $2=\{0,1\}$. None of the three elements of $X$ is $0$, but $1$ and $2$ are elements of $X$. Consequently
$$X\cap1=\varnothing,\qquad X\cap2=\{1\},\qquad X\cap\{2\}=\{2\}.$$
Only $y=1$ is disjoint from $X$, so it is the unique Regularity witness in this example. An element being a member of $X$ does not by itself mean it intersects $X$.

### F55 | Level 5 | LN10 | Repairing a definition

A proposed definition is $\lceil r\rceil=\sup\{m\in\mathbb Z\mid r\le m\}$. Identify the problem and give a corrected definition using $\inf$. Evaluate it at $r=-5/2$.

**Worked solution.** The integer set $\{m\in\mathbb Z\mid r\le m\}$ is unbounded above, so it has no real supremum. The desired value is its least member, not an upper bound. The corrected formula is
$$\lceil r\rceil=\inf\{m\in\mathbb Z\mid r\le m\}.$$
For $r=-5/2$, the admissible integers are $-2,-1,0,1,\ldots$, whose least member is $-2$.

### F56 | Level 5 | PS07 | Deleting a repeated segment

A walk has value sequence $(a,b,c,d,b,e,f)$, with $a,b,c,d,e,f$ distinct. Delete the segment between the two occurrences of $b$ using indices $i=1,j=4$. Give the new sequence, its length, the index map $q$, and the shortened walk's endpoints.

**Worked solution.** The original walk has length $k=6$. The repeated indices differ by $j-i=3$, so the new length is $\ell=k-j+i=3$. Keep the first $b$ and jump to the point after its repeated occurrence, obtaining $(a,b,e,f)$. The new index map is
$$q:\{0,1,2,3\}\to\{0,1,\ldots,6\},\qquad q(0)=0,\ q(1)=1,\ q(2)=5,\ q(3)=6.$$
Although $q$ jumps from $1$ to $5$, the new edge is valid: writing $w$ for the old walk, $w(1)=w(4)=b$, and the old edge from index $4$ to index $5$ joins $b$ to $e$. The endpoints stay $a$ and $f$.

### F57 | Level 5 | PS07 + LN11 | Counting graph homomorphisms

Count graph homomorphisms (a) $K_3\to K_4$ and (b) $P_3\to K_3$. In (b), also count monomorphisms. The graph $K_m$ is complete and loopless on $m$ vertices.

**Worked solution.** (a) Every two vertices of $K_3$ are adjacent, so their images must be different. Choose three distinct vertices of $K_4$ in order: $4\cdot3\cdot2=24$ homomorphisms.

(b) The four vertices of $P_3$ are ordered along the path. Choose the first image in $3$ ways; each subsequent image may be either target vertex different from the preceding image. This gives $3\cdot2^3=24$ homomorphisms. There are no monomorphisms, because four distinct source vertices cannot inject into three target vertices.

### F58 | Level 5 | PS07 + LN11 | Counting labeled graphs

On one fixed six-element vertex set, count (a) simple graphs with exactly five edges; (b) such graphs that contain three specified distinct edges and avoid two other specified distinct edges. Assume all five specified edges are distinct possible edges.

**Worked solution.** There are $\binom62=15$ possible edges. For (a), choose any five, giving $\binom{15}{5}=3003$ graphs. For (b), three edges are already included and two are forbidden, leaving $15-3-2=10$ undecided edges. Choose two of those to reach five edges in total, giving $\binom{10}{2}=45$. The vertices are fixed and labeled, so no quotient by graph symmetries is taken.

### F59 | Level 5 | PS07 | A family of path and cycle maps

For $n\in\mathbb N$, give the number of homomorphisms $P_n\to K_2$ and the number that are monomorphisms. For $n\ge3$, give the number of homomorphisms $C_n\to K_2$ as a function of the parity of $n$.

**Worked solution.** There are two homomorphisms $P_n\to K_2$ for every $n\ge0$: choose the image of $0$, and every subsequent value must alternate. For $n=0$ and $n=1$, both maps are injective. For $n\ge2$, the domain has at least three vertices, so no map into two vertices is injective.

For a cycle, the same alternating rule must also preserve the closing edge. That works for even $n$ and fails for odd $n$. Thus the cycle homomorphism count is $2$ for even $n$ and $0$ for odd $n$.

### F60 | Level 5 | LN11 + PS07 | Sharp triple threshold

Let
$$S=\{1,2,3,4,5,6,7,8,15,19,23,27\}.$$
Find the smallest integer $t$ such that every $t$-element subset of $S$ contains three distinct elements summing to $30$. Give a partition useful for the guarantee and a subset of size $t-1$ showing sharpness. A concise counting explanation suffices.

**Worked solution.** Partition $S$ into the four disjoint triples
$$\{1,2,27\},\quad\{3,4,23\},\quad\{5,6,19\},\quad\{7,8,15\}.$$
Every triple sums to $30$. A subset avoiding all four complete triples can contain at most two elements per triple, hence at most $8$ elements. Thus every $9$-element subset contains a complete triple and works. For sharpness, the subset $\{1,2,3,4,5,6,7,8\}$ has size $8$ and its largest three-element sum is $8+7+6=21<30$. Therefore $t=9$.



# Part III: Proofs

Write complete proofs. Follow any explicit restriction on allowed assumptions.

## Level 1: Foundations

### P01 | Level 1 | LN08 | Uniqueness and extensionality

Prove that if $E$ and $F$ are empty sets, then $E=F$. Use Extensionality and the definition of emptiness.

**Worked solution.** Let $E,F$ be empty. For an arbitrary set $x$, both statements $x\in E$ and $x\in F$ are false by the definition of emptiness. Therefore $x\in E\Leftrightarrow x\in F$. Since $x$ was arbitrary, $\forall x(x\in E\Leftrightarrow x\in F)$. The Axiom of Extensionality now gives $E=F$.

### P02 | Level 1 | LN08 | The subset partial order

Using the definition of $\subseteq$ and Extensionality, prove reflexivity, antisymmetry, and transitivity of the subset relation.

**Worked solution.** **Reflexivity.** Let $A$ be arbitrary. For every $x$, the implication $x\in A\Rightarrow x\in A$ holds. Hence $A\subseteq A$ by the subset definition.

**Antisymmetry.** Suppose $A\subseteq B$ and $B\subseteq A$. For every $x$, the first inclusion gives $x\in A\Rightarrow x\in B$, and the second gives the reverse implication. Thus the sets have the same elements, so $A=B$ by Extensionality.

**Transitivity.** Suppose $A\subseteq B$ and $B\subseteq C$. Let $x\in A$. The first inclusion gives $x\in B$ and the second gives $x\in C$. Since $x$ was arbitrary, $A\subseteq C$. These are precisely the three required properties.

### P03 | Level 1 | LN08 | Distributivity

Prove $A\cap(B\cup C)=(A\cap B)\cup(A\cap C)$ for arbitrary sets $A,B,C$.

**Worked solution.** Let $x$ be arbitrary. By the definitions of intersection and union and by propositional distributivity,
$$\begin{aligned}
x\in A\cap(B\cup C)
&\Leftrightarrow x\in A\land(x\in B\lor x\in C)\\
&\Leftrightarrow(x\in A\land x\in B)\lor(x\in A\land x\in C)\\
&\Leftrightarrow x\in(A\cap B)\cup(A\cap C).
\end{aligned}$$
The two sets have exactly the same elements, so they are equal by Extensionality.

### P04 | Level 1 | LN08 | Difference and inclusion

Prove $A\setminus B=\varnothing$ if and only if $A\subseteq B$.

**Worked solution.** Suppose $A\setminus B=\varnothing$. Let $x\in A$. If $x\notin B$, the difference definition would give $x\in A\setminus B=\varnothing$, a contradiction. Thus $x\in B$, and $A\subseteq B$.

Conversely, suppose $A\subseteq B$. Any $x\in A\setminus B$ would satisfy both $x\in A$ and $x\notin B$. The inclusion gives $x\in B$, a contradiction. Hence $A\setminus B$ has no elements and equals $\varnothing$ by uniqueness of the empty set. Both implications establish the equivalence.

### P05 | Level 1 | LN08 | Symmetric difference

Prove $A\triangle B=\varnothing$ if and only if $A=B$. You may use $A\triangle B=(A\setminus B)\cup(B\setminus A)$.

**Worked solution.** Suppose $A\triangle B=\varnothing$. If $x\in A$ but $x\notin B$, then $x\in A\setminus B\subseteq A\triangle B$, a contradiction. Therefore $A\subseteq B$. Interchanging $A$ and $B$ gives $B\subseteq A$. Antisymmetry of inclusion, equivalently Extensionality, yields $A=B$.

Conversely, if $A=B$, neither $A\setminus B$ nor $B\setminus A$ has an element. Their union is empty, and the allowed identity gives $A\triangle B=\varnothing$.

### P06 | Level 1 | LN08 | Power sets and intersections

Prove $\mathcal P(A\cap B)=\mathcal P(A)\cap\mathcal P(B)$.

**Worked solution.** For an arbitrary set $S$, expand the definitions:
$$\begin{aligned}
S\in\mathcal P(A\cap B)
&\Leftrightarrow S\subseteq A\cap B\\
&\Leftrightarrow(\forall x\in S)(x\in A\land x\in B)\\
&\Leftrightarrow S\subseteq A\land S\subseteq B\\
&\Leftrightarrow S\in\mathcal P(A)\cap\mathcal P(B).
\end{aligned}$$
The equivalence for every $S$ proves equality by Extensionality.

### P07 | Level 1 | LN08 | Detecting inclusion with power sets

Prove $A\subseteq B$ if and only if $\mathcal P(A)\subseteq\mathcal P(B)$.

**Worked solution.** If $A\subseteq B$ and $S\in\mathcal P(A)$, then $S\subseteq A$. Transitivity gives $S\subseteq B$, so $S\in\mathcal P(B)$. This proves inclusion of power sets.

Conversely, suppose $\mathcal P(A)\subseteq\mathcal P(B)$. Reflexivity gives $A\subseteq A$, so $A\in\mathcal P(A)$. The assumed inclusion gives $A\in\mathcal P(B)$, which means $A\subseteq B$.

### P08 | Level 1 | LN08 | Unions and intersections of power sets

Prove $\bigcup\mathcal P(A)=A$ and $\bigcap\mathcal P(A)=\varnothing$ for every set $A$.

**Worked solution.** If $x\in\bigcup\mathcal P(A)$, some $S\in\mathcal P(A)$ contains $x$. Since $S\subseteq A$, we have $x\in A$. Conversely, if $x\in A$, the set $A$ itself is a member of $\mathcal P(A)$ and contains $x$, so $x\in\bigcup\mathcal P(A)$. Extensionality gives the first equality.

For the second, $\varnothing\subseteq A$, so $\varnothing\in\mathcal P(A)$. An element of $\bigcap\mathcal P(A)$ would belong to every member of $\mathcal P(A)$, in particular to $\varnothing$, which is impossible. Thus the intersection is empty. This intersection is legitimate even for $A=\varnothing$, because $\mathcal P(A)$ is always a nonempty family.

### P09 | Level 1 | LN10 | Cartesian product distributivity

Prove $A\times(B\cup C)=(A\times B)\cup(A\times C)$ using the Cartesian-product definition and the characteristic property of ordered pairs.

**Worked solution.** Let $p$ be any object. If $p\in A\times(B\cup C)$, the product definition supplies $a\in A$ and $b\in B\cup C$ with $p=(a,b)$. Either $b\in B$ or $b\in C$, so $p\in A\times B$ or $p\in A\times C$. Thus $p$ is in the right side.

Conversely, if $p$ belongs to the right side, it belongs to one of the two products. In either case it is an ordered pair $(a,b)$ with $a\in A$ and $b\in B\cup C$, so it belongs to the left side. Extensionality gives equality. The coordinate property ensures the same ordered-pair interpretation throughout; arbitrary non-pairs belong to neither side.

### P10 | Level 1 | LN10 + PS06 | Composing injections

Let $f:A\to B$ and $g:B\to C$ be injective. Prove $g\circ f:A\to C$ is injective.

**Worked solution.** Let $a,a'\in A$ and suppose $(g\circ f)(a)=(g\circ f)(a')$. By the composition definition, $g(f(a))=g(f(a'))$. The values $f(a),f(a')$ lie in $B$, so injectivity of $g$ gives $f(a)=f(a')$. Injectivity of $f$ then gives $a=a'$. This is precisely the equal-output formulation of injectivity for $g\circ f$.

### P11 | Level 1 | LN10 + PS06 | Composing surjections

Let $f:A\to B$ and $g:B\to C$ be surjective. Prove $g\circ f:A\to C$ is surjective.

**Worked solution.** Let $c\in C$ be arbitrary. Surjectivity of $g$ supplies $b\in B$ such that $g(b)=c$. Surjectivity of $f$ supplies $a\in A$ such that $f(a)=b$. Hence
$$(g\circ f)(a)=g(f(a))=g(b)=c.$$
Thus every codomain element has a preimage under the composite, proving surjectivity. When $C$ is empty, the same universal condition holds vacuously.

### P12 | Level 1 | LN10 + PS06 | Consequences of a left inverse

Let $f:A\to B$ and $g:B\to A$ satisfy $g\circ f=\operatorname{id}_A$. Prove $f$ is injective and $g$ is surjective. Do not assume either property in advance.

**Worked solution.** For injectivity, let $a,a'\in A$ with $f(a)=f(a')$. Applying $g$ and using the assumed identity gives
$$a=g(f(a))=g(f(a'))=a'.$$
Thus $f$ is injective.

For surjectivity of $g$, let $a\in A$. The point $f(a)\in B$ satisfies $g(f(a))=a$, so $a$ has a preimage. Since every element of $A$ is hit, $g$ is surjective. These arguments apply without any nonemptiness hypothesis, provided the two displayed functions exist.

## Level 2: Applying definitions

### P13 | Level 2 | LN08 | Restricted axioms: binary union

Prove that $A\cup B$ exists for arbitrary sets $A,B$. Allowed: Pairing, the unary Union axiom, Extensionality, and the definitions of roster notation and unions. Do not invoke the binary-union existence theorem.

**Worked solution.** By Pairing there is a set $p=\{A,B\}$. The Union axiom gives a set $U=\bigcup p$. For an arbitrary $x$,
$$\begin{aligned}
x\in U
&\Leftrightarrow\exists T(T\in\{A,B\}\land x\in T)\\
&\Leftrightarrow x\in A\lor x\in B\\
&\Leftrightarrow x\in A\cup B.
\end{aligned}$$
The middle equivalence uses that a member of the pair is $A$ or $B$, and conversely either choice supplies a witness. Extensionality gives $U=A\cup B$. Since $U$ exists by the axioms, so does $A\cup B$.

### P14 | Level 2 | LN08 | Restricted axioms: intersections and differences

Prove existence of $A\cap B$ and $A\setminus B$ using Separation and Extensionality. Do not invoke a theorem already asserting their existence.

**Worked solution.** Apply Separation to the known set $A$ with the property $x\in B$. It produces a set $I$ satisfying
$$x\in I\Leftrightarrow x\in A\land x\in B.$$
The right side is exactly the membership definition of $A\cap B$, so Extensionality identifies $I$ with that intersection.

Apply Separation again to $A$, now with property $x\notin B$. It gives a set $D$ with $x\in D\Leftrightarrow x\in A\land x\notin B$. This is the defining condition for $A\setminus B$, so Extensionality gives $D=A\setminus B$. Both desired sets have therefore been constructed from an existing ambient set.

### P15 | Level 2 | LN09 | Regularity and self-membership

Prove that $x\notin x$ for every set $x$. Use Regularity and Pairing, without assuming this conclusion as a known theorem.

**Worked solution.** Let $x$ be arbitrary. Towards a contradiction, suppose $x\in x$. Pairing constructs the nonempty singleton $S=\{x\}$. By Regularity, some $y\in S$ satisfies $S\cap y=\varnothing$. Singleton membership forces $y=x$, so $S\cap x=\varnothing$.

However, $x\in S$ by roster notation and $x\in x$ by the contradiction hypothesis. Thus $x\in S\cap x$, contradicting its emptiness. Therefore $x\notin x$. Since $x$ was arbitrary, the conclusion holds for every set.

### P16 | Level 2 | LN09 | No three-cycles of membership

Prove that there do not exist sets $a,b,c$ with $a\in b$, $b\in c$, and $c\in a$. Use Regularity. You may assume finite sets exist; do not assume $a,b,c$ are distinct.

**Worked solution.** Suppose, towards a contradiction, that such $a,b,c$ exist. Let $S=\{a,b,c\}$, a nonempty set. Regularity supplies $y\in S$ with $S\cap y=\varnothing$. Roster notation gives three exhaustive possibilities. If $y=a$, then $c\in S\cap a$. If $y=b$, then $a\in S\cap b$. If $y=c$, then $b\in S\cap c$. In every case $S\cap y$ has an element, contradicting its required emptiness. The case analysis remains valid if some of the named sets coincide. Hence no such configuration exists.

### P17 | Level 2 | LN09 + PS04 | Injectivity of successor

Assume no two sets can contain each other: $\neg(a\in b\land b\in a)$ for all $a,b$. Prove that $s(x)=x\cup\{x\}$ is injective on all sets.

**Worked solution.** Let $x,y$ satisfy $s(x)=s(y)$. Since $x\in\{x\}\subseteq s(x)$, we obtain $x\in y\cup\{y\}$, so either $x\in y$ or $x=y$. Similarly, $y\in s(y)=s(x)$ gives either $y\in x$ or $y=x$.

If $x\ne y$, both equality alternatives are excluded; therefore $x\in y$ and $y\in x$. This contradicts the assumed no-two-cycle theorem. Thus $x=y$. Equal successor values have equal inputs, which is injectivity.

### P18 | Level 2 | LN09 | Uniqueness of the least inductive set

Call $I$ inductive when $\varnothing\in I$ and $x\in I\Rightarrow s(x)\in I$. Suppose $N$ and $N'$ are inductive and each is a subset of every inductive set. Prove $N=N'$.

**Worked solution.** Because $N'$ is inductive and $N$ is contained in every inductive set, $N\subseteq N'$. Because $N$ is inductive and $N'$ has the same leastness property, $N'\subseteq N$. Antisymmetry of inclusion, proved from Extensionality, gives $N=N'$. The induction-closure clauses ensure the leastness condition can be applied in both directions.

### P19 | Level 2 | LN09 | Deriving induction from Infinity

Suppose $\mathbb N$ is inductive and is contained in every inductive set, as in the lecture's Infinity axiom. Given a formula $\varphi$ with $\varphi(0)$ and $(\forall n\in\mathbb N)(\varphi(n)\Rightarrow\varphi(s(n)))$, prove $(\forall n\in\mathbb N)\varphi(n)$. Use Separation and leastness; do not assume induction itself.

**Worked solution.** By Separation, the set $S=\{n\in\mathbb N\mid\varphi(n)\}$ exists. Since $0\in\mathbb N$ and $\varphi(0)$, we have $0\in S$.

Let $n\in S$. Then $n\in\mathbb N$ and $\varphi(n)$. The assumed implication gives $\varphi(s(n))$, and inductivity of $\mathbb N$ gives $s(n)\in\mathbb N$. Hence $s(n)\in S$. Thus $S$ is inductive.

Leastness now gives $\mathbb N\subseteq S$. Therefore every $n\in\mathbb N$ belongs to $S$ and satisfies $\varphi(n)$ by its defining property. This establishes induction without using it in the argument.

### P20 | Level 2 | LN09 + PS04 | Transitive natural numbers

A set $X$ is $\in$-transitive when $y\in X$ and $z\in y$ imply $z\in X$. Prove by weak induction that every set-theoretic natural number is $\in$-transitive.

**Worked solution.** We induct on $n\in\mathbb N$.

**Base.** The condition for $n=0=\varnothing$ holds vacuously, since no $y$ belongs to $0$.

**Step.** Let $k\in\mathbb N$ and assume $k$ is $\in$-transitive. Let $y\in s(k)=k\cup\{k\}$ and $z\in y$. If $y\in k$, the induction hypothesis gives $z\in k$, hence $z\in s(k)$. Otherwise roster and union definitions give $y=k$, so $z\in y$ directly gives $z\in k\subseteq s(k)$. These cases exhaust $y\in k\cup\{k\}$. Thus $s(k)$ is $\in$-transitive.

By weak induction, all $n\in\mathbb N$ have the stated property.

### P21 | Level 2 | LN08 + PS04 | Existence of finite sets

Prove by induction that for every $n\in\mathbb N$ and every list of $n$ sets $x_1,\ldots,x_n$, the roster set $\{x_1,\ldots,x_n\}$ exists. Allowed: existence of $\varnothing$, Pairing, binary-union existence, and Extensionality.

**Worked solution.** Let the induction statement quantify over every list of the indicated length.

**Base.** A list of length $0$ has no entries, so its roster set is $\varnothing$, which exists by assumption.

**Step.** Assume every $k$-term list has an existing roster set. Given any $(k+1)$-term list, the hypothesis constructs $A=\{x_1,\ldots,x_k\}$. Pairing constructs the singleton $\{x_{k+1}\}$, and binary-union existence constructs $A\cup\{x_{k+1}\}$. An arbitrary $z$ belongs to this union iff it equals one of $x_1,\ldots,x_k$ or equals $x_{k+1}$. This is exactly the roster definition for $\{x_1,\ldots,x_{k+1}\}$, so Extensionality identifies the sets.

Weak induction proves the result. The entries need not be distinct: repeated entries do not change the membership equivalence.

### P22 | Level 2 | LN10 + PS05 | Characteristic property of ordered pairs

For $(a,b)=\{\{a\},\{a,b\}\}$, prove $(a,b)=(c,d)$ if and only if $a=c$ and $b=d$. Do not take the characteristic property of ordered pairs for granted.

**Worked solution.** First observe directly from roster notation that
$$\bigcap(a,b)=\{a\},\qquad\bigcup(a,b)=\{a,b\}.$$
Indeed, belonging to every member of the pair means belonging to both $\{a\}$ and $\{a,b\}$, which means equality to $a$; belonging to at least one member means equality to $a$ or $b$. These observations remain true when $a=b$.

Now assume $(a,b)=(c,d)$. Equal intersections give $\{a\}=\{c\}$, whence $a=c$ by singleton membership. Equal unions then give $\{a,b\}=\{a,d\}$. If $b=a$, the left set is $\{a\}$; membership of $d$ in the right set forces $d=a=b$. If $b\ne a$, membership of $b$ in $\{a,d\}$ forces $b=d$. Thus both coordinates agree in every case.

Conversely, if $a=c$ and $b=d$, substituting those equalities into the defining expression gives $(a,b)=(c,d)$.

### P23 | Level 2 | LN10 + PS05 | Restricted axioms: product existence

Prove that $A\times B$ exists. You may use binary-union existence, Power, Separation, Extensionality, and the ordered-pair definition. Exhibit the ambient set to which you apply Separation.

**Worked solution.** Let $U=A\cup B$, which exists by assumption. Apply Power twice to obtain the ambient set $\mathcal P(\mathcal P(U))$. If $a\in A$ and $b\in B$, then $\{a\}\subseteq U$ and $\{a,b\}\subseteq U$. Hence both sets are members of $\mathcal P(U)$, so
$$(a,b)=\{\{a\},\{a,b\}\}\subseteq\mathcal P(U).$$
Thus every such ordered pair belongs to $\mathcal P(\mathcal P(U))$.

Separation now constructs
$$P=\{p\in\mathcal P(\mathcal P(U))\mid\exists a\in A\ \exists b\in B\ (p=(a,b))\}.$$
Every $p\in P$ satisfies the Cartesian-product membership definition. Conversely, every $p\in A\times B$ has the displayed coordinates and lies in the ambient set by the preceding argument, so belongs to $P$. Extensionality gives $P=A\times B$, establishing its existence.

### P24 | Level 2 | LN10 | Existence of a function collection

Prove that the collection of all functions $A\to B$, with fixed domain and codomain, is a set. You may assume $A\times B$ exists, and may use Power and Separation.

**Worked solution.** Power constructs $\mathcal P(A\times B)$. Every function graph from $A$ to $B$ is a subset of $A\times B$, so belongs to this existing ambient set. Apply Separation using the function condition:
$$\mathcal F=\{R\in\mathcal P(A\times B)\mid(\forall a\in A)(\exists!b\in B)((a,b)\in R)\}.$$
Each member $R$ is already a subset of the product and supplies exactly one output in $B$ for every input in $A$, so it is a function $A\to B$. Conversely, every function with these fixed types satisfies the filter and lies in the power set, so is in $\mathcal F$. Therefore $\mathcal F$ is precisely the desired collection, and Separation proves it is a set. Fixing both types avoids ambiguity about a graph's declared codomain.

## Level 3: Exam-level reasoning

### P25 | Level 3 | LN10 + PS06 | Constructing a left inverse

Let $A,B$ be nonempty sets and $f:A\to B$ injective. Prove that $f$ has a left inverse $g:B\to A$. Make the definition on points outside the range explicit.

**Worked solution.** Choose one fixed $a_0\in A$, possible because $A\ne\varnothing$. Define
$$g(b)=\begin{cases}a&\text{if }b=f(a)\text{ for some }a\in A,\\a_0&\text{if }b\notin\operatorname{ran}(f).\end{cases}$$
The first case specifies exactly one $a$: existence follows from being in the range, and uniqueness follows from injectivity of $f$. The two cases are disjoint and cover $B$, and both values lie in $A$. Thus $g:B\to A$ is well defined.

For every $a\in A$, its image $f(a)$ falls in the first case, so $g(f(a))=a$. Both $g\circ f$ and $\operatorname{id}_A$ have domain and codomain $A$ and agree at every input. Hence $g\circ f=\operatorname{id}_A$, as required. The nonemptiness of $A$ is used exactly to choose $a_0$.

### P26 | Level 3 | LN10 + PS06 | Constructing a right inverse

Let $A,B$ be nonempty sets and $f:A\to B$ surjective. Prove that $f$ has a right inverse $h:B\to A$. You may use the theorem on existence of choice functions; identify the family to which it applies.

**Worked solution.** For each $b\in B$, let $F_b=\{a\in A\mid f(a)=b\}$. Every fiber is a set by Separation and is nonempty by surjectivity. The family
$$\mathcal F=\{S\in\mathcal P(A)\mid\exists b\in B\ (S=F_b)\}$$
is a set by Power and Separation. It is nonempty because $B$ is nonempty. The choice-function theorem therefore supplies $\tau:\mathcal F\to\bigcup\mathcal F$ with $\tau(S)\in S$ for every $S\in\mathcal F$.

Define $h:B\to A$ by $h(b)=\tau(F_b)$. This lies in $F_b\subseteq A$, so $f(h(b))=b$. The composite $f\circ h$ and $\operatorname{id}_B$ have the same domain and codomain $B$ and agree everywhere. Thus $f\circ h=\operatorname{id}_B$. Choosing separately for an arbitrary family is the exact step justified by the permitted choice theorem.

### P27 | Level 3 | LN10 | Left and right inverses coincide

Suppose $f:A\to B$, $g:B\to A$, and $h:B\to A$ satisfy $g\circ f=\operatorname{id}_A$ and $f\circ h=\operatorname{id}_B$. Prove $g=h$, and deduce uniqueness of a two-sided inverse.

**Worked solution.** All of the following composites have domain $B$ and codomain $A$. Using the identity laws, the two assumed inverse equations, and associativity of composition,
$$\begin{aligned}
g&=g\circ\operatorname{id}_B\\
&=g\circ(f\circ h)\\
&=(g\circ f)\circ h\\
&=\operatorname{id}_A\circ h=h.
\end{aligned}$$
Since the functions coincide, this one function satisfies both inverse equations. If $u$ and $v$ were two two-sided inverses of $f$, use $u$ as a left inverse and $v$ as a right inverse in the same argument to obtain $u=v$. Thus a two-sided inverse is unique.

### P28 | Level 3 | LN10 | Inverse of a composite

For bijections $f:A\to B$ and $g:B\to C$, prove $(g\circ f)^{-1}=f^{-1}\circ g^{-1}$. Explicitly verify both inverse equations and the function types.

**Worked solution.** The proposed inverse $t=f^{-1}\circ g^{-1}$ has type $C\to A$, opposite to $g\circ f:A\to C$. Associativity and the inverse equations for $f,g$ give
$$\begin{aligned}
t\circ(g\circ f)
&=f^{-1}\circ(g^{-1}\circ g)\circ f\\
&=f^{-1}\circ\operatorname{id}_B\circ f=\operatorname{id}_A,
\end{aligned}$$
and
$$\begin{aligned}
(g\circ f)\circ t
&=g\circ(f\circ f^{-1})\circ g^{-1}\\
&=g\circ\operatorname{id}_B\circ g^{-1}=\operatorname{id}_C.
\end{aligned}$$
These are equalities of typed functions: each first composite is $A\to A$ and each second composite is $C\to C$. Thus $t$ is a two-sided inverse of $g\circ f$. By uniqueness of a two-sided inverse, $t=(g\circ f)^{-1}$.

### P29 | Level 3 | LN10 | Recovering injectivity of an outer map

Let $f:A\to B$ be surjective. If $g\circ f:A\to C$ is injective, prove $g:B\to C$ is injective.

**Worked solution.** Let $b,b'\in B$ and suppose $g(b)=g(b')$. Since $f$ is surjective, choose $a,a'\in A$ with $f(a)=b$ and $f(a')=b'$. Then
$$(g\circ f)(a)=g(b)=g(b')=(g\circ f)(a').$$
Injectivity of the composite gives $a=a'$. Applying $f$ yields $b=f(a)=f(a')=b'$. This proves injectivity of $g$. Surjectivity of $f$ ensures that the argument tests every input of $g$, including those that might otherwise be outside $f(A)$.

### P30 | Level 3 | LN10 | Recovering surjectivity of an inner map

Let $g:B\to C$ be injective. If $g\circ f:A\to C$ is surjective, prove $f:A\to B$ is surjective.

**Worked solution.** Let $b\in B$. Its image $g(b)$ is in $C$. By surjectivity of $g\circ f$, there is $a\in A$ such that $g(f(a))=g(b)$. Since $f(a)$ and $b$ both lie in $B$ and $g$ is injective, $f(a)=b$. Thus the arbitrary point $b$ has a preimage under $f$, which is surjectivity.

### P31 | Level 3 | LN10 | Cancellation characterizes injections

Prove that $f:A\to B$ is injective if and only if the following property holds: for every set $T$ and functions $u,v:T\to A$, the equation $f\circ u=f\circ v$ implies $u=v$.

**Worked solution.** Suppose $f$ is injective and $f\circ u=f\circ v$. For every $t\in T$, equality of the composites gives $f(u(t))=f(v(t))$, so injectivity gives $u(t)=v(t)$. Since $u,v$ both have domain $T$ and codomain $A$, pointwise agreement proves $u=v$.

Conversely, assume the cancellation property. Let $a,a'\in A$ with $f(a)=f(a')$. On a singleton $T=\{t\}$ define $u(t)=a$ and $v(t)=a'$. Their composites with $f$ have equal values and the same domain and codomain, so $f\circ u=f\circ v$. Cancellation gives $u=v$ and hence $a=a'$. This is injectivity. If $A$ is empty, injectivity holds vacuously, and the forward argument still establishes cancellation.

### P32 | Level 3 | LN10 | Cancellation characterizes surjections

Prove that $f:A\to B$ is surjective if and only if the following property holds: for every set $T$ and functions $u,v:B\to T$, the equation $u\circ f=v\circ f$ implies $u=v$.

**Worked solution.** Suppose $f$ is surjective and $u\circ f=v\circ f$. Given $b\in B$, choose $a\in A$ with $f(a)=b$. Then
$$u(b)=u(f(a))=v(f(a))=v(b).$$
Thus $u$ and $v$ agree everywhere and have the same types, so they are equal.

For the converse, argue by contrapositive. Suppose $f$ is not surjective, and choose $b_0\in B\setminus\operatorname{ran}(f)$. Let $T=\{0,1\}$, let $u$ be constantly $0$, and define $v(b)=1$ when $b=b_0$ and $v(b)=0$ otherwise. These are different functions because they disagree at $b_0$. Nevertheless, $f(a)\ne b_0$ for every $a\in A$, so $u(f(a))=v(f(a))=0$ for every input. Hence $u\circ f=v\circ f$, contradicting cancellation. The cancellation property therefore implies surjectivity.

### P33 | Level 3 | LN10 | A copy inside the codomain

Prove that $|A|\le|B|$ implies there is a subset $C\subseteq B$ with $|A|=|C|$. Construct $C$ and the bijection.

**Worked solution.** The cardinal inequality supplies an injection $f:A\to B$. By Separation on $B$, the range
$$C=\{b\in B\mid\exists a\in A\ (f(a)=b)\}$$
exists and is a subset of $B$. Define $\bar f:A\to C$ by the same rule $\bar f(a)=f(a)$. Each value is in $C$, so this new declared codomain is valid. Equal outputs of $\bar f$ are equal outputs of $f$, and therefore have equal inputs; hence $\bar f$ is injective. Each $c\in C$ has a preimage by the defining condition of $C$, so $\bar f$ is surjective. It is a bijection, and the definition of equal cardinality gives $|A|=|C|$.

### P34 | Level 3 | LN10 | Transitivity of cardinal comparison

Using the definition in terms of injections, prove that $|A|\le|B|$ and $|B|\le|C|$ imply $|A|\le|C|$. Do not use numerical subtraction of cardinalities.

**Worked solution.** The assumptions provide injections $f:A\to B$ and $g:B\to C$. These functions are compatible, so $g\circ f:A\to C$ exists. To check injectivity, if $g(f(a))=g(f(a'))$, injectivity of $g$ gives $f(a)=f(a')$, and injectivity of $f$ gives $a=a'$. Thus an injection $A\to C$ exists, which is exactly the definition of $|A|\le|C|$. No finite-set hypothesis is needed.

### P35 | Level 3 | LN11 | Infinitude of the naturals

Prove $\mathbb N$ is infinite. You may use the characterization that every finite set is bijective with some $n=\{0,\ldots,n-1\}$ and elementary facts about finite sums of natural numbers. Do not cite infinitude of $\mathbb N$ itself.

**Worked solution.** Suppose, towards a contradiction, that $\mathbb N$ is finite. Then there is a bijection $f:n\to\mathbb N$ for some $n\in\mathbb N$. If $n=0$, its empty domain cannot map onto the nonempty set $\mathbb N$, already a contradiction. Thus $n\ge1$.

Form the natural number $S=\sum_{i=0}^{n-1}f(i)$. Since every summand is nonnegative, $f(i)\le S$ for every $i\in n$. But $S+1\in\mathbb N$, so surjectivity supplies $k\in n$ with $f(k)=S+1$. This contradicts $f(k)\le S$, since $S<S+1$.

Therefore no such finite representation exists, and $\mathbb N$ is infinite.

### P36 | Level 3 | LN11 + PS07 | Cofinite sets and infinitude

Prove (a) every cofinite subset of $\mathbb N$ is infinite; and (b) there are infinitely many cofinite subsets of $\mathbb N$. You may use infinitude of $\mathbb N$ and finiteness of unions of two finite sets.

**Worked solution.** **(a)** Let $Y\subseteq\mathbb N$ be cofinite, so $\mathbb N\setminus Y$ is finite. If $Y$ were finite as well, then $\mathbb N=Y\cup(\mathbb N\setminus Y)$ would be a union of two finite sets, hence finite. This contradicts infinitude of $\mathbb N$. Therefore $Y$ is infinite.

**(b)** Let $\mathcal C=\{Y\in\mathcal P(\mathbb N)\mid\mathbb N\setminus Y\text{ is finite}\}$, which is a set by Separation. Define $F:\mathbb N\to\mathcal C$ by $F(n)=\mathbb N\setminus\{n\}$. Each value is cofinite because its complement is the finite singleton $\{n\}$. If $n\ne m$, then $n\notin F(n)$ but $n\in F(m)$, so $F(n)\ne F(m)$. Thus $F$ is injective. If $\mathcal C$ were finite, composing this injection with an injection from $\mathcal C$ into a finite initial segment would make $\mathbb N$ finite by definition. This is impossible, so $\mathcal C$ is infinite.

## Level 4: Hard applications

### P37 | Level 4 | LN11 | Generalized pigeonhole principle

Let $A,B$ be finite sets with $B\ne\varnothing$ and $f:A\to B$. Prove that some $b\in B$ has at least $\lceil\#A/\#B\rceil$ preimages. You may use the sum rule for a finite disjoint partition, but not the generalized pigeonhole principle itself.

**Worked solution.** Let $m=\#A$, $n=\#B>0$, and $t=\lceil m/n\rceil$. For each $b\in B$, let $F_b=\{a\in A\mid f(a)=b\}$. These fibers are pairwise disjoint and their union is $A$, because a function supplies exactly one output per input. Thus
$$m=\sum_{b\in B}\#F_b.$$
Suppose no fiber has at least $t$ members. Since fiber sizes are integers, every $\#F_b\le t-1$. Summing gives $m\le n(t-1)$. However, $t-1<m/n$ by the definition of ceiling; multiplying by positive $n$ gives $n(t-1)<m$. The two inequalities contradict one another. Therefore some fiber has size at least $t$. This reasoning also covers $m=0$: the conclusion then asks only for a fiber of size at least zero, and $B$ has an element.

### P38 | Level 4 | LN11 | Finite self-maps

For a finite set $A$ and $f:A\to A$, prove that injectivity and surjectivity are equivalent. You may use the finite pigeonhole principle: there is no injection from a larger finite set into a smaller one, and no surjection from a smaller finite set onto a larger one.

**Worked solution.** If $A=\varnothing$, its only self-map is both injective and surjective, so suppose $\#A=n\ge1$.

Suppose $f$ is injective but not onto. Choose $b\in A\setminus\operatorname{ran}(f)$. The same value rule gives an injection $A\to A\setminus\{b\}$, from a set of size $n$ into one of size $n-1$, contradicting the allowed pigeonhole principle. Thus injectivity implies surjectivity.

Conversely, suppose $f$ is surjective but not injective. Choose distinct $a,a'\in A$ with $f(a)=f(a')$. Restrict $f$ to $A\setminus\{a\}$. It remains surjective: if a desired output was hit by $a$, it is still hit by $a'$, and all other preimages remain available. This is a surjection from a set of size $n-1$ onto a set of size $n$, again impossible. Thus surjectivity implies injectivity.

### P39 | Level 4 | LN11 | Inclusion-exclusion from a partition

For finite sets $A,B$, prove $\#(A\cup B)=\#A+\#B-\#(A\cap B)$. Use a disjoint partition and the sum rule, rather than citing inclusion-exclusion.

**Worked solution.** The sets $A\setminus B$, $A\cap B$, and $B\setminus A$ are pairwise disjoint, and their union is $A\cup B$, by the definitions of difference, intersection, and union. Set their sizes to $r,s,t$, respectively. The disjoint sum rule yields
$$\#(A\cup B)=r+s+t.$$
Also $A=(A\setminus B)\cup(A\cap B)$ and $B=(A\cap B)\cup(B\setminus A)$ are disjoint decompositions. Hence $\#A=r+s$, $\#B=s+t$, and $\#(A\cap B)=s$. Substitution gives
$$\#A+\#B-\#(A\cap B)=(r+s)+(s+t)-s=r+s+t=\#(A\cup B).$$

### P40 | Level 4 | LN11 | Power-set size by induction

Prove by induction that a set with $n$ elements has exactly $2^n$ subsets. Do not cite the formula for the number of functions or power sets.

**Worked solution.** **Base.** A set of size zero is empty. Its only subset is $\varnothing$, so it has $1=2^0$ subsets.

**Step.** Assume every $n$-element set has $2^n$ subsets. Let $X$ have $n+1$ elements, choose $a\in X$, and put $Y=X\setminus\{a\}$, which has $n$ elements. Partition the subsets of $X$ according to whether they contain $a$.

The subsets omitting $a$ are exactly the subsets of $Y$, so there are $2^n$. The subsets containing $a$ correspond bijectively to subsets $S\subseteq Y$ by $S\mapsto S\cup\{a\}$, with inverse $T\mapsto T\setminus\{a\}$. There are therefore another $2^n$. The two classes are disjoint and exhaust the subsets, giving $2^n+2^n=2^{n+1}$ subsets.

Weak induction establishes the formula for every $n\in\mathbb N$.

### P41 | Level 4 | LN11 | Pascal recurrence

For $n\ge0$ and $1\le k\le n+1$, give a combinatorial proof of
$$\binom{n+1}{k}=\binom nk+\binom n{k-1}.$$
Use the convention that a binomial coefficient is zero when its lower index exceeds its upper index.

**Worked solution.** Let $X$ be an $(n+1)$-element set and fix $a\in X$. Partition its $k$-element subsets into those omitting $a$ and those containing $a$.

A subset in the first class is simply a $k$-element subset of the $n$-element set $X\setminus\{a\}$, so that class has $\binom nk$ members. Removing $a$ gives a bijection from the second class to the $(k-1)$-element subsets of $X\setminus\{a\}$, so it has $\binom n{k-1}$ members. The two classes are disjoint and exhaust all $k$-element subsets, whose count is $\binom{n+1}{k}$. The sum rule proves the recurrence, including the endpoint $k=n+1$.

### P42 | Level 4 | LN11 | Complement symmetry

Give a bijective proof that $\binom nk=\binom n{n-k}$ for $0\le k\le n$.

**Worked solution.** Fix an $n$-element set $X$. For each $k$-element subset $S$, define $c(S)=X\setminus S$. This has $n-k$ elements by the finite difference formula. Taking the complement again gives $c(c(S))=S$.

Thus complementation has itself as inverse, interpreted between the collection of $k$-element subsets and the collection of $(n-k)$-element subsets. It is a bijection between these collections. Their cardinalities are respectively $\binom nk$ and $\binom n{n-k}$, so these numbers agree.

### P43 | Level 4 | LN11 | Summing binomial coefficients

Prove $\sum_{k=0}^{n}\binom nk=2^n$ by counting subsets. Do not substitute into the binomial theorem.

**Worked solution.** Let $X$ have $n$ elements, and for each $0\le k\le n$ let $\mathcal S_k=\{S\subseteq X\mid\#S=k\}$. Every subset has exactly one possible size in this range, so these families are pairwise disjoint and partition $\mathcal P(X)$. The definition of binomial coefficients gives $\#\mathcal S_k=\binom nk$. Therefore the sum rule gives
$$\sum_{k=0}^{n}\binom nk=\sum_{k=0}^{n}\#\mathcal S_k=\#\mathcal P(X)=2^n,$$
where the final equality is the power-set size theorem, which may be established independently by P40.

### P44 | Level 4 | LN11 | A weighted binomial identity

For $n\ge1$, prove
$$\sum_{k=0}^{n}k\binom nk=n2^{n-1}$$
by counting pairs $(x,S)$ where $S\subseteq X$, $x\in S$, and $\#X=n$.

**Worked solution.** Let $\mathcal D=\{(x,S)\mid S\subseteq X\land x\in S\}$. First count by the size $k$ of $S$. There are $\binom nk$ choices of $S$ with that size and $k$ choices of $x$ inside it, giving
$$\#\mathcal D=\sum_{k=0}^{n}k\binom nk.$$
Alternatively, choose $x$ first in $n$ ways. A subset containing this fixed $x$ is determined by an arbitrary subset of the remaining $n-1$ elements. There are $2^{n-1}$ such choices. Hence $\#\mathcal D=n2^{n-1}$. Both calculations count the same finite set, so the stated identity follows. The assumption $n\ge1$ makes the second exponent a nonnegative integer.

### P45 | Level 4 | LN11 | Subsets as characteristic functions

For any set $X$, prove there is a bijection between $\mathcal P(X)$ and the set of functions $X\to\{0,1\}$. Give the map and establish both injectivity and surjectivity.

**Worked solution.** Let $\mathcal F$ be the set of functions $X\to\{0,1\}$. For $S\subseteq X$, define its characteristic function by
$$\chi_S(x)=\begin{cases}1&x\in S,\\0&x\notin S.\end{cases}$$
This assigns exactly one codomain value to every $x\in X$, so define $\Phi:\mathcal P(X)\to\mathcal F$ by $\Phi(S)=\chi_S$.

If $\Phi(S)=\Phi(T)$, then for every $x\in X$, $x\in S$ iff $\chi_S(x)=1$ iff $\chi_T(x)=1$ iff $x\in T$. As both subsets lie inside $X$, this proves $S=T$ by Extensionality, so $\Phi$ is injective.

Given $f\in\mathcal F$, Separation constructs $S=\{x\in X\mid f(x)=1\}$. If $x\in S$, then $f(x)=1=\chi_S(x)$. If $x\notin S$, then $f(x)\ne1$ and its codomain is $\{0,1\}$, so $f(x)=0=\chi_S(x)$. Thus $f=\chi_S$ as typed functions, proving surjectivity. Hence $\Phi$ is a bijection.

### P46 | Level 4 | LN11 | Deriving the combination formula

Prove $\binom nk=n!/[k!(n-k)!]$ for $0\le k\le n$ by counting permutations according to the set of their first $k$ entries. You may use the count $n!$ for permutations.

**Worked solution.** Fix an $n$-element set $X$. A permutation can be written as an ordered list of all elements of $X$, each appearing exactly once. Partition these lists according to the $k$-element set $S$ appearing in their first $k$ positions.

There are $\binom nk$ choices for $S$. For a fixed choice, the first $k$ entries can be ordered in $k!$ ways, and the remaining $n-k$ entries can independently be ordered in $(n-k)!$ ways. These choices determine a unique permutation and recover uniquely from it. Therefore
$$n!=\binom nk\,k!(n-k)!.$$
The two factorials are positive, including when one is $0!=1$, so division gives the desired formula.

### P47 | Level 4 | LN08 + LN11 | Cofinite closure

Let $Y,Z$ be cofinite subsets of an arbitrary set $X$. Prove that both $Y\cap Z$ and $Y\cup Z$ are cofinite in $X$. You may use finiteness of a finite union and of a subset of a finite set.

**Worked solution.** Cofiniteness means that $X\setminus Y$ and $X\setminus Z$ are finite. By the membership definitions and De Morgan's laws,
$$X\setminus(Y\cap Z)=(X\setminus Y)\cup(X\setminus Z).$$
The right side is a union of two finite sets, so it is finite. Thus $Y\cap Z$ is cofinite.

Similarly,
$$X\setminus(Y\cup Z)=(X\setminus Y)\cap(X\setminus Z)\subseteq X\setminus Y.$$
It is a subset of a finite set and therefore finite. Hence $Y\cup Z$ is cofinite as well. Each resulting set is a subset of $X$, as required by the cofinite definition.

### P48 | Level 4 | LN11 + PS07 | A general triple pigeonhole argument

Let $X$ be partitioned into $m\ge1$ disjoint three-element blocks. Prove that every subset $Y\subseteq X$ with $\#Y\ge2m+1$ contains an entire block. Show that the bound $2m+1$ cannot be lowered in this general statement.

**Worked solution.** Write the blocks as $T_1,\ldots,T_m$. Since they partition $X$, the intersections $Y\cap T_i$ are disjoint and their union is $Y$. Suppose no block is entirely contained in $Y$. Each block has three elements, so $\#(Y\cap T_i)\le2$ for every $i$. The disjoint sum rule then gives
$$\#Y=\sum_{i=1}^{m}\#(Y\cap T_i)\le\sum_{i=1}^{m}2=2m,$$
contradicting $\#Y\ge2m+1$. Thus a full block is present.

For sharpness, choose exactly two elements from each of the finitely many blocks and let $Y$ be their union. The blocks are disjoint, so $\#Y=2m$, yet no block is fully contained in $Y$. Hence $2m$ does not suffice in general.

## Level 5: Synthesis and challenge

### P49 | Level 5 | PS07 | Reversing walks and paths

Let $f:P_k\to G$ be a walk from $v$ to $w$. Define $r(i)=f(k-i)$ for $0\le i\le k$. Prove that $r$ is a walk from $w$ to $v$. Prove also that $r$ is a path whenever $f$ is a path.

**Worked solution.** For $0\le i<k$, the pair of original indices $k-i-1,k-i$ is consecutive in $P_k$. Since $f$ is a graph homomorphism,
$$\{r(i),r(i+1)\}=\{f(k-i),f(k-i-1)\}\in E(G).$$
Thus $r$ preserves every edge of $P_k$ and is a walk. Its endpoints are $r(0)=f(k)=w$ and $r(k)=f(0)=v$.

If $f$ is a path and $r(i)=r(j)$, injectivity of $f$ gives $k-i=k-j$, hence $i=j$. Thus $r$ is injective and therefore a graph monomorphism, which is the definition of a path. When $k=0$, the edge condition is vacuous and the same endpoint and injectivity arguments remain valid.

### P50 | Level 5 | PS07 | Composing graph maps

Prove that the composite of graph homomorphisms $f:G\to H$ and $h:H\to K$ is a graph homomorphism. Deduce that applying $h$ to a walk in $H$ gives a walk in $K$, and that applying an injective $h$ to a path gives a path.

**Worked solution.** The composite vertex function has type $V(G)\to V(K)$. If $\{u,v\}\in E(G)$, preservation by $f$ gives $\{f(u),f(v)\}\in E(H)$. Preservation by $h$ then gives
$$\{h(f(u)),h(f(v))\}\in E(K).$$
This is precisely the homomorphism condition for $h\circ f$.

A walk $w:P_k\to H$ is a homomorphism, so the first result applied to $h\circ w$ makes it a walk in $K$. If $w$ is a path and $h$ is injective, equality $h(w(i))=h(w(j))$ first gives $w(i)=w(j)$ and then $i=j$. Thus $h\circ w$ is also injective, making it a path. Its endpoints are the $h$-images of the original endpoints.

### P51 | Level 5 | PS07 | Adjacent vertices cannot collapse

Let $f:G\to H$ be a homomorphism between simple loopless graphs. Prove adjacent vertices of $G$ have different images. Deduce that if every two distinct vertices of $G$ are adjacent, then $f$ is injective.

**Worked solution.** Let $u,v$ be adjacent in $G$. The homomorphism condition gives $\{f(u),f(v)\}\in E(H)$. Every edge of $H$ is a two-element set. If $f(u)=f(v)$, its image set would be a singleton, contradicting that requirement. Hence adjacent vertices have different images.

Now suppose every two distinct vertices of $G$ are adjacent. Given $u\ne v$, the first conclusion gives $f(u)\ne f(v)$. This is the distinct-input formulation of injectivity. It also shows why a homomorphism from a complete graph into a smaller complete graph is impossible.

### P52 | Level 5 | PS07 | Cycle parity

For $n\ge3$, prove that a homomorphism $C_n\to K_2$ exists if and only if $n$ is even. Here $K_2$ has vertices $0,1$ and the single edge $\{0,1\}$.

**Worked solution.** Suppose $f:C_n\to K_2$ is a homomorphism. The images of adjacent vertices must differ, so once $f(0)$ is fixed, induction along the edges $\{i,i+1\}$ forces $f(i)=f(0)$ at even $i$ and the other target vertex at odd $i$. If $n$ were odd, then $n-1$ would be even, giving $f(n-1)=f(0)$. The closing edge $\{n-1,0\}$ would collapse to a singleton, contradicting the homomorphism condition. Hence $n$ is even.

Conversely, if $n$ is even, define $f(i)=0$ for even $i$ and $f(i)=1$ for odd $i$. Every edge $\{i,i+1\}$ has one even and one odd endpoint. The closing edge also does, because $n-1$ is odd and $0$ is even. Every edge therefore maps to $\{0,1\}$, so this is a homomorphism.

### P53 | Level 5 | PS07 | Strong induction: every walk contains a path

Prove that for every graph $G$ and vertices $v,w\in V(G)$, existence of a walk from $v$ to $w$ implies existence of a path from $v$ to $w$. Use strong induction on the walk length. If you delete a repeated segment, define the new vertex map and justify its edge condition and endpoints.

**Worked solution.** We prove by strong induction on $k$ that every length-$k$ walk, in every graph and with any endpoints, can be replaced by a path with the same endpoints.

**Base $k=0$.** The vertex set of $P_0$ is a singleton. Every function on a singleton is injective, so every length-zero walk is already a path.

**Step.** Let $k>0$ and assume the statement for every length less than $k$. Let $f:P_k\to G$ be a walk from $v$ to $w$. If $f$ is injective, it is a path. Otherwise choose indices $0\le i<j\le k$ with $f(i)=f(j)$. Put
$$\ell=k-(j-i)=k-j+i.$$
Since $j>i$ and $j\le k$, we have $0\le i\le\ell<k$. Define
$$q:\{0,\ldots,\ell\}\to\{0,\ldots,k\},\qquad
q(t)=\begin{cases}t&t\le i,\\t+j-i&t>i,\end{cases}$$
and set $p(t)=f(q(t))$. The bounds on $\ell$ show $q$ takes values in the old index set.

We check that $p$ is a walk. For an edge $\{t,t+1\}$ of $P_\ell$, there are three cases. If $t<i$, its images are $f(t),f(t+1)$, an old walk edge. If $t=i<\ell$, its images are $f(i),f(j+1)$; these form an edge because $f(i)=f(j)$ and $\{f(j),f(j+1)\}$ is an old walk edge. If $t>i$, the old indices $q(t)$ and $q(t+1)$ are consecutive, so their images again form an edge. These cases exhaust all $t<\ell$.

For endpoints, $p(0)=f(0)=v$. If $\ell>i$, then $q(\ell)=k$, so $p(\ell)=f(k)=w$. If $\ell=i$, then $j=k$, and $p(\ell)=f(i)=f(j)=f(k)=w$. Thus $p$ is a length-$\ell$ walk with the desired endpoints, including when the deleted segment reaches the old endpoint.

Since $\ell<k$, the strong induction hypothesis supplies a path from $v$ to $w$. This completes the step and proves the statement for all walk lengths. Notice that $q$ itself need not be a graph homomorphism; the edge check is for $p=f\circ q$.

### P54 | Level 5 | PS07 + LN11 | A path-length bound

Let $G$ have $n\ge1$ vertices. Prove that if a walk from $v$ to $w$ exists, then a path from $v$ to $w$ of length at most $n-1$ exists. Also prove a walk of minimum possible length between these endpoints is already a path. You may use P53 and its repeated-segment deletion construction.

**Worked solution.** By P53, a path $p:P_\ell\hookrightarrow G$ exists. It is an injective map from $\ell+1$ vertices into the $n$ vertices of $G$. The finite pigeonhole principle gives $\ell+1\le n$, so $\ell\le n-1$.

Now take a walk of minimum length between $v$ and $w$; such a minimum exists because the set of available lengths is a nonempty subset of $\mathbb N$. If its vertex map repeated a value at indices $i<j$, the deletion construction verified in P53 would remove $j-i>0$ edges and give a strictly shorter walk with the same endpoints. This contradicts minimality. The minimum-length walk is therefore injective, hence a path. When $v=w$, a length-zero walk exists and the corresponding singleton path satisfies the same bound.

### P55 | Level 5 | PS07 + LN11 | Edge injection induced by a monomorphism

Suppose $h:G\hookrightarrow H$ is an injective graph homomorphism. Prove that $\psi:E(G)\to E(H)$ defined by $\psi(\{u,v\})=\{h(u),h(v)\}$ is well defined and injective. Deduce bounds on the numbers of vertices and edges.

**Worked solution.** Because $h$ is a homomorphism, the image of every edge of $G$ is an edge of $H$. Changing the order used to name $u,v$ does not change the unordered image set, so $\psi$ is well defined.

Suppose $\psi(e)=\psi(e')$ for $e,e'\in E(G)$. Let $u\in e$. Then $h(u)\in\psi(e')$, so some $u'\in e'$ satisfies $h(u)=h(u')$. Injectivity of $h$ gives $u=u'$, proving $e\subseteq e'$. Interchanging $e,e'$ gives the reverse inclusion, hence $e=e'$ by Extensionality. Thus $\psi$ is injective.

The vertex injection $h$ and edge injection $\psi$, together with the finite pigeonhole principle, imply
$$\#V(G)\le\#V(H),\qquad\#E(G)\le\#E(H).$$
Both graphs are finite under the handout definition, so these are inequalities of natural numbers.

### P56 | Level 5 | PS07 + LN11 | Counting all labeled graphs

Fix a vertex set $V$ with $\#V=n$. Prove that the maximum number of edges of a simple graph on $V$ is $\binom n2$, and that the number of distinct such graphs is $2^{\binom n2}$. Graphs are counted on the fixed vertex set, rather than up to relabeling.

**Worked solution.** Let $\mathcal E=\{S\subseteq V\mid\#S=2\}$. By the definition of binomial coefficients, $\#\mathcal E=\binom n2$. The graph definition requires its edge set to be a subset of $\mathcal E$, so no graph can have more than $\binom n2$ edges. The bound is achieved by the graph with edge set $\mathcal E$, which includes every possible edge.

For the count, assigning a graph on this fixed vertex set is exactly the same as choosing its edge subset $E\subseteq\mathcal E$. Every such choice gives a valid simple graph, and different choices give different graphs. Thus the collection of graphs is in bijection with $\mathcal P(\mathcal E)$ and has $2^{\#\mathcal E}=2^{\binom n2}$ members. This also covers $n=0,1$, when there is one graph and it has no edges.

### P57 | Level 5 | PS07 + LN11 | Repeated degrees

For a vertex $v$ in a simple graph $G$, define $\deg(v)$ to be the number of vertices adjacent to $v$. Prove that a graph with $n\ge2$ vertices has two distinct vertices of the same degree.

**Worked solution.** Every degree is an integer between $0$ and $n-1$, because there are no loops. A degree-$0$ vertex and a degree-$(n-1)$ vertex cannot coexist: the latter would have to be adjacent to every other vertex, including the isolated one, a contradiction.

If there is no degree-$(n-1)$ vertex, all $n$ degrees lie in the $n-1$ possible values $0,1,\ldots,n-2$. If there is such a vertex, then no degree is $0$, and all degrees lie in the $n-1$ values $1,2,\ldots,n-1$. In either case the degree function maps $n$ vertices into only $n-1$ possible values. The pigeonhole principle gives distinct vertices with the same degree.

### P58 | Level 5 | LN08 + LN10 | Stretch: a diagonal argument

Using only power sets, Separation, and the definitions of injection and surjection, prove $|A|<|\mathcal P(A)|$ for every set $A$. This is an advanced synthesis problem, rather than a theorem stated in the uploaded notes. Do not cite Cantor's theorem.

**Worked solution.** Define $i:A\to\mathcal P(A)$ by $i(a)=\{a\}$. Since $a\in A$, the singleton is a subset of $A$, so the map is well typed. If $\{a\}=\{a'\}$, singleton membership gives $a=a'$. Thus $i$ is injective and $|A|\le|\mathcal P(A)|$.

Suppose, towards a contradiction, that a surjection $s:A\to\mathcal P(A)$ exists. Separation constructs
$$D=\{a\in A\mid a\notin s(a)\}.$$
As $D\subseteq A$, we have $D\in\mathcal P(A)$. Surjectivity supplies $d\in A$ with $s(d)=D$. By the defining condition of $D$,
$$d\in D\quad\Leftrightarrow\quad d\notin s(d)\quad\Leftrightarrow\quad d\notin D,$$
which is impossible in classical logic. Therefore no such surjection exists, and in particular no bijection exists. Together with the injection, this is exactly $|A|<|\mathcal P(A)|$. The bounded definition of $D$ is legitimate; no unrestricted comprehension is used.

### P59 | Level 5 | LN10 | Stretch: an infinite product

Prove $|\mathbb N\times\mathbb N|=|\mathbb N|$ by giving injections both ways and applying Cantor-Schroder-Bernstein. You may use ordinary integer arithmetic, parity, and exponent laws. A useful candidate is $(a,b)\mapsto2^a(2b+1)$.

**Worked solution.** The map $j:\mathbb N\to\mathbb N\times\mathbb N$ given by $j(n)=(n,0)$ is injective by the characteristic property of ordered pairs.

In the other direction define $e:\mathbb N\times\mathbb N\to\mathbb N$ by $e(a,b)=2^a(2b+1)$. Its values are positive natural numbers, hence in the declared codomain. Suppose
$$2^a(2b+1)=2^{a'}(2b'+1).$$
If $a<a'$, cancel the nonzero factor $2^a$ and use the exponent laws to obtain $2b+1=2^{a'-a}(2b'+1)$. The left side is odd, while the right side is even because $a'-a\ge1$, a contradiction. If $a'<a$, interchange the two pairs and apply the same argument to get a contradiction. Thus $a=a'$. Cancel $2^a$, then cancel the added $1$ and the nonzero factor $2$ to get $b=b'$. Therefore $e$ is injective.

There are injections in both directions, so Cantor-Schroder-Bernstein yields $|\mathbb N\times\mathbb N|=|\mathbb N|$. It is not necessary that the particular map $e$ be onto all of $\mathbb N$.

### P60 | Level 5 | LN10 | Stretch: splitting an idempotent

Let $p:X\to X$ satisfy $p\circ p=p$, and put $R=\operatorname{ran}(p)$. Prove that $p$ factors as $X\xrightarrow{r}R\xrightarrow{i}X$ with $r\circ i=\operatorname{id}_R$ and $i\circ r=p$, where $i$ is inclusion. Deduce that if $p$ is injective or surjective, then $p=\operatorname{id}_X$.

**Worked solution.** Define $r:X\to R$ by $r(x)=p(x)$ and $i:R\to X$ by $i(y)=y$. Both are well defined: every $p(x)$ is in its range, and $R\subseteq X$.

If $y\in R$, choose $x\in X$ with $p(x)=y$. Idempotence gives
$$p(y)=p(p(x))=p(x)=y.$$
Therefore $(r\circ i)(y)=p(y)=y$ for every $y\in R$. Both functions have domain and codomain $R$, so $r\circ i=\operatorname{id}_R$. Also $(i\circ r)(x)=i(p(x))=p(x)$ for every $x\in X$; both sides have type $X\to X$, so $i\circ r=p$.

If $p$ is injective, the equality $p(p(x))=p(x)$ compares the outputs at inputs $p(x)$ and $x$, so injectivity gives $p(x)=x$ for all $x$. If $p$ is surjective, every $y\in X$ lies in $R$ and the earlier fixed-point calculation gives $p(y)=y$ for all $y$. In either case $p$ agrees everywhere with $\operatorname{id}_X$ and has the same domain and codomain, hence equals it. Empty $X$ causes no exception.



# Reference notes

## Sources and scope notes

The primary sources are the user's uploaded Fall 2026 lecture notes **ln08.pdf, ln09.pdf, ln10.pdf, ln11.pdf**, homework **ps04.pdf, ps05.pdf, ps06(1).pdf, ps07(1).pdf**, practice paper **ep01.pdf**, and solution scan **es01.pdf**. The solution scan controls interpretation of the practice paper's intended questions. References such as LN08 and PS07 in question labels identify the relevant course material, not a claim that the question was copied from it.

The course websites were checked on **November 15, 2026**:

- [Instructor course archive](https://cedre.tech/).
- [Current Fall 2026 notes index](https://cs173.tech/resources/notes): Chapter 02 lists LN08-LN12. LN12's linked PDF and source were unavailable at the time of checking; no claim is made to cover unseen material from that note.
- [Current problem-set index](https://cs173.tech/assignments/problems).
- [Current practice-exam index](https://cs173.tech/assignments/exams).
- [Fall solution set 4](https://cs173.tech/assignments/problems/problem_set_04/ss04.pdf) and [solution set 5](https://cs173.tech/assignments/problems/problem_set_05/ss05.pdf), used as supplementary checks on homework style and constructions. Linked solution sets 6 and 7 were unavailable.
- [Spring 2026 notes archive](https://cedre.tech/teaching/2026/spring/cs173/resources/notes.html), consulted for background on the numerical-structure conventions. Earlier-semester number-theory topics were not added to this bank.

Solutions are independently written arguments. General proof questions may use the chapter's established definitions and theorems unless their prompt narrows the allowed assumptions. The diagonal argument and the infinite-product exercise are marked stretch, so they are not presented as additional announced exam content.
