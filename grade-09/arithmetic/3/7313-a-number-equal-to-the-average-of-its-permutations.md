---
id: "7313"
title: "Égal à la moyenne de ses permutations"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [chiffres, ecriture-decimale, equation, moyenne]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la seconde mi-temps », en TD, arithmétique, exercice 52"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

Soit $A$ un nombre de trois chiffres. On écrit les **six** nombres obtenus en permutant ses chiffres de toutes les façons possibles, puis on calcule leur moyenne.

Par exemple, pour $A = 152$ on écrit $152$, $125$, $512$, $521$, $215$, $251$, et on fait la moyenne de ces six nombres.

Trouver tous les nombres $A$ de trois chiffres qui sont **égaux** à cette moyenne.

*(On garde les six écritures même quand certains chiffres se répètent, et même si l'une d'elles commence par un zéro : on la lit alors comme un nombre plus petit.)*

## Hints

1. Note $A = 100a + 10b + c$, où $a$, $b$ et $c$ sont les trois chiffres. Écris les six permutations sous cette forme.
2. Additionne les six nombres. Combien de fois chaque chiffre occupe-t-il la place des centaines ? Celle des dizaines ? Celle des unités ?
3. La somme des six nombres vaut $222(a+b+c)$. Quelle est donc la moyenne ?
4. Écris l'équation « $A$ est égal à la moyenne » et simplifie-la au maximum.
5. Tu devrais arriver à $7a = 3b + 4c$. Il ne reste plus qu'à parcourir les valeurs possibles de $b$.

## Solution

**Mise en équation.**

Écrivons $A = 100a + 10b + c$, où $a$ est le chiffre des centaines ($1 \leqslant a \leqslant 9$), $b$ celui des dizaines et $c$ celui des unités ($0 \leqslant b, c \leqslant 9$).

Les six nombres obtenus en permutant les chiffres sont
$$100a + 10b + c,\quad 100a + 10c + b,\quad 100b + 10a + c,$$
$$100b + 10c + a,\quad 100c + 10a + b,\quad 100c + 10b + a .$$

**Leur somme.**

Chacun des trois chiffres occupe la place des centaines dans exactement deux des six nombres, la place des dizaines dans deux d'entre eux, et celle des unités dans deux d'entre eux. La somme vaut donc
$$S = 2 \times 100 (a+b+c) + 2 \times 10 (a+b+c) + 2 \times 1 (a+b+c) = 222(a+b+c).$$

La moyenne est $S/6$, c'est-à-dire
$$\frac{222(a+b+c)}{6} = 37(a+b+c).$$

**L'équation.**

On cherche les $A$ tels que $A = 37(a+b+c)$, c'est-à-dire
$$100a + 10b + c = 37a + 37b + 37c .$$

On regroupe :
$$63a = 27b + 36c .$$

Les trois coefficients sont divisibles par $9$, on simplifie :
$$\boxed{7a = 3b + 4c} .$$

**On parcourt les possibilités.**

On cherche les chiffres $a \in \{1, \ldots, 9\}$ et $b, c \in \{0, \ldots, 9\}$ vérifiant $7a = 3b + 4c$. Le plus commode est de fixer $b$ et de voir ce que cela impose.

| $b$ | équation $7a - 4c = 3b$ | solutions $(a, c)$ | nombres $A$ |
|---|---|---|---|
| $0$ | $7a = 4c$ | $(4,7)$ | $407$ |
| $1$ | $7a = 3 + 4c$ | $(1,1)$, $(5,8)$ | $111$, $518$ |
| $2$ | $7a = 6 + 4c$ | $(2,2)$, $(6,9)$ | $222$, $629$ |
| $3$ | $7a = 9 + 4c$ | $(3,3)$ | $333$ |
| $4$ | $7a = 12 + 4c$ | $(4,4)$ | $444$ |
| $5$ | $7a = 15 + 4c$ | $(5,5)$ | $555$ |
| $6$ | $7a = 18 + 4c$ | $(6,6)$ | $666$ |
| $7$ | $7a = 21 + 4c$ | $(3,0)$, $(7,7)$ | $370$, $777$ |
| $8$ | $7a = 24 + 4c$ | $(4,1)$, $(8,8)$ | $481$, $888$ |
| $9$ | $7a = 27 + 4c$ | $(5,2)$, $(9,9)$ | $592$, $999$ |

*Comment remplir une ligne.* Prenons $b = 7$ : on cherche $7a = 21 + 4c$, donc $7a - 21 = 4c$, donc $7(a-3) = 4c$. Comme $7$ et $4$ sont premiers entre eux, $4$ divise $a - 3$, donc $a - 3 \in \{0, 4\}$ (les seules possibilités avec $1 \leqslant a \leqslant 9$ et $c \leqslant 9$). Cela donne $a = 3$ avec $c = 0$, et $a = 7$ avec $c = 7$.

**Conclusion.** Il y a quinze solutions :
$$111,\ 222,\ 333,\ 370,\ 407,\ 444,\ 481,\ 518,\ 555,\ 592,\ 629,\ 666,\ 777,\ 888,\ 999 .$$

**Vérification sur un exemple.** Pour $A = 370$ : la somme des chiffres vaut $3 + 7 + 0 = 10$, et $37 \times 10 = 370$. C'est bien cela. (Les six permutations sont $370$, $307$, $730$, $703$, $037 = 37$ et $073 = 73$, de somme $2220$, de moyenne $370$.)

## Going further

1. Les neuf nombres $111$, $222$, …, $999$ sont solutions. Explique en une ligne pourquoi c'était prévisible, sans calcul.
2. On remarque que toutes les solutions sont des multiples de $37$. Pourquoi ?
3. Même question avec les nombres de **deux** chiffres : $A$ peut-il être égal à la moyenne de $\overline{ab}$ et $\overline{ba}$ ?
