---
id: "8168"
title: "Une équation fonctionnelle qui cache une translation"
grade: 12
theme: algebra
difficulty: 3
duration_min: 30
tags: [equation-fonctionnelle, changement-de-fonction, substitution]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 3, exercice 97 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$x^2 + 2f(xy) + y^2 = f\left(x^2\right) + 2xy + f\left(y^2\right) .$$

## Hints

1. Regroupe les termes qui ne contiennent pas $f$ : à gauche $x^2+y^2$, à droite $2xy$. Que reconnais-tu ?
2. L'identité $x^2 - 2xy + y^2 = (x-y)^2$ suggère que la fonction $x \mapsto x$ joue un rôle particulier. Essaie de poser $g(t) = f(t) - t$ et récris l'équation avec $g$.
3. Tu dois obtenir $2g(xy) = g\left(x^2\right) + g\left(y^2\right)$ pour tous $x$ et $y$. Une équation bien plus simple.
4. Choisis $y = 0$.
5. Une fois $g$ connue sur les nombres positifs, reviens à l'équation générale : $xy$ peut valoir n'importe quel réel.

## Solution

**Changement de fonction.**

Posons $g(t) = f(t) - t$, c'est-à-dire $f(t) = g(t) + t$. Remplaçons dans l'équation.

À gauche :

$$x^2 + 2f(xy) + y^2 = x^2 + y^2 + 2g(xy) + 2xy .$$

À droite :

$$f\left(x^2\right) + 2xy + f\left(y^2\right) = g\left(x^2\right) + x^2 + 2xy + g\left(y^2\right) + y^2 .$$

Les termes $x^2$, $y^2$ et $2xy$ apparaissent des deux côtés et se simplifient. Il reste, pour tous réels $x$ et $y$,

$$(\star) \qquad 2\,g(xy) = g\left(x^2\right) + g\left(y^2\right) .$$

**Première substitution : $y = 0$.**

Alors $xy = 0$ et $y^2 = 0$, donc $(\star)$ devient

$$2g(0) = g\left(x^2\right) + g(0), \qquad \text{c'est-à-dire} \qquad g\left(x^2\right) = g(0) \quad \text{pour tout réel } x .$$

Comme $x^2$ parcourt tous les réels positifs ou nuls, la fonction $g$ est **constante sur $[0\,;\,+\infty[$**, égale à $c := g(0)$.

**Deuxième substitution : tout réel est un produit.**

Reprenons $(\star)$ : le membre de droite vaut maintenant $c + c = 2c$ quels que soient $x$ et $y$. Donc

$$g(xy) = c \qquad \text{pour tous réels } x, y .$$

Or tout réel $t$ s'écrit $t = t \times 1$, donc en prenant $x = t$ et $y = 1$ on obtient $g(t) = c$ pour **tout** réel $t$.

**Réciproque.**

Donc $f(t) = t + c$. Vérifions que ces fonctions conviennent, pour n'importe quelle constante réelle $c$ :

$$x^2 + 2f(xy) + y^2 = x^2 + 2(xy + c) + y^2 = x^2 + y^2 + 2xy + 2c ,$$

$$f\left(x^2\right) + 2xy + f\left(y^2\right) = \left(x^2 + c\right) + 2xy + \left(y^2 + c\right) = x^2 + y^2 + 2xy + 2c .$$

Les deux membres sont égaux.

$$\boxed{\ \text{Les solutions sont exactement les fonctions } f(x) = x + c,\ c \in \mathbb{R}.\ }$$

## Going further

Le changement $g(t) = f(t) - t$ est une technique standard : quand on soupçonne qu'une fonction particulière est solution, on la retranche et l'équation devient souvent beaucoup plus simple. Ici, on passe d'une équation mêlant $x^2$, $y^2$, $xy$ et $f$ à la relation limpide $2g(xy) = g(x^2) + g(y^2)$.

Notez qu'aucune hypothèse de continuité n'a été nécessaire : une seule substitution bien choisie, $y = 0$, suffit à tout figer.
