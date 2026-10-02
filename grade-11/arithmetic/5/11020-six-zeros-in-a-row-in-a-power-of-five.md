---
id: "11020"
title: "Six zéros d'affilée dans une puissance de 5"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [ecriture-decimale, puissances-de-cinq, puissances-de-deux, divisibilite, identites-remarquables, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 3 (arithmétique)"
  reference: "2020-12_Sujet-envoi-3.pdf, Exercices Seniors, exercice 16 ; corrigé 2021-02_Corrige-envoi-3.pdf. Le corrigé prend n = 2¹⁹ + 20 et invoque l'indicatrice d'Euler ; on prend ici n = 2¹⁸ + 20 (signalé par les correcteurs) avec une preuve par identités remarquables. Le sujet dit seulement « entier n », on précise naturel."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/12/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-12_Sujet-envoi-3.pdf"
---

## Statement

Montrer qu'il existe un entier naturel $n < 10^6$ tel que l'écriture décimale de $5^n$ comporte au moins
six chiffres $0$ consécutifs.

## Hints

1. Les premiers chiffres de $5^n$ sont difficiles à contrôler. Intéresse-toi plutôt aux derniers.
2. Si $5^n - 5^{20}$ est un multiple de $10^{20}$, que peux-tu dire des vingt derniers chiffres de $5^n$ ?
   Combien de chiffres a $5^{20}$ ?
3. On a $5^n - 5^{20} = 5^{20}\,(5^{\,n - 20} - 1)$. Il te faut donc une puissance de $5$, moins $1$, qui
   soit divisible par $2^{20}$.
4. Factorise $5^{2m} - 1$ comme une différence de deux carrés, et recommence.

## Solution

L'idée est de fabriquer les zéros parmi les derniers chiffres de $5^n$.

**Étape 1 : $2^{20}$ divise $5^{2^{18}} - 1$.** On utilise plusieurs fois $A^2 - 1 = (A - 1)(A + 1)$ :
$$5^{2^{18}} - 1 = \left(5^{2^{17}} - 1\right)\left(5^{2^{17}} + 1\right) = \left(5^{2^{16}} - 1\right)\left(5^{2^{16}} + 1\right)\left(5^{2^{17}} + 1\right) = \cdots$$
et l'on arrive à
$$5^{2^{18}} - 1 = (5 - 1)(5 + 1)(5^2 + 1)(5^4 + 1)(5^8 + 1) \cdots \left(5^{2^{17}} + 1\right) .$$
Le premier facteur vaut $4 = 2^2$. Les $18$ facteurs suivants, $5^{2^j} + 1$ pour $j = 0, 1, \ldots, 17$,
sont tous pairs, car une puissance de $5$ est impaire. Le produit est donc divisible par
$2^2 \times 2^{18} = 2^{20}$.

**Étape 2 : le choix de $n$.** Posons
$$n = 2^{18} + 20 = 262\,144 + 20 = 262\,164 < 10^6 .$$
D'après l'étape 1, on peut écrire $5^{2^{18}} - 1 = 2^{20} q$ avec $q$ entier, et $q \geqslant 1$. Alors
$$5^n - 5^{20} = 5^{20}\left(5^{2^{18}} - 1\right) = 5^{20} \times 2^{20} q = 10^{20} q ,$$
c'est-à-dire
$$5^n = q \times 10^{20} + 5^{20} .$$

**Étape 3 : $5^{20}$ a au plus $14$ chiffres.** On a $2^{20} = 1\,048\,576 > 10^6$, donc
$$5^{20} = \frac{10^{20}}{2^{20}} < \frac{10^{20}}{10^6} = 10^{14} .$$

**Conclusion.** Comme $5^{20} < 10^{20}$, l'égalité $5^n = q \times 10^{20} + 5^{20}$ dit que les vingt
derniers chiffres de $5^n$ sont ceux de $5^{20}$, complétés à gauche par des zéros jusqu'à vingt chiffres.
Comme $5^{20}$ a au plus $14$ chiffres, les chiffres de $5^n$ situés aux rangs $15$ à $20$ en partant de la
droite sont tous des $0$. Et comme $q \geqslant 1$, ces chiffres font bien partie de l'écriture de $5^n$ :
il y a encore des chiffres non nuls à leur gauche.

L'entier $n = 262\,164$ convient. En fait $5^{20} = 95\,367\,431\,640\,625$ a exactement $14$ chiffres, et
$5^{262\,164}$ se termine par
$$\ldots 000000\,95367431640625 .$$

## Going further

Le même raisonnement montre que $2^{k+2}$ divise $5^{2^k} - 1$ pour tout $k \geqslant 0$. Avec $k = 19$,
on retrouve le choix $n = 2^{19} + 20$ du corrigé original.

Un ordinateur trouve que le plus petit $n$ qui convient est $n = 3375$ : le nombre $5^{3375}$ a $2360$
chiffres, et ses six zéros commencent au $114$e chiffre en partant de la droite. On ne connaît pas de
raisonnement simple qui permette de le prévoir.
