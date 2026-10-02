---
id: "8254"
title: "On retourne la k-ième pièce"
grade: 11
theme: logic-reasoning
difficulty: 5
duration_min: 50
tags: [recurrence-forte, symetrie, terminaison, invariant, pile-ou-face]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », première partie, « Stratégie des jeux, TD de combinatoire » (Théodore Fougereux), exercice 15. Le polycopié ne donne pas de solution ; celle-ci a été écrite et vérifiée par ordinateur jusqu'à n = 14."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

On aligne $n$ pièces de monnaie, numérotées de $1$ à $n$ de gauche à droite. Chacune montre
soit **pile** (noté P), soit **face** (noté F).

À chaque étape, on compte le nombre $k$ de pièces qui montrent face, et on retourne la pièce
**numéro $k$**. Si $k = 0$, il n'y a plus rien à faire : le jeu s'arrête.

Montrer que, quelle que soit la position de départ, le jeu finit toujours par s'arrêter, donc
par la position où **toutes les pièces montrent pile**.

*Exemple avec $n = 3$, en partant de PFF.*

$$\text{PFF} \to \text{PPF} \to \text{FPF} \to \text{FFF} \to \text{FFP} \to \text{FPP} \to
\text{PPP}$$

## Hints

1. Le jeu ne peut s'arrêter que sur PP...P, puisque c'est la seule position sans coup possible.
   Tout revient donc à montrer qu'il ne tourne pas en rond indéfiniment.
2. Regarde la dernière pièce, la numéro $n$. À quelle condition très particulière est-elle
   retournée ?
3. Montre que si la pièce $n$ montre pile, elle le montrera pour toujours. Que se passe-t-il
   alors pour les $n-1$ premières ?
4. Il reste le cas où la pièce $n$ montre face. Les $n-1$ premières pièces obéissent alors à une
   règle légèrement différente : on retourne la pièce numéro $k+1$, où $k$ est leur nombre de
   faces.
5. Retourne la ligne de pièces dans un miroir **et** échange les mots pile et face. Que devient
   la règle décalée ?

## Solution

**Ce qu'il faut démontrer.**

La seule position sans coup possible est PP$\ldots$P, celle où $k = 0$. Si le jeu s'arrête, il
s'arrête donc là. Comme le nombre de positions est fini ($2^n$), le jeu ou bien s'arrête, ou
bien repasse indéfiniment par les mêmes positions. Il s'agit donc de montrer qu'il ne peut pas
boucler.

On raisonne par **récurrence forte sur $n$**.

**Le cas $n = 1$.** Si la pièce montre pile, c'est fini. Si elle montre face, alors $k = 1$ et on
retourne la pièce $1$ : elle montre pile, c'est fini.

**Deux remarques sur la dernière pièce.**

Supposons le résultat acquis pour $n-1$ pièces, et considérons $n$ pièces.

*Remarque 1 : la pièce $n$ n'est retournée que lorsque toutes les pièces montrent face.* En
effet, on retourne la pièce $n$ exactement quand $k = n$, c'est-à-dire quand les $n$ pièces
montrent face.

*Remarque 2 : une fois que la pièce $n$ montre pile, elle le montre pour toujours.* En effet,
pour la retourner il faudrait $k = n$, donc que les $n$ pièces montrent face, et en particulier
la pièce $n$ : impossible.

**Cas A : la pièce $n$ montre pile.**

D'après la remarque 2, elle le montrera toujours. Alors $k$ est exactement le nombre de faces
parmi les $n-1$ premières pièces, et on retourne la pièce numéro $k$, avec $k \le n-1$. Les
$n-1$ premières pièces évoluent donc **exactement selon la règle du jeu à $n-1$ pièces**. Par
hypothèse de récurrence, elles arrivent toutes à pile, et le jeu s'arrête.

**Cas B : la pièce $n$ montre face.**

Notons $j$ le nombre de faces parmi les $n-1$ premières pièces, de sorte que $k = j + 1$.

- Si $j = n-1$, alors $k = n$ et on retourne la pièce $n$ : elle passe à pile, et on est dans le
  cas A.
- Sinon $j \le n-2$, donc $k = j+1 \le n-1$ : on retourne une pièce parmi les $n-1$ premières,
  et la pièce $n$ reste sur face.

Tant qu'on reste dans le cas B, les $n-1$ premières pièces obéissent donc à la **règle
décalée** : *on retourne la pièce numéro $j+1$, où $j$ est le nombre de faces*. Il suffit de
montrer que cette règle décalée amène toujours les $n-1$ pièces à « toutes face » : à ce
moment-là $k = n$, la pièce $n$ passe à pile, et le cas A conclut.

**Le lemme du miroir.**

*La règle décalée sur $m$ pièces, c'est exactement la règle ordinaire vue dans un miroir, avec
pile et face échangés.*

Prenons $m$ pièces $a_1, \ldots, a_m$ et fabriquons une nouvelle ligne $b_1, \ldots, b_m$ en
renversant l'ordre **et** en échangeant les deux faces :

$$b_i = \text{le contraire de } a_{m+1-i} .$$

Si $a$ compte $j$ faces, alors $b$ en compte $m - j$. La règle ordinaire appliquée à $b$
retourne donc la pièce $b_{m-j}$, c'est-à-dire la pièce $a_{m+1-(m-j)} = a_{j+1}$ : exactement
la pièce que la règle décalée retourne dans $a$. Et retourner une pièce dans $b$, c'est
retourner la pièce correspondante dans $a$. Les deux jeux sont donc le même jeu, à ce
changement de nom près.

Enfin, « toutes les pièces de $b$ montrent pile » se traduit par « toutes les pièces de $a$
montrent face ».

**On conclut.**

Par hypothèse de récurrence, le jeu ordinaire sur $m = n-1$ pièces amène toujours $b$ à « toutes
pile ». Par le lemme du miroir, la règle décalée amène donc toujours $a$ à « toutes face ».

Dans le cas B, les $n-1$ premières pièces finissent donc par montrer toutes face, la pièce $n$
est alors retournée et passe à pile, et le cas A termine le travail.

**Dans tous les cas, le jeu s'arrête, et il s'arrête sur PP$\ldots$P.** $\blacksquare$

## Going further

1. Sur l'exemple donné avec $n = 3$, le jeu met $6$ coups. Vérifier qu'aucune position de
   départ à $3$ pièces ne demande davantage. Combien de coups au maximum pour $n = 4$ ?
2. Le maximum vaut $1 + 2 + \cdots + n = \dfrac{n(n+1)}{2}$. Le démontrer à l'aide de la
   découpe en cas A et B ci-dessus.
3. Que devient l'énoncé si l'on retourne la pièce numéro $k$ en comptant cette fois les piles
   au lieu des faces ?
