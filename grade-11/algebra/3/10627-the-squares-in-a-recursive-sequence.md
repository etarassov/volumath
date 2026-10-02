---
id: "10627"
title: "Les carrés d'une suite définie par récurrence"
grade: 11
theme: algebra
difficulty: 3
duration_min: 35
tags: [suites, suite-recurrente, carre-parfait, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 2 (algèbre)"
  reference: "2021-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 6 ; corrigé 2022-01_corrige-envoi-2.pdf. Le corrigé conclut à tort n = 1 et n = 9 : il résout mal a_n = (n + 3)², qui donne n = 8, et calcule 81 + 63 + 1 = 144 au lieu de 145. La bonne réponse est n = 1 et n = 8, car a_8 = 121 = 11²."
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-12_Sujet-envoi-2.pdf"
---

## Statement

Soit $(a_n)_{n \geqslant 1}$ la suite de réels définie par $a_1 = 9$ et, pour tout entier $n \geqslant 1$,

$$a_{n+1} = \frac{(n + 5)\,a_n + 22}{n + 3}$$

Déterminer tous les entiers $n \geqslant 1$ tels que $a_n$ soit le carré d'un entier.

## Hints

1. Calcule $a_2$, $a_3$, $a_4$. Devine une formule pour $a_n$.
2. Pour la démontrer, vérifie que $(n + 3)(a_{n+1} + 11) = (n + 5)(a_n + 11)$, puis montre que la suite $b_n = \frac{a_n + 11}{(n + 3)(n + 4)}$ est constante.
3. Une fois $a_n$ connu, encadre-le entre deux carrés d'entiers proches, de la forme $(n + k)^2$.

## Solution

**Étape 1. Une formule pour $a_n$.**

En multipliant la relation par $n + 3$, puis en ajoutant $11(n + 3)$ des deux côtés :

$$(n + 3)(a_{n+1} + 11) = (n + 5)\,a_n + 22 + 11n + 33 = (n + 5)\,a_n + 11(n + 5) = (n + 5)(a_n + 11)$$

Posons $b_n = \frac{a_n + 11}{(n + 3)(n + 4)}$. En divisant l'égalité précédente par $(n + 3)(n + 4)(n + 5)$, on obtient

$$b_{n+1} = \frac{a_{n+1} + 11}{(n + 4)(n + 5)} = \frac{a_n + 11}{(n + 3)(n + 4)} = b_n$$

La suite $(b_n)$ est donc constante, égale à $b_1 = \frac{9 + 11}{4 \times 5} = 1$. Ainsi $a_n + 11 = (n + 3)(n + 4)$, et

$$a_n = n^2 + 7n + 1$$

On vérifie : $a_1 = 9$, $a_2 = \frac{6 \times 9 + 22}{4} = 19 = 4 + 14 + 1$. En particulier, tous les $a_n$ sont des entiers.

**Étape 2. Un encadrement.**

Comparons $a_n$ aux carrés $(n + 2)^2$, $(n + 3)^2$ et $(n + 4)^2$ :

- $a_n - (n + 2)^2 = n^2 + 7n + 1 - (n^2 + 4n + 4) = 3n - 3 \geqslant 0$ ;
- $a_n - (n + 3)^2 = n^2 + 7n + 1 - (n^2 + 6n + 9) = n - 8$ ;
- $(n + 4)^2 - a_n = n^2 + 8n + 16 - (n^2 + 7n + 1) = n + 15 > 0$.

Donc $(n + 2)^2 \leqslant a_n < (n + 4)^2$. Si $a_n$ est le carré d'un entier positif $m$, alors $n + 2 \leqslant m < n + 4$, donc $m = n + 2$ ou $m = n + 3$.

**Étape 3. Les deux cas.**

- $a_n = (n + 2)^2$ équivaut à $3n - 3 = 0$, soit $n = 1$. En effet $a_1 = 9 = 3^2$.
- $a_n = (n + 3)^2$ équivaut à $n - 8 = 0$, soit $n = 8$. En effet $a_8 = 64 + 56 + 1 = 121 = 11^2$.

**Conclusion : $a_n$ est le carré d'un entier exactement pour $n = 1$ et pour $n = 8$.**
