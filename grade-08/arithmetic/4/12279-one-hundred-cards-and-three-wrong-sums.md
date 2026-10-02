---
id: "12279"
title: "Les cartes d'Alice et de Bob"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [parite, reste, division euclidienne, entiers consecutifs, somme des entiers, absurde]
adapted_from: null
see_also: ["7322"]
created: 2026-10-02
source:
  name: "POFM, test de mai 2017"
  reference: "2017-10_ofm-2016-2017-test-mai.pdf, test du 3 mai 2017, exercice 1 (groupe B, élèves nés en 2002 ou après) ; pas de corrigé publié, solution rédigée pour cette base. Le même problème figure au niveau 2de sous l'identifiant 7322"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-mai.pdf"
---

## Statement

On dispose de $100$ cartes. Sur chacune sont écrits deux entiers consécutifs, de sorte que chacun des entiers $1, 2, \ldots, 200$ soit écrit sur une et une seule des cartes.

**a)** Alice choisit $21$ cartes au hasard. Elle fait la somme de tous les entiers écrits sur ses cartes et annonce à Bob que cette somme vaut $2004$. Prouver qu'Alice s'est trompée dans son calcul.

**b)** Alice recompte et annonce cette fois $2005$. Prouver qu'elle s'est de nouveau trompée.

**c)** En fait, le vrai total d'Alice est $2003$. Pendant ce temps, Bob a choisi $20$ cartes au hasard parmi celles qui restaient. Il fait la somme des nombres écrits sur ses cartes et annonce à Alice que cette somme vaut $1396$. Prouver que Bob s'est trompé dans son calcul.

## Hints

1. Pour a), la somme des deux nombres d'une carte est-elle paire ou impaire ?
2. Pour b), la parité ne suffit plus. Commence par trouver exactement quelles sont les $100$ cartes : avec quel nombre le nombre $1$ peut-il être écrit ? Et le nombre $3$ ?
3. Les cartes sont $\{1, 2\}$, $\{3, 4\}$, $\{5, 6\}$, et ainsi de suite. Écris la somme des nombres de la carte numéro $k$ en fonction de $k$, puis regarde le reste dans la division par $4$.
4. Pour c), traduis les sommes annoncées en sommes de numéros de cartes. Alice et Bob ont ensemble $41$ cartes différentes : quelle est la plus petite somme possible de leurs numéros ?

## Solution

**Étape 1. Les cartes sont forcément $\{1, 2\}$, $\{3, 4\}$, $\{5, 6\}$, etc.**

Le nombre $1$ est écrit sur une carte, à côté d'un entier consécutif, donc de $0$ ou de $2$. Comme $0$ n'est écrit sur aucune carte, la carte qui porte $1$ est la carte $\{1, 2\}$.

Le nombre $3$ est écrit à côté de $2$ ou de $4$. Le nombre $2$ est déjà sur la carte $\{1, 2\}$, et chaque nombre n'est écrit qu'une fois, donc la carte qui porte $3$ est $\{3, 4\}$. De la même façon, la carte qui porte $5$ est $\{5, 6\}$, et ainsi de suite jusqu'à la carte $\{199, 200\}$.

On numérote les cartes de $1$ à $100$ : la carte numéro $k$ porte les nombres $2k - 1$ et $2k$, dont la somme vaut
$$(2k - 1) + 2k = 4k - 1.$$

**Étape 2. Réponse à la question a).**

Pour chaque carte, la somme $4k - 1$ est impaire. La somme d'Alice est la somme de $21$ nombres impairs. On peut regrouper $20$ d'entre eux par paires, et chaque paire a une somme paire. Il reste un nombre impair, donc le total est impair. Comme $2004$ est pair, **Alice s'est trompée.**

**Étape 3. Réponse à la question b).**

Notons $k_1, k_2, \ldots, k_{21}$ les numéros des cartes d'Alice, et $S_A = k_1 + k_2 + \cdots + k_{21}$. La somme de ses cartes vaut
$$(4k_1 - 1) + (4k_2 - 1) + \cdots + (4k_{21} - 1) = 4 S_A - 21 = 4(S_A - 6) + 3.$$
Dans la division par $4$, cette somme a donc pour reste $3$. Or $2005 = 4 \times 501 + 1$ a pour reste $1$. **Alice s'est de nouveau trompée.**

**Étape 4. Réponse à la question c).**

Le vrai total d'Alice est $2003$, donc $4 S_A - 21 = 2003$, ce qui donne $4 S_A = 2024$ et $S_A = 506$.

Notons $S_B$ la somme des numéros des $20$ cartes de Bob. Si Bob avait raison, on aurait de même $4 S_B - 20 = 1396$, donc $4 S_B = 1416$ et $S_B = 354$.

Attention : ce calcul ne contredit encore rien. Le nombre $1396$ est pair, et c'est un multiple de $4$, comme toute somme de $20$ cartes, puisque $4 S_B - 20 = 4(S_B - 5)$. Il faut une autre idée.

Bob a choisi ses cartes parmi celles qui restaient, donc Alice et Bob ont ensemble $41$ cartes toutes différentes. Leurs numéros sont $41$ entiers différents compris entre $1$ et $100$, et leur somme vaudrait $S_A + S_B = 506 + 354 = 860$.

Or la somme de $41$ entiers strictement positifs tous différents est au moins égale à la somme des $41$ plus petits d'entre eux :
$$1 + 2 + \cdots + 41 = 861.$$
Pour calculer cette somme, on regroupe $1$ avec $41$, $2$ avec $40$, et ainsi de suite jusqu'à $20$ avec $22$ : cela fait $20$ paires de somme $42$, et il reste $21$ au milieu. Le total vaut $20 \times 42 + 21 = 840 + 21 = 861$.

Cette somme est bien la plus petite possible. En effet, si l'on range les $41$ numéros dans l'ordre croissant, le premier vaut au moins $1$, le deuxième au moins $2$, et ainsi de suite jusqu'au quarante et unième, qui vaut au moins $41$.

On obtiendrait $860 \geqslant 861$, ce qui est faux. **Bob s'est donc trompé.**

## Going further

1. Quelle est la plus petite somme qu'Alice peut obtenir avec $21$ cartes ? Et la plus grande ?
2. Le vrai total d'Alice étant $2003$, montre que la somme de Bob vaut au moins $1400$. Peut-elle valoir exactement $1400$ ?
