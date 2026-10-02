---
id: "7026"
title: "Une égalité cachée derrière une condition"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [fractions, calcul-algebrique, condition-ab-egal-1]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, jeudi 28 octobre (algèbre), cours du matin, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres strictement positifs tels que
$$\frac{a}{1+a} + \frac{b}{1+b} = 1 .$$

Montrer que
$$\frac{a}{1+b^2} - \frac{b}{1+a^2} = a - b .$$

## Hints

1. Commence par simplifier l'hypothèse : réduis au même dénominateur et regarde ce qui reste.
   Tu vas trouver une condition très simple sur $a$ et $b$.
2. La condition obtenue permet de remplacer $1$ par $ab$ chaque fois que c'est commode.
3. Dans $\dfrac{a}{1+b^2}$, multiplie le numérateur et le dénominateur par $a$. Que devient
   $ab^2$ ?

## Solution

**Étape 1 : simplifier l'hypothèse.**

Réduisons au même dénominateur $(1+a)(1+b)$, qui est non nul :
$$\frac{a(1+b)}{(1+a)(1+b)} + \frac{b(1+a)}{(1+a)(1+b)} - \frac{(1+a)(1+b)}{(1+a)(1+b)} = 0 .$$

Le numérateur vaut
$$a + ab + b + ab - (1 + a + b + ab) = ab - 1 .$$

L'hypothèse équivaut donc à
$$\boxed{ab = 1} .$$

**Étape 2 : transformer la première fraction.**

Multiplions le numérateur et le dénominateur de $\dfrac{a}{1+b^2}$ par $a$ (licite, car
$a > 0$) :
$$\frac{a}{1+b^2} = \frac{a^2}{a + ab^2} = \frac{a^2}{a + (ab)b} .$$
Comme $ab = 1$, il vient $(ab)b = b$, donc
$$\frac{a}{1+b^2} = \frac{a^2}{a+b} .$$

**Étape 3 : la même chose pour la seconde.**

De façon symétrique, en multipliant par $b$ :
$$\frac{b}{1+a^2} = \frac{b^2}{b + a^2 b} = \frac{b^2}{b + (ab)a} = \frac{b^2}{a+b} .$$

**Étape 4 : la soustraction.**

$$\frac{a}{1+b^2} - \frac{b}{1+a^2} = \frac{a^2}{a+b} - \frac{b^2}{a+b}
  = \frac{a^2 - b^2}{a+b} = \frac{(a-b)(a+b)}{a+b} = a - b ,$$
la simplification étant légitime puisque $a + b > 0$.

**Conclusion.** L'égalité demandée est démontrée. $\blacksquare$

## Going further

Tout l'exercice tient dans la traduction de l'hypothèse : $\dfrac{a}{1+a} + \dfrac{b}{1+b} = 1$
n'est qu'une façon déguisée d'écrire $ab = 1$.

Une fois cela vu, on peut reformuler : pour $a > 0$ et $b = \dfrac1a$,
$$\frac{a}{1 + \frac{1}{a^2}} - \frac{1/a}{1+a^2} = \frac{a^3}{a^2+1} - \frac{1}{a(1+a^2)}
 = \frac{a^4 - 1}{a(a^2+1)} = \frac{a^2-1}{a} = a - \frac1a . \checkmark$$

C'est le même calcul, en plus lourd : l'écriture symétrique en $a$ et $b$ est plus lisible.
