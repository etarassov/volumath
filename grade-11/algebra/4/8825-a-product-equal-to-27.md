---
id: "8825"
title: "Un produit qui vaut 27, une somme au moins 7"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, moyenne arithmetique geometrique, factorisation, changement de variable]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, entraînement de mi-parcours du Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Entraînement de mi-parcours », exercice 2, p. 87"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres réels strictement positifs tels que
$$abc + ab + ac + a = 27 .$$

Démontrer que
$$a + b + c \geqslant 7 .$$

## Hints

1. Le membre de gauche de l'hypothèse a l'air compliqué, mais tous ses termes contiennent $a$. Mets $a$ en facteur, puis regarde ce qui reste.
2. Tu devrais obtenir un **produit** de trois facteurs égal à $27$. Lesquels ?
3. Une inégalité entre une somme et un produit, c'est l'inégalité entre moyenne arithmétique et moyenne géométrique : pour trois réels positifs $x$, $y$, $z$,
$$x + y + z \geqslant 3\sqrt[3]{xyz} .$$
4. Applique-la aux trois facteurs, puis reviens à $a+b+c$.

## Solution

### Étape 1 : on factorise l'hypothèse

$$abc + ab + ac + a = a\left(bc + b + c + 1\right) = a\big(b(c+1) + (c+1)\big) = a\,(b+1)(c+1).$$

L'hypothèse s'écrit donc
$$a\,(b+1)\,(c+1) = 27 .$$

Les trois nombres $a$, $b+1$ et $c+1$ sont strictement positifs.

### Étape 2 : l'inégalité arithmético-géométrique

Rappelons l'inégalité entre moyenne arithmétique et moyenne géométrique pour trois réels positifs $x$, $y$, $z$ :
$$\frac{x+y+z}{3} \geqslant \sqrt[3]{xyz}, \qquad \text{c'est-à-dire} \qquad x+y+z \geqslant 3\sqrt[3]{xyz} .$$

*(Démonstration rapide, si on veut la refaire : en posant $x = u^3$, $y = v^3$, $z = w^3$ avec $u, v, w \geqslant 0$, il s'agit de montrer $u^3+v^3+w^3 \geqslant 3uvw$. Or*
$$u^3+v^3+w^3-3uvw = (u+v+w)\left(u^2+v^2+w^2-uv-vw-wu\right) = \frac{u+v+w}{2}\Big((u-v)^2+(v-w)^2+(w-u)^2\Big) \geqslant 0 .)$$

Appliquons-la à $x = a$, $y = b+1$, $z = c+1$ :
$$a + (b+1) + (c+1) \; \geqslant \; 3\sqrt[3]{a(b+1)(c+1)} \; = \; 3\sqrt[3]{27} \; = \; 3 \times 3 \; = \; 9 .$$

### Étape 3 : on conclut

Le membre de gauche vaut $a + b + c + 2$. Donc
$$a + b + c + 2 \geqslant 9, \qquad \text{c'est-à-dire} \qquad a+b+c \geqslant 7 .$$

### Le cas d'égalité

Il y a égalité dans l'inégalité arithmético-géométrique exactement quand les trois nombres sont égaux, c'est-à-dire ici quand
$$a = b+1 = c+1 .$$
Leur produit vaut $27$, donc chacun vaut $3$ : $a = 3$, $b = 2$, $c = 2$. On vérifie : $abc+ab+ac+a = 12+6+6+3 = 27$, et $a+b+c = 7$. La borne $7$ est donc atteinte, elle est optimale.

## Going further

Soient $a$, $b$, $c$, $d$ strictement positifs tels que $abcd + abc + abd + acd + ab + ac + ad + a = 81$. Que peut-on dire de $a+b+c+d$ ?
