#import "@local/manuscript:0.1.0" as manuscript: *

#show: article.with(
  author: "Daniel Gonzalez Cedre",
  doctype: "Lecture Note",
  title: "Predicates and Quantifiers",
  number: 0,
  date: datetime(year: 2026, month: 08, day: 26),
)

= Predicates and Quantifiers

Generally, a language
#marginalis[For our purposes, we will only be considering _written_ languages, and any speech derived from them]
is a systematic
#marginalis[
  Many natural languages (#eg English, Gaeilge, Greek) have no official #quote[definition] or regulating body, and even languages that do (#eg Spanish, French, Chinese) often have their rules violated in everyday speech.
  Despite that, there _is some_ systematicity to natural language, as evidenced by the fact that only one of the two sentences below parses as intelligible English:
  - #quote[My favorite season is autumn.]
  - #quote[Is your autumn favorite season.]
]
way of encoding ideas into sequences of symbols.
// While _natural_ languages 
At a minimum, this requires a language to specify a _syntax_ and a _semantics_ in order for us to be able to understand it and use it for communication.
The #define[syntax]#apostille[syntax]of a language refers to its physical and mechanical structure: the glyphs used to write it, the conventions used for determining spelling, and the grammatical rules that govern which arrangements of symbols are acceptable or not.
#marginalis[The fact that #quote[syntax] is a noun with that spelling---as opposed to an adjective with the spelling #quote[sintacks]---is a feature of English syntax.]
The smallest functional unit of syntax is usually called a _grapheme._
The meaning of a particular string of symbols is given by the language's #define(end: ".")[semantics]#apostille[semantics]
#marginalis[The use of the same word #quote[football] to mean different things by Americans and Britons is an example of a semantic distinction between American and British English.]
The semantics of a language is what determines how syntax and ideas relate to each other.

In establishing a new language for mathematics, we therefore have the burden of defining the syntax of this new language along with a semantic interpretation of that syntax that corresponds with our historical and intuitive use of logical and mathematical language.
#marginalis[
  This is a somewhat controversial claim.
  The language we will be developing is the _classical_ first-order logic, and its purpose is to formally encode (a fragment of) the kind of logical reasoning that has been studied and engaged in since the time of the ancient Greeks.
  The careful reader must nonetheless note that _intuitionistic logic_---one of the many other forms of logic out there that we could have relied on instead---is _not_ synonymous with #quote[intuitive logic] and provides a significantly different semantics for the first-order logic.
]
We proceed then by abstracting from natural language a core _logical_ framework we can use to express the kind of reasoned arguments common in mathematical speech.
#marginalis[We will eventually call (arguments that can be reduced to) these sorts of arguments #quote[proofs.]]
Once we've got this language---which we will call the #define[first-order logic]---we will be able develop _theories_
#marginalis[#Eg the theory of geometry according to Euclid, the theory of arithmetic according to Peano, the theory of sets according to Zermelo and Fraenkel.]
that describe mathematical objects.

// These two constructions are dependent on each other and, more abstractly, on what kind of communication we want our language to facilitate.
// Since we are interested in a new language for communicating _mathematics,_
// and since mathematical speech is most fundamentally concerned with describing properties of abstract objects,

== Truth and Falsity

The most basic kind of mathematical statement is a _declarative_ sentence, claiming to describe a property about an object.
Here are a few of examples of such sentences.

- #quote[One plus one is equal to two.]
- #quote[Two plus two is equal to three.]
- #quote[The sum of the squares of the lengths of any two perpendicular sides of a triangle is equal to the square of the length of that triangle's remaining side.]
- #quote[The singular (co)homologies of homotopy-equivalent spaces are isomorphic.]

Whether or not we understand all (or any) of the words in these sentences, they are all declarative.
Additionally, they all share a property: if someone were to clarify the meaning of these sentences by explaining precisely what all of the terms in each one mean, we would agree that they are all either _true_ or _false_ but _not both._
In other words, these declarative sentences carry exactly one consistent #define[truth value]---either #define[true] or #define[false], denoted by the respective symbols $top$ and $bot$
#apostille[$top$ $bot$],
depending on whether the sentence accurately describes its object.
Of course, we can't actually know which of the two truth values corresponds to any of the above sentences unless we understand what the words in those sentences mean.
To make the point more clear, consider the following expression.

- #quote[$x$ plus one is equal to two.]

You might think you have an idea of what the words #quote[plus] and #quote[equal] mean, and who the terms #quote[one] and #quote[two] refer to, but what about "$x$"?
We should hope for "$x$" to refer to an object of a compatible type
#marginalis[This is a deep and interesting topic that we will not be developing further.]
given the surrounding context, otherwise the sentence would fail to make any sense at all.
#marginalis[What if $x$ refered to #quote[Mazda Miata]_?_]
But, if $x$ refers to a number, which one?
Different numbers, when substituted for $x$ in that expression, may produce different truth values!
_Until we know who $x$ is, we can't understand that sentence._

It should be noted that not every declarative sentence necessarily carries exactly one consistent truth value.
Some sentences may have too many admissible truth values, while some may not carry any at all.
Consider the following examples.

- #quote[This sentence is _true._]
- #quote[This sentence is _false._]
- #quote[If this sentence is _true,_ then two is an odd number.]
- #quote[If two is an even number, then this sentence is _false._]

As such, we need to distinguish between the objects of our discussion and the descriptions we make about them.
Objects can not carry truth values, but when we form a grammatically correct sentence about a valid object in our new language, we want to be sure that sentence definitely has exactly one consistent truth value.

== Terms and Variables

Any symbol in an expression that denotes an object is typically called a #define(end: ",")[term]
#apostille[term]
which come in two flavors: constants and variables.
#marginalis[We will still often call them #quote[objects.]]
#marginalis[#NB A consequence of our desire to use language with precision and consistency is that a symbol can only refer to one particular thing at a time within a given context.]
A #define[predicate]
#apostille[predicate]
is is descriptive claim about one or more terms such that, once the terms are all understood, we obtain exactly one consistent truth value.
For example, the expression below defines a predicate $pi$ that describes one term $x$.
#marginalis[
  In general, when we need to _define_ a symbol to refer to an object, we will introduce that definition using the symbol $:=$ to make explicit that this is simply the assignment of a label to an object.
  The label (reference) goes on the same side as the colon, and the object (referent) goes on the side without the colon.
  For example: the expression #quote[let $k := 3$] defines a new symbol $k$, and whenever we use $k$ from this point onwards within this context, we can think of that symbol as standing in for the number $3$.
  We could then write $k + 2 gt.eq 0$ and understand that it means precisely $3 + 2 gt.eq 0$.
]
$
pi(x) := #quote[The number #text-math[$x$] is prime.]
#apostille[$:=$]
$
If we now utter "$pi(2)$," we can intuitively understand this as a _true_ declarative sentence, whereas "$pi(4)$" would be a _false_ declarative sentence.
#marginalis[
  The astute reader will recognize that this looks like the syntax for function application that might be found in expressions like $f(x) = x^2 + 1$.
  This is no coincidence: one way to think about predicates is as _functions_ that take one or more _terms as inputs_ and produce a _truth value as output._
]
These two expressions would translate to the following English language sentences respectively.

- #quote[The number $2$ is prime.]
- #quote[The number $4$ is prime.]

The terms "$2$" and "$4$" in the above expressions are examples of #define[constants]
#apostille[constant]
since they refer to particular objects.
By letting $n := 4$, the symbol "$n$" in the expression "$pi(n)$" is also a constant, so $pi(n)$ also has one truth value.
This is translated to English below.

- #quote[The number $n$ is prime.]

In fact, despite these sentences being distinct from the previous one, they communicate the same message as long as we know $n = 4$ (which we do thanks to the definition we made).
#marginalis[
  #NB The use of $=$ here instead of $:=$ is intentional.
  A sentence like $m = 5$ should carry a truth value because it asserts that one object is the same as another one.
  A sentence like $m := 5$ does not carry a truth value because it is not describing a property of an object---this is more like a command (an _imperative_) that the label $m$ be attached to the object referred to by $5$.
  There are many consequences of this, but one to keep in mind right now is that definitions $:=$ do not require justification, but statements of equality $=$ do require proof, and can therefore be "known" to be _true_ or _false._
  We will expand on this later in more detail.
]
However, the symbol $x$ in the following expression is not a constant, since we don't understand $x$ to be referring to any object in particular.

- #quote[The number $x$ is prime.]

As a result, we have no idea what the above sentence really means, and we won't be able to resolve this dilemma until we have more information about $x$.
We call a term like this one a #define[variable]#apostille[variable] since it has not been fixed to any particular (constant) value.
Now, although the presence of a variable in the above sentence prevents us from understanding what it means, it can be remedied by defining what $x$ is, converting $x$ into a constant term.
On the other hand, we could leave the particular identity of $x$ vague---intentionally keeping $x$ a variable---and disambiguate the meaning of the variable by indicating _how it's supposed to vary_ more precisely.
For example, think about the expression below.

- #quote[Every number is prime.]

There's no particular object we could substitute in for $x$ in $pi(x)$ so that it would mean the same thing as the sentence above.
Instead, we will indicate that $x$ is meant to stand in for _any particular object_ by #define[universally quantifying] the variable $x$, which we use the symbol $forall$ #apostille[$forall$] to denote.
The syntax will look something like this.
$
forall x (...)
#marginale[#quote[For all $x$, ...]]
$
So, for example, the expression below means precisely that #quote[Every number is prime.]
$
forall x (pi(x))
#marginale[#quote[For all $x$, $pi(x)$.]]
$
In the expression $forall x (pi(x))$, the symbol $x$ is still a variable, but it is #define[bound] to the scope inside the parentheses by the universal quantifier.
That means, in an expression like $forall x (...)$, that inside of the $(...)$ brackets we are meant to understand $x$ as a term standing in for any possible object under consideration.
#marginalis[More on this later.]
Therefore, the expression $forall x (pi(x))$ asserts that $pi(x)$ is _true_ about _every_ object that we could possibly substitute in for $x$ in the expression.
In contrast, think of the following expression.

- #quote[A prime number exists.]

If we try to communicate this by picking a particular object, such as $2$, and asserting $pi(2)$, we are again not really communicating what the sentence above says; in fact, we are saying _more._
The sentence above says that there is some number out there---possibly one we could even find for ourselves---that has the property of being prime, but it doesn't specify _which_ number that is.
The expression $pi(2)$ not only asserts the existence of a prime number, it also says that $2$ specifically is one such example.
#marginalis[
  If this seems like a stupid distinction, think about the difference between the following two sentences:
  - Someone won the lottery.
  - #emph[#strong[YOU]] (the reader) won the lottery.
]
To resolve this, we introduce the #define(end: ",")[existential quantifier] which we denote with the $exists$ #apostille[$exists$] symbol, to bind a variable and indicate that _there exists some object_ out there that could be substituted for it, but that we don't necessarily know who exactly it could be.
$
exists x (...)
#marginale[#quote[There exists an $x$ such that...]]
$
So, for example, the expression below says #quote[There exists a prime number.]
$
exists x (pi(x))
#marginale[#quote[There exists an $x$ such that $pi(x)$.]]
$

These are the two types of quantifiers that we will introduce for _binding_ variables, allowing us to distinguish between two kinds of variables.
Within a particular scope, a #define[bound variable] is one which is bound by a quantifier sitting outside that scope.
A #define(end: ",")[free variable] in contrast, is not bound by any quantifier that applies to that scope.
An expression that contains free variables _does not mean anything_ until those free variables are either resolved as constants or bound by quantifiers!

== Universes of Discourse

In order to make sense of the quantifiers we just introduced, we should clarify what it is we consider an #quote[object.]
Suppose we define a binary
#marginalis[
  The #define[arity] of a predicate indicates the number of arguments that must be provided in order for the prediate to return a sensible truth value.
  The examples we had seen before this section were _unary_ predicates because they only took one argument, and the one introduced here is _binary_ because it requires two arguments.
]
predicate as below.
$
gt.eq(x, y) := #quote[#text-math[$x$] is greater than #text-math[$y$].]
$
The usual convention with binary predicates---especially those like $gt.eq$ that have #quote[special notation] introduced for them---is that we write the predicate using _infix_ as opposed to _prefix_ notation.
#marginalis[
  Informally: suppose that $phi$ is something that behaves like a binary function (#eg a real-valued function of two variables, a binary predicate, a binary relation).
  When we apply $phi$ on two inputs $x$ and $y$, we obtain some result that is usually denoted $phi(x, y)$.
  This is especially common when $phi$ maps _objects to objects._
  As a concrete example, consider the real-valued function $f(x, y) := x^2 + y$ of two variables.
  We would then say that $f(2, 1)$ is the output of $f$ when applied to the inputs $2$ and $1$, which is $2^2 + 1$, which is $5$.
  This is called #define[prefix notation] because the function name $f$ is written _before_ its arguments $x$ and $y$.
  However, if $phi$ maps _objects to truth values_ (like a predicate or a relation) or _truth values to truth values_ (like a logical connective, which we will talk about in the next set of notes), then it is common to instead write $x phi y$ to denote the output of $phi$ on the inputs $x$ and $y$.
  As an example, consider $gt.eq(x, y) := #quote[#text-math[$x$] is greater than or equal to #text-math[$y$].]$
  You would never expect to see $gt.eq(3, 1)$, but it is very common to see $3 gt.eq 1$.
  Since the name of the function $gt.eq$ is written _between_ its two inputs, we refer to this as #define(end: ".")[infix notation]
  There is an uncommon third alternative---#define[postfix notation]---which we leave to the reader.
]
Now let's consider the following expression.
$
forall x (x gt.eq 3)
$
In English, this claims #quote[Everything is greater than or equal to $3$.]
This seems to be a grammatically well-formed sentence, and it's certainly describing some sort of object, so we should be able to infer a truth value from it---but there are several immediate impediments.
For example, if we try to reason about this sentence by evaluating #quote[$x gt.eq 3$] when $x$ represents an object like a human, you might be left wondering what it means to say #quote[Jannik Sinner is greater than or equal to $3$.]
That doesn't seem to make sense, but okay---we usually think of $gt.eq$ as being a predicate that applies to _numbers,_ and while that wasn't specified anywhere, evaluating expressions like #quote[$x gt.eq 3$] when #quote[$x$] represents a number like #quote[$5$] seems to make more sense, as in #quote[$5 gt.eq 3$.]
It seems like we can find values of $x$ for which the expression is _false_ (#eg $1$), suggesting that $forall x (x gt.eq 3)$ is _false._
Okay... but what about an expression like the one below?
$
exists x (x^2 + 1 = 0)
$
We can express this using a predicate $iota(x) := #quote[#text-math[$x$] squared plus #text-math[$1$] is equal to #text-math[$0$]]$ and forming a sentence like $exists x (iota(x))$.
#marginalis[
  Once we have introduced all of the machinery of our new language and we begin speaking about actual mathematical objects, we will be able to simply write $exists x (x^2 + 1 = 0)$, as each of the symbols will be formally understood as a constant (#ie $0$, $1$), a function (#ie $+$, $circle.dotted^2$), a predicate (#ie $=$), or a logical symbol (#ie $exists$, $x$).
]
Is this _true_ or _false?_
Well, it becomes much more obvious now that the answer is: #emph[#strong[it depends!]]
If $x$ represents something like a natural, integral, rational, or real number, then $exists x (iota(x))$ is clearly _false,_ but if we are allowed to reason about _complex numbers_ like $i := sqrt(-1)$, then we can clearly see that $iota(i)$ is _true_ because $(sqrt(-1))^2 + 1 = -1 + 1 = 0$, so that $exists x (iota(x))$ is _true._
In fact, the earlier question about the truth value of $forall x (x gt.eq 3)$ is resolved in the exact same way: #emph[#strong[it depends]] on whether or not the objects under consideration are comparable to #quote[$3$,] and, if they are, then #emph[#strong[it depends]] on how that comparison hashes out for each object.

The important missing piece required to understand these sentences---and thus resolve their truth values---is a #define[universe of discourse] that specifies what counts as an #quote[object] for the purposes of our discussion.
The universal $forall$ quantifier asserts a condition about _every_ object in the universe, while the existential $exists$ quantifier only asserts a condition about _at least one_ object in the universe.
This intuitively means that changing our universe of discourse changes the collection of objects that $forall$ and $exists$ have access to, which changes the _meaning_ of our sentences.
If we take a universe of discourse consisting of every natural number, then $forall x (x gt.eq 3)$ is _false;_ but if our universe of discourse only contains the natural numbers greater than or equal to $3$, then $forall x (x gt.eq 3)$ is _true._

It is therefore immensely important to specify a universe of discourse _before_ we begin speaking in our new language if we want to be sure that our expressions actually mean anything concrete.
#marginalis[The point of this sentence is that, while we can say $forall x (x gt.eq 3)$ is a grammatically correct sentence (assuming that $gt.eq$ is a binary predicate), we won't know what it actually means without context about what our universe of discourse is.]
We are necessarily incapable of doing this _formally,_ so it must be done _informally._
#marginalis[Despite this, we can be surprisingly precise if we put the appropriate effort in, and there are some interesting tricks that can be done here.]
As such, speaking _informally,_ we say that a universe of discourse is #quote[the collection of objects under consideration] for the purposes of our communication.
The import of this discussion is, no matter which particular universe we specify, that...
#align(center)[
  #strong[#emph[We will always consider our universe of discourse to be nonempty!]]
]
