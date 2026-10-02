---
id: "8150"
title: "wˣ + wʸ = wᶻ"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [puissances, divisibilite, equation, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 1, exercice 5 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Trouver tous les quadruplets d'entiers strictement positifs $(w, x, y, z)$ tels que

$$w^x + w^y = w^z.$$

## Hints

1. Commence par éliminer le cas $w = 1$.
2. On peut supposer $x \leq y$, quitte à échanger les rôles de $x$ et $y$. Mets alors $w^x$ en facteur à gauche.
3. Tu obtiens $w^x\left(1 + w^{\,y-x}\right) = w^z$. Simplifie par $w^x$ et pose $d = y - x$ et $e = z - x$.
4. Il reste $1 + w^d = w^e$. Traite à part le cas $d = 0$.
5. Si $d \geq 1$, regarde les restes des deux membres dans la division par $w$.

## Solution

**Le cas $w = 1$.**

L'équation devient $1 + 1 = 1$, ce qui est faux. Donc $w \geq 2$.

**Mise en facteur.**

Comme l'équation est symétrique en $x$ et $y$, supposons $x \leq y$. Mettons $w^x$ en facteur :

$$w^x\left(1 + w^{\,y-x}\right) = w^z.$$

Le membre de gauche est au moins $2w^x > w^x$, donc $w^z > w^x$ et par conséquent $z > x$ (puisque $w \geq 2$). Posons

$$d = y - x \geq 0 \qquad \text{et} \qquad e = z - x \geq 1.$$

En divisant par $w^x$ (qui n'est pas nul) :

$$1 + w^d = w^e.$$

**Premier cas : $d = 0$.**

L'équation devient $2 = w^e$. Comme $w \geq 2$ et $e \geq 1$, la seule possibilité est $w = 2$ et $e = 1$.

On revient alors aux inconnues de départ : $y = x$ et $z = x+1$, avec $x \geq 1$ quelconque. Vérifions :

$$2^x + 2^x = 2 \times 2^x = 2^{x+1}. \quad \checkmark$$

**Second cas : $d \geq 1$.**

Regardons les restes dans la division par $w$.

- À gauche, $w^d$ est un multiple de $w$ (car $d \geq 1$), donc $1 + w^d$ a pour reste $1$.
- À droite, $w^e$ est un multiple de $w$ (car $e \geq 1$), donc son reste est $0$.

Les deux membres sont égaux, donc leurs restes le sont aussi : $1 = 0$ modulo $w$, c'est-à-dire que $w$ divise $1$. C'est impossible puisque $w \geq 2$.

Ce cas ne donne donc aucune solution.

**Conclusion.**

Les quadruplets solutions sont exactement

$$(w, x, y, z) = (2,\ n,\ n,\ n+1), \qquad n \geq 1,$$

c'est-à-dire les égalités $2^n + 2^n = 2^{n+1}$.
