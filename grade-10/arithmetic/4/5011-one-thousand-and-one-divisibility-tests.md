---
id: "5011"
title: "1001 et la divisibilité par 7, 11 et 13"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [criteres de divisibilite, numeration, multiples, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Primes, Divisibility, and Modular Arithmetic », Joshua Zucker, The Teachers' Circle, 2006"
  reference: "numbertheory.pdf, partie 2, problème 13 m) et n)"
  url: "https://mathcircles.org/activity/primes-divisibility-and-modular-arithmetic/"
  original_language: "en"
  local_copy: "sources/originals/namc/numbertheory.pdf"
---

## Statement

On connaît le critère de divisibilité par $11$ : on fait la somme alternée des chiffres. Il
repose sur le fait que $11$ divise $99$, $9999$, et ainsi de suite.

Le point de départ ici est une autre égalité remarquable :

$$1001 = 7 \times 11 \times 13 .$$

Découpons l'écriture d'un entier $N$ en **tranches de trois chiffres** en partant de la droite,
et appelons ces tranches $a_0$ (celle des unités), $a_1$, $a_2$. Par exemple, pour
$N = 1\,390\,312$ on a $a_0 = 312$, $a_1 = 390$, $a_2 = 1$. On forme ensuite la somme alternée

$$S = a_0 - a_1 + a_2 .$$

1. Démontrer que $N - S$ est un multiple de $1001$.
2. En déduire que $N$ et $S$ laissent le même reste dans la division par $7$, par $11$ et par
   $13$.
3. Appliquer ce critère à $N = 1\,390\,312$ : ce nombre est-il divisible par $7$ ? par $11$ ?
   par $13$ ?
4. Vérifier la réponse en posant les divisions. Le critère vaut-il la peine ?

## Hints

1. Écris $N$ en fonction de $a_0$, $a_1$ et $a_2$ : chaque tranche compte pour un certain
   nombre de milliers.
2. Calcule $N - S$ en regroupant les termes tranche par tranche. Les $a_0$ s'annulent.
3. Il reste deux morceaux, l'un avec $a_1$ et l'autre avec $a_2$. Regarde $1000 + 1$ et
   $1\,000\,000 - 1$ : les deux sont-ils des multiples de $1001$ ?
4. Pour la question 2, souviens-toi que $7$, $11$ et $13$ divisent $1001$.
5. Attention pour la question 3 : la somme alternée peut être négative. Cela ne gêne pas, il
   suffit de regarder si elle est un multiple de $7$, de $11$, de $13$.

## Solution

### 1. La différence est un multiple de 1001

Chaque tranche de trois chiffres compte pour un certain nombre de milliers :

$$N = a_2 \times 1\,000\,000 + a_1 \times 1000 + a_0 .$$

Calculons la différence avec $S = a_0 - a_1 + a_2$ :

$$N - S = a_2 \times 1\,000\,000 + a_1 \times 1000 + a_0 - a_0 + a_1 - a_2$$
$$N - S = a_2 \times (1\,000\,000 - 1) + a_1 \times (1000 + 1) .$$

Or

$$1000 + 1 = 1001 \qquad \text{et} \qquad 1\,000\,000 - 1 = 999\,999 = 1001 \times 999 .$$

(La deuxième égalité se vérifie directement : $1001 \times 999 = 999\,000 + 999 = 999\,999$.)

Donc

$$N - S = 1001 \times (999\,a_2 + a_1) ,$$

qui est bien un multiple de $1001$.

### 2. Les restes sont les mêmes

Comme $1001 = 7 \times 11 \times 13$, le nombre $1001$ est un multiple de $7$. Donc $N - S$ est
un multiple de $7$, autrement dit $N$ et $S$ diffèrent d'un multiple de $7$ : ils laissent le
même reste dans la division par $7$.

Le même argument vaut mot pour mot pour $11$ et pour $13$.

En particulier, **$N$ est divisible par $7$ si et seulement si $S$ l'est**, et de même pour
$11$ et pour $13$.

### 3. Le test sur 1 390 312

Découpons : $1\,390\,312$ donne les tranches $1 \mid 390 \mid 312$, donc

$$S = 312 - 390 + 1 = -77 .$$

Or $-77 = -7 \times 11$. Ce nombre est un multiple de $7$, un multiple de $11$, mais pas un
multiple de $13$ (les multiples de $13$ voisins sont $-78$ et $-65$).

**Conclusion :** $1\,390\,312$ est divisible par $7$ et par $11$, mais pas par $13$.

### 4. Vérification

$$1\,390\,312 = 7 \times 198\,616 \qquad \text{et} \qquad 1\,390\,312 = 11 \times 126\,392 .$$

En revanche $1\,390\,312 = 13 \times 106\,947 + 1$ : le reste est $1$. On retrouve bien le reste
de $-77$ dans la division par $13$, puisque $-77 = 13 \times (-6) + 1$.

**Le critère vaut-il la peine ?** Pour un nombre de sept chiffres, calculer $312 - 390 + 1$ est
nettement plus rapide que de poser trois divisions à sept chiffres, et une seule soustraction
donne les trois réponses d'un coup. Pour un nombre à deux ou trois chiffres, en revanche, le
critère ne sert à rien : il redonne le nombre lui-même.

## Going further

Le critère se prolonge aux nombres plus longs : avec des tranches $a_0, a_1, a_2, a_3, \ldots$
la bonne somme alternée est $a_0 - a_1 + a_2 - a_3 + \cdots$, et la démonstration est la même,
en utilisant que $1000^k - (-1)^k$ est toujours un multiple de $1001$.

Ce genre de critère existe pour beaucoup de nombres, il suffit de trouver une puissance de $10$
juste au-dessus ou juste en dessous d'un multiple. Par exemple $999 = 27 \times 37$ : en
découpant en tranches de trois chiffres et en faisant cette fois la somme **ordinaire** des
tranches (et non alternée), on obtient un critère de divisibilité par $27$ et par $37$. Essaie
sur $27\,000\,027$, ou sur $123\,456\,789$.
