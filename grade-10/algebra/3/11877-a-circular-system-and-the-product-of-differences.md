---
id: "11877"
title: "Un système circulaire et le produit (a − b)(b − c)(c − a)"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [systeme, identite remarquable, factorisation, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Juniors, exercice 6, repris mot pour mot en exercice 12 (Seniors) ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres réels tels que
$$a^2 + a = b^2, \qquad b^2 + b = c^2, \qquad c^2 + c = a^2.$$
Montrer que, soit $(a, b, c) = (0, 0, 0)$, soit $(a - b)(b - c)(c - a) = 1$.

## Hints

1. Additionner les trois égalités.
2. Écrire la première égalité sous la forme $a = b^2 - a^2$ et factoriser. Utiliser le résultat de l'indication 1.
3. On obtient trois égalités du type $a = c(a - b)$. Les multiplier. Attention à ne pas diviser par zéro.

## Solution

**Étape 1 : la somme est nulle.** En additionnant les trois égalités :
$$a^2 + b^2 + c^2 + a + b + c = a^2 + b^2 + c^2, \qquad \text{donc} \qquad a + b + c = 0.$$

**Étape 2 : trois nouvelles égalités.** La première égalité s'écrit $a = b^2 - a^2 = (b - a)(b + a)$. Or $b + a = -c$ par l'étape 1, donc
$$a = (b - a) \times (-c) = c\,(a - b).$$
De la même façon, la deuxième égalité donne $b = c^2 - b^2 = (c - b)(c + b) = (c - b)(-a)$, et la troisième $c = a^2 - c^2 = (a - c)(a + c) = (a - c)(-b)$ :
$$b = a\,(b - c), \qquad c = b\,(c - a).$$

**Étape 3 : le produit.** En multipliant les trois égalités de l'étape 2 :
$$abc = abc\,(a - b)(b - c)(c - a).$$

- Si $abc \neq 0$, on peut diviser par $abc$, et on obtient $(a - b)(b - c)(c - a) = 1$.
- Si $abc = 0$, l'un des trois nombres est nul.
    - Si $a = 0$, la première égalité donne $b^2 = 0$, donc $b = 0$, puis la deuxième donne $c^2 = 0$, donc $c = 0$.
    - Si $b = 0$, la deuxième donne $c = 0$, puis la troisième donne $a = 0$.
    - Si $c = 0$, la troisième donne $a = 0$, puis la première donne $b = 0$.

  Dans tous les cas, $(a, b, c) = (0, 0, 0)$.

**Conclusion.** Soit $(a, b, c) = (0, 0, 0)$, soit $(a - b)(b - c)(c - a) = 1$.

## Going further

L'erreur la plus courante sur ce problème est de simplifier par $abc$ sans traiter à part le cas où l'un des nombres est nul. Diviser par une quantité demande toujours de vérifier qu'elle n'est pas nulle.
