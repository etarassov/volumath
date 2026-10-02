---
id: "3216"
title: "Une suite qui se répète tous les six rangs"
grade: 11
theme: functions-analysis
difficulty: 4
duration_min: 30
tags: [suites, recurrence, periodicite, calcul-de-terme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Functions review"
  reference: "Handout-4805-4981.pdf, exercice 16, d'après AMC 10B 2018, problème 20"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4805-4981.pdf"
---

## Statement

On définit une suite $\left( u_n \right)$ d'entiers par

$$u_1 = 1, \qquad u_2 = 1, \qquad u_n = u_{n-1} - u_{n-2} + n \quad \text{pour tout } n \ge 3 .$$

Calculer $u_{2018}$.

## Hints

1. Calcule les douze premiers termes. Une régularité doit sauter aux yeux.
2. Compare $u_7$ à $u_1$, $u_8$ à $u_2$, $u_9$ à $u_3$.
3. Pour démontrer la régularité, commence par éliminer $u_{n-2}$ : remplace $u_{n-1}$ par ce que donne la relation au rang $n-1$.
4. Tu obtiens une relation entre $u_n$ et $u_{n-3}$. Applique-la deux fois de suite.
5. Il reste à écrire $2018$ sous la forme $r + 6k$ avec $1 \le r \le 6$.

## Solution

**On calcule les premiers termes.**

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $u_n$ | 1 | 1 | 3 | 6 | 8 | 8 | 7 | 7 | 9 | 12 | 14 | 14 |

On voit que $u_7 = u_1 + 6$, $u_8 = u_2 + 6$, $u_9 = u_3 + 6$, $u_{10} = u_4 + 6$. La suite semble se reproduire à l'identique tous les six rangs, décalée de $+6$.

**Démonstration de la relation $u_n = u_{n-6} + 6$.**

*Première étape : passer de trois rangs à un seul.* Pour $n \ge 4$, la relation appliquée au rang $n-1$ donne

$$u_{n-1} = u_{n-2} - u_{n-3} + (n-1).$$

En reportant dans $u_n = u_{n-1} - u_{n-2} + n$ :

$$u_n = \big( u_{n-2} - u_{n-3} + n - 1 \big) - u_{n-2} + n = -\,u_{n-3} + 2n - 1 .$$

Donc, pour tout $n \ge 4$,

$$u_n = -\,u_{n-3} + 2n - 1 . \qquad (\star)$$

*Deuxième étape : appliquer $(\star)$ deux fois.* Pour $n \ge 7$, on peut aussi écrire $(\star)$ au rang $n-3$ :

$$u_{n-3} = -\,u_{n-6} + 2(n-3) - 1 = -\,u_{n-6} + 2n - 7 .$$

En reportant dans $(\star)$ :

$$u_n = -\big( -\,u_{n-6} + 2n - 7 \big) + 2n - 1 = u_{n-6} - 2n + 7 + 2n - 1 = u_{n-6} + 6 .$$

Donc, pour tout $n \ge 7$,

$$u_n = u_{n-6} + 6 .$$

C'est exactement la régularité observée : la suite ne se répète pas, mais elle monte d'exactement $6$ à chaque bloc de six rangs.

**On descend de $2018$ jusqu'à un petit rang.**

$$2018 = 2 + 6 \times 336 .$$

En appliquant $336$ fois la relation $u_n = u_{n-6}+6$ :

$$u_{2018} = u_{2012} + 6 = u_{2006} + 12 = \cdots = u_{2} + 6 \times 336 .$$

Comme $u_2 = 1$ et $6 \times 336 = 2016$ :

$$u_{2018} = 1 + 2016 = 2017 .$$

**Contrôle.** La formule donne $u_8 = u_2 + 6 = 7$, ce qui est bien la valeur du tableau. Et $u_{14} = u_2 + 12 = 13$, également conforme au calcul direct.

**Conclusion.** $u_{2018} = 2017$.

## Going further

1. Calculer $u_{2026}$ et $u_{2023}$.
2. Montrer que la suite $v_n = u_n - n$ est périodique de période $6$, et donner ses six valeurs.
3. Pourquoi la relation $(\star)$ n'est-elle valable qu'à partir de $n = 4$, et la relation $u_n = u_{n-6}+6$ qu'à partir de $n = 7$ ?
