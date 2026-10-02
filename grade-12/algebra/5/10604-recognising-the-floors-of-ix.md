---
id: "10604"
title: "Reconnaître les parties entières de ix"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [partie-entiere, recurrence-forte, inegalite, equivalence]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 2 (algèbre)"
  reference: "2019-11_sujet-envoi-2-1.pdf, exercice 8 (Juniors), repris à l'identique comme exercice 15 (Seniors) ; corrigé 2020-01_corrige-commente-envoi-2.pdf. Même énoncé que l'USAMO 1997, problème 6, avec 2019 termes au lieu de 1997."
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/sujet-envoi-2-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-11_sujet-envoi-2-1.pdf"
---

## Statement

Pour un réel $y$, on note $\lfloor y \rfloor$ sa **partie entière** : c'est le plus grand entier inférieur ou égal à $y$. Par exemple $\lfloor \text{2,7} \rfloor = 2$ et $\lfloor 5 \rfloor = 5$.

Soient $a_1, a_2, \ldots, a_{2019}$ des entiers positifs ou nuls. Montrer que les deux propriétés suivantes sont équivalentes :

1. il existe un réel $x$ tel que $a_i = \lfloor ix \rfloor$ pour tout $i$ de $1$ à $2019$ ;
2. pour tous $i$ et $j$ entre $1$ et $2019$ tels que $i + j \leqslant 2019$, on a $a_i + a_j \leqslant a_{i+j} \leqslant a_i + a_j + 1$.

## Hints

1. Écris ce que veut dire $a = \lfloor y \rfloor$ sous forme de deux inégalités : $a \leqslant y < a + 1$, avec $a$ entier.
2. Le sens « 1 implique 2 » se fait directement : encadre $(i + j)x = ix + jx$ à l'aide de $a_i$ et $a_j$.
3. Pour l'autre sens, $a_i = \lfloor ix \rfloor$ veut dire $\frac{a_i}{i} \leqslant x < \frac{a_i + 1}{i}$. Il suffit donc de montrer que chaque nombre $\frac{a_i}{i}$ est strictement plus petit que chaque nombre $\frac{a_j + 1}{j}$.
4. Sans fractions : il faut montrer $j\,a_i < i\,a_j + i$ pour tous $i$ et $j$. Raisonne par récurrence sur $i + j$. Si $i < j$, utilise le couple $(i, j - i)$ et l'inégalité $a_j \geqslant a_i + a_{j-i}$.
5. Si $i > j$, utilise le couple $(i - j, j)$ et l'inégalité $a_i \leqslant a_j + a_{i-j} + 1$.

## Solution

**Un outil : la partie entière.** Si $a$ est un entier, dire que $a = \lfloor y \rfloor$ revient à dire que $a \leqslant y < a + 1$. Et si un entier $m$ vérifie $m \leqslant y$, alors $m \leqslant \lfloor y \rfloor$, puisque $\lfloor y \rfloor$ est le plus grand entier inférieur ou égal à $y$.

**Étape 1. La propriété 1 implique la propriété 2.**

Supposons que $a_i = \lfloor ix \rfloor$ pour tout $i$. Alors $a_i \leqslant ix < a_i + 1$ pour tout $i$. Prenons $i$ et $j$ avec $i + j \leqslant 2019$.

- D'une part $a_i + a_j \leqslant ix + jx = (i + j)x$. Comme $a_i + a_j$ est un entier, il est inférieur ou égal à $\lfloor (i + j)x \rfloor = a_{i+j}$.
- D'autre part $a_{i+j} \leqslant (i + j)x = ix + jx < (a_i + 1) + (a_j + 1) = a_i + a_j + 2$. Comme $a_{i+j}$ est un entier strictement plus petit que l'entier $a_i + a_j + 2$, on a $a_{i+j} \leqslant a_i + a_j + 1$.

On a bien $a_i + a_j \leqslant a_{i+j} \leqslant a_i + a_j + 1$.

**Étape 2. Ce qu'il faut montrer pour l'autre sens.**

Supposons maintenant la propriété 2. On cherche un réel $x$ tel que, pour tout $i$, $a_i \leqslant ix < a_i + 1$, c'est-à-dire

$$\frac{a_i}{i} \leqslant x < \frac{a_i + 1}{i}$$

Supposons qu'on sache montrer la propriété suivante :

$$(\star) \qquad j\,a_i < i\,a_j + i \quad \text{pour tous } i, j \text{ entre } 1 \text{ et } 2019$$

En divisant par $ij$, elle dit que $\frac{a_i}{i} < \frac{a_j + 1}{j}$ pour tous $i$ et $j$. Prenons alors pour $x$ le plus grand des nombres $\frac{a_1}{1}, \frac{a_2}{2}, \ldots, \frac{a_{2019}}{2019}$, disons $x = \frac{a_k}{k}$. Pour tout $i$, on a $\frac{a_i}{i} \leqslant x$ par définition du maximum, et $x = \frac{a_k}{k} < \frac{a_i + 1}{i}$ par $(\star)$. C'est exactement ce qu'on voulait. Il reste donc à prouver $(\star)$.

**Étape 3. Preuve de $(\star)$ par récurrence sur $i + j$.**

Montrons, pour chaque entier $s \geqslant 2$, que $(\star)$ est vraie pour tous les couples $(i, j)$ avec $i + j = s$, en supposant qu'elle est vraie pour tous les couples de somme plus petite.

- **Si $i = j$**, l'inégalité s'écrit $i\,a_i < i\,a_i + i$, ce qui est vrai car $i \geqslant 1$. Cela couvre en particulier le premier cas $s = 2$, où $i = j = 1$.

- **Si $i < j$.** Le couple $(i, j - i)$ a pour somme $j$, qui est plus petite que $i + j$. L'hypothèse de récurrence donne $(j - i)\,a_i < i\,a_{j-i} + i$. Par ailleurs, la propriété 2 appliquée à $i$ et $j - i$ (dont la somme $j$ vaut au plus $2019$) donne $a_j \geqslant a_i + a_{j-i}$. Donc

$$i\,a_j + i \geqslant i\,a_i + i\,a_{j-i} + i > i\,a_i + (j - i)\,a_i = j\,a_i$$

- **Si $i > j$.** Le couple $(i - j, j)$ a pour somme $i$, plus petite que $i + j$. L'hypothèse de récurrence donne $j\,a_{i-j} < (i - j)\,a_j + (i - j)$. La propriété 2 appliquée à $j$ et $i - j$ donne $a_i \leqslant a_j + a_{i-j} + 1$. Donc

$$j\,a_i \leqslant j\,a_j + j\,a_{i-j} + j < j\,a_j + (i - j)\,a_j + (i - j) + j = i\,a_j + i$$

Dans les trois cas, $j\,a_i < i\,a_j + i$. La récurrence est terminée, et $(\star)$ est démontrée.

**Conclusion : les deux propriétés sont équivalentes. Quand la propriété 2 est vraie, le réel $x$ égal au plus grand des quotients $\frac{a_i}{i}$ vérifie $a_i = \lfloor ix \rfloor$ pour tout $i$.**

## Going further

Le nombre $2019$ ne joue aucun rôle : la même preuve marche pour n'importe quelle longueur de suite. On peut aussi se demander si l'on peut remplacer, dans la propriété 2, le « $+1$ » par « $+2$ ». Essaie avec $a_1 = 0$, $a_2 = 2$ : existe-t-il $x$ tel que $\lfloor x \rfloor = 0$ et $\lfloor 2x \rfloor = 2$ ?
