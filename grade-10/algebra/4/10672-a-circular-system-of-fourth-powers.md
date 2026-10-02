---
id: "10672"
title: "Un système circulaire de puissances quatrièmes"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [systeme, factorisation, puissances, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Juniors, exercice 4 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Trouver tous les triplets de réels $(a, b, c)$ tels que

$$a^4 - b^4 = c, \qquad b^4 - c^4 = a, \qquad c^4 - a^4 = b$$

## Hints

1. Additionne les trois équations. Que trouves-tu ?
2. Factorise $a^4 - b^4$ complètement, puis remplace $a + b$ grâce au premier indice. La première équation devient un produit nul.
3. Si $a$, $b$, $c$ sont tous non nuls, montre que $a < b$, puis $b < c$ et $c < a$.
4. Sinon, l'un d'eux est nul. Traite le cas $c = 0$ en détail, puis adapte-le aux deux autres cas.

## Solution

**Étape 1. La somme est nulle.**

En additionnant les trois équations, le membre de gauche vaut $a^4 - b^4 + b^4 - c^4 + c^4 - a^4 = 0$. Donc

$$a + b + c = 0$$

**Étape 2. Factoriser.**

On a $a^4 - b^4 = (a^2 - b^2)(a^2 + b^2) = (a - b)(a + b)(a^2 + b^2)$. Comme $a + b = -c$, la première équation s'écrit $-c\,(a - b)(a^2 + b^2) = c$, c'est-à-dire

$$c\,\left[(a - b)(a^2 + b^2) + 1\right] = 0$$

Donc $c = 0$ ou $(a - b)(a^2 + b^2) = -1$. De la même façon, avec $b + c = -a$ et $c + a = -b$ :

- $a = 0$ ou $(b - c)(b^2 + c^2) = -1$ ;
- $b = 0$ ou $(c - a)(c^2 + a^2) = -1$.

**Étape 3. Les trois nombres ne peuvent pas être tous non nuls.**

Supposons $a$, $b$, $c$ tous non nuls. Alors $(a - b)(a^2 + b^2) = -1$. Comme $a^2 + b^2 > 0$, le facteur $a - b$ est strictement négatif : $a < b$. De même, $b < c$ et $c < a$. On obtiendrait $a < b < c < a$, ce qui est absurde.

**Étape 4. Le cas $c = 0$.**

Alors $a + b = 0$, donc $b = -a$ et $b^4 = a^4$. La deuxième équation devient $a^4 = a$, soit $a\,(a^3 - 1) = 0$. Donc $a = 0$, ou $a^3 = 1$, c'est-à-dire $a = 1$.

- Si $a = 0$ : on trouve $(0, 0, 0)$.
- Si $a = 1$ : on trouve $(1, -1, 0)$.

**Étape 5. Les cas $a = 0$ et $b = 0$.**

- Si $a = 0$ : alors $c = -b$, et la troisième équation donne $b^4 = b$. Donc $b = 0$ ou $b = 1$, d'où $(0, 0, 0)$ ou $(0, 1, -1)$.
- Si $b = 0$ : alors $c = -a$, et la première équation donne $a^4 = -a$, soit $a\,(a^3 + 1) = 0$. Donc $a = 0$ ou $a = -1$, d'où $(0, 0, 0)$ ou $(-1, 0, 1)$.

**Étape 6. Vérification.**

On a seulement montré que les solutions sont parmi ces quatre triplets. Vérifions qu'ils conviennent tous.

- $(0, 0, 0)$ : les trois équations s'écrivent $0 = 0$.
- $(1, -1, 0)$ : $1 - 1 = 0$, puis $1 - 0 = 1$, puis $0 - 1 = -1$.
- $(0, 1, -1)$ : $0 - 1 = -1$, puis $1 - 1 = 0$, puis $1 - 0 = 1$.
- $(-1, 0, 1)$ : $1 - 0 = 1$, puis $0 - 1 = -1$, puis $1 - 1 = 0$.

**Conclusion : il y a exactement quatre solutions, $(0, 0, 0)$, $(1, -1, 0)$, $(0, 1, -1)$ et $(-1, 0, 1)$.**
