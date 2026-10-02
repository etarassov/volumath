---
id: "12267"
title: "Un système de 2017 équations en boucle"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [systeme, identite remarquable, carre, inegalite, raisonnement en boucle]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de février 2017"
  reference: "2017-10_ofm-2016-2017-test-fevrier.pdf et son corrigé, test du 15 février 2017, exercice 1 (groupe B). La solution suit celle du corrigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-fevrier.pdf"
---

## Statement

Trouver tous les nombres réels $x_1, x_2, \ldots, x_{2017}$ qui vérifient les $2017$ équations
$$x_1(x_1 - 1) = x_2 - 1, \qquad x_2(x_2 - 1) = x_3 - 1, \qquad x_3(x_3 - 1) = x_4 - 1,$$
et ainsi de suite jusqu'à
$$x_{2016}(x_{2016} - 1) = x_{2017} - 1 \qquad \text{et} \qquad x_{2017}(x_{2017} - 1) = x_1 - 1.$$

Chaque équation relie un nombre au suivant, et la dernière relie $x_{2017}$ au premier nombre $x_1$.

## Hints

1. Cherche d'abord une solution évidente, où tous les nombres sont égaux.
2. Dans l'équation $x_1(x_1 - 1) = x_2 - 1$, exprime $x_2 - x_1$ en fonction de $x_1$ seulement.
3. Tu dois trouver une identité remarquable. Que peux-tu dire du signe de $x_2 - x_1$, de $x_3 - x_2$, et ainsi de suite ?
4. Fais le tour complet : compare $x_1$, $x_2$, ..., $x_{2017}$, puis de nouveau $x_1$.

## Solution

**Étape 1. Chaque nombre est au moins égal au précédent.**

Prenons la première équation, $x_1(x_1 - 1) = x_2 - 1$. On en tire $x_2 = x_1^2 - x_1 + 1$, donc
$$x_2 - x_1 = x_1^2 - 2x_1 + 1 = (x_1 - 1)^2.$$
Un carré est toujours positif ou nul, donc $x_2 - x_1 \geqslant 0$, c'est-à-dire $x_2 \geqslant x_1$.

Le même calcul vaut pour chaque équation. Ainsi
$$x_3 - x_2 = (x_2 - 1)^2, \qquad \ldots, \qquad x_{2017} - x_{2016} = (x_{2016} - 1)^2,$$
et la dernière équation donne de même
$$x_1 - x_{2017} = (x_{2017} - 1)^2.$$
Toutes ces différences sont positives ou nulles.

**Étape 2. Tous les nombres sont égaux.**

D'après l'étape 1, on a
$$x_1 \leqslant x_2 \leqslant x_3 \leqslant \cdots \leqslant x_{2017} \leqslant x_1.$$
Le premier et le dernier nombre de cette chaîne sont tous les deux $x_1$. Si l'une des inégalités était stricte, on obtiendrait $x_1 < x_1$, ce qui est absurde. Donc toutes les inégalités sont des égalités :
$$x_1 = x_2 = \cdots = x_{2017}.$$

**Étape 3. Ils valent tous 1.**

Comme $x_2 = x_1$, l'égalité $x_2 - x_1 = (x_1 - 1)^2$ donne $(x_1 - 1)^2 = 0$, donc $x_1 = 1$. Tous les nombres valent donc $1$.

**Étape 4. Vérification.**

Si tous les nombres valent $1$, chaque équation s'écrit $1 \times (1 - 1) = 1 - 1$, soit $0 = 0$. Elles sont toutes vraies.

**Conclusion.** Le système a une seule solution : $x_1 = x_2 = \cdots = x_{2017} = 1$.

## Going further

1. Résous de la même façon le système $x_1^2 = x_2$, $x_2^2 = x_3$, ..., $x_{2017}^2 = x_1$, quand les nombres sont tous strictement positifs. Attention, ici la différence $x_2 - x_1$ n'a pas toujours le même signe : sépare les cas $x_1 < 1$, $x_1 = 1$ et $x_1 > 1$.
2. Que deviennent les solutions si l'on remplace chaque équation $x_i(x_i - 1) = x_{i+1} - 1$ par $x_i(x_i - 2) = x_{i+1} - 4$ ?
