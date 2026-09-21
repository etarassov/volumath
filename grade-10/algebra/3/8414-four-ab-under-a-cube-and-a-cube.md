---
id: "8414"
title: "4ab sous deux cubes"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, carre-positif, factorisation, cas-degalite]
adapted_from: null
see_also: ["8537"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Inégalités » (Domitille Saliou), exercice d'application 1 (la solution imprimée passe par l'IAG à quatre termes ; ici, uniquement des carrés)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels strictement positifs. Montrer que

$$a^3 + b^3 + a + b \geqslant 4ab.$$

Dans quel cas y a-t-il égalité ?

## Hints

1. Le seul outil dont tu as besoin est le fait qu'un carré est toujours positif ou nul.
2. Le membre de gauche se sépare naturellement en deux morceaux : celui qui ne contient que $a$, et celui qui ne contient que $b$. Traite-les séparément.
3. Compare $a^3 + a$ à $2a^2$. La différence se factorise : commence par mettre $a$ en facteur.
4. Une fois obtenu $a^3 + b^3 + a + b \geqslant 2a^2 + 2b^2$, il reste une inégalité très classique entre $2a^2 + 2b^2$ et $4ab$.

## Solution

**Étape 1. Une inégalité pour $a$ seul.**

Calculons la différence :

$$a^3 + a - 2a^2 = a\,(a^2 - 2a + 1) = a\,(a-1)^2.$$

Comme $a > 0$ et que $(a-1)^2 \geqslant 0$, ce produit est positif ou nul. Donc

$$a^3 + a \geqslant 2a^2,$$

avec égalité exactement lorsque $a = 1$ (le facteur $a$ ne peut pas être nul).

**Étape 2. La même pour $b$.**

Le même calcul avec $b$ donne

$$b^3 + b \geqslant 2b^2,$$

avec égalité exactement lorsque $b = 1$.

**Étape 3. On additionne.**

$$a^3 + b^3 + a + b \geqslant 2a^2 + 2b^2.$$

**Étape 4. La dernière marche.**

$$2a^2 + 2b^2 - 4ab = 2\,(a^2 - 2ab + b^2) = 2\,(a-b)^2 \geqslant 0,$$

donc $2a^2 + 2b^2 \geqslant 4ab$, avec égalité exactement lorsque $a = b$.

**Conclusion.** En enchaînant les étapes 3 et 4 :

$$a^3 + b^3 + a + b \geqslant 2a^2 + 2b^2 \geqslant 4ab.$$

**Cas d'égalité.** Pour que l'inégalité finale soit une égalité, il faut que les deux inégalités enchaînées en soient. L'étape 3 impose $a = 1$ et $b = 1$, ce qui donne aussi $a = b$ : l'étape 4 est alors également une égalité. Réciproquement, pour $a = b = 1$ les deux membres valent $4$.

L'égalité a donc lieu exactement pour $a = b = 1$.
