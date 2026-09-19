---
id: "3409"
title: "Quand cette valeur absolue est un nombre premier"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres premiers, valeur absolue, factorisation, entiers relatifs]
adapted_from: null
see_also: ["3201"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Week 1: Algebra"
  reference: "Handout-4100-3834.pdf, section 2.2, exercice 2 (réponse dans Handout-4101-3834.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4100-3834.pdf"
---

## Statement

Trouve tous les entiers relatifs $x$ pour lesquels $\bigl|\,x^2 - 9\,\bigr|$ est un nombre premier.

Quel est le produit de tous ces entiers ?

## Hints

1. Commence par factoriser $x^2 - 9$.
2. $\bigl|x^2-9\bigr| = |x-3| \times |x+3|$ : la valeur absolue d'un produit est le produit des valeurs absolues.
3. Un nombre premier n'a que deux diviseurs positifs, $1$ et lui-même. Si un nombre premier s'écrit comme produit de deux entiers positifs, que vaut nécessairement l'un des deux ?
4. Traite séparément $|x-3| = 1$ et $|x+3| = 1$, puis vérifie à chaque fois que l'autre facteur est bien premier.

## Solution

**L'idée : un nombre premier écrit comme produit de deux entiers positifs force l'un des deux facteurs à valoir $1$.**

**Étape 1. On factorise.**

$$x^2 - 9 = (x-3)(x+3), \qquad \text{donc} \qquad \bigl|x^2-9\bigr| = |x-3| \times |x+3|.$$

Les deux facteurs $|x-3|$ et $|x+3|$ sont des entiers positifs ou nuls.

**Étape 2. Un des deux facteurs vaut $1$.**

Supposons que $\bigl|x^2-9\bigr|$ soit un nombre premier $p$. Alors $p = |x-3| \times |x+3|$. Aucun des deux facteurs n'est nul, sinon le produit serait $0$, qui n'est pas premier. Les diviseurs positifs de $p$ sont seulement $1$ et $p$, donc l'un des deux facteurs vaut $1$ et l'autre vaut $p$.

**Étape 3. Premier cas : $|x-3| = 1$.**

Alors $x = 4$ ou $x = 2$.

- $x = 4$ : $|x+3| = 7$, qui est premier. On vérifie : $\bigl|16 - 9\bigr| = 7$. Convient.
- $x = 2$ : $|x+3| = 5$, qui est premier. On vérifie : $\bigl|4 - 9\bigr| = 5$. Convient.

**Étape 4. Second cas : $|x+3| = 1$.**

Alors $x = -2$ ou $x = -4$.

- $x = -2$ : $|x-3| = 5$, premier. On vérifie : $\bigl|4-9\bigr| = 5$. Convient.
- $x = -4$ : $|x-3| = 7$, premier. On vérifie : $\bigl|16-9\bigr| = 7$. Convient.

**Étape 5. Conclusion.**

Les entiers cherchés sont exactement

$$-4, \quad -2, \quad 2, \quad 4,$$

et leur produit vaut

$$(-4) \times (-2) \times 2 \times 4 = 8 \times 8 = 64.$$

**Conclusion : il y a quatre entiers, $\pm 2$ et $\pm 4$, et leur produit vaut $64$.**

## Going further

On remarque que $x$ et $-x$ donnent la même valeur de $\bigl|x^2-9\bigr|$ : l'ensemble des solutions est forcément symétrique par rapport à $0$. Cela permet de ne traiter que le cas $x \geqslant 0$ et de doubler ensuite la liste.
