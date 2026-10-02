---
id: "7661"
title: "Deux conditions qui vont toujours ensemble"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [divisibilite, multiples, equivalence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours d'arithmétique du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, cours d'arithmétique, exercice sur 7 | 2x+3y et 7 | 5x+4y"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Soient $x$ et $y$ deux entiers.

Démontrer que $2x + 3y$ est un multiple de $7$ **si et seulement si** $5x + 4y$ est un multiple de $7$.

## Hints

1. Une démonstration « si et seulement si » demande deux implications. Mais ici, une seule idée les donne toutes les deux d'un coup.
2. Que se passe-t-il si vous **additionnez** les deux expressions $2x + 3y$ et $5x + 4y$ ?
3. Si la somme de deux nombres est un multiple de $7$, et que l'un des deux l'est aussi, que dire du troisième ?

## Solution

**L'observation de départ.**

Additionnons les deux expressions :

$$(2x + 3y) + (5x + 4y) = 7x + 7y = 7(x + y) .$$

La somme des deux expressions est donc **toujours** un multiple de $7$, quels que soient les entiers $x$ et $y$.

Notons $A = 2x + 3y$ et $B = 5x + 4y$, de sorte que

$$A + B = 7(x+y) .$$

**Première implication.**

Supposons que $A$ est un multiple de $7$, disons $A = 7k$ avec $k$ entier. Alors

$$B = 7(x+y) - A = 7(x+y) - 7k = 7\,(x + y - k) .$$

Comme $x + y - k$ est un entier, $B$ est bien un multiple de $7$.

**Seconde implication.**

Supposons maintenant que $B$ est un multiple de $7$, disons $B = 7m$. Alors, exactement de la même façon,

$$A = 7(x+y) - B = 7\,(x + y - m) ,$$

donc $A$ est un multiple de $7$.

**Conclusion.**

Les deux implications étant démontrées, $2x + 3y$ est un multiple de $7$ si et seulement si $5x + 4y$ l'est. $\blacksquare$

## Going further

La démonstration tient en une ligne parce que les coefficients ont été choisis pour que la somme soit un multiple de $7$ : $2 + 5 = 7$ et $3 + 4 = 7$.

**Le même raisonnement avec une différence.** Si l'on veut relier $2x + 3y$ et $9x + 10y$, c'est la différence qui aide : $(9x + 10y) - (2x + 3y) = 7x + 7y$. La conclusion est la même.

**Une version un peu plus fine.** Multiplier par un nombre premier avec $7$ ne change rien non plus. Par exemple $3(2x+3y) = 6x + 9y$, et comme $3$ n'est pas un multiple de $7$, l'expression $6x + 9y$ est un multiple de $7$ exactement quand $2x + 3y$ l'est. En combinant ces deux idées, additions et multiplications par un inversible, on peut relier une foule d'expressions entre elles. C'est exactement ce que fait le **calcul modulo $7$** : modulo $7$, l'énoncé dit simplement que $5x + 4y \equiv -(2x+3y)$.

**Question pour prolonger.** Pour quels couples d'entiers $(u, v)$ l'expression $ux + vy$ est-elle un multiple de $7$ exactement quand $2x + 3y$ l'est, pour tous les entiers $x$ et $y$ ?
