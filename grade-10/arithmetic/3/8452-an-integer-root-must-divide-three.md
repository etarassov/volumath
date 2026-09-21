---
id: "8452"
title: "Une racine entière doit diviser 3"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [equation polynomiale, divisibilite, racine entiere, factorisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Factorisation et divisibilité » (Antoine Derimay), exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les entiers relatifs $n$ tels que

$$n^5 - 2n^4 - 7n^2 - 7n + 3 = 0.$$

*Les entiers relatifs sont les entiers positifs, négatifs ou nuls.*

## Hints

1. Ne cherche pas à factoriser le polynôme : il n'y a pas de factorisation évidente. Cherche plutôt à **limiter le nombre de valeurs possibles** pour $n$, quitte à les essayer ensuite une par une.
2. Dans l'égalité, tous les termes sauf un contiennent un facteur $n$. Isole ce terme-là d'un côté du signe égal.
3. Tu obtiens une égalité de la forme $n \times (\text{quelque chose d'entier}) = 3$. Que dit-elle sur $n$ ?
4. Il ne reste que quatre valeurs à tester. N'oublie pas les négatives.

## Solution

### Étape 1. Isoler le terme constant

Dans l'expression $n^5 - 2n^4 - 7n^2 - 7n + 3$, tous les termes sauf le $+3$ contiennent le facteur $n$. Réécrivons l'équation en mettant le $3$ tout seul d'un côté :

$$n^5 - 2n^4 - 7n^2 - 7n = -3,$$

puis factorisons le membre de gauche par $n$ :

$$n \left( n^4 - 2n^3 - 7n - 7 \right) = -3.$$

### Étape 2. En déduire que $n$ divise 3

Le nombre $n^4 - 2n^3 - 7n - 7$ est un entier, appelons-le $m$. L'égalité $n \times m = -3$ dit exactement que **$n$ est un diviseur de $3$**.

Or $3$ est un nombre premier : ses seuls diviseurs entiers sont

$$-3, \quad -1, \quad 1, \quad 3.$$

(On remarque au passage que $n = 0$ est impossible, ce que l'on voit aussi directement : pour $n = 0$ l'expression vaut $3$, et non $0$.)

### Étape 3. Tester les quatre valeurs

| $n$ | $n^5 - 2n^4 - 7n^2 - 7n + 3$ | |
|---|---|---|
| $-3$ | $-243 - 162 - 63 + 21 + 3 = -444$ | non |
| $-1$ | $-1 - 2 - 7 + 7 + 3 = 0$ | **oui** |
| $1$ | $1 - 2 - 7 - 7 + 3 = -12$ | non |
| $3$ | $243 - 162 - 63 - 21 + 3 = 0$ | **oui** |

Détaillons par exemple le cas $n = 3$ : $3^5 = 243$, $2 \times 3^4 = 162$, $7 \times 3^2 = 63$, $7 \times 3 = 21$, et

$$243 - 162 - 63 - 21 + 3 = 81 - 63 - 21 + 3 = 18 - 21 + 3 = 0.$$

### Conclusion

Les seuls entiers relatifs solutions sont

$$\boxed{n = -1 \quad \text{et} \quad n = 3.}$$

## Going further

La méthode est générale et vaut la peine d'être retenue. Si un entier $n$ est racine d'une équation

$$a_k n^k + a_{k-1} n^{k-1} + \cdots + a_1 n + a_0 = 0$$

à coefficients entiers, alors, en isolant $a_0$ et en factorisant le reste par $n$, on obtient que **$n$ divise le terme constant $a_0$**.

Une équation de degré $5$, qu'on ne sait pas résoudre en général, se réduit ainsi à quelques essais dès qu'on ne cherche que les solutions entières. Ici le terme constant valait $3$, ce qui laissait quatre candidats ; s'il avait valu $12$, il y en aurait eu douze, ce qui reste faisable.

Remarquons enfin que les deux racines trouvées permettent de factoriser complètement. En divisant par $(n+1)(n-3) = n^2 - 2n - 3$, on obtient

$$n^5 - 2n^4 - 7n^2 - 7n + 3 = (n+1)(n-3)\left(n^3 + 3n - 1\right).$$

Le dernier facteur n'a effectivement aucune racine entière : une telle racine devrait diviser $1$, donc valoir $1$ ou $-1$, et ni $1 + 3 - 1 = 3$ ni $-1 - 3 - 1 = -5$ ne sont nuls. On retrouve bien nos deux solutions et pas d'autres.
