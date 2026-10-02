---
id: "7028"
title: "Une somme de quatre-vingt-dix-neuf fractions"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [expression-conjuguee, telescopage, racine-carree]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Saint Pierre lès Nemours 2009"
  reference: "stage_junior_2009.pdf, test final, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2009.pdf"
---

## Statement

Montrer que
$$\frac{1}{\sqrt1 + \sqrt2} + \frac{1}{\sqrt2 + \sqrt3} + \frac{1}{\sqrt3 + \sqrt4}
+ \cdots + \frac{1}{\sqrt{99} + \sqrt{100}} = 9 .$$

## Hints

1. On ne peut évidemment pas calculer les $99$ fractions une par une. Il faut transformer
   chacune d'elles.
2. Souviens-toi de l'identité $A^2 - B^2 = (A-B)(A+B)$, et applique-la avec
   $A = \sqrt{k+1}$ et $B = \sqrt{k}$.
3. Multiplie le numérateur et le dénominateur par l'**expression conjuguée**
   $\sqrt{k+1} - \sqrt{k}$.
4. Une fois chaque fraction simplifiée, écris la somme en entier. Presque tout disparaît.

## Solution

**Se débarrasser des racines au dénominateur.**

Soit $k$ un entier entre $1$ et $99$. Multiplions le numérateur et le dénominateur de
$$\frac{1}{\sqrt{k} + \sqrt{k+1}}$$
par l'expression conjuguée $\sqrt{k+1} - \sqrt{k}$, qui est un nombre strictement positif :
$$\frac{1}{\sqrt{k} + \sqrt{k+1}}
 = \frac{\sqrt{k+1} - \sqrt{k}}{\left(\sqrt{k+1} + \sqrt{k}\right)\left(\sqrt{k+1} - \sqrt{k}\right)} .$$

Le dénominateur est une différence de deux carrés :
$$\left(\sqrt{k+1}\right)^2 - \left(\sqrt{k}\right)^2 = (k+1) - k = 1 .$$

Donc, tout simplement,
$$\frac{1}{\sqrt{k} + \sqrt{k+1}} = \sqrt{k+1} - \sqrt{k} .$$

**La somme se télescope.**

En appliquant cela à chaque terme :
$$\frac{1}{\sqrt1+\sqrt2} = \sqrt2 - \sqrt1, \qquad
  \frac{1}{\sqrt2+\sqrt3} = \sqrt3 - \sqrt2, \qquad \ldots, \qquad
  \frac{1}{\sqrt{99}+\sqrt{100}} = \sqrt{100} - \sqrt{99} .$$

La somme cherchée vaut donc
$$\left(\sqrt2 - \sqrt1\right) + \left(\sqrt3 - \sqrt2\right) + \left(\sqrt4 - \sqrt3\right)
 + \cdots + \left(\sqrt{100} - \sqrt{99}\right) .$$

Chaque racine apparaît deux fois, une fois avec le signe $+$ et une fois avec le signe $-$,
sauf la première et la dernière. Tout se simplifie et il reste
$$\sqrt{100} - \sqrt{1} = 10 - 1 = 9 . \qquad \blacksquare$$

## Going further

Retiens le réflexe : **dès qu'une somme de racines carrées apparaît au dénominateur, on
multiplie par l'expression conjuguée.** C'est ce qui fait disparaître les racines, et ici cela
transforme chaque terme en une différence, ce qui déclenche le télescopage.

Même technique pour
$$\frac{1}{\sqrt1 + \sqrt3} + \frac{1}{\sqrt3 + \sqrt5} + \cdots + \frac{1}{\sqrt{97} + \sqrt{99}} .$$
Cette fois le dénominateur conjugué vaut $2$ au lieu de $1$. Que trouve-t-on ?
