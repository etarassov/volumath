---
id: "3620"
title: "Le meilleur rangement de cinq nombres"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [permutations, optimisation, echange, factorisation]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 17 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

On range les cinq nombres $2$, $3$, $4$, $5$, $6$ dans un ordre quelconque et on appelle $a$, $b$, $c$, $d$, $e$ les nombres obtenus, dans cet ordre. Chaque nombre est utilisé exactement une fois.

Par exemple, un rangement possible est $(a, b, c, d, e) = (5, 3, 6, 2, 4)$.

On calcule alors

$$N = a - ab + abc - abcd + abcde$$

où $ab$ désigne le produit $a \times b$, $abc$ le produit $a \times b \times c$, et ainsi de suite.

Quelle est la plus grande valeur possible de $N$, et pour quel rangement est-elle atteinte ?

## Hints

1. Le dernier terme, $abcde$, ne dépend pas du rangement. Que vaut-il ? Il ne reste alors qu'à rendre $a - ab + abc - abcd$ le plus grand possible.
2. Pour comparer deux rangements, essaie d'en échanger deux nombres et de calculer la différence des deux valeurs de $N$. Beaucoup de termes disparaissent.
3. Commence par échanger $c$ et $e$. La différence se factorise en un produit de trois facteurs dont tu connais les signes. Recommence ensuite avec $a$ et $c$, puis avec $a$ et $b$, puis avec $b$ et $d$.

## Solution

**Étape 1. Écarter le dernier terme.**

Le produit $abcde$ contient les cinq nombres, donc il ne dépend pas du rangement :

$$abcde = 2 \times 3 \times 4 \times 5 \times 6 = 720$$

Maximiser $N$ revient donc à maximiser

$$f = a - ab + abc - abcd$$

Notons bien que $a$, $b$, $c$, $d$, $e$ sont tous compris entre $2$ et $6$ : ils sont tous $\geqslant 2$.

**Étape 2. La méthode des échanges.**

L'idée est la suivante : dans le meilleur rangement, échanger deux des nombres ne doit jamais faire augmenter $f$. Chaque échange va donc donner une inégalité que le meilleur rangement doit respecter.

**Échange de $c$ et $e$.** La valeur de $f$ pour le rangement échangé est $f' = a - ab + abe - abed$. Donc

$$f - f' = ab(c - e) - abd(c - e) = ab(c-e)(1-d)$$

On a $ab > 0$ et $1 - d < 0$ puisque $d \geqslant 2$. Pour que $f - f' \geqslant 0$, il faut donc $c - e \leqslant 0$, c'est-à-dire

$$c < e$$

(les deux nombres étant différents, l'inégalité est stricte).

**Échange de $a$ et $c$.** Cette fois $f' = c - cb + cba - cbad$, et les deux derniers termes sont inchangés. Donc

$$f - f' = (a - ab) - (c - cb) = (a - c) - b(a - c) = (a-c)(1-b)$$

Comme $1 - b < 0$, il faut $a - c \leqslant 0$, donc

$$a < c$$

**Échange de $a$ et $b$.** Ici $f' = b - ba + bac - bacd$ : seuls les premiers termes changent, et

$$f - f' = a - b$$

Il faut donc

$$a > b$$

**Échange de $b$ et $d$.** On a $f' = a - ad + adc - adcb$, et

$$f - f' = (-ab + abc) - (-ad + adc) = a\big(b(c-1) - d(c-1)\big) = a(c-1)(b-d)$$

Comme $a > 0$ et $c - 1 > 0$, il faut

$$b > d$$

**Étape 3. Conclure sur l'ordre.**

Les quatre inégalités obtenues s'enchaînent :

$$d < b < a < c < e$$

Il n'y a qu'un seul rangement des nombres $2$, $3$, $4$, $5$, $6$ qui les respecte : le plus petit va en position $d$, le suivant en position $b$, puis $a$, puis $c$, et le plus grand en position $e$. Donc

$$d = 2, \quad b = 3, \quad a = 4, \quad c = 5, \quad e = 6$$

c'est-à-dire $(a, b, c, d, e) = (4, 3, 5, 2, 6)$.

**Étape 4. Calculer la valeur.**

$$N = 4 - 4 \times 3 + 4 \times 3 \times 5 - 4 \times 3 \times 5 \times 2 + 720$$
$$N = 4 - 12 + 60 - 120 + 720 = 652$$

**Réponse.** La plus grande valeur est $N = 652$, atteinte pour $(a, b, c, d, e) = (4, 3, 5, 2, 6)$.

## Going further

Le raisonnement par échanges est solide parce qu'un maximum existe forcément : il n'y a que $5 \times 4 \times 3 \times 2 \times 1 = 120$ rangements, donc l'un d'eux donne la plus grande valeur. Ce rangement-là doit respecter les quatre inégalités, sinon un échange l'améliorerait. Comme un seul rangement les respecte toutes, c'est celui-là.

Un raisonnement plus rapide, mais moins rigoureux, consiste à dire : $abcd$ est le terme le plus gros et il est soustrait, donc il faut le rendre petit, donc mettre $6$ en position $e$ ; puis $abc$ est le plus gros terme restant et il est ajouté, donc mettre $2$ en position $d$ ; et ainsi de suite. On retrouve le même rangement, mais rien ne garantit a priori que cette stratégie gloutonne donne l'optimum.
