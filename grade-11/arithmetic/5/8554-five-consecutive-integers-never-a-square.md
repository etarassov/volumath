---
id: "8554"
title: "Cinq entiers consécutifs ne font jamais un carré"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [carre-parfait, principe-des-tiroirs, partie-sans-facteur-carre, nombres-premiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Arithmétique » du Groupe B, exercice sur les produits d'entiers consécutifs"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Démontrer que le produit de cinq entiers strictement positifs consécutifs n'est jamais un
carré parfait.

Autrement dit, pour tout entier $n \geqslant 1$, le nombre

$$n(n+1)(n+2)(n+3)(n+4)$$

n'est pas le carré d'un entier.

## Hints

1. Tout entier $m \geqslant 1$ s'écrit $m = u v^2$ où $u$ n'est divisible par le carré d'aucun nombre premier. Cette écriture est unique ; on appelle $u$ la partie « sans carré » de $m$.
2. Soit $p$ un nombre premier avec $p \geqslant 5$. Peut-il diviser deux des cinq entiers consécutifs à la fois ?
3. Déduis-en que si le produit est un carré, alors la partie sans carré de chacun des cinq entiers n'est divisible que par $2$ et par $3$. Quelles valeurs peut-elle prendre ?
4. Combien de valeurs possibles, pour combien d'entiers ? Applique le principe des tiroirs, puis regarde de combien deux des cinq entiers peuvent différer.

## Solution

Supposons, par l'absurde, que $N = n(n+1)(n+2)(n+3)(n+4)$ soit un carré parfait, pour un
certain entier $n \geqslant 1$.

### La partie sans carré

Tout entier $m \geqslant 1$ s'écrit de manière unique

$$m = u \, v^2 ,$$

où $u$ n'est divisible par le carré d'aucun nombre premier (on dit que $u$ est **sans
carré**). Pour l'obtenir, il suffit, pour chaque nombre premier $p$ divisant $m$, de garder
un facteur $p$ si son exposant dans $m$ est impair, et aucun s'il est pair.

Écrivons donc, pour $i = 0, 1, 2, 3, 4$,

$$n + i = u_i \, v_i^2 , \qquad u_i \text{ sans carré} .$$

### Les grands nombres premiers ne servent à rien

Soit $p$ un nombre premier avec $p \geqslant 5$. Deux des cinq entiers
$n, n+1, n+2, n+3, n+4$ diffèrent d'au plus $4$. Si $p$ divisait deux d'entre eux, il
diviserait leur différence, qui est comprise entre $1$ et $4$ : impossible puisque
$p \geqslant 5$.

Donc $p$ divise **au plus un** des cinq entiers. L'exposant de $p$ dans le produit $N$ est
donc exactement son exposant dans cet unique facteur $n+i$.

Comme $N$ est un carré, tous les exposants de ses facteurs premiers sont pairs. L'exposant de
$p$ dans $n+i$ est donc pair, ce qui signifie que $p$ ne divise pas $u_i$.

**Conclusion partielle :** aucun $u_i$ n'a de facteur premier supérieur ou égal à $5$. Comme
$u_i$ est sans carré, il ne peut donc valoir que

$$1, \quad 2, \quad 3 \quad \text{ou} \quad 6 .$$

### Le principe des tiroirs

Il y a cinq nombres $u_0, u_1, u_2, u_3, u_4$ et seulement quatre valeurs possibles. Deux
d'entre eux sont donc égaux : il existe $i < j$ avec $u_i = u_j = u$. Posons

$$n + i = u \, a^2 \qquad \text{et} \qquad n + j = u \, b^2 .$$

Comme $n + i < n + j$, on a $a < b$, et comme $n + i \geqslant 1$, on a $a \geqslant 1$, donc
$b \geqslant 2$.

### L'écart est trop grand

Calculons la différence :

$$(n+j) - (n+i) = u\,(b^2 - a^2) .$$

Comme $a \leqslant b - 1$, on a $a^2 \leqslant (b-1)^2$, donc

$$b^2 - a^2 \geqslant b^2 - (b-1)^2 = 2b - 1 .$$

Par ailleurs $j - i \leqslant 4$, donc

$$u\,(2b - 1) \leqslant 4 .$$

Examinons les quatre valeurs possibles de $u$, en se souvenant que $b \geqslant 2$, donc
$2b - 1 \geqslant 3$ :

- $u = 2$ : il faudrait $2(2b-1) \leqslant 4$, donc $2b - 1 \leqslant 2$. Impossible.
- $u = 3$ : il faudrait $3(2b-1) \leqslant 4$. Impossible.
- $u = 6$ : il faudrait $6(2b-1) \leqslant 4$. Impossible.
- $u = 1$ : il faut $2b - 1 \leqslant 4$, donc $b = 2$, et alors $a = 1$.

Le seul cas restant donne $n + i = 1$ et $n + j = 4$. Comme $n \geqslant 1$, l'égalité
$n + i = 1$ force $n = 1$ et $i = 0$.

### Le dernier cas

Il reste à vérifier $n = 1$, c'est-à-dire

$$1 \times 2 \times 3 \times 4 \times 5 = 120 .$$

Or $10^2 = 100$ et $11^2 = 121$ : le nombre $120$ n'est pas un carré parfait.

### Conclusion

Tous les cas mènent à une contradiction : le produit de cinq entiers strictement positifs
consécutifs n'est jamais un carré parfait.
