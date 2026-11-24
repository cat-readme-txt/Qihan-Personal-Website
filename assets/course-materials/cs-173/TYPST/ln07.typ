#import "@local/manuscript:0.1.0" as manuscript: *

#show: article.with(
  author: "Daniel Gonzalez Cedre",
  doctype: "Lecture Note",
  title: "A Recurring Theme",
  number: 7,
  date: datetime(year: 2026, month: 09, day: 23),
)

= A Recurring Theme

== Recurrences

#example(name: "Binary Search")[
  Consider the following recurrence relation $T(circle.dotted)$ defined below for all $n gt 0$.
  #marginalis[This is one way of expressing the cost, in terms of #quote[significant operations,] of running the _Binary Search_ algorithm on a sorted list of length $n gt 0$.]
  $
  T(1)       &:= 1 \
  T(2 dot n) &:= T(n) + 1 \
  $
  Suppose we are interested in finding a closed form
  #marginalis[
    A #quote[closed form] for a #quote[function] like $T(circle.dotted)$ is an expression that specifies $T(n)$ for each valid input $n$ without referring to $T$; in other words, a closed form for $T(circle.dotted)$ is a #emph[non-recursive] way of expressing what $T(n)$ is for every $n$.
  ]
  for this recurrence.
  To do so, we might try simply _unravelling_ the definition by applying it several times until we notice a pattern.
  Here, we would be looking for a pattern #emph[in terms of $k$,] a positive natural number which we will use to denote the number of times we have applied the definition during this process.
  #marginalis[
    #NB We are not writing a proof right now.
    While everything we've studied so far certainly still applies, we are just exploring to see if we can discover a #define[conjecture]---a statement we #emph[think] might be _true._
    During this process, we might try whatever feels reasonable, relying on things we've learned throughout our entire lives.
    Once we #emph[believe] we have something that might be _true,_ we put our glasses back on and #emph[state our conjecture #strong[formally]] and attempt to #emph[#strong[prove] it.]
  ]
  $
  T(n) &= T(frac(n, 2, style: "skewed")) + 1
       &&quad #text(fill: blue)[$(k = 1)$]\

       &= T(frac(n, 2^(#text(fill: blue)[$1$]), style: "skewed"))
       + #text(fill: blue)[$1$] \

       &= (T(frac(frac(n, 2^1, style: "skewed"), 2, style: "skewed")) + 1)
       + 1
       &&quad #text(fill: green)[$(k = 2)$] \

       &= T(frac(n, 2^(#text(fill: green)[$2$]), style: "skewed")) + #text(fill: green)[$2$] \

       &= (T(frac(frac(n, 2^2, style: "skewed"), 2, style: "skewed")) + 1)
       + 2
       &&quad #text(fill: orange)[$(k = 3)$] \

       &= T(frac(n, 2^(#text(fill: orange)[$3$]), style: "skewed")) + #text(fill: orange)[$3$] \

       &space dots.v \

       &= T(frac(n, 2^(#text(fill: red)[$k$]), style: "skewed")) + #text(fill: red)[$k$]
       &&quad #text(fill: red)[$(k #math-text[applications of def.])$] \

       &space dots.v \

       &= T(frac(n, 2^(#text(fill: violet)[$log_2(n)$]), style: "skewed")) + #text(fill: violet)[$log_2(n)$]
       &&quad #text(fill: violet)[$(frac(n, 2^k, style: "skewed") = 1 iff log_2(n) = k)$] \

       &= T(1) + log_2(n) \
       &= 1 + log_2(n) \
  $
  We can now _conjecture_ that $T(n) = log_2(n) + 1$... but this clearly can't hold for _every_ natural number $n$.
  In particular, it's easy to see that the argument $n$ of $log_2(circle.dotted)$ must be a power of $2$; otherwise, $log_2(n)$ would be _undefined!_
  We can therefore phrase our conjecture as follows.

  #conjecture[
    $forall n (exists m (n = 2^m) implies T(n) = log_2(n) + 1)$.
  ]

  If we were to try to prove this by induction, our proof might go something like this.
  The statement is $phi(x) := #quote[#text-math[$exists m (x = 2^m) implies T(x) = log_2(x) + 1$].]$
  In our basis step, we would try to prove $phi(0)$, which is $exists m (0 = 2^m) implies T(0) = log_2(0) + 1$.
  #marginalis[
    Notice that $log_2(0)$ is undefined because $0$ is not a power of $2$!
  ]
  This is an implication, so we begin our proof by assuming the premise.

  #case-basis[
    Assume that $exists m (0 = 2^m)$.
    Recalling that $2 eq.not 0$, we have a theorem that tells us $forall m (0 eq.not 2^m)$, contradicting our original assumption.
    By _ex falso quodlibet,_
    #marginalis[
      This is also known as the _principle of explosion,_ but we better know this as #emph[#strong[False Elimination],] the rule of inference that asserts $bot proves q$ for any proposition $q$.
      In English, this says that from a _false_ premise (or a contradiction of the form $not p and p$, from which we can obtain $bot$ using #emph[#strong[False Introduction]]), we can prove any proposition.
    ]
    we then conclude $T(0) = log_2(0) + 1$ as desired.
  ]

  That finishes our basis step.
  Notice that, because we were proving an implication with a _false_ premise, we never had to do any _real_ work to derive our conclusion.
  All of the work happened in showing that our premise was, in fact, _false._
  In particular, the fact that $T(0) = log_2(0) + 1$ contains the undefined term $log_2(0)$ doesn't end up mattering, since this formula is well-formed and contains no free variables (making it a proposition).
  #marginalis[
    If we're being technical, depending on our philosophical orientation, and depending on some behind-the-scenes decisions we would have been forced to make earlier when setting up the _Theory of Arithmetic,_ it may actually be a formal problem that $log_2(0)$ is undefined.
    But that problem is easily resolvable in several different technical ways, and none of them are at all interesting for the purposes of this course---but all of them are tedious.
    When we move on to our next _theory,_ this will no longer be an issue.
  ]

  Having finished the basis step, we move on to the inductive step.
  Let's write down what we need to prove---$forall k (phi(k) arrow.double phi(k + 1))$---in terms of our conjecture for all $k$.
  $
  (exists m (k = 2^m)     & implies             T(k) = log_2(k) + 1) \
                          & quad arrow.b.double \
  (exists m (k + 1 = 2^m) & implies             T(k + 1) = log_2(k + 1) + 1) \
  $
  Let's begin our inductive step then by introducing an arbitrary natural number $k$ and assuming our inductive hypothesis.

  #case-inductive[
    Let $k$ be a natural number.
    Assume $exists m (k = 2^m) arrow.double T(k) = log_2(k) + 1$.
    Now, we need to show that $exists m (k + 1 = 2^m) arrow.double T(k + 1) = log_2(k + 1) + 1$.

    Assume that there exists some natural number $m$ such that $k + 1 = 2^m$.
    Now, ...

    ...

    Well, we'd like to use our _inductive hypothesis,_ which says $T(k) = log_2(k) + 1$... but we can only assert that #emph[#strong[if $k$ is a power of $2$]...]
    What we know is that $k + 1$ is a power of $2$.
    Therefore, ...

    ...

    Okay, what if we work backwards from the conclusion we want?
    We want to end our proof with the observation $T(k + 1) = log_2(k + 1) + 1$.
    What do we know about $T(k + 1)$?
    Well, by definition, we know $T(2 dot x) = T(x) + 1$ for every positive natural number $x$, and we also know $T(1) = 0$ by definition.
    Thankfully, we know $k + 1 = 2^m$, so we can take cases based on whether $m = 0$ or $m > 0$.
    #marginalis[
      This corresponds to taking cases based on whether $k + 1$ is $1$ or even, which is the question that the definition of $T$ asks about its input.
    ]

    Sketching this out: \
    If $m = 0$, then $k + 1 = 2^0 = 1$, and we can apply our definition for $T(1)$. \
    If $m > 0$, then $m = tilde(m) + 1$, and then $k + 1 = 2^m = 2^(tilde(m) + 1) = 2^(tilde(m)) dot 2$ so we can apply our recursive definition for $T$, and hopefully our _inductive hypothesis_ helps here.
    Notice that this essentially corresponds to #emph[an additional #strong[basis step at $1$]] that we may not have originally considered, but that should make sense based on how $T$ is recursively defined!
    $T$ doesn't have a base case at zero; its base case is at $1$.

    #case[
      Suppose $m = 0$, so that $k + 1 = 2^0 = 1$ by definition of exponentiation.
      Then, recalling $T(1) = 1$ by definition, we can simply compute.
      $
      // T(k + 1) = T(1) &= 1                &&quad #math-text[by definition] \
      T(k + 1) = T(1) &= 1 = 0 + 1        &&quad #math-text[since] forall x (0 + x = x) \
                      &= log_2(1) + 1     &&quad #math-text[because] 2^0 = 1 #math-text[by definition] \
      $
      Therefore, $T(k + 1) = log_2(1) + 1 = log_2(k + 1) + 1$ as desired.
    ]
    #case[
      Suppose $m gt 0$, so that $m = tilde(m) + 1$ for some natural number $tilde(m)$.
      Then, we can see that $k + 1 = 2^m = 2^(tilde(m) + 1) = 2^(tilde(m)) dot 2 = 2 dot 2^(tilde(m))$ using the homomorphic property of exponentials and the commutativity of multiplication.
      We can now apply the definition of our recurrence relation and see the following.
      $
      T(k + 1) = T(2 dot 2^(tilde(m))) = T(2^(tilde(m))) + 1
      $
      By the _inductive hypothesis,_ we know $T(2^(tilde(m))) = log_2(2^tilde(m)) + 1$... _uhh... wait..._
      #emph[#strong[That's not what our inductive hypothesis said!]]
      The _inductive hypothesis_ we assumed specifically stated $T(k) = log_2(k) + 1$, but we don't know $k = 2^(tilde(m))$, so we don't know that we can apply our _inductive hypothesis_ here!
      In fact, it is impossible for us to prove that $k = 2^(tilde(m))$ because that's not necessarily _true_ in general---there are counterexamples!
      Now we are stuck...
    ]

    If we #emph[could] apply our _inductive hypothesis_ to $2^(tilde(m))$, then that would let the rest of our proof fall out easily.
    But the _Axiom Schema of Weak Induction_ doesn't give us the ability to do that...

    Except that, _intuitively,_ it definitely does.
    The whole idea behind induction is that we prove a statement $phi(circle.dotted)$ is _true_ about all of the natural numbers by starting at zero and progressively working our way up the number line one-step-at-a-time.
    By the time we get to $phi(k + 1)$, we should definitely have already verified $phi(k)$, which is why it should intuitively make sense to #quote[assume $phi(k)$] at the beginning of your inductive step.
    However... not only have you already verified $phi(k)$... you've verified #emph[everything #strong[before $k$] as well!]
    In particular, you've verified $frac(k + 1, 2, style: "skewed")$ when $k + 1$ is even and positive---the exact situation here!

  ]
  Instead of making a #emph[#strong[weak] assumption] as our _inductive hypothesis,_ it would be nice if we could make a #emph[#strong[stronger] assumption] instead---assuming $phi(j)$ for every $j lt k + 1$.
  // one that told us that $phi(circle.dotted)$ was _true_ for every natural number _less than_ the one in our inductive step.
]

// Of course, _Axiom 4_ doesn't give us the ability to assume more than just $phi(k)$ when we are trying to prove $phi(k + 1)$.
Of course, we need #emph[theorems] to verify our intuition and justify that our approach actually does correctly prove $forall n (phi(n))$.
As it turns out, there _are_ such theorems
#marginalis[
  Please note that the names of the three theorems that follow are #emph[#strong[not] standard.]
  In other places and in other contexts, different authors may use the phrase #quote[Strong Induction] to refer to any (or all) of these statements.
  The names #quote[Weak-Strong Induction] and #quote[Strict-Strong Induction] are also totally made up and probably don't appear anywhere else.
]
because our intuition _is_ actually correct.
#marginalis[
  Don't just take this for granted.
  One should really try to understand _why_ this is more than just intuition by thinking about how these theorems might be proved.
  These are not esoteric theorems; they are totally within our reach by this point.
]

#theorem(name: "Weak-Strong Induction", label: <thm-weak-strong>)[
  Let $phi$ we a _wff_ with at most one free variable.
  The following equivalence then holds.
  $
  (phi(0) and forall k (forall j (j lt.eq k arrow.double phi(j)) arrow.double phi(suc(k)))) iff forall n (phi(n))
  $
]

#theorem(name: "Strict-Strong Induction", label: <thm-strict-strong>)[
  Let $phi$ we a _wff_ with at most one free variable.
  The following equivalence then holds.
  $
  (phi(0) and forall k (forall j (j lt k arrow.double phi(j)) arrow.double phi(k))) iff forall n (phi(n))
  $
]

#theorem(name: "Strong Induction", label: <thm-strong>)[
  Let $phi$ we a _wff_ with at most one free variable.
  The following equivalence then holds.
  $
  forall k (forall j (j lt k arrow.double phi(j)) arrow.double phi(k)) iff forall n (phi(n))
  $
]

It is important to note, for any given _wff_ $phi$, that @thm-weak-strong#emph[,] @thm-strict-strong#emph[,] and @thm-strong are all _equivalent_ to $forall n (phi(n))$, and that $forall n (phi(n))$ is _equivalent_ to weak induction.
As a result, all of these forms of induction are equivalent to each other.
Formally speaking, there is no reason to prefer any of these schemata over any of the others... except for the problem we ran into with the previous example.
For us, the #emph[#strong[humans] writing the #strong[proofs],] it is typically much easier to write a proof using some form of strong induction than using the weak induction schema from _Axiom 4_ because the _inductive hypothesis_ that strong induction
#marginalis[
  Let $p_s$ and $p_w$ are two propositions.
  We typically say #quote[$p_s$ is #strong[stronger] than $p_w$] _iff_ $p_s arrow.double p_w$ beacuse that means anything $p_w$ proves can also be proven from $p_s$.
  We say #quote[$p_w$ is #strong[weaker] than $p_s$] in this situation because there may be things $p_s$ can prove that can't be proven from $p_w$ alone.
  This is the sense in which we are using the words #quote[strong] and #quote[weak] when speaking about schemata for induction.
  Given an arbitrary natural number $k$, the schema of weak induction allows you to assume $phi(k)$.
  However, the schema of weak-strong induction allows you to assume $forall j (j lt.eq k arrow.double phi(j))$; in particular, this means you know $phi(k)$, but also $phi(k - 1)$, and $phi(k - 2)$, #etc
  This inductive hypothesis can _prove_ the inductive hypothesis from _Axiom 4,_ making this one a _stronger assumption_ and that one a _weaker assumption._
]
allows you to assume is much easier to work with than the restrictive one from _Axiom 4._

But... now we have three versions of #quote[strong induction] to choose from.
If we think back to the example we were working out about the Binary Search recurrence, the #quote[basis step] in our induction required us to prove that our closed form worked at $0$, despite the fact that we only asserted our closed form for powers of $2$ and that $0$ is not a power of $2$.
As it turns out, if we take a strong inductive approach (regardless which of the three we pick), then the _real_ #quote[basis step] shows up during the inductive step because we are forced to consider what happens with the input $1$, the first actual power of $2$.
Proving our closed form works for $0$ is a waste of time.
In general, $0$ may not be the actual basis step you're interested in proving, because your statement may be #quote[vacuously true] about $0$---but this doesn't mean you don't still have a _nontrivial_ basis step hidden elsewhere that you _do_ have to account for.
How do you find this #quote[real] basis step?
How many of them do you have (it may be more than just one)?
The answers to those questions all depend on the particular problem in front of you.

The most consistent approach---one that is guaranteed to work in any situation when you would like to use induction, but which avoids proving unnecessary bases that are irrelevant to the problem, and which inherently prompts you to think about what bases you actually need---is the from of strong induction given in @thm-strong#emph[,] which we will simply call #quote[strong induction] without qualification.

Now, equipped with these theorems, we can take another attempt at proving that our closed form for the Binary Search recurrence was actually correct.

#lemma(name: "Closed Form for the Binary Search Recurrence")[
  Let $T$ be the recurrence relation defined below for any postitive natural number $n$.
  $
  T(1)       &:= 1 \
  T(2 dot n) &:= T(n) + 1 \
  $
  We then have $exists m (n = 2^m) arrow.double T(n) = log_2(n) + 1$ for every natural number $n$.
]
#proof[
  We will prove $forall n (exists m (n = 2^m) arrow.double T(n) = log_2(n) + 1)$ by _strong induction._

  Let $k$ be an arbitrary natural number.
  Assume the statement below.
  #marginalis[That is our _inductive hypothesis._]
  $
  forall j (j lt k implies (exists m (j = 2^m) arrow.double T(j) = log_2(j) + 1))
  $
  Now, we need to show that $exists m (k = 2^m) arrow.double T(k) = log_2(k) + 1$, which happens to be a conditional statement.
  To proceed, assume there exists some natural number $x$ such that $k = 2^x$.
  We now consider two cases.
  #case[
    Suppose $x = 0$.
    Then, $k = 2^x = 2^0 = 1$ by definition of exponentiation.
    We can then observe the following.
    $
    T(k) = T(1) &= 1
                &&quad #math-text[by definition of] T \
                &= 0 + 1
                &&quad #math-text[because] forall z (0 + z = z) \
                &= log_2(1) + 1
                &&quad #math-text[by definition of] log_2(circle.dotted) #math-text[since] 2^0 = 1 \
                &= log_2(k) + 1
                &&quad #math-text[because] k = 2^x = 2^0 = 1
    $
    Therefore, we have $T(k) = log_2(k) + 1$ as desired.
  ]
  #case[
    Suppose $x eq.not 0$; this implies $x gt 0$, so that there exists some natural number $y$ such that $x = y + 1$.
    Notice that, since $y + 1 = x$, we know $y lt x$, which implies $2^y lt 2^x$ because exponentiation is strictly increasing.
    This will allow us to apply our _inductive hypothesis_ to $T(2^y)$, and we can get $T(2^y)$ by applying the definition of $T$ to $T(2^x)$.
    This means we are finally ready to observe...
    $
    T(k) &= T(2^x)                        &&quad #math-text[because] k = 2^x \
         &= T(2^(y + 1))                  &&quad #math-text[because] x = y + 1 \
         &= T(2^y dot 2)                  &&quad #math-text[by definition of exponentiation] \
         &= T(2 dot 2^y)                  &&quad #math-text[by commutativity of multiplication] \
         &= T(2^y) + 1                    &&quad #math-text[by definition of] T \
         &= (log_2(2^y) + 1) + 1          &&quad #math-text[by the _inductive hypothesis_ because] 2^y lt 2^x \
         &= (log_2(2^y) + log_2(2^1)) + 1 &&quad #math-text[by definition of logarithms] \
         &= log_2(2^y dot 2^1) + 1        &&quad #math-text[because logarithms are homomorphic] \
         &= log_2(2^(y + 1)) + 1          &&quad #math-text[because exponentiation is homomorphic] \
         &= log_2(2^x) + 1                &&quad #math-text[since] x = y + 1 \
         &= log_2(k) + 1                  &&quad #math-text[since] k = 2^x \
    $
    This shows us $T(k) = log_2(k) + 1$ just like we wanted.
  ]
  Since these two cases exhaust all of the possibilities (either $x = 0$ or $x eq.not 0$), and since we proved $T(k) = log_2(k) + 1$ in both cases, we can finally conclude with the observation $forall n (exists m (n = 2^m) arrow.double T(n) = log_2(n) + 1)$ by the theorem of _strong induction._
]

#lemma(name: "Closed Form for the Merge Sort Recurrence")[
  henlo
]
