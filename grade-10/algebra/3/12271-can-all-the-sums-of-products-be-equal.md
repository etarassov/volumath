---
id: "12271"
title: "Des sommes de produits toutes égales ?"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, somme, produit, raisonnement-par-l-absurde, nombres-positifs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test de février 2017"
  reference: "2017-10_ofm-2016-2017-test-fevrier.pdf et son corrigé, test du 15 février 2017, exercice 5 (groupe A, élèves nés en 2001 ou avant). La première démonstration du corrigé est reprise ici ; la seconde, avec des polynômes de degré impair, dépasse le programme de seconde"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-fevrier.pdf"
---

## Statement

On se donne $200$ nombres réels strictement positifs
$$a_0, a_1, \ldots, a_{99} \qquad \text{et} \qquad b_0, b_1, \ldots, b_{99}.$$

Pour chaque entier $k$ de $0$ à $198$, on note $S_k$ la somme de tous les produits $a_i b_j$ tels que $i + j = k$, où $i$ et $j$ sont des entiers compris entre $0$ et $99$. Par exemple,
$$S_0 = a_0 b_0, \qquad S_1 = a_0 b_1 + a_1 b_0, \qquad S_2 = a_0 b_2 + a_1 b_1 + a_2 b_0, \qquad S_{198} = a_{99} b_{99}.$$

Est-il possible que les $199$ nombres $S_0, S_1, \ldots, S_{198}$ soient tous égaux ?

## Hints

1. Écris complètement $S_{99}$. Combien de termes contient cette somme, et lesquels contiennent $a_0$ ?
2. Raisonne par l'absurde et suppose que $S_0 = S_{99}$. Que peux-tu en déduire en comparant $b_0$ et $b_{99}$ ? Et en comparant $a_0$ et $a_{99}$ ?
3. Compare maintenant $S_0$ et $S_{198}$.

## Solution

La réponse est **non**. On raisonne par l'absurde, en supposant que $S_0, S_1, \ldots, S_{198}$ sont tous égaux.

**Étape 1. On écrit $S_{99}$.**

Les couples $(i, j)$ d'entiers entre $0$ et $99$ tels que $i + j = 99$ sont $(0, 99), (1, 98), \ldots, (99, 0)$. Donc
$$S_{99} = a_0 b_{99} + a_1 b_{98} + \cdots + a_{98} b_1 + a_{99} b_0.$$
C'est une somme de $100$ termes, tous strictement positifs.

**Étape 2. On compare $b_0$ et $b_{99}$, puis $a_0$ et $a_{99}$.**

Comme $S_0 = S_{99}$, on a
$$a_0 b_0 = a_0 b_{99} + \left(a_1 b_{98} + \cdots + a_{99} b_0\right).$$
La somme entre parenthèses est strictement positive, donc $a_0 b_0 > a_0 b_{99}$. On divise par $a_0$, qui est strictement positif : $b_0 > b_{99}$.

On écrit cette fois la même égalité en isolant le dernier terme :
$$a_0 b_0 = \left(a_0 b_{99} + \cdots + a_{98} b_1\right) + a_{99} b_0.$$
Donc $a_0 b_0 > a_{99} b_0$, et en divisant par $b_0 > 0$, on obtient $a_0 > a_{99}$.

**Étape 3. La contradiction.**

Les nombres $a_{99}$ et $b_{99}$ sont positifs, et l'on vient de voir que $a_{99} < a_0$ et $b_{99} < b_0$. En multipliant ces deux inégalités entre nombres positifs, on obtient
$$S_{198} = a_{99} b_{99} < a_0 b_0 = S_0.$$
C'est en contradiction avec $S_0 = S_{198}$.

**Conclusion.** Les nombres $S_0, S_1, \ldots, S_{198}$ ne peuvent pas être tous égaux.

## Going further

1. On a seulement utilisé les trois égalités $S_0 = S_{99} = S_{198}$. Montre que, même avec $a_0, a_1, b_0, b_1$ seulement (deux nombres de chaque sorte), les trois sommes $S_0 = a_0 b_0$, $S_1 = a_0 b_1 + a_1 b_0$ et $S_2 = a_1 b_1$ ne peuvent pas être égales.
2. Dans la question précédente, on autorise maintenant des nombres négatifs, mais on demande $a_1 \neq 0$ et $b_1 \neq 0$. On pose $u = \frac{a_0}{a_1}$ et $v = \frac{b_0}{b_1}$. Montre que l'égalité $S_0 = S_1 = S_2$ donnerait $uv = 1$ et $u + v = 1$, puis que c'est impossible. Indication : $u$ serait alors une solution de l'équation $t^2 - t + 1 = 0$, et $t^2 - t + 1 = \left(t - \frac{1}{2}\right)^2 + \frac{3}{4}$.
