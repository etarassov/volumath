---
id: "8033"
title: "Une équation où y ne peut valoir que 1"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [factorisation, carres, parite, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, test de fin de parcours du jeudi 24 août, groupe A, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Trouver tous les entiers impairs $y$ pour lesquels il existe un entier $x$ vérifiant

$$x^2 + 2y^2 = y\,x^2 + y + 1 .$$

## Hints

1. Regroupe d'un côté tout ce qui contient $x^2$, et de l'autre tout ce qui n'en contient pas.
2. Le membre qui reste est un polynôme du second degré en $y$. Peut-on le factoriser ? Essaie
   $y = 1$.
3. Une fois la factorisation faite, deux cas se présentent selon que $y$ vaut $1$ ou non.
4. Dans le cas $y \neq 1$, tu obtiens $x^2 = 2y + 1$ avec $y$ impair. Regarde ce que vaut un
   carré dans la division par $4$.

## Solution

**On regroupe.** L'égalité $x^2 + 2y^2 = yx^2 + y + 1$ s'écrit

$$x^2 - yx^2 = y + 1 - 2y^2, \qquad \text{c'est-à-dire} \qquad x^2\,(y - 1) = 2y^2 - y - 1 .$$

*(On a multiplié les deux membres par $-1$.)*

**On factorise le membre de droite.** Le nombre $y = 1$ annule $2y^2 - y - 1$, donc $y - 1$ est
en facteur. En effet

$$(y-1)(2y+1) = 2y^2 + y - 2y - 1 = 2y^2 - y - 1 .$$

L'équation devient donc

$$x^2\,(y-1) = (y-1)\,(2y+1) .$$

**Deux cas.**

*Cas 1 : $y = 1$.* Les deux membres valent $0$, quel que soit $x$. L'égalité est donc vérifiée
pour tout entier $x$. On peut aussi le voir directement sur l'énoncé : pour $y = 1$ il
s'écrit $x^2 + 2 = x^2 + 1 + 1$, ce qui est vrai. **La valeur $y = 1$ convient**, et elle est
bien impaire.

*Cas 2 : $y \neq 1$.* On peut alors diviser les deux membres par $y - 1$, qui n'est pas nul :

$$x^2 = 2y + 1 .$$

Comme $y$ est impair, écrivons $y = 2k + 1$. Alors

$$x^2 = 2(2k+1) + 1 = 4k + 3 .$$

Autrement dit, $x^2$ laisse le reste $3$ dans la division par $4$.

**C'est impossible.** Regardons les deux possibilités pour $x$ :

- si $x$ est pair, $x = 2t$, alors $x^2 = 4t^2$ : le reste est $0$ ;
- si $x$ est impair, $x = 2t+1$, alors $x^2 = 4t^2 + 4t + 1 = 4\,(t^2+t) + 1$ : le reste est
  $1$.

Un carré ne laisse donc jamais le reste $3$ dans la division par $4$. Le cas 2 ne fournit
aucune solution.

**Le seul entier impair $y$ qui convient est $y = 1$**, et l'égalité est alors vraie pour tout
entier $x$.

## Going further

La condition « $y$ impair » est réellement utilisée : sans elle, $x^2 = 2y+1$ aurait des
solutions, par exemple $y = 4$ et $x = 3$, ou $y = 12$ et $x = 5$. C'est parce que $y$ est
impair que $2y+1$ tombe dans la classe interdite $4k+3$.

À retenir : un carré ne vaut que $0$ ou $1$ modulo $4$. C'est l'un des faits les plus
rentables de toute l'arithmétique élémentaire.
