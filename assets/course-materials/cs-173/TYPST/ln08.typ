#import "@local/manuscript:0.1.0" as manuscript: *

#show: article.with(
  author: "Daniel Gonzalez Cedre",
  doctype: "Lecture Note",
  title: "A Theory of Sets",
  number: 8,
  date: datetime(year: 2026, month: 09, day: 30),
)

= A Theory of Sets

Having studied a good amount of arithmetic, we should now move on to studying something a bit more substantial.
The theory of arithmetic we studied---despite being the basis for all #quote[computation]---was actually very restrictive.
It was fundamentally a theory about natural numbers, whose axioms all tried to describe what a #quote[natural number] was, and whose quantifiers only range over objects representing natural numbers; these place strong limitations on what we can talk about.
For example, it is impossible in the theory of arithmetic to express ideas like the following:
// #quote[every collection containing at least one natural number]

// - Every finite list $x_1, ..., x_n$ of natural numbers, where $n gt.eq 1$, contains a maximum.
- Every nonempty list $x_1, x_2, x_3, ...$ of natural numbers has a least element.
  #marginalis[The #emph[Least-Element Principle.]]
- Any collection of natural numbers with #quote[positive upper density] contains arbitrarily long arithmetic progressions.
  #marginalis[#emph[Szemer#(diacritic.acute.single)("e")di's Theorem.]]

In fact, even sentences that #emph[can] be expressed in the theory of arithmetic, like the ones below, might require so much work to write down that we will feel compelled to move to a _stronger,_ more _expressive_ theory.

- The $n$#super[th] prime number is asymptotically $n dot log(n)$.
  #marginalis[The #emph[Prime Number Theorem.]]
- Every natural number greater than $1$ has a unique prime factorization.
  #marginalis[The #emph[Fundamental Theorem of Arithmetic.]]

But... setting up a whole new theory is a _lot_ of work.
Every time we do this, we have to specify a universe of discourse, a list of constant symbols, a list of predicate symbols, a list of functional symbols, and a list of axioms before we can even get started... and _then_ we have to start proving all of our basic theorems from scratch, which usually involves a lot of tedious and repetitive work.
Ideally, we would have _one_ theory in which we could do _all_ of mathematics!
#marginalis[
  As it turns out, despite our strongest desires for life to be simple, this is #emph[not] possible.
  We will give it our best attempt anyways, and this will serve as useful context for those interested in learning more about this in the future.
]
This theory should attempt to capture something #quote[fundamental] enough to the mathematical practice that it can be used as a #emph[foundational] #quote[model] for any particular mathematical inquiry we might want to make.
But if the natural numbers are not #quote[fundamental] enough, then what is?

== What Is a Set Supposed to Be?

It's not unreasonable to say that a good amount of mathematical discussion involves the study of #quote[quantities.]
What is a quantity?
We can imagine that a quantity is the result of a measurement performed on a #quote[collection of things.]
Measure different things about the collection, and you might get different quantities.
Take a sack of marbles, for a concrete example, and measure its mass, its volume, the number of marbles in the sack, the inertia of the sack, #(etc)---these are all (physical) quantities.
More abstractly: the sum of interior angles of a triangle, the magnitude of the greatest common divisor of two numbers, the density of connections in a network of nodes, the greatest prime divisor of a pair of integers---these are all #quote[measurements] made about collections of things.
It would seem that, in order to have a meaningful notion of #quote[quantity,] we need #emph[collections of things] to measure in the first place!

Our idea, then, is to describe more precisely what a #quote[collection of things] is.
We will call such collections #quote[#strong[sets],] and the theory we will study is the #emph[#strong[theory of sets]]
#marginalis[
  This is also called #quote[Zermelo-Fraenkel set theory with Choice,] commonly abbreviated #emph[#strong[ZFC].]
  Although we won't study the #emph[axiom of choice] itself in detail, we will introduce an axiom that is #emph[equivalent] to choice later this semester.
  Until then, these axioms will establish what's known as #emph[#strong[ZF] set theory.]
]
#emph[according to Zermelo and Fraenkel].
#marginalis[The theory is named after Zermelo and Fraenkel, but there were significant contributions to ZFC by John von Neumann, Kurt Godel, and Thoralf Skolem that should not be discounted.]
We will specify a universe of discourse similar to the one we set up in the theory of arithmetic: the objects of the theory of sets are #emph[those things we can prove exist,] and we call those things #emph[#strong[sets]] by definition.
For now, a set is nothing more than #quote[something that exists in our theory.]
Instead of trying to describe what a set is _informally_ through the universe of discourse, we will specify what count as sets and how sets behave through our _axioms,_ just like how the axioms of arithmetic (attempt to) describe who the natural numbers are.

// Before we get to our axioms, we introduce one predicate symbol: the binary predicate for #emph[#strong[elementhood],] which we denote using the $in$#apostille[$in$] symbol, is our only predicate symbol in set theory.
Before we get to our axioms, we introduce the symbol $in$#apostille[$in$] to denote the binary predicate for #emph[#strong[elementhood],] the #emph[only] predicate symbol in set theory.
#marginalis[
  This is not to say that we can't #emph[define] other predicates later, but any new predicates or statements we express must all be written in terms of the two predicate symbols $in$ and $=$ that we are basing our theory on.
  Remember that $=$ is a binary predicate that we inherit from the language of the first-order logic (along with its various axioms).
]
When say write a sentence like $x in y$---which we read out-loud in English as #quote[$x$ is an element of $y$]---we can think of this intuitively as meaning something like #quote[the object $x$ is physically inside of the container $y$.]

== Do Any Sets Exist?

Well... #emph[something] should exist; otherwise, we'd have an empty universe of discourse.
Having just spent a lot of time and energy studying the theory of arithmetic, which was meant to describe the #quote[natural numbers,] it would be ridiculous if that time and effort all went to waste---we certainly need to retain the ability to add and multiply numbers
#marginalis[And perform #emph[#strong[induction].]]
when we study more complicated topics.
A natural thing to do then would be to assert something along the lines of #quote[the collection of all natural numbers exists.]
This would be our first axiom---#emph[#strong[Axiom 0]]---an existential axiom guaranteeing not only that there is a set in our universe of discourse, but also that this set contains the natural numbers as we have come to know them.

#idea(numbering: false, name: "A Proposal for Axiom 0", label: <idea-infinity>)[
  The set containing all---and only---the natural numbers exists.
  #marginale[
    #NB
    An important thing to keep in mind about the set of $NN$ natural numbers and the individual natural numbers $0$, $1$, $2$, ... is that they are #emph[all #strong[sets] because #strong[everything is a set] in set theory!]
    Right now, we don't know how to interpret something like $2$ as a set; when we revisit this axiom, we will know.
  ]
  We will eventually denote this set by the symbol $NN$, and it will contain the natural numbers $0$, $1$, $2$, ... and so on as we have come to know them through our study of arithmetic.
]

We will come back to this axiom later; before understanding it in detail, we should study the other axioms of set theory, all of which are #emph[universally quantified.]

== What Are Sets?

A set is meant to represent our idea of a #quote[collection of things,] and it's difficult to think of something more important to know about a collection of things than #emph[what is #strong[in] the collection.]
This motivates the elementhood $in$ predicate, which tells us when something is inside of something else.
It's important to note through that this is our #emph[only]
#marginalis[Apart from the equality $=$ predicate, which comes packaged with the language of the first-order logic.]
predicate symbol in the theory of sets.
We have no constant symbols, and we have no functional symbols, so any other predicate we want to define for helping us describe sets #emph[must] be expressed in terms of the elementhood $in$ predicate.

One of the fundamental questions to ask about the theory of sets is: #quote[What is a set?]
A complete answer to that question requires us to consider #emph[all] of our axioms as a whole, which is not a straight-forward ask of even a seasoned mathematician.
A simpler version of this question---whose answer we absolutely #emph[need] to understand if we hope to do #emph[anything] meaningful in set theory---is: #quote[How do we know when sets are #strong[equal]?]

#axiom(name: "Extensionality", label: <axiom-extensionality>)[
  We consider sets to be equal _iff_ they have exactly the same elements as each other.
  $ forall x forall y (x = y iff forall z (z in x iff z in y)) $
]

Our first axiom provides the answer to this question: we consider sets to be equal when they have exactly the same elements as each other.
This is what @axiom-extensionality is telling us formally: when we say $x = y$ about any two sets $x$ and $y$, that's equivalent to saying $forall z (z in x iff z in y)$, and #emph[that] says precisely that elementhood in $x$ is equivalent to elementhood in $y$.
This axiom actually follows immediately from the fact that we only have one predicate symbol in set theory.
If we agree with the principle that #emph[equal objects should share all of the same properties,]
#marginalis[This is sometimes called the #quote[indiscernibility of equals] or #quote[Leibniz's law.]]
then any property we can express about $x$ must also hold about $y$ if we want $x = y$; since elementhood is the only thing we can express at the most fundamental level, this means it should #emph[always] be the case, for any object $z$, that $z in x$ whenever $z in y$, and $z in.not x$ whenever $z in.not y$.
That is exactly what we mean when we say $forall z (z in x iff z in y)$.
#marginalis[
  Recall, for any propositions $p$ and $q$, that when we say $p arrow.l.r q$, we are saying $p$ and $q$ have #emph[the same truth value.]
  That means they are #emph[both true] or #emph[both false;] they can't have different truth values.
]

The most important thing we can know about a set is what its elements are.
Therefore, we introduce a convenient notation for 

#definition(name: "Set Roster Notation")[
  Given a natural number $n$ and a finite list of $n$ objects $x_1, ..., x_n$, we define the notation ${x_1, ..., x_n}$ to refer to the set whose elements are precisely the objects in that finite list.
  For every $z$, we define what it means for $z$ to be an element of ${x_1, ..., x_n}$ below.
  $
  z in {x_1, ..., x_n} :iff (z = x_1 or dots.c or z = x_n)
  #apostille[${x_1, ..., x_n}$]
  $
  We should be careful to note that this syntax only makes sense when the number $n$ (and, if possible, the identities $x_1, ..., x_n$) of the objects are known #emph[a priori.]
  #marginalis[
    This notation is #emph[#strong[not defined]] when you, the human, do not know what the natural number $n$ is specifically.
    Although we often write expressions like ${1, 2, ..., 10}$ or ${0, 1, 2, ...}$ as a quick way of describing sets by listing their elements, 
  ]
  In particular, the use of #quote[$...$] within brackets, as in #quote[${2, 4, 6, ..., 14}$,] is not defined.
]

This provides us with a quick and simple way to describe finite sets by simply listing out their elements.
For example, ${1, 4, 7}$ refers to the set whose elements are precisely $1$, $4$, and $7$.
This implies $forall x (x in {1, 4, 7} iff (x = 1 or x = 4 or x = 7))$, specifying exactly who ${1, 4, 7}$ is by @axiom-extensionality.
We can use this definition to infer that $4 in {1, 4, 7}$ because $4 = 4$, and that $0 in.not {1, 4, 7}$ because $0 eq.not 1 and 0 eq.not 4 and 0 eq.not 7$.

== How Can We Construct Sets?

Now that we have a convenient notation for writing down sets by simply listing their elements, we should pause and reflect: when we use #quote[set roster notation] and say that ${0, 1, 2, 3}$ is a #quote[set,] do we #emph[actually] now it is a #quote[set?]
In other words---since something has to #emph[exist] before we can officially call it a #quote[set,] do we know that using set roster notation to take some objects $0$, $1$, $2$, and $3$ and put them all in a collection ${0, 1, 2, 3}$ together actually corresponds to something that we can prove exists?

Well, so far, we only have one axiom---#[@axiom-extensionality]---and that axiom doesn't involve any existential quantifiers, so we can't prove that #emph[anything] exists right now.
But we certainly #emph[want] to be able to take finitely many objects and put them together in a set.
That's the bare minimum we should expect from the concept of a #quote[set.]
However, trying to write this down in general brings up the problem with our notation, and a fundamental problem with the language of the first-order logic: if we don't know how many elements there are beforehand, then we don't even know how long the sentence we want to write down is, so we have no hope of actually writing it down as an axiom.

Instead of trying to do this in general---meaning, all-at-once for every natural number $n$ in one axiom (or axiom schema)---here's a reasonable alternative.
We can give ourselves the ability to construct #emph[unordered pairs] of objects, like ${0, 1}$, and ${2, 3}$, and ${0, 3}$, and ${1, 2}$.
Then, we can give ourselves the ability to #emph[merge sets together] to form larger sets.
These two combined will allow us to make any finite set we want---like ${0, 1, 2, 3, 4, 5}$---by first pairing the elements up into separate sets ${0, 1}, {2, 3}, {4, 5}$, and then merging those sets together into a larger set ${0, 1, 2, 3, 4, 5}$.
We'll have to be careful in how we describe this #quote[merging] process, but the #quote[pairing up] should be pretty uncontroversial, and we can implement it with the following simple axiom.

#axiom(name: "Pairing", label: <axiom-pairing>)[
  Given two sets $x$ and $y$, we can construct the set $z$ whose only elements are $x$ and $y$.
  $ forall x forall y exists z forall w (w in z iff (w = x or w = y)) $
  An equivalent way to say the same this using #quote[set roster notation] is given below, emphasizing that, given two sets $x$ and $y$, we can construct the #emph[unordered pair] ${x, y}$.
  $ forall x forall y exists z (z = {x, y}) $
]

While the simplicity of set roster notation makes it convenient to use and reason about, its simplicity is also obviously a serious limitation on our expressive power.
In situations where there are too many objects to list one-at-a-time, or when we don't know the identity---or even #emph[the quantity]---of objects we want to talk about, set roster notation fails us.
For example, it would be #emph[infeasible] to use set roster notation to explicitly list out the elements of the set of even natural numbers below $100$,
#marginalis[Informally, the set being described is ${0, 2, 4, 6, 8, ..., 90, 92, 94, 96, 98}$.]
and it would be #emph[impossible] to talk about the set of #emph[all] even natural numbers.
It would be better if we could describe a set by a #emph[property] that is #emph[true] precisely about its elements.

#definition(name: "Set Comprehension Notation")[
  Given a _wff_ $phi$ with at most one free variable, we use the notation ${z st phi(z)}$ to represent the collection of all objects $z$ that make $phi(z)$ _true._
  Formally, this means that the following sentence is _true_ by definition for any object $z$.
  $
  z in {x st phi(x)} deff phi(z)
  #apostille[${z st phi(z)}$]
  $
  A special form of this notation is easily capable of representing the set of all elements of some particular set $X$ that have the property specified by the _wff_ $phi$.
  $
  {x in X st phi(x)} := {x st x in X and phi(x)}
  #apostille[
    #box(width: 52pt)[
      ${x thin in thin X thin st thin phi(x)}$
    ]
  ]
  $
]

This notation is easily capable of representing the set of all even natural numbers below $100$ as
${x st x in NN and exists y (y in NN and x = 2y) and 0 lt.eq x lt 100}$
and the set of #emph[all] even natural numbers as ${x st x in NN and exists y (y in NN and x = 2y)}$.

Using this notation, we can describe this idea of #quote[merging] together the contents of two sets by defining the pairwise union between sets.
But... why would we stop at merging just two sets?
Why not give ourselves the ability to merge arbitrarily many sets together at once?
Merging very many sets together may produce a very large result, but since we're the ones writing down the axioms, there's no need to hold ourselves back without a good reason.

#definition(name: "Unions")[
  Given two arbitrary sets $x$ and $y$, we define the _binary_ #define(end: ",")[union between $x$ and $y$] which we denote $x union y$, to be the set of all things that are elements of either $x$ or $y$.
  $
  x union y := {z st z in x or z in y}
  #apostille[$x union y$]
  $
  We also define what it means to #emph[iterate] the binary union operation #emph[over] all of the elements of a set.
  Given an arbitrary set $x$, we define the _unary_ #define(end: ",")[union over $x$] which we denote by $unions x$, to be the set of all elements of elements of $x$.
  #marginalis[
    An alternative, maybe more familiar, notation for $unions x$ is given below.
    $ union.big_(y in x) y := unions x = {z st exists y (y in x and z in y)} $
    If $x := {a, b, c}$, we get the following.
    $ unions x = union.big_(y in x) y = union.big_(y in {a, b, c}) y  = a union b union c $
    This is similar to doing something like
    $
    sum_(i = 1)^(3) 2^i          & = 2^1 + 2^2 + 2^3 && = 14 \
    sum_(y in {2^1, 2^2, 2^3}) y & = 2^1 + 2^2 + 2^3 && = 14
    $
    where we iterate the binary $circle.dotted + circle.dotted$ operation over the elements of a set like ${2, 4, 8}$ and accumulate the result.
    Since binary $+$ on natural numbers produces a natural number, the result $14$ we got above was a natural number; when we implement the same idea with the binary $union$ operation, which returns a set in general, the answer we get is a generic set.
    // But this notation is more powerful---let $x := $
    // $
    // sum_(y in {n})
    // $
  ]
  $
  unions x := {w st exists z (z in x and w in z)}
  #apostille[$unions x$]
  $
]

We defined above a binary union operation $circle.dotted union circle.dotted$ between sets as well as a unary union operation $unions circle.dotted$ performed on one set, which conceptually corresponds to an iterated union over #emph[all] of the elements of a set.
Let's see why this happens with an example.
Consider the set $A = {{0, 2, 3}, {2, 3, 5}, {5, 10}}$, and let's look at what happens when we take the union over the elements of $A$ and keep track of $0$ and $5$.
#{
  let zero = text(fill: blue)[$0$]
  let two = text(fill: blue)[$2$]
  let five = text(fill: red)[$5$]
  $
  ({zero, 2, 3} union {2, 3, five}) union {five, 10} &= {zero, 2, 2, 3, 3, five} union {five, 10} \
  &= {zero, 2, 3, five} union {five, 10} \
  &= {zero, 2, 3, five, five, 10} \
  &= {zero, 2, 3, five, 10}
  $
}
Why does $0$ wind up in the final result?
Because $0 in {0, 2, 3}$ and ${0, 2, 3} in A$.
Similarly, why does $5$ end up in the union?
Because $5 in {2, 3, 5}$ and ${2, 3, 5} in A$, but we could just as well have said it's because $5 in {5, 10}$ and ${5, 10} in A$.
This is precisely what the definition of $unions A$ is trying to tell us because being an element of $A$ means being one of the sets ${0, 2, 3}$, ${2, 3, 5}$, or ${5, 10}$, and each of their elements belong in the final result.
$
unions A &= {x st exists a (a in A and x in a)} \
         &= {x st x in {0, 2, 3} or x in {2, 3, 5} or x in {5, 10}} \
         &= {x st x in {0, 2, 3} union {2, 3, 5} union {5, 10}} \
         // &= {x st x in {0, 2, 3, 5, 10}} \
         &= {0, 2, 3, 5, 10} \
$

#axiom(name: "Union", label: <axiom-union>)[
  Given an arbitrary set $x$, we can collect all of the elements of #emph[elements of $x$] into a set.
  // This corresponds to iterating the binary union $circle.dotted union circle.dotted$ operation over all of the elements of $x$ and accumulating the result into a set.
  $ forall x exists y forall z (z in y iff exists w (w in x and z in w)) $
  Using the new #quote[set comprehension notation,] we can rewrite this axiom as follows.
  // Equivalently, using the new #quote[set comprehension notation] we just introduced, this axiom grants us the ability to construct a set by iterating the _binary union_ operation over the elements of a given set $x$.
  $ forall x exists y (y = {z st exists w (w in x and z in w)}) $
  Since ${z st exists w (w in x and z in w)}$ is $unions x$ by definition, this can be further rewritten.
  $ forall x exists y (y = unions x) $
  Each of the three statements above are equivalent reformulations of the same axiom, which asserts that the iterated union over the elements of a set is a set.
]

With this axiom, we not only know that our more general notion of #quote[union,] given by iterating the binary union operation over the elements of a set, exists, but we can actually recover specifically the pairwise union between just two sets.

#theorem(name: "Existence of Pairwise Unions", delimiter: none)[
  $forall x forall y exists z (z = x union y)$.
]
#proof[
  Let $x$ and $y$ be arbitrary sets.
  By @axiom-pairing, we know there exists some set $p$ such that $p = {x, y}$.
  By @axiom-union, we know there exists some set $u$ such that $u = unions {x, y}$.
  The claim is that $unions {x, y} = x union y$.
  We will prove this by showing $unions {x, y}$ has all of the same elements as $x union y$ and then appealing to @axiom-extensionality.
  For this, let $t$ be a set.

  First, suppose $t in unions {x, y}$.
  By definition, this means there exists $z$ such that $z in {x, y}$ and $t in z$.
  We know $z in {x, y}$ is equivalent to $z = x or z = y$ by definition, so saying $t in z$ is equivalent to saying $t in x or t in y$.
  But that means that $t in x union y$ by definition. \
  This shows $t in unions {x, y} implies t in x union y$.

  Conversely, suppose $t in x union y$, meaning $t in x or t in y$ by definition.
  This implies there exists some $w$ such that $t in w$ and $w = x or w = y$, implying $t in w and w in {x, y}$.
  But this is precisely what it means to say $exists z (z in {x, y} and t in z)$, so $t in unions {x, y}$. \
  This proves $t in x union y implies t in unions {x, y}$.

  Therefore, we have shown $forall z (z in unions {x, y} iff z in x union y)$.
  We now invoke @axiom-extensionality and conclude $unions {x, y} = x union y$.
  This shows $exists z (z = x union y)$ as desired.
]

// Now, you may have noticed that we've been loose with parentheses in previous examples involving unions, and you may similarly have wondered if we need to bother to ensure that the 
// This is justified by 

#lemma[
  The union between two sets shares two familiar properties with other operations.

  1. $forall x forall y (x union y = y union x)$ #h(1fr) #emph[Commutativity]
  2. $forall x forall y forall z (x union (y union z) = (x union y) union z)$ #h(1fr) #emph[Associativity]

  As a result, the order in which we write or evaluate unions does not matter.
]

== How Can We Decompose Sets?

Now that we know how to build larger sets out of smaller ones, we should describe how to tear sets apart into their constituent components.
While the most important relation in set theory is $in$ elementhood, suppose we have two sets $A := {1, 3, 5}$ and $B := {0, 1, 2, 3, 4, 5}$.
While $A in.not B$, which means $A$ itself is not an element of $B$, we can see that all of the #emph[elements] of $A$ are elements of $B$.
We can't say $A in B$, but we can say that $A$ is #quote[contained in] $B$ in some weaker sense---$A$ is something like a #quote[component] of $B$.
We formalize this important concept in our next definition.

#definition(name: "Subsets")[
  Given any two sets $x$ and $y$, we say that #define[$x$ is a subset of $y$] when every element of $x$ is an element of $y$.
  We denote this with the $subset$ symbol, defined formally as follows.
  $
  x subset y deff forall z (z in x implies z in y)
  #apostille[$x subset y$]
  $
]

The $subset$ subset relation between sets is defined based on the $in$ elementhood predicate, but its role in understanding set theory (and mathematics in general) is just as significant.
#marginalis[
  In fact, @axiom-extensionality can be restated using the definition we gave of subsets.
  $forall x forall y (x = y iff (x subset y and y subset x))$
]
Most importantly, the $subset$ subset relation has all of the properties of a #emph[partial order,] which is the prototype for things like the $lt.eq$ order on $NN$.

#theorem(name: "The Subset Relation Is a Partial Order")[
  The following three universally quantified properties hold for the $subset$ relation.

  1. $forall x (x subset x)$ #h(1fr) #emph[Reflexivity]
  2. $forall x forall y ((x subset y and y subset x) implies x = y)$ #h(1fr) #emph[Antisymmetry]
  3. $forall x forall y forall z ((x subset y and y subset z) implies x subset z)$ #h(1fr) #emph[Transitivity]

  This makes the $subset$ subset relation (#emph[the canonical] example of) a #emph[partial order.]
]

#definition(name: "Some More Binary Set Operations")[
  For the purposes of these definitions, let $x$ and $y$ be arbitrary sets.
  There are several important binary operations on sets that, for various reasons, we might like to define.
  The #define[intersection] between two sets $x$ and $y$ is an operation #quote[dual]
  #marginalis[
    What we mean by this will be a bit more clear when we analyze #quote[power sets] later, but it is not a coincidence that disjunctions $or$ show up in the union $union$ definitino, conjunctions $and$ show up in the intersection $inter$ definition, and the symbols for $or$ and $union$ are #emph[literally] just $and$ and $inter$ upside-down.
  ]
  to the union between two sets, containing only those things that are elements of #emph[both] sets.
  $
  x inter y   &:= {z st z in x and z in y}
  #apostille[$x inter y$]
  $
  The #define[difference] between $x$ and $y$, sometimes called the #define(end: ",")[relative complement of $y$ in $x$] is the set of all things that are elements of $x$ but not elements of $y$.
  #marginalis[
    An alternative notation that you may encounter in other places for $x without y$ is $x - y$.
    We heavily discourage the use of that notation; $x - y$ is not very popular, and is far too easily confused with #quote[subtraction] between numbers.
  ]
  $
  x without y &:= {z st z in x and z in.not y}
  #apostille[$x without y$]
  $
  Notice that the difference operation defined above is #emph[not] commutative---there are examples of sets for which $x without y eq.not y without x$.
  The #define(end: ",")[symmetric difference] however, #emph[is] commutative, and produces the set of all things that are in $x$ or in $y$ but #emph[not in both.]
  $
  x symdif y &:= {z st z in x iff z in.not y}
  #apostille[$x symdif y$] \
  $
]
As a quick aside, it should be clear that $x symdif y = y symdif x$ for any $x$ and $y$.
In fact, we can rewrite the symmetric difference using previously defined operations as follows.
$ x symdif y = (x union y) without (x inter y) = (x without y) union (y without x) $
The proof is kind of tedious and not very insightful, but the fact itself can be useful.

Now, with some thought, we should be able to see that $x inter y$ and $x without y$ are both subsets of $x$, and that $x symdif y$ is a subset of $x union y$.
We document how these operations interact through the subset relation in our next lemma.

// #definition(name: "Intersections")[
//   $ x inter y := {z st z in x and z in y} $
//   // $ inters x := {z st forall y (y in x implies z in y)} $
// ]

// #definition(name: "Relative Complements")[
//   $ x without y := {z st z in x and z in.not y} $
// ]

// #definition(name: "Symmetric Differences")[
//   $ x symdif y := {z st z in x iff z in.not y} $
// ]

#lemma[
  The following statements relating the basic binary set operations all hold universally.
  // The following statements relating the basic set operations hold for all sets $x$, $y$, and $z$.

  1. For any sets $x$ and $y$, we have $x inter y subset x$ and $x subset x union y$.
  2. For any sets $x$ and $y$, we know $x without y subset x$.
  3. For any sets $x$ and $y$, we can see $x without y subset x symdif y$ and $x symdif y subset x union y$.
]

We definitely want to know that, when we carry out these operations on sets that exist, the results we obtain all also exist, and all of them can be described as particular kinds of subsets.
#marginalis[
  To be more explicit, they can all be described as subsets of sets #emph[that we know exist] either by assumption (like $x$, who we have assumed is a set for these examples) or thanks to a theorem (like $x union y$, whose existence we proved).
]
In general, if we are given a set, it should feel reasonable to allow ourselves to say that any definable subset of that set exists---if we are taking elements from a set that already exists, we should be allowed to filter them out according to some property that we can express as a well-formed formula.
This is precisely what our next axiom lets us do: #emph[separate] from an existing set a subset of its elements who satisfy some property we can formally express.

#axiom(title: "Axiom Schema", name: "Separation", label: <axiom-separation>)[
  For any well-formed formula $phi$ with at most one free variable, the following holds.
  $ forall x exists y forall z (z in y iff (z in x and phi(z))) $
  We can rewrite this equivalently using set comprehension notation as shown below.
  $ forall x exists y (y = {z st z in x and phi(x)}) $
]

Using this axiom, we can prove that each of the operations we defined previously actually produce sets that exist when applied to sets that exist.

#theorem(name: "Existence of Intersections and Differences")[
  The binary operations we defined before produce sets when applied to sets.
  $
  forall x forall y exists z (z = x inter y)
  & wide &
  forall x forall y exists z (z = x without y)
  & wide &
  forall x forall y exists z (z = x symdif y)
  $
  These all follow by applying @axiom-separation to $x union y$ and using @axiom-extensionality.
]

What the #hyperlink(<axiom-separation>)[Axiom Schema of Separation] lets us do is filter out the elements of a set by searching for those elements that satisfy some property (which we express with a well-formed formula).
But what happens if we don't get any results?
For example, what if we let $phi(x) := #quote[$x lt 0$]$ and we consider ${x st x in NN and phi(x)}$, which is exactly the set ${x st x in NN and x lt 0}$.
The #hyperlink(<axiom-separation>)[Axiom Schema of Separation] tells us immediately that this set exists, but if $n$ is an element of this set, that would mean that $n$ is a #emph[negative] natural number.
There are no such natural numbers!
So this set has no elements!

#definition(name: "Emptiness")[
  We say that a set $x$ is #define[empty] if and only if, by definition, the statement $forall y (y in.not x)$ is satisfied, meaning that $x$ has no elements.
]

// As it turns out, sets that happen to be empty #emph[are sets,] as we basically just proved.

#theorem(name: "Empty Sets Exist", delimiter: none)[
  $exists x forall y (y in.not x)$.
]
#proof[
  Recall from #hyperlink(<idea-infinity>)[our proposal for Axiom 0] that we believe $NN$ exists (even if we don't fully understand what that means yet).
  Then, by @axiom-separation, we know that there exists a set $x$ such that $x = {z st z in NN and z eq.not z}$.
  We will now prove that $x$ is empty.
  Towards a contradiction, suppose that $x$ is #emph[not] empty, so there exists a set $t$ such that $t in x$.
  This means $t in NN$ and $t eq.not t$ by definition, contradicting the fact that $t = t$.
  #contradiction
  Therefore, we conclude that $forall y (y in.not x)$, and so an empty set exists.
]

#definition(name: "The Empty Set")[
  We use the notation $emptyset$ to refer to the collection of all objects that are not equal to themselves.
  More precisely, we define $emptyset := {z st z eq.not z}$.#apostille[$emptyset$]
  As it turns out, we are justified in calling this #emph[#underline[the] #underline[empty] #underline[set]] because it #emph[exists,] it is #emph[empty,] and it is #emph[unique.]
]

#lemma(name: "The Empty Set is Empty")[
  $forall x (x in.not emptyset)$.
]
#corollary(name: "The Empty Set Exists")[
  $exists x (x = emptyset)$.
]
#lemma(name: "The Empty Set is Unique")[
  $forall x (forall y (y in.not x) implies x = emptyset)$.
]

The empty set is fundamentally important to the theory of sets.
In some sense,
#marginalis[Which can be made very precise.]
we use $emptyset$ as the fundamental building block upon which we build all of our other sets.
As a result, we should be careful to note how any new definition or concept we introduce in set theory interacts with the empty set.

#theorem()[
  The following statements regarding the empty set all hold.

  1. $forall x (emptyset subset x)$ and $forall x (x subset emptyset implies x = emptyset)$.
  2. $forall x (x union emptyset = x)$ and $unions emptyset = emptyset$.
  3. $forall x (x inter emptyset = emptyset)$.
  4. $forall x (x without emptyset = x)$.
  5. $forall x (emptyset without x = emptyset)$.
  6. $forall x (x symdif emptyset = x)$.
]

Now that we can separate off from a given set $A$ any definable subset of $A$ that we want,
#marginalis[
  Notice the word #quote[definable] in that sentence.
  The #hyperlink(<axiom-separation>)[Axiom Schema of Separation] requires us to write down a #emph[well-formed formula] that we use to filter out elements from $A$.
  This means that if we want to filter the elements of $A$, the property use for filtering #emph[must be expressible in the language of the first-order logic.]
  It might seem like the first-order logic is capable of expressing anything, but this is certainly not the case.
  We will get a better understanding of that later when we discuss the cardinalities of sets.
]
we should immediately feel inclined to collect #emph[all] of a set's subsets into a set of their own.
This refers to what we call a #quote[power set]#emph[:] the set of all subsets of a given set.

#definition(name: "Power Set")[
  Given a set $x$, we define the #define[power set of $x$] to be the set containing all of the subsets of $x$.
  We use the notation $PP(x)$ to refer to this set, defined by $PP(x) := {z st z subset x}$.#apostille[$PP(x)$]
]

#axiom(name: "Power", label: <axiom-power>)[
  Given a set $x$, the collection of all subsets of $x$ is a set.
  We say this formally as follows.
  $
  forall x exists y forall z (z in y iff z subset x)
  $
  Using set comprehension notation, the above is equivalent to the expression below.
  $
  forall x exists y (y = {z st z subset x})
  $
  This is asserting the existence of what we've defined as the #emph[power set] of a given set $x$.
  $
  forall x exists y (y = PP(x))
  $
  All of these statements are equivalent to each other using different notation.
]

#corollary[
  For every set $x$, we have that $emptyset in PP(x)$ and $x in PP(x)$.
]

// #lemma[
//   For any set $x$, we know $unions PP(x) = x$.
// ]

// == What Does Elementhood Really Mean?

// #axiom(name: "Regularity", label: <axiom-regularity>)[
//   $ forall x (x eq.not emptyset implies exists y ((y in x) and forall z (z in x implies z in.not y))) $
//   $ forall x (x eq.not emptyset implies exists y ((y in x) and (x inter y = emptyset))) $
// ]
