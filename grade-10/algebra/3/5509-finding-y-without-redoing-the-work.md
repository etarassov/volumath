---
id: "5509"
title: "Trouver y sans refaire le travail"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [systeme, symetrie, calcul litteral, verification]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Visualization in Algebra, Tom Davis"
  reference: "TDvisualizationinalgebra.pdf, « Visualization and Symmetry », section 4, problème 7 (sans corrigé dans la source)"
  url: "https://mathcircles.org/activity/visualization-in-algebra/"
  original_language: "en"
  local_copy: "sources/originals/namc/TDvisualizationinalgebra.pdf"
---

## Statement

On considère le système de deux équations aux deux inconnues $x$ et $y$
$$a\,x + b\,y = c$$
$$d\,x + e\,y = f$$
où $a$, $b$, $c$, $d$, $e$ et $f$ sont six nombres fixés.

Un oracle t'annonce que, lorsque $ae - bd \neq 0$, ce système a une unique solution, et que
$$x = \frac{ce - bf}{ae - bd} .$$

**a)** En regardant simplement la forme du système, et **sans refaire le moindre calcul de résolution**, trouver l'expression de $y$.

**b)** Vérifier la réponse sur le système $2x + 3y = 8$ et $x + y = 3$.

**c)** Démontrer que les deux expressions trouvées sont bien solutions, en les remplaçant dans les deux équations.

## Hints

1. Dans ce système, $x$ et $y$ ne jouent pas le même rôle... ou plutôt, ils joueraient le même rôle si on écrivait les deux équations dans l'autre sens.
2. Réécris les deux équations en mettant le terme en $y$ devant : $by + ax = c$ et $ey + dx = f$. Que reconnais-tu ?
3. C'est le même système, dans lequel l'inconnue de gauche s'appelle maintenant $y$. Quelles lettres ont échangé leur place ?
4. Applique alors la formule de l'oracle avec les lettres échangées, et n'oublie pas de vérifier que la condition $ae - bd \neq 0$ est toujours la même.

## Solution

**a) L'astuce : échanger les rôles.**

Dans le système, l'inconnue $x$ est celle qui est écrite en premier. Réécrivons les deux équations en plaçant $y$ en premier :
$$b\,y + a\,x = c$$
$$e\,y + d\,x = f$$

C'est **exactement le même système**, à ceci près que l'inconnue écrite en premier s'appelle maintenant $y$. Pour retrouver la forme de départ, il suffit d'échanger les noms :
$$x \leftrightarrow y, \qquad a \leftrightarrow b, \qquad d \leftrightarrow e ,$$
les lettres $c$ et $f$ restant à leur place.

Dans la formule de l'oracle, il suffit donc de remplacer chaque lettre par celle qui a pris sa place : $a$ devient $b$, $b$ devient $a$, $d$ devient $e$ et $e$ devient $d$. Le numérateur $ce - bf$ devient $cd - af$, le dénominateur $ae - bd$ devient $bd - ae$, et il vient
$$y = \frac{cd - af}{bd - ae} .$$

On préfère écrire le dénominateur comme celui de $x$ : en multipliant le numérateur et le dénominateur par $-1$,
$$\boxed{\,y = \frac{af - cd}{ae - bd}\,.}$$

Au passage, la condition $bd - ae \neq 0$ est exactement la condition $ae - bd \neq 0$ : rien à ajouter.

**b) La vérification sur un exemple.**

Pour $2x + 3y = 8$ et $x + y = 3$, on a $a = 2$, $b = 3$, $c = 8$, $d = 1$, $e = 1$, $f = 3$. Le dénominateur vaut
$$ae - bd = 2 \times 1 - 3 \times 1 = -1 \neq 0 .$$
Les formules donnent
$$x = \frac{ce - bf}{ae - bd} = \frac{8 \times 1 - 3 \times 3}{-1} = \frac{-1}{-1} = 1, \qquad y = \frac{af - cd}{ae - bd} = \frac{2 \times 3 - 8 \times 1}{-1} = \frac{-2}{-1} = 2 .$$
On vérifie : $2 \times 1 + 3 \times 2 = 8$ et $1 + 2 = 3$. C'est correct.

**c) La démonstration.**

Posons $D = ae - bd$, supposé non nul, puis $x = \dfrac{ce - bf}{D}$ et $y = \dfrac{af - cd}{D}$.

*Première équation :*
$$ax + by = \frac{a(ce - bf) + b(af - cd)}{D} = \frac{ace - abf + abf - bcd}{D} = \frac{ace - bcd}{D} = \frac{c(ae - bd)}{D} = c .$$

*Deuxième équation :*
$$dx + ey = \frac{d(ce - bf) + e(af - cd)}{D} = \frac{cde - bdf + aef - cde}{D} = \frac{aef - bdf}{D} = \frac{f(ae - bd)}{D} = f .$$

Les deux équations sont vérifiées : le couple trouvé est bien la solution du système.

**Ce qu'il faut retenir.** Le calcul de la question c) est pénible, celui de la question a) tient en deux lignes. La différence n'est pas une question d'habileté mais d'observation : le système est **symétrique** si on accepte d'échanger en même temps le nom des inconnues et celui des coefficients. Repérer une symétrie, c'est souvent s'épargner la moitié du travail.

## Going further

1. Que se passe-t-il quand $ae - bd = 0$ ? Donne un exemple où le système n'a aucune solution, et un exemple où il en a une infinité.
2. La même idée s'applique à un système de trois équations à trois inconnues. Écris la formule donnant $y$ à partir de celle donnant $x$.
3. Interprète géométriquement la condition $ae - bd \neq 0$ : que dit-elle des deux droites représentées par les deux équations ?
