---
id: "7506"
title: "Quand le produit vaut la somme plus 3"
grade: 8
theme: algebra
difficulty: 3
duration_min: 20
tags: [factorisation, equation-a-deux-inconnues, entiers, diviseurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 26 (solution p. 242, résolu par Aymeric Jacquin)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Trouver tous les couples d'entiers $x \geqslant 0$ et $y \geqslant 0$ tels que

$$xy = x + y + 3.$$

## Hints

1. Il n'y a qu'une seule équation pour deux inconnues : on ne pourra pas « isoler » $x$ et trouver un nombre. Il faut exploiter que $x$ et $y$ sont des **entiers**.
2. Le bon réflexe avec les entiers, c'est de transformer l'équation en un **produit égal à un nombre fixe**. Commence par tout mettre du même côté.
3. Tu obtiens $xy - x - y = 3$. Ce n'est pas encore un produit. Que se passe-t-il si tu ajoutes $1$ des deux côtés ?
4. Une fois que tu as $(x-1)(y-1) = 4$, il ne reste qu'à lister les façons d'écrire $4$ comme produit de deux entiers, sans oublier les négatifs.

## Solution

**Étape 1. On factorise.**

On part de $xy = x + y + 3$ et on regroupe tout à gauche :

$$xy - x - y = 3.$$

Le membre de gauche ressemble à un produit développé. En effet,

$$(x-1)(y-1) = xy - x - y + 1.$$

Il suffit donc d'ajouter $1$ des deux côtés :

$$xy - x - y + 1 = 4, \qquad \text{c'est-à-dire} \qquad (x-1)(y-1) = 4.$$

**Étape 2. On liste les factorisations de 4.**

Posons $u = x - 1$ et $v = y - 1$. Ce sont des entiers, et $uv = 4$. Les couples d'entiers de produit $4$ sont

$$(1, 4), \quad (2, 2), \quad (4, 1), \quad (-1, -4), \quad (-2, -2), \quad (-4, -1).$$

**Étape 3. On garde ceux qui conviennent.**

Comme $x \geqslant 0$, on a $u = x - 1 \geqslant -1$, et de même $v \geqslant -1$. Cela élimine tous les couples contenant $-2$ ou $-4$. Il reste :

- $u = -1$ et $v = -4$ : refusé, car $v = -4 < -1$ ;
- $(u,v) = (1,4)$, donc $(x,y) = (2,5)$ ;
- $(u,v) = (2,2)$, donc $(x,y) = (3,3)$ ;
- $(u,v) = (4,1)$, donc $(x,y) = (5,2)$.

**Étape 4. On vérifie.**

- $x=2$, $y=5$ : $xy = 10$ et $x+y+3 = 10$. Bon.
- $x=3$, $y=3$ : $xy = 9$ et $x+y+3 = 9$. Bon.
- $x=5$, $y=2$ : $xy = 10$ et $x+y+3 = 10$. Bon.

**Réponse.** Les solutions sont $(x,y) = (2,5)$, $(3,3)$ et $(5,2)$.

## Going further

Le pas décisif était d'ajouter $1$ pour faire apparaître un produit. On appelle parfois ça la « factorisation de Simon » : devant une équation de la forme $xy + ax + by = c$, on ajoute $ab$ des deux côtés et on obtient $(x+b)(y+a) = c + ab$.

Essaie sur $xy = x + y + 2012$ : tu dois arriver à $(x-1)(y-1) = 2013 = 3 \times 11 \times 61$, et il y a donc beaucoup plus de solutions. Combien exactement, pour $x$ et $y$ entiers positifs ?
