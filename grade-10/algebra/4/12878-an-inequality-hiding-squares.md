---
id: "12878"
title: "Une inégalité qui cache des carrés"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, factorisation, identites-remarquables, somme-de-carres, developpement, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2025"
  reference: "2025-10_Sujet-Test-3-2024-2025.pdf, test junior, exercice 2 ; corrigé 2025-10_Corrige-Test-3-2024-2025.pdf (on suit la première solution, la factorisation ; dans le corrigé, le deuxième terme de l'inégalité simplifiée garde par erreur un carré)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-3-2024-2025.pdf"
---

## Statement

Soit $a$, $b$ et $c$ trois réels strictement positifs tels que $ab + bc + ca = 3$. Montrer que

$$\frac{a^4 + b^4 + (a + b)^4}{a^2 + ab + b^2} + \frac{b^4 + c^4 + (b + c)^4}{b^2 + bc + c^2} + \frac{c^4 + a^4 + (c + a)^4}{c^2 + ca + a^2} \geq 18.$$

## Hints

1. Pour quelles valeurs de $a$, $b$, $c$ y a-t-il égalité ? Calculez chaque fraction dans ce cas.
2. Développez $a^4 + b^4 + (a + b)^4$, puis $(a^2 + ab + b^2)^2$. Comparez.
3. Chaque fraction se simplifie. Il reste à comparer $a^2 + b^2 + c^2$ et $ab + bc + ca$ : pensez à $(a - b)^2 + (b - c)^2 + (c - a)^2$.

## Solution

### Une factorisation

On développe $(a + b)^4 = \left((a + b)^2\right)^2 = (a^2 + 2ab + b^2)^2$ :

$$(a + b)^4 = a^4 + 4a^3 b + 6a^2 b^2 + 4ab^3 + b^4.$$

Donc

$$a^4 + b^4 + (a + b)^4 = 2a^4 + 4a^3 b + 6a^2 b^2 + 4ab^3 + 2b^4.$$

D'autre part,

$$(a^2 + ab + b^2)^2 = a^4 + a^2 b^2 + b^4 + 2a^3 b + 2a^2 b^2 + 2ab^3 = a^4 + 2a^3 b + 3a^2 b^2 + 2ab^3 + b^4.$$

En comparant, on obtient

$$a^4 + b^4 + (a + b)^4 = 2\,(a^2 + ab + b^2)^2.$$

### Chaque fraction se simplifie

Comme $a$ et $b$ sont strictement positifs, $a^2 + ab + b^2 > 0$, et

$$\frac{a^4 + b^4 + (a + b)^4}{a^2 + ab + b^2} = \frac{2\,(a^2 + ab + b^2)^2}{a^2 + ab + b^2} = 2\,(a^2 + ab + b^2).$$

De même pour les deux autres fractions. Le membre de gauche, que l'on note $T$, vaut donc

$$T = 2(a^2 + ab + b^2) + 2(b^2 + bc + c^2) + 2(c^2 + ca + a^2) = 4(a^2 + b^2 + c^2) + 2(ab + bc + ca).$$

### Une comparaison

On a

$$(a - b)^2 + (b - c)^2 + (c - a)^2 = 2(a^2 + b^2 + c^2) - 2(ab + bc + ca).$$

Une somme de carrés est positive ou nulle, donc $a^2 + b^2 + c^2 \geq ab + bc + ca = 3$.

### Conclusion

$$T = 4(a^2 + b^2 + c^2) + 2(ab + bc + ca) \geq 4 \times 3 + 2 \times 3 = 18.$$

**L'inégalité est démontrée.** Il y a égalité seulement quand $a = b = c$, c'est-à-dire quand $a = b = c = 1$.

## Going further

1. Avec la même condition $ab + bc + ca = 3$, montrez que $a + b + c \geq 3$. (Calculez $(a + b + c)^2$.)
2. Montrez de même que $a^4 + b^4 + (a - b)^4 = 2\,(a^2 - ab + b^2)^2$ pour tous réels $a$ et $b$.
