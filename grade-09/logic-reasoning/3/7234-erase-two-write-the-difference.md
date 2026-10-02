---
id: "7234"
title: "On efface deux nombres et on écrit leur différence"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [invariant, parite, somme, operations]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », jeudi 26 matin (Yohann d'Anello), invariants, exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

On écrit au tableau tous les entiers de $1$ à $2017$.

Puis on répète l'opération suivante : on choisit deux nombres $a$ et $b$ parmi ceux qui sont
écrits, on les efface, et on écrit à leur place leur différence $|a - b|$ (la différence sans le
signe).

Chaque opération fait diminuer de $1$ le nombre d'entiers écrits au tableau. Après $2016$
opérations, il ne reste donc qu'un seul nombre.

Montrer que ce dernier nombre est impair.

## Hints

1. Suis la somme $S$ de tous les nombres écrits au tableau.
2. Quand on remplace $a$ et $b$ par $|a-b|$, la somme perd $a+b$ et gagne $|a-b|$. De combien
   varie-t-elle ?
3. $a + b$ et $|a - b|$ ont-ils toujours la même parité ?
4. Calcule la parité de $1 + 2 + \cdots + 2017$.

## Solution

**La quantité à surveiller : la somme.**

Notons $S$ la somme de tous les nombres écrits au tableau.

**L'effet d'une opération.**

On efface $a$ et $b$, on écrit $|a-b|$. La somme devient
$$S - a - b + |a - b| .$$
Elle varie donc de
$$|a-b| - (a+b) .$$

Or $a + b$ et $a - b$ ont toujours la même parité, car leur différence vaut $2b$, qui est pair. Et
$|a-b|$ a la même parité que $a-b$. Donc $|a-b|$ et $a+b$ ont la même parité, et leur différence
$|a-b| - (a+b)$ est **paire**.

**L'invariant.**

À chaque opération, la somme $S$ varie d'un nombre pair : **la parité de $S$ ne change jamais.**

**La somme de départ.**

$$S_0 = 1 + 2 + \cdots + 2017 = \frac{2017 \times 2018}{2} = 2017 \times 1009 .$$

C'est le produit de deux nombres impairs, donc $S_0$ est **impair**.

**Conclusion.**

À la fin, il ne reste qu'un seul nombre au tableau, et $S$ vaut alors ce nombre. Comme $S$ est
resté impair tout du long :

**le dernier nombre écrit est impair.**

## Going further

On peut préciser la réponse. Le dernier nombre est compris entre $0$ et $2017$ (chaque opération
remplace deux nombres par un nombre au plus égal au plus grand des deux). Il est impair, donc il
vaut au plus $2017$.

Le nombre $1$, par exemple, est atteignable. Regroupons les entiers de $2$ à $2017$ en paires de
nombres consécutifs $(2,3), (4,5), \ldots, (2016,2017)$ : chaque paire donne $1$. Avec le $1$ du
départ, il reste alors $1009$ fois le nombre $1$ au tableau. Effaçons-les deux par deux, puisque
$|1-1| = 0$ : il reste un seul $1$ et $504$ zéros. Enfin, chaque zéro s'élimine contre le $1$ en
deux coups, ou plus simplement contre un autre zéro, jusqu'à n'avoir qu'un $1$ et un $0$, dont la
différence vaut $1$.
