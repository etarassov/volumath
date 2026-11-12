---
id: "22054"
title: "Les matchs du premier tour"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, paires, appariement, tournoi, principe-multiplicatif]
adapted_from: null
see_also: ["0527"]
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Dénombrement », exercice 15"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Un tournoi de tennis réunit $2n$ joueurs. Au premier tour, on les répartit en $n$ matchs : chaque joueur joue exactement un match, contre un seul adversaire. Seule compte la liste des matchs, pas l'ordre dans lequel on les écrit.

1. Combien y a-t-il de façons d'organiser le premier tour avec $4$ joueurs ? Avec $6$ joueurs ?
2. Combien y en a-t-il avec $2n$ joueurs ?

## Hints

1. Pour $4$ joueurs $A$, $B$, $C$, $D$, écrivez toutes les possibilités. Contre qui joue $A$ ?
2. Commencez toujours par le joueur $A$. Combien d'adversaires peut-il avoir ? Une fois son match fixé, que reste-t-il à faire ?
3. Avec $2n$ joueurs, notez $P_{2n}$ le nombre cherché. Exprimez $P_{2n}$ à l'aide de $P_{2n-2}$.

## Solution

**L'idée.** Pour ne pas compter deux fois la même organisation, on ne choisit pas les matchs dans n'importe quel ordre : on regarde toujours le joueur dont le match n'est pas encore fixé et qui vient le premier dans l'ordre alphabétique.

**Avec $4$ joueurs** $A$, $B$, $C$, $D$. Le joueur $A$ peut affronter $B$, $C$ ou $D$, soit $3$ choix. Une fois son adversaire choisi, les deux joueurs restants jouent ensemble. Il y a donc $3$ organisations :
$$\{A, B\}, \{C, D\} \qquad \{A, C\}, \{B, D\} \qquad \{A, D\}, \{B, C\}.$$

**Avec $6$ joueurs** $A$, $B$, $C$, $D$, $E$, $F$. Le joueur $A$ a $5$ adversaires possibles. Pour chacun de ces choix, il reste $4$ joueurs, et on vient de voir qu'on peut les répartir de $3$ façons. Cela fait $5 \times 3 = 15$ organisations.

**Avec $2n$ joueurs.** Notons $P_{2n}$ le nombre d'organisations. Le premier joueur a $2n - 1$ adversaires possibles. Pour chacun de ces choix, il reste $2n - 2$ joueurs à répartir en matchs, ce qui peut se faire de $P_{2n-2}$ façons. Deux choix différents de l'adversaire du premier joueur donnent des organisations différentes. Donc
$$P_{2n} = (2n - 1) \times P_{2n-2}.$$
On recommence avec $P_{2n-2} = (2n - 3) \times P_{2n-4}$, et ainsi de suite jusqu'à $P_2 = 1$ (deux joueurs, un seul match). On obtient
$$P_{2n} = (2n - 1) \times (2n - 3) \times \cdots \times 5 \times 3 \times 1.$$

On retrouve $P_4 = 3 \times 1 = 3$ et $P_6 = 5 \times 3 \times 1 = 15$. Pour $8$ joueurs, $P_8 = 7 \times 5 \times 3 \times 1 = 105$.

**Conclusion.** Avec $2n$ joueurs, il y a $1 \times 3 \times 5 \times \cdots \times (2n - 1)$ façons d'organiser le premier tour : c'est le produit de tous les nombres impairs inférieurs à $2n$.

## Going further

1. On note $n! = 1 \times 2 \times \cdots \times n$. Montrer que $1 \times 3 \times 5 \times \cdots \times (2n - 1) = \frac{(2n)!}{2^n \times n!}$. Indication : il manque les nombres pairs $2, 4, \ldots, 2n$, et $2k = 2 \times k$.
2. Retrouver ce résultat autrement : on aligne les $2n$ joueurs dans un ordre quelconque, et on fait jouer le 1ᵉʳ contre le 2ᵉ, le 3ᵉ contre le 4ᵉ, et ainsi de suite. Combien d'alignements donnent la même organisation ?
