---
id: "8245"
title: "Réordonner les chiffres pour tomber sur un multiple de 7"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [chiffres, divisibilite, restes, permutations]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, « Modulo, TD » (Aline Cahuzac), exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soit $n$ un entier dont l'écriture décimale ne comporte aucun zéro et contient au moins une
fois chacun des quatre chiffres $1$, $3$, $7$ et $9$.

Montrer qu'on peut réordonner les chiffres de $n$ de façon à obtenir un multiple de $7$.

*Exemple.* Prenons $n = 51\,397$. Ses chiffres sont $5, 1, 3, 9, 7$. En les réécrivant dans
l'ordre $5, 1, 7, 9, 3$ on obtient $51\,793 = 7 \times 7399$. Pour ce $n$-là, c'est gagné. Il
s'agit de montrer que ça marche toujours.

## Hints

1. Mets de côté un exemplaire de chacun des chiffres $1$, $3$, $7$, $9$, et place-les tout à la
   fin du nombre. Les autres chiffres, tu les places devant, dans l'ordre que tu veux : ils ne
   bougeront plus.
2. Le nombre obtenu s'écrit alors $N = A \times 10^4 + s$, où $A$ est fixé une fois pour toutes
   et où $s$ est le nombre à quatre chiffres formé par $1$, $3$, $7$, $9$ dans un ordre à choisir.
3. Tu as le droit de choisir $s$ parmi les $24$ permutations de $1379$. Que faudrait-il pour
   pouvoir toujours conclure ?
4. Calcule le reste de quelques-unes de ces $24$ permutations dans la division par $7$. Combien
   de restes différents arrives-tu à atteindre ?

## Solution

**La construction.**

Mettons de côté un exemplaire de chacun des chiffres $1$, $3$, $7$, $9$. Il reste un certain
nombre d'autres chiffres, éventuellement aucun. Rangeons ces autres chiffres dans l'ordre que
l'on veut : ils forment un nombre $A$ (si aucun chiffre ne reste, on pose $A = 0$). Comme $n$ ne
comporte pas de zéro, le premier chiffre écrit n'est jamais un $0$ et le nombre construit sera
bien un nombre à autant de chiffres que $n$.

Formons alors

$$N = A \times 10^4 + s ,$$

où $s$ est le nombre à quatre chiffres obtenu en écrivant $1$, $3$, $7$, $9$ dans un ordre que
nous n'avons pas encore fixé. Quel que soit cet ordre, $N$ utilise exactement les chiffres de
$n$ : c'est bien un réarrangement de $n$.

**Il reste à choisir l'ordre.**

Le nombre $A \times 10^4$ est fixé. Notons $t$ son reste dans la division par $7$. Alors

$$N \equiv t + s \pmod 7 ,$$

et $N$ sera un multiple de $7$ dès que $s$ aura pour reste $7 - t$ (ou $0$ si $t = 0$),
c'est-à-dire dès que $s \equiv -t \pmod 7$.

**Les 24 permutations atteignent tous les restes.**

Il suffit donc de savoir que, parmi les $24$ façons d'écrire les chiffres $1, 3, 7, 9$, on trouve
**tous** les restes possibles modulo $7$. C'est vrai, et il suffit d'en exhiber sept :

| reste voulu | permutation | vérification |
|---|---|---|
| $0$ | $1379$ | $1379 = 7 \times 197$ |
| $1$ | $1793$ | $1793 = 7 \times 256 + 1$ |
| $2$ | $3719$ | $3719 = 7 \times 531 + 2$ |
| $3$ | $1739$ | $1739 = 7 \times 248 + 3$ |
| $4$ | $1397$ | $1397 = 7 \times 199 + 4$ |
| $5$ | $1937$ | $1937 = 7 \times 276 + 5$ |
| $6$ | $1973$ | $1973 = 7 \times 281 + 6$ |

**Conclusion.**

On calcule $t$, le reste de $A \times 10^4$ modulo $7$. On lit dans le tableau la permutation $s$
dont le reste est $7 - t$ (ou $1379$ si $t = 0$). Le nombre $N = A \times 10^4 + s$ est alors un
multiple de $7$, et c'est un réarrangement des chiffres de $n$.

**On peut donc toujours réordonner les chiffres de $n$ pour obtenir un multiple de $7$.**

**Un exemple complet.**

Prenons $n = 41\,3975$. On met de côté $1, 3, 9, 7$, il reste les chiffres $4$ et $5$. Posons
$A = 45$. Alors $A \times 10^4 = 450\,000$, et $450\,000 = 7 \times 64\,285 + 5$, donc $t = 5$. Il
faut donc une permutation de reste $7 - 5 = 2$ : le tableau donne $3719$. On obtient

$$N = 45\,3719 = 7 \times 64\,817 .$$

## Going further

1. Pourquoi a-t-on pris exactement quatre chiffres imposés, et pas trois ? Combien de restes
   modulo $7$ atteint-on avec les six permutations de $1$, $3$, $7$ ?
2. Le même **raisonnement** tient-il en remplaçant $7$ par $11$ ? Par $13$ ? Calculer les
   restes des $24$ permutations de $1379$ dans chacun de ces deux cas.
3. L'hypothèse « aucun chiffre n'est nul » n'est là que pour éviter un nombre commençant par
   $0$. Que se passe-t-il si tous les autres chiffres de $n$ sont des zéros, par exemple pour
   $n = 1\,003\,079$ ? La conclusion tient-elle encore ?
