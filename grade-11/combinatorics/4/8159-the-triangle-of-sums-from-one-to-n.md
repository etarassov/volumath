---
id: "8159"
title: "Le triangle des sommes qui part de 1, 2, 3, …, n"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [coefficients-binomiaux, triangle-de-pascal, symetrie, recurrence]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 63 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On construit un triangle de nombres. Sur la première ligne, on écrit les entiers $1, 2, 3, \ldots, n$. Sur chacune des lignes suivantes, chaque nombre est la somme des **deux nombres placés juste au-dessus de lui** : celui qui est directement au-dessus, et celui qui est au-dessus à droite.

Chaque ligne a donc un nombre de moins que la précédente, et la dernière ligne ne contient qu'un seul nombre.

Voici le coin supérieur gauche du triangle :

- première ligne : $1 \quad 2 \quad 3 \quad 4 \quad \ldots$
- deuxième ligne : $3 \quad 5 \quad 7 \quad \ldots$
- troisième ligne : $8 \quad 12 \quad \ldots$
- quatrième ligne : $20 \quad \ldots$

Quel est le nombre de la dernière ligne ? En donner une formule en fonction de $n$, sans symbole de somme.

## Hints

1. Calcule le résultat à la main pour $n = 2$, $3$, $4$, $5$. Les nombres obtenus sont $3$, $8$, $20$, $48$. Reconnais-tu quelque chose ?
2. Oublie un instant les nombres $1, 2, \ldots, n$ et pars d'une première ligne quelconque $a_1, a_2, \ldots, a_n$. Le nombre du bas s'écrit $c_1 a_1 + c_2 a_2 + \cdots + c_n a_n$. Calcule ces coefficients pour $n = 2$, $3$, $4$.
3. Ce sont les coefficients binomiaux, c'est-à-dire une ligne du triangle de Pascal. Démontre-le par récurrence sur $n$, en utilisant la relation de Pascal.
4. Il reste à calculer $\displaystyle\sum_{k=0}^{n-1}\binom{n-1}{k}(k+1)$. Plutôt que de développer, écris la même somme « à l'envers », en remplaçant $k$ par $n-1-k$, et additionne les deux écritures.

## Solution

**Étape 1 : les coefficients du bas sont ceux du triangle de Pascal.**

Partons d'une première ligne quelconque $a_1, a_2, \ldots, a_n$. Montrons par récurrence sur $n$ que le nombre du bas vaut

$$S(a_1, \ldots, a_n) \ =\ \sum_{k=0}^{n-1} \binom{n-1}{k}\, a_{k+1} .$$

Pour $n = 1$ c'est clair : le triangle se réduit à $a_1$, et la formule donne $\binom{0}{0}a_1 = a_1$.

Supposons la formule vraie pour les lignes de $n-1$ nombres. Avec une première ligne de $n$ nombres, la deuxième ligne est

$$a_1 + a_2,\quad a_2 + a_3,\quad \ldots,\quad a_{n-1} + a_n ,$$

soit $n-1$ nombres. Le nombre du bas du triangle de départ est donc celui du triangle construit sur cette deuxième ligne, c'est-à-dire, par hypothèse de récurrence,

$$\sum_{k=0}^{n-2} \binom{n-2}{k}\,(a_{k+1} + a_{k+2})
= \sum_{k=0}^{n-2} \binom{n-2}{k}\,a_{k+1} \ +\ \sum_{k=0}^{n-2} \binom{n-2}{k}\,a_{k+2} .$$

Dans la seconde somme, posons $j = k+1$ ; elle devient $\sum_{j=1}^{n-1}\binom{n-2}{j-1}a_{j+1}$. En regroupant les deux sommes selon l'indice de $a$, le coefficient de $a_{j+1}$ vaut

$$\binom{n-2}{j} + \binom{n-2}{j-1} = \binom{n-1}{j}$$

d'après la relation de Pascal (avec la convention que $\binom{n-2}{j}$ vaut $0$ quand $j$ sort de l'intervalle). On obtient bien $\sum_{j=0}^{n-1}\binom{n-1}{j}a_{j+1}$, ce qui achève la récurrence.

**Étape 2 : le cas $a_j = j$.**

Il s'agit donc de calculer

$$S = \sum_{k=0}^{n-1} \binom{n-1}{k}\,(k+1) .$$

Écrivons la même somme dans l'autre sens, en remplaçant l'indice $k$ par $n-1-k$. Comme $\binom{n-1}{\,n-1-k\,} = \binom{n-1}{k}$, on obtient

$$S = \sum_{k=0}^{n-1} \binom{n-1}{k}\,\big((n-1-k)+1\big) = \sum_{k=0}^{n-1} \binom{n-1}{k}\,(n-k) .$$

Additionnons les deux écritures de $S$ terme à terme. Le facteur devient $(k+1) + (n-k) = n+1$, qui ne dépend plus de $k$ :

$$2S = (n+1)\sum_{k=0}^{n-1}\binom{n-1}{k} = (n+1)\,2^{\,n-1} ,$$

car la somme d'une ligne du triangle de Pascal vaut $2^{n-1}$.

**Conclusion.**

$$\boxed{\ \text{Le nombre de la dernière ligne vaut } (n+1)\,2^{\,n-2}.\ }$$

Vérifions sur les premières valeurs : $n=2$ donne $3 \times 2^0 = 3$ ; $n = 3$ donne $4 \times 2 = 8$ ; $n=4$ donne $5 \times 4 = 20$ ; $n = 5$ donne $6 \times 8 = 48$. Tout concorde.

## Going further

L'étape 1 vaut pour n'importe quelle première ligne, et elle explique pourquoi le triangle de Pascal apparaît ici : chaque nombre de la première ligne descend vers le bas en se répartissant sur tous les chemins possibles, et le nombre de chemins qui mènent de la case $k+1$ de la première ligne au sommet du bas est exactement $\binom{n-1}{k}$.

L'astuce de l'étape 2, additionner une somme avec elle-même écrite à l'envers, est la même que celle qui donne $1+2+\cdots+n = \dfrac{n(n+1)}{2}$.
