---
id: "1210"
title: "Chaque terme est la moyenne de ses voisins"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [suite-arithmetique, moyenne, maximum, denombrement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, «Random walks»"
  reference: "Handout-4548-4513.pdf, problèmes 1.4, 1.5 et 1.6 (réponses dans Handout-4549-4513.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4548-4513.pdf"
---

## Statement

Soit $N \geqslant 2$ un entier. On considère une liste de nombres réels

$$f_0, f_1, f_2, \dots, f_N$$

telle que chaque terme, sauf le premier et le dernier, soit la moyenne de ses deux voisins :

$$f_n = \frac{f_{n-1} + f_{n+1}}{2} \qquad \text{pour tout } n \text{ tel que } 1 \leqslant n \leqslant N-1.$$

1. Démontrer qu'une telle liste est une suite arithmétique.
2. En déduire que le plus grand des nombres $f_0, f_1, \dots, f_N$ est $f_0$ ou $f_N$.
3. On prend maintenant $N = 20$. Combien existe-t-il de telles listes pour lesquelles $f_0$ est un entier compris entre $1$ et $10$ et $f_{20}$ un entier compris entre $4$ et $11$ ?

## Hints

1. Une suite est arithmétique lorsque la différence entre deux termes consécutifs est toujours la même.
2. Partir de la relation de l'énoncé et la mettre sous la forme « quelque chose $=$ quelque chose », en isolant les deux différences $f_{n+1} - f_n$ et $f_n - f_{n-1}$.
3. Pour la question 2 : une suite arithmétique est croissante, ou décroissante, ou constante. Cela dépend du signe d'un seul nombre.
4. Pour la question 3 : si l'on connaît $f_0$ et $f_{20}$, combien y a-t-il de suites arithmétiques possibles ?
5. Attention, la raison n'a aucune raison d'être un nombre entier.

## Solution

**1. La liste est arithmétique.**

Partons de la relation de l'énoncé et multiplions par $2$ :

$$2 f_n = f_{n-1} + f_{n+1}.$$

Séparons de part et d'autre :

$$f_n - f_{n-1} = f_{n+1} - f_n.$$

Cette égalité vaut pour tout $n$ entre $1$ et $N-1$. En l'écrivant successivement pour $n = 1$, $n = 2$, …, $n = N-1$, on enchaîne

$$f_1 - f_0 = f_2 - f_1 = f_3 - f_2 = \dots = f_N - f_{N-1}.$$

Toutes les différences entre termes consécutifs sont donc égales à un même nombre $r$ : la liste est une suite arithmétique de raison $r$, et

$$f_n = f_0 + n\,r \qquad \text{pour tout } n.$$

**2. Le maximum est à l'un des deux bouts.**

Trois cas, selon le signe de la raison $r$ :

- si $r > 0$, la suite est strictement croissante, donc le plus grand terme est $f_N$ ;
- si $r < 0$, elle est strictement décroissante, donc le plus grand terme est $f_0$ ;
- si $r = 0$, tous les termes sont égaux, et $f_0 = f_N$ est bien le plus grand.

Dans tous les cas,

$$\max\left(f_0, f_1, \dots, f_N\right) = \max\left(f_0, f_N\right).$$

*(Le même argument donne le minimum : il est lui aussi atteint à l'un des deux bouts. Une telle liste n'a donc jamais de « bosse » ni de « creux » à l'intérieur.)*

**3. Le dénombrement.**

Prenons $N = 20$. Supposons $f_0$ et $f_{20}$ fixés. La suite étant arithmétique,

$$f_{20} = f_0 + 20\,r, \qquad \text{donc} \qquad r = \frac{f_{20} - f_0}{20}.$$

La raison est donc **entièrement déterminée** par $f_0$ et $f_{20}$, et avec elle toute la liste, puisque $f_n = f_0 + nr$. Réciproquement, pour n'importe quel couple de valeurs $(f_0, f_{20})$, cette formule fournit bien une liste qui satisfait la condition de l'énoncé.

Il y a donc **exactement une** liste par couple $(f_0, f_{20})$, et deux couples différents donnent deux listes différentes.

Reste à compter les couples :

- $f_0 \in \{1, 2, \dots, 10\}$ : $10$ choix ;
- $f_{20} \in \{4, 5, \dots, 11\}$ : $11 - 4 + 1 = 8$ choix.

$$10 \times 8 = 80.$$

**Conclusion.** Une liste dont chaque terme intérieur est la moyenne de ses voisins est forcément une suite arithmétique ; son maximum (et son minimum) est atteint à l'une des deux extrémités ; et il y a exactement $80$ listes répondant à la question 3.

## Going further

1. Cette propriété « pas de maximum à l'intérieur » porte un nom : c'est le **principe du maximum**. Il vaut encore en dimension $2$ : si chaque case d'un tableau est la moyenne de ses quatre voisines, le maximum est sur le bord. Essayer de le démontrer.
2. Que devient la question 1 si l'on remplace la moyenne $\frac{f_{n-1}+f_{n+1}}{2}$ par $\frac{f_{n-1}+f_{n+1}}{3}$ ? La suite obtenue est-elle encore arithmétique ?
