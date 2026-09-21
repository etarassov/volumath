---
id: "8537"
title: "a³ + b³ + a + b ⩾ 4ab"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, factorisation, carre, cas-degalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Révisions » (Isaline) du Groupe A, exercice 12"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels positifs. Démontrer que

$$a^3 + b^3 + a + b \geqslant 4ab .$$

Dans quels cas y a-t-il égalité ?

## Hints

1. Le membre de gauche sépare les $a$ et les $b$, le membre de droite les mélange. Essaie de passer par une étape intermédiaire qui sépare encore : $2a^2 + 2b^2$.
2. Pour la première moitié, compare $a^3 + a$ et $2a^2$ : regarde la différence et factorise-la.
3. Pour la seconde moitié, compare $2a^2 + 2b^2$ et $4ab$.

## Solution

**Première étape : $a^3 + a \geqslant 2a^2$.**

En effet,

$$a^3 + a - 2a^2 = a\left(a^2 - 2a + 1\right) = a\,(a-1)^2 .$$

Comme $a \geqslant 0$ et $(a-1)^2 \geqslant 0$, ce produit est positif ou nul. Donc

$$a^3 + a \geqslant 2a^2 .$$

De la même façon, $b^3 + b \geqslant 2b^2$.

**Deuxième étape : $2a^2 + 2b^2 \geqslant 4ab$.**

En effet,

$$2a^2 + 2b^2 - 4ab = 2\left(a^2 - 2ab + b^2\right) = 2(a-b)^2 \geqslant 0 .$$

**On assemble.** En additionnant les deux inégalités de la première étape, puis en utilisant
la seconde :

$$a^3 + b^3 + a + b \geqslant 2a^2 + 2b^2 \geqslant 4ab .$$

C'est bien l'inégalité demandée.

**Le cas d'égalité.** Il faut qu'il y ait égalité partout, donc

$$a\,(a-1)^2 = 0, \qquad b\,(b-1)^2 = 0, \qquad (a-b)^2 = 0 .$$

La première condition donne $a = 0$ ou $a = 1$, la deuxième $b = 0$ ou $b = 1$, et la
troisième $a = b$. Il reste donc deux possibilités : $a = b = 0$ et $a = b = 1$.

Réciproquement :

- pour $a = b = 0$, les deux membres valent $0$ ;
- pour $a = b = 1$, le membre de gauche vaut $1+1+1+1 = 4$ et le membre de droite $4$.

L'égalité a donc lieu exactement pour $(a,b) = (0,0)$ et $(a,b) = (1,1)$.
