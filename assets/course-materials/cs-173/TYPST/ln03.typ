#import "@local/manuscript:0.1.0" as manuscript: *

#show: article.with(
  author: "Daniel Gonzalez Cedre",
  doctype: "Lecture Note",
  title: "The Rules of Inference",
  number: 3,
  date: datetime(year: 2026, month: 09, day: 04),
)

= The Rules of Inference

// At this point, once we have an understanding of what our universe of discourse is and what our predicate symbols mean, 

// Now that we have a thorough grasp on the syntax of our new language, we will be able to write down descriptions 
// , we turn to the question of forming arguments in order to justify our descriptions of

// In order to describe

Given a natural number $n$ and $n + 1$ propositions $p_0, p_1, p_2, ..., p_n$, the syntax of a typical rule of inference generally follows the schema shown below.
#marginalis[
  We will adopt the convention that any axioms we specify in our logical system are implicitly assumed on the left-hand side of the $proves$ symbol, even if we don't write them.
]
$
p_0, p_1, ..., p_(n - 1) proves p_n
$
Crucially, the rules of inference invoke the use of a new meta-symbol $proves$#apostille[$proves$] separating a (possibly empty) list of propositions on the left from a proposition on the right.
This is meant to denote that, by _assuming_ all of the propositions $p_0$, $p_1$, ..., $p_(n - 1)$ on the left, we can _prove_ the proposition $p_n$ on the right follows by relying only on:

1. any axioms we have assumed,
2. the rules of inference,
3. any other theorems we have already proven.

This symbol $proves$ is often called a #quote[turnstile] because of its shape, but we often read it as #quote[proves] due to its role in denoting _syntactic entailment,_
#marginalis[
  Note that this is a distinct concept from _semantic entailment,_ which is usually denoted by the $models$ symbol and speaks about _satisfiability_ in terms of _truth values._
]
also known as _provability._

When we have two propositions $p$ and $q$ such that $p proves q$ and $q proves p$, we can denote this in a more compact way by writing $p syntax.equiv q$.#apostille[$syntax.equiv$]


== Rules for Zeroth-Order Expressions

To make these rules easier to read at a glance, we will simplify our notation for the presentation of these rules of inference by adopting the following convention within this section: whenever a rule of inference in this section uses the symbols $p$, $q$, or $r$, we will understand those symbols to refer to _arbitrary propositions._

=== Implication Rules

#rule(name: "Implication Introduction")[
  // $(p proves q) proves p arrow q$ for any propositions $p$ and $q$.
  // For any propositions $p$ and $q$, we have $(p proves q) proves p arrow q$.
  // For any propositions $p$ and $q$, we have the following. \
  $(p proves q) proves p arrow q$
]

#rule(name: "Implication Elimination")[
  // For any propositions $p$ and $q$, we have the following. \
  $p, p arrow q proves q$
]

=== Equivalence Rules

#rule(name: "Biconditional Introduction")[
  $p, q proves p arrow.l.r q$
]

#rule(name: "Biconditional Elimination")[
  $p arrow.l.r q proves (p arrow q) and (q arrow p)$
]

#pagebreak()

=== Conjunction Rules
#rule(name: "Conjunction Introduction")[
  $p, q proves p and q$
]

#rule(name: "Conjunction Elimination")[
  $p and q proves p$ \
  $p and q proves q$
]

=== Disjunction Rules
#rule(name: "Disjunction Introduction")[
  $p proves p or q$ \
  $q proves p or q$
]

#rule(name: "Disjunction Elimination")[
  $(p or q), (p arrow r), (q arrow r) proves r$
]

=== Negation Rules
#rule(name: "Negation Introduction")[
  $(p arrow q), (p arrow not q) proves not p$
]

#rule(name: "Negation Elimination")[
  $not not p proves p$
]

=== Truth Rules
#rule(name: "Truth Introduction")[
  $proves top$
]

#rule(name: "Law of the Excluded Middle")[
  $proves not p or p$
]

=== Falsity Rules

#rule(name: "False Introduction")[
  $not p and p proves bot$
]

#rule(name: "False Elimination")[
  $bot proves p$
]

== Theorems of the Propositional Calculus

#theorem(label: <thm-implication-elim>)[
  For any propositions $p$ and $q$, we have the following deduction.
  $
  p arrow q proves (p proves q)
  $
]

#theorem(name: "Conditional Disintegration", label: <thm-conditional-disintegration>)[
  For any propositions $p$ and $q$, we have the following equivalence.
  $
  p arrow q syntax.equiv not p or q
  $
]

#theorem(name: "Contrapositive Equivalence", label: <thm-contrapositive>)[
  For any propositions $p$ and $q$, we have the following equivalence.
  $
  p arrow q syntax.equiv not q arrow not p
  $
]

#theorem(name: "Exportation", label: <thm-exportation>)[
  For any propositions $p$, $q$, and $r$, we have the following equivalence.
  $
  (p and q) arrow r syntax.equiv p arrow (q arrow r)
  $
]

#theorem(name: "Absorption", label: <thm-absorption>)[
  For any propositions $p$ and $q$, we have the following equivalence.
  $
  p arrow q syntax.equiv p arrow (p arrow q)
  $
]

#theorem(name: "Commutativity of Conjunctions and Disjunctions", label: <thm-comm-and-or>)[
  For any propositions $p$ and $q$, the following equivalences hold.
  $
  p and q &syntax.equiv q and p \
  p or q  &syntax.equiv q or p \
  $
]

#theorem(name: "Associativity of Conjunctions and Disjunctions", label: <thm-assoc-and-or>)[
  For any propositions $p$, $q$, and $r$, the following equivalences hold.
  $
  p and (q and r) &syntax.equiv (p and q) and r \
  p or (q or r)   &syntax.equiv (p or q) or r \
  $
]

#theorem(name: "Distributivity of Conjunctions and Disjunctions", label: <thm-distr-and-or>)[
  For any propositions $p$, $q$, and $r$, the following equivalences hold.
  $
  p and (q or r) &syntax.equiv (p and q) or (p and r) \
  p or (q and r) &syntax.equiv (p or q) and (p or r) \
  $
]

#theorem(name: "Destructive Dilemma", label: <thm-destructive-dilemma>)[
  For any propositions $p$, $q$, $r$, and $s$ the following equivalence holds.
  $
  (p arrow r), (q arrow s), (not r or not s) proves (not p or not q)
  $
]

#theorem(name: "De Morgan's Theorems", label: <thm-demorgan>)[
  For any propositions $p$ and $q$, the following two equivalences hold.
  $
  not (p and q) &syntax.equiv not p or not q \
  not (p or q)  &syntax.equiv not p and not q \
  $
]

#pagebreak()

== Rules for First-Order Expressions

In this section, as in the previous section, we will adopt the convention that $phi$ stands for an arbitrary well-formed formula in order to make the rules easier to read.

=== Universal Rules

#rule(name: "Universal Introduction")[
  $phi(t) #math-text[for an arbitrary term] t proves forall x (phi(x))$
]

#rule(name: "Universal Elimination")[
  $forall x (phi(x)) proves phi(t) #math-text[for any term] t$
]

=== Existential Rules

#rule(name: "Existential Introduction")[
  $phi(t) #math-text[for some term] t proves exists x (phi(x))$
]

#rule(name: "Existential Elimination")[
  $exists x (phi(x)) proves phi(t) #math-text[for some new term] t #math-text[that has not yet appeared in this context]$
]

== Theorems of the Predicate Calculus

#theorem(name: "Quantifier Shift", label: <thm-shift-quant>)[
  The following equivalences regarding repeated quantifiers hold for any _wff_ $phi$.
  $
  forall x forall y (phi(x, y)) &syntax.equiv forall y forall x (phi(x, y)) \
  exists x exists y (phi(x, y)) &syntax.equiv exists y exists x (phi(x, y)) \
  $
  We also have the following for any existentially quantified universal _wff_ $phi$.
  $
  exists x forall y (phi(x, y)) proves forall y exists x (phi(x, y))
  $
  However, we _cannot_ generally infer an existentially quantified universal from a universally quantified existential.
  The invalidity of this kind of reasoning is stated below for any _wff_ $phi$.
  $
  forall x exists y (phi(x, y)) notproves exists y forall x (phi(x, y))
  $
]

#theorem(name: "Negation of Quantifiers", label: <thm-neg-quant>)[
  The following equivalences hold for any _wff_ $phi$.
  $
  not forall x (phi(x)) &syntax.equiv exists x (not phi(x)) \
  not exists x (phi(x)) &syntax.equiv forall x (not phi(x)) \
  $
]

#theorem(name: "Distribution of Quantifiers", label: <thm-distr-quant>)[
  Let $phi$ be an arbitrary _wff,_ and let $p$ be an arbitrary proposition that does not involve the symbol #quote[$x$].
  The following equivalences then hold---be mindful of parentheses.
  $
  forall x (phi(x) and p) &syntax.equiv forall x (phi(x)) and p \
  exists x (phi(x) and p) &syntax.equiv exists x (phi(x)) and p \
  $
  We also have similar equivalences for disjunctive statements.
  $
  forall x (phi(x) or p) &syntax.equiv forall x (phi(x)) or p \
  exists x (phi(x) or p) &syntax.equiv exists x (phi(x)) or p \
  $
  Conditional statements involving a quantifier in the _consequent_ behave similarly.
  $
  forall x (p arrow phi(x)) &syntax.equiv p arrow forall x (phi(x)) \
  exists x (p arrow phi(x)) &syntax.equiv p arrow exists x (phi(x)) \
  $
  Conditional statements with a quantified _antecedent,_ however, are more nuanced.
  Additional parentheses have been added for clarity.
  $
  forall x (phi(x) arrow p) &syntax.equiv (exists x (phi(x))) arrow p \
  exists x (phi(x) arrow p) &syntax.equiv (forall x (phi(x))) arrow p \
  $
]
