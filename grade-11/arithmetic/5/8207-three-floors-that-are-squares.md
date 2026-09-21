---
id: "8207"
title: "Trois parties entières carrées en entraînent une quatrième"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [partie entiere, carres parfaits, encadrement, valuation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, Coupe Animath de printemps 2019"
  reference: "PolycopieV1-1.pdf, chapitre II « Coupe Animath de printemps 2019 », énoncés destinés à tous, exercice 5 (la solution imprimée s'arrête avant la dernière étape, qui est rétablie ici)"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Pour un réel $x$, on note $\lfloor x \rfloor$ sa **partie entière**, c'est-à-dire le plus grand entier inférieur ou égal à $x$. Par exemple $\lfloor \text{3,7} \rfloor = 3$.

Soit $x$ un nombre réel positif. On suppose que les trois entiers

$$\lfloor x^2 \rfloor, \qquad \lfloor x^3 \rfloor, \qquad \lfloor x^4 \rfloor$$

sont tous des carrés d'entiers.

Montrer qu'alors $\lfloor x \rfloor$ est aussi le carré d'un entier.

## Hints

1. Commence par écarter les petites valeurs : si $x < 2$, que vaut $\lfloor x \rfloor$ ? Est-ce un carré ? Tu pourras donc supposer $x \ge 2$ dans la suite.
2. Donne un nom au premier carré : pose $\lfloor x^2 \rfloor = n^2$. Traduis cela par un encadrement de $x^2$ entre deux entiers consécutifs.
3. De cet encadrement, élève au carré pour encadrer $x^4$. Tu obtiens $\lfloor x^4 \rfloor$ coincé entre deux **carrés consécutifs**. Combien de carrés parfaits y a-t-il strictement entre $k^2$ et $(k+1)^2$ ?
4. Tu sais maintenant exactement ce que vaut $\lfloor x^4 \rfloor$. Utilise-le pour majorer $x^3$, en écrivant $x^3 = \dfrac{x^4}{x}$ et en minorant $x$.
5. Tu obtiens $\lfloor x^3 \rfloor = n^3$. Or l'énoncé dit que $\lfloor x^3 \rfloor$ est un carré : que peux-tu alors dire de $n$ ? (Regarde les exposants des nombres premiers.)
6. Dernière étape, la plus facile mais à ne pas oublier : l'encadrement de $x^2$ donne aussi un encadrement de $x$. Que vaut $\lfloor x \rfloor$ ?

## Solution

**Le cas facile : $x < 2$.**

Si $0 \le x < 2$, alors $\lfloor x \rfloor$ vaut $0$ ou $1$. Or $0 = 0^2$ et $1 = 1^2$ sont tous deux des carrés d'entiers : il n'y a rien à faire.

Dans toute la suite on suppose donc

$$x \ge 2 .$$

**Notation.**

Par hypothèse $\lfloor x^2 \rfloor$ est un carré : écrivons

$$\lfloor x^2 \rfloor = n^2, \qquad n \text{ entier}, \ n \ge 0 .$$

Comme $x \ge 2$, on a $x^2 \ge 4$, donc $n^2 \ge 4$, donc

$$n \ge 2 .$$

La définition de la partie entière donne l'encadrement

$$n^2 \ \le\ x^2 \ <\ n^2 + 1 . \qquad (\star)$$

**Étape 1 : $\lfloor x^4 \rfloor = n^4$.**

Tous les membres de $(\star)$ sont positifs, on peut donc les élever au carré sans changer le sens :

$$n^4 \ \le\ x^4 \ <\ (n^2 + 1)^2 .$$

Comme $\lfloor x^4 \rfloor$ est un entier compris entre $x^4$ et $x^4 - 1$, et que $n^4$ est un entier inférieur ou égal à $x^4$, on en déduit

$$n^4 \ \le\ \lfloor x^4 \rfloor \ \le\ x^4 \ <\ (n^2+1)^2 .$$

Autrement dit, l'entier $\lfloor x^4 \rfloor$ vérifie

$$(n^2)^2 \ \le\ \lfloor x^4 \rfloor \ <\ (n^2 + 1)^2 .$$

Or, par hypothèse, $\lfloor x^4 \rfloor$ est un carré parfait. Et il n'existe **aucun** carré parfait strictement compris entre deux carrés consécutifs $k^2$ et $(k+1)^2$. Avec $k = n^2$, la seule possibilité est donc

$$\lfloor x^4 \rfloor = (n^2)^2 = n^4 .$$

**Étape 2 : $\lfloor x^3 \rfloor = n^3$.**

*Minoration.* De $(\star)$ on tire $x^2 \ge n^2$, donc $x \ge n$ (les deux nombres sont positifs), donc $x^3 \ge n^3$.

*Majoration.* L'étape 1 donne $n^4 \le x^4 < n^4 + 1$. Écrivons alors

$$x^3 = \frac{x^4}{x} \ <\ \frac{n^4 + 1}{x} \ \le\ \frac{n^4 + 1}{n} \ =\ n^3 + \frac{1}{n} ,$$

où la deuxième inégalité vient de $x \ge n > 0$ (diviser par un nombre plus grand donne un résultat plus petit). Comme $n \ge 2$, on a $\dfrac1n \le \dfrac12 < 1$, donc

$$x^3 < n^3 + 1 .$$

*Conclusion de l'étape.* On a $n^3 \le x^3 < n^3 + 1$ avec $n^3$ entier, donc

$$\lfloor x^3 \rfloor = n^3 .$$

**Étape 3 : $n$ est un carré parfait.**

Par hypothèse, $\lfloor x^3 \rfloor$ est un carré parfait, donc $n^3$ en est un : il existe un entier $m$ avec

$$n^3 = m^2 .$$

Regardons les exposants dans les décompositions en facteurs premiers. Soit $p$ un nombre premier, soit $a$ l'exposant de $p$ dans $n$ et $b$ son exposant dans $m$. En comparant les deux écritures de $n^3 = m^2$, l'unicité de la décomposition en facteurs premiers donne

$$3a = 2b .$$

Le membre de droite est pair, donc $3a$ est pair ; comme $3$ est impair, $a$ est pair.

Ainsi **tous** les exposants de la décomposition de $n$ sont pairs, ce qui signifie exactement que $n$ est un carré parfait.

**Étape 4 : $\lfloor x \rfloor = n$.**

Il reste à relier $\lfloor x \rfloor$ à $n$. Reprenons $(\star)$ :

- de $n^2 \le x^2$ et $x, n \ge 0$ on tire $x \ge n$ ;
- de $x^2 < n^2 + 1$ et $n \ge 1$ on tire $x^2 < n^2 + 2n + 1 = (n+1)^2$, donc $x < n+1$.

Donc $n \le x < n + 1$, ce qui signifie exactement

$$\lfloor x \rfloor = n .$$

**Conclusion.** Par l'étape 3, $n$ est un carré parfait, et par l'étape 4, $\lfloor x \rfloor = n$. Donc

$$\boxed{\lfloor x \rfloor \text{ est le carré d'un entier} .}$$

## Going further

Trouver un réel $x \ge 2$, non entier, pour lequel les quatre nombres $\lfloor x \rfloor$, $\lfloor x^2 \rfloor$, $\lfloor x^3 \rfloor$, $\lfloor x^4 \rfloor$ sont effectivement tous des carrés. L'étape 4 montre qu'il faut $\lfloor x \rfloor = n$ avec $n$ carré : essayer $n = 4$ et chercher $x$ juste au-dessus de $4$.
