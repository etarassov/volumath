---
id: "8253"
title: "Une plage sans aucune puissance de nombre premier"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [nombres premiers, factorielle, divisibilite, nombres premiers entre eux, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », entraînement de mi-parcours, exercice 4. La solution du polycopié passe par le théorème des restes chinois ; celle donnée ici est élémentaire."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

On appelle **puissance d'un nombre premier** tout entier qui s'écrit $p^k$ avec $p$ premier et
$k \ge 1$. Par exemple $8 = 2^3$, $49 = 7^2$ et $13 = 13^1$ en sont ; en revanche $12$ et $15$
n'en sont pas.

Montrer que pour tout entier $N \ge 1$, il existe $N$ entiers consécutifs dont aucun n'est une
puissance d'un nombre premier.

*Rappel de notation.* $m! = 1 \times 2 \times \cdots \times m$, et tout entier compris entre $2$
et $m$ divise $m!$.

## Hints

1. Comment reconnaître à coup sûr qu'un entier **n'est pas** une puissance d'un nombre premier ?
   Il suffit de lui trouver deux diviseurs premiers différents.
2. Plutôt que de chercher ces deux nombres premiers, cherche à écrire l'entier comme un produit
   $u \times v$ avec $u \ge 2$, $v \ge 2$ et $u$, $v$ **premiers entre eux**. Pourquoi cela
   suffit-il ?
3. Reprends la recette classique : pour $2 \le k \le N+1$, on veut que $k$ divise le $k$-ième
   nombre de la plage. La factorielle fait cela très bien.
4. Une simple factorielle ne suffit pas ici. Essaie son **carré**.

## Solution

**Le critère à retenir.**

*Si un entier $n$ s'écrit $n = u \times v$ avec $u \ge 2$, $v \ge 2$ et $u$, $v$ premiers entre
eux, alors $n$ n'est pas une puissance d'un nombre premier.*

En effet, $u \ge 2$ possède un facteur premier $p$, et $v \ge 2$ possède un facteur premier $q$.
Ces deux nombres premiers divisent $n$, et ils sont différents : si on avait $p = q$, alors $p$
diviserait à la fois $u$ et $v$, ce qui contredirait le fait qu'ils sont premiers entre eux.
Donc $n$ a deux diviseurs premiers distincts, et il ne peut pas s'écrire $p^k$.

**La construction.**

Posons

$$A = ((N+1)!)^2 ,$$

et considérons les $N$ entiers consécutifs

$$A + 2,\quad A + 3,\quad \ldots,\quad A + (N+1) .$$

**Vérification.**

Soit $k$ un entier avec $2 \le k \le N+1$. Comme $k$ divise $(N+1)!$, son carré $k^2$ divise
$((N+1)!)^2 = A$. Écrivons donc

$$A = k^2 B, \qquad B \ \text{entier}, \ B \ge 1 .$$

Alors

$$A + k = k^2 B + k = k\,(kB + 1) .$$

Posons $u = k$ et $v = kB+1$. Vérifions les trois conditions du critère :

- $u = k \ge 2$ ; ✓
- $v = kB + 1 \ge 2 \times 1 + 1 = 3 \ge 2$ ; ✓
- $u$ et $v$ sont premiers entre eux : tout diviseur commun de $k$ et de $kB+1$ divise la
  différence $(kB+1) - B \times k = 1$. ✓

Donc $A + k$ n'est pas une puissance d'un nombre premier.

**Conclusion.**

Les $N$ entiers $A+2,\ A+3,\ \ldots,\ A+(N+1)$, où $A = ((N+1)!)^2$, sont consécutifs et
aucun n'est une puissance d'un nombre premier.

**Un exemple pour $N = 3$.**

Ici $A = (4!)^2 = 24^2 = 576$, et les trois nombres sont

$$578 = 2 \times 17^2, \qquad 579 = 3 \times 193, \qquad 580 = 2^2 \times 5 \times 29 .$$

Chacun a bien au moins deux facteurs premiers distincts.

## Going further

1. Pourquoi le simple $A = (N+1)!$ ne suffirait-il pas ? Que vaut $A + k$ quand $A = (N+1)!$ et
   que peut-on en dire ?
2. La même construction montre au passage qu'il existe $N$ entiers consécutifs dont aucun n'est
   premier. Pourquoi ?
3. Comme pour ce genre de construction, le nombre obtenu est énorme. Trouver à la main trois
   entiers consécutifs qui ne sont pas des puissances de nombres premiers et qui sont bien plus
   petits que $578$.
