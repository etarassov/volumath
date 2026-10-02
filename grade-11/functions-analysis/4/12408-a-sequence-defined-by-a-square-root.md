---
id: "12408"
title: "Une suite définie par une racine carrée"
grade: 11
theme: functions-analysis
difficulty: 4
duration_min: 40
tags: [suites, racine-carree, monotonie, raisonnement-par-l-absurde, encadrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 10 janvier 2018"
  reference: "2018-01_pofm-2017-2018-test-janvier.pdf, exercices du groupe A, exercice 5 ; corrigé 2018-01_pofm-2017-2018-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/01/pofm-2017-2018-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-01_pofm-2017-2018-test-janvier.pdf"
---

## Statement

Déterminer tous les nombres réels $a$ pour lesquels il existe une suite infinie de réels
**strictement positifs** $x_0, x_1, x_2, x_3, \ldots$ qui vérifie, pour tout entier $n \geqslant 0$,
$$x_{n+2} = \sqrt{a\,x_{n+1} - x_n}.$$

## Hints

1. Cherche d'abord une suite constante. Pour quelles valeurs de $a$ en existe-t-il une ?
2. Tu dois trouver que tout $a > 1$ convient. Suppose maintenant $a \leqslant 1$. Comme
   $x_{n+2} > 0$, la quantité sous la racine est strictement positive : qu'en déduis-tu sur le
   sens de variation de la suite ?
3. Montre que tous les termes sont plus petits que $1$, en comparant $x_{n+2}^2$ et $x_{n+1}$.
4. Montre enfin que la suite augmente à chaque pas d'au moins une quantité fixe. Est-ce
   compatible avec la question précédente ?

## Solution

### Si $a > 1$ : une suite constante convient

Prenons $x_n = a - 1$ pour tout $n$. C'est un réel strictement positif, et
$$\sqrt{a(a-1) - (a-1)} = \sqrt{(a-1)^2} = a - 1,$$
puisque $a - 1 > 0$. La relation est vérifiée : **tout $a > 1$ convient.**

### Si $a \leqslant 1$ : aucune suite ne convient

Supposons qu'une telle suite existe avec $a \leqslant 1$, et cherchons une contradiction.

**La suite est strictement croissante.** Pour tout $n$, on a $x_{n+2} > 0$, donc la quantité sous
la racine est strictement positive : $a\,x_{n+1} - x_n > 0$. Comme $x_n > 0$, cela impose
$a\,x_{n+1} > 0$, donc $a > 0$. Ensuite, puisque $0 < a \leqslant 1$ et $x_{n+1} > 0$,
$$x_{n+1} \geqslant a\,x_{n+1} > x_n.$$
Ainsi $x_0 < x_1 < x_2 < \cdots$.

**Tous les termes sont plus petits que 1.** En élevant la relation au carré et en utilisant
$a \leqslant 1$ :
$$x_{n+2}^2 = a\,x_{n+1} - x_n < a\,x_{n+1} \leqslant x_{n+1} < x_{n+2}.$$
Donc $x_{n+2}^2 < x_{n+2}$, et comme $x_{n+2} > 0$, on obtient $x_{n+2} < 1$. Cela vaut pour
tout $n$, et comme $x_0 < x_1 < x_2 < 1$, **tous les termes de la suite sont dans $]0, 1[$.**

**La suite augmente d'au moins $x_0^2$ à chaque pas.** Toujours avec $a \leqslant 1$ et la
croissance :
$$x_{n+1} - x_n \geqslant a\,x_{n+1} - x_n = x_{n+2}^2 > x_0^2.$$
En additionnant ces inégalités pour les indices $0, 1, \ldots, n-1$, on obtient
$$x_n > x_0 + n\,x_0^2.$$
Comme $x_0^2 > 0$, le membre de droite dépasse $1$ dès que $n$ est assez grand (par exemple dès
que $n > \dfrac{1}{x_0^2}$). Cela contredit le fait que tous les termes sont plus petits que $1$.

Donc aucune suite ne convient lorsque $a \leqslant 1$.

### Conclusion

Les réels $a$ cherchés sont **exactement les réels $a > 1$.**
