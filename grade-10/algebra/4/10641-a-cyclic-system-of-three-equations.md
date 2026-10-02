---
id: "10641"
title: "a² + ab = c, b² + bc = a, c² + ca = b"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [systeme, factorisation, raisonnement-par-l-absurde, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 5 ; corrigé 2023-01_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Trouver tous les triplets $(a, b, c)$ de réels positifs ou nuls tels que

$$a^2 + ab = c, \qquad b^2 + bc = a, \qquad c^2 + ca = b$$

## Hints

1. Le système ne change pas si l'on remplace $a$ par $b$, $b$ par $c$ et $c$ par $a$ (il est « cyclique »). Traite d'abord le cas où l'un des nombres est nul, puis le cas où deux d'entre eux sont égaux.
2. Si les trois nombres sont non nuls, multiplie les trois équations membre à membre et simplifie.
3. Soustrais la deuxième équation de la première, et factorise chaque membre. Fais de même avec les autres paires d'équations.
4. Multiplie les trois égalités obtenues, et compare avec le résultat de l'indication 2.

## Solution

Notons $(1)$, $(2)$, $(3)$ les trois équations dans l'ordre. Si l'on remplace $(a, b, c)$ par $(b, c, a)$, l'équation $(1)$ devient $(2)$, $(2)$ devient $(3)$ et $(3)$ devient $(1)$ : le système ne change pas. On peut donc décaler les lettres de cette façon sans perdre de solution.

**Cas 1. L'un des nombres est nul.** En décalant les lettres, on peut supposer $a = 0$. Alors $(1)$ donne $c = 0$, puis $(3)$ donne $b = 0$. Réciproquement, $(0, 0, 0)$ est solution.

À partir de maintenant, $a$, $b$, $c$ sont strictement positifs.

**Cas 2. Deux des nombres sont égaux.** En décalant les lettres, on peut supposer $a = b$. Alors $(2) - (3)$ donne

$$b^2 + bc - c^2 - ca = a - b = 0$$

et comme $a = b$, les termes $bc$ et $ca$ se compensent : il reste $b^2 - c^2 = 0$. Comme $b$ et $c$ sont positifs, $b = c$. Donc $a = b = c$, et $(1)$ devient $2a^2 = a$. Comme $a \neq 0$, on obtient $a = \frac{1}{2}$. Réciproquement, $\left(\frac{1}{2}, \frac{1}{2}, \frac{1}{2}\right)$ est solution : $\frac{1}{4} + \frac{1}{4} = \frac{1}{2}$.

**Cas 3. Les trois nombres sont distincts et non nuls.** Montrons que c'est impossible.

*Première égalité.* En multipliant les trois équations, après avoir factorisé les membres de gauche,

$$a(a + b) \times b(b + c) \times c(c + a) = c \times a \times b$$

On divise par $abc$, qui n'est pas nul :

$$(a + b)(b + c)(c + a) = 1$$

*Deuxième égalité.* L'opération $(1) - (2)$ donne $a^2 - b^2 + ab - bc = c - a$. À gauche, $ab - bc = b(a - c)$, donc

$$(a - b)(a + b) - b(c - a) = c - a, \qquad \text{soit} \qquad (a - b)(a + b) = (c - a)(1 + b)$$

De même, $(2) - (3)$ et $(3) - (1)$ donnent

$$(b - c)(b + c) = (a - b)(1 + c) \qquad \text{et} \qquad (c - a)(c + a) = (b - c)(1 + a)$$

On multiplie ces trois égalités :

$$(a - b)(b - c)(c - a) \times (a + b)(b + c)(c + a) = (a - b)(b - c)(c - a) \times (1 + a)(1 + b)(1 + c)$$

Le produit $(a - b)(b - c)(c - a)$ n'est pas nul, car les trois nombres sont distincts. On peut diviser par lui :

$$(a + b)(b + c)(c + a) = (1 + a)(1 + b)(1 + c)$$

*Contradiction.* Le membre de gauche vaut $1$. Le membre de droite est un produit de trois nombres strictement plus grands que $1$, donc il est strictement plus grand que $1$. C'est impossible.

**Conclusion : il y a exactement deux solutions, $(0, 0, 0)$ et $\left(\frac{1}{2}, \frac{1}{2}, \frac{1}{2}\right)$.**
