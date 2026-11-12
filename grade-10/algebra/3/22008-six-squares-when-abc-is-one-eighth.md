---
id: "22008"
title: "abc = 1/8 : six carrés au moins 15/16"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, inegalite-arithmetico-geometrique, racine-cubique, cas-d-egalite]
adapted_from: null
see_also: ["22006"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Inégalités » (Gaspard D.), exercice 8 (JBMO Shortlist 2014)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres réels strictement positifs tels que $abc = \frac{1}{8}$. Montrer que

$$a^2 + b^2 + c^2 + a^2b^2 + b^2c^2 + c^2a^2 \geq \frac{15}{16}.$$

Dans quel cas y a-t-il égalité ?

## Hints

1. Devinez d'abord le cas d'égalité : essayez $a = b = c$.
2. Pour trois nombres positifs $x$, $y$, $z$, on a $x + y + z \geq 3\sqrt[3]{xyz}$. Pour le démontrer, factorisez $u^3 + v^3 + w^3 - 3uvw$ par $u + v + w$.
3. Pour $a = b = c = \frac{1}{2}$, les six termes ne sont pas tous égaux : on ne peut pas appliquer l'inégalité aux six termes d'un coup. Séparez-les en deux groupes de trois termes égaux entre eux.

## Solution

**Le cas d'égalité attendu.** Si $a = b = c$, alors $a^3 = \frac{1}{8}$, donc $a = \frac{1}{2}$. Dans ce cas $a^2 = b^2 = c^2 = \frac{1}{4}$ et $a^2b^2 = b^2c^2 = c^2a^2 = \frac{1}{16}$, et la somme vaut $\frac{3}{4} + \frac{3}{16} = \frac{15}{16}$. On cherche donc à montrer que ce triplet donne le minimum.

**Un outil : la moyenne de trois nombres.** Pour $x \geq 0$, on note $\sqrt[3]{x}$ le nombre positif dont le cube vaut $x$ (il est unique car la fonction cube est strictement croissante sur $[0, +\infty[$).

*Lemme.* Pour tous $x, y, z \geq 0$, on a $x + y + z \geq 3\sqrt[3]{xyz}$, avec égalité seulement si $x = y = z$.

*Preuve.* Posons $u = \sqrt[3]{x}$, $v = \sqrt[3]{y}$, $w = \sqrt[3]{z}$. En développant, on vérifie que
$$u^3 + v^3 + w^3 - 3uvw = \frac{1}{2}(u+v+w)\left((u-v)^2 + (v-w)^2 + (w-u)^2\right).$$
Le membre de droite est positif ou nul, donc $u^3 + v^3 + w^3 \geq 3uvw$, c'est-à-dire $x + y + z \geq 3\sqrt[3]{xyz}$. Il est nul seulement si $u = v = w$ (ou si $u + v + w = 0$, ce qui donne aussi $u = v = w = 0$).

**Pourquoi deux groupes.** Au point $a = b = c = \frac{1}{2}$, les six termes valent $\frac{1}{4}$ ou $\frac{1}{16}$. Une inégalité qui demande que les termes soient égaux pour avoir égalité ne peut donc pas s'appliquer aux six termes ensemble : elle donnerait une minoration qui n'est jamais atteinte, donc trop faible. En revanche, les trois termes $a^2$, $b^2$, $c^2$ sont égaux entre eux, et les trois termes $a^2b^2$, $b^2c^2$, $c^2a^2$ aussi.

**Premier groupe.** Le produit $a^2 \times b^2 \times c^2 = (abc)^2 = \frac{1}{64} = \left(\frac{1}{4}\right)^3$. Le lemme donne
$$a^2 + b^2 + c^2 \geq 3 \times \frac{1}{4} = \frac{3}{4}.$$

**Second groupe.** Le produit $a^2b^2 \times b^2c^2 \times c^2a^2 = (abc)^4 = \frac{1}{4096} = \left(\frac{1}{16}\right)^3$. Le lemme donne
$$a^2b^2 + b^2c^2 + c^2a^2 \geq 3 \times \frac{1}{16} = \frac{3}{16}.$$

**Addition.** En ajoutant,
$$a^2 + b^2 + c^2 + a^2b^2 + b^2c^2 + c^2a^2 \geq \frac{3}{4} + \frac{3}{16} = \frac{15}{16}.$$

**Cas d'égalité.** S'il y a égalité, il y a égalité dans le premier groupe, donc $a^2 = b^2 = c^2$. Les nombres étant positifs, $a = b = c$, puis $a^3 = \frac{1}{8}$ et $a = \frac{1}{2}$. Réciproquement, on a vu au début que $a = b = c = \frac{1}{2}$ donne bien $\frac{15}{16}$.

**Conclusion.** L'inégalité est vraie, avec égalité seulement pour $a = b = c = \frac{1}{2}$.

## Going further

1. Qu'obtient-on si l'on applique la même inégalité, version six nombres, aux six termes à la fois ? Vérifiez que la minoration obtenue est plus petite que $\frac{15}{16}$.
