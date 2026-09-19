---
id: "0889"
title: "Une inégalité à regrouper deux par deux"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, identites remarquables, puissances, cas d egalite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 11, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

$x$ est un réel positif ou nul. Montrer que

$$1 + x^2 + x^6 + x^8 \geqslant 4x^4,$$

et trouver le cas d'égalité.

## Hints

1. À droite il y a $4x^4$, c'est-à-dire $2x^4 + 2x^4$. Cela invite à couper le problème en deux morceaux.
2. Regarde les exposants de gauche : $0$, $2$, $6$, $8$. Quelles paires ont pour « milieu » l'exposant $4$ ?
3. Montre séparément que $1 + x^8 \geqslant 2x^4$ et que $x^2 + x^6 \geqslant 2x^4$. Pour la seconde, commence par mettre $x^2$ en facteur.
4. Pour le cas d'égalité, il faut que les deux inégalités soient des égalités **en même temps**.

## Solution

**L'idée : $4x^4 = 2x^4 + 2x^4$, on démontre deux inégalités puis on les additionne.**

**Première inégalité : $1 + x^8 \geqslant 2x^4$.** En effet,

$$1 + x^8 - 2x^4 = (x^4)^2 - 2 \times x^4 \times 1 + 1^2 = (x^4 - 1)^2 \geqslant 0,$$

puisqu'un carré est positif ou nul.

**Deuxième inégalité : $x^2 + x^6 \geqslant 2x^4$.** En effet,

$$x^2 + x^6 - 2x^4 = x^2\left(1 + x^4 - 2x^2\right) = x^2 (x^2-1)^2 \geqslant 0,$$

puisque $x^2 \geqslant 0$ et que $(x^2-1)^2$ est un carré.

**On additionne.** En ajoutant membre à membre les deux inégalités
$$1 + x^8 \geqslant 2x^4 \qquad \text{et} \qquad x^2 + x^6 \geqslant 2x^4,$$
on obtient
$$1 + x^2 + x^6 + x^8 \geqslant 4x^4.$$

**Le cas d'égalité.** L'inégalité finale est une égalité exactement quand les deux inégalités de départ en sont, c'est-à-dire quand

$$(x^4-1)^2 = 0 \qquad \text{et} \qquad x^2(x^2-1)^2 = 0.$$

La première donne $x^4 = 1$, donc $x = 1$ (on a $x \geqslant 0$). La seconde donne $x = 0$ ou $x = 1$. Les deux conditions sont satisfaites en même temps uniquement pour

$$x = 1.$$

Vérification : pour $x = 1$, la gauche vaut $1+1+1+1 = 4$ et la droite vaut $4$.

**Conclusion : pour tout réel $x \geqslant 0$, $1 + x^2 + x^6 + x^8 \geqslant 4x^4$, avec égalité si et seulement si $x = 1$.**

## Going further

L'hypothèse $x \geqslant 0$ n'a en fait pas servi, sauf pour écarter $x = -1$ à la fin : tous les exposants qui interviennent sont pairs, donc l'inégalité vaut pour **tout** réel $x$, avec égalité pour $x = 1$ et pour $x = -1$.

On peut aussi lire l'exercice à l'envers. Les quatre nombres $1$, $x^2$, $x^6$, $x^8$ ont pour produit $x^{16} = (x^4)^4$, et l'inégalité dit que leur somme vaut au moins $4x^4$, c'est-à-dire quatre fois la racine quatrième de leur produit. C'est un cas particulier de l'inégalité entre moyenne arithmétique et moyenne géométrique.
