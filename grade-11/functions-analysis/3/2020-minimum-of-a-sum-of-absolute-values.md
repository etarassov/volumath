---
id: "2020"
title: "Le minimum d'une somme de valeurs absolues"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 25
tags: [valeur-absolue, minimum, distance, fonction-affine-par-morceaux]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Ramsey Theory (Oleg Gleizer)"
  reference: "Handout-1257-1240.pdf, exercice 1 (échauffement)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1257-1240.pdf"
---

## Statement

Trouver la valeur minimale de la fonction

$$f(x) = |x| + |x - 1| + |x - 2| + |x - 3| + |x - 4| + |x - 5| ,$$

et dire pour quelles valeurs de $x$ elle est atteinte.

## Hints

1. Donnez à $|x - a|$ sa signification géométrique : c'est la distance entre le point d'abscisse $x$ et le point d'abscisse $a$ sur une droite graduée.
2. La question devient : où placer un point pour que la somme de ses distances à $0, 1, 2, 3, 4, 5$ soit la plus petite ?
3. Regroupez les six points par paires : $0$ avec $5$, $1$ avec $4$, $2$ avec $3$. Pour une paire, où faut-il se placer ?
4. Pour deux points $a < b$, la somme $|x-a| + |x-b|$ vaut exactement $b - a$ si $x$ est entre $a$ et $b$, et davantage sinon.

## Solution

**L'idée : regrouper par paires.**

Le nombre $|x - a|$ est la distance entre $x$ et $a$ sur la droite graduée. Regroupons les six points deux par deux, du plus extérieur au plus intérieur :

$$f(x) = \underbrace{\big(|x| + |x-5|\big)}_{\text{paire } 0 \text{ et } 5} + \underbrace{\big(|x-1| + |x-4|\big)}_{\text{paire } 1 \text{ et } 4} + \underbrace{\big(|x-2| + |x-3|\big)}_{\text{paire } 2 \text{ et } 3}.$$

**Le lemme sur une paire.** Soient $a < b$ deux réels. Alors pour tout $x$,

$$|x - a| + |x - b| \geqslant b - a ,$$

avec égalité si et seulement si $a \leqslant x \leqslant b$.

*Démonstration.* Si $a \leqslant x \leqslant b$, alors $|x-a| = x - a$ et $|x-b| = b - x$, donc la somme vaut exactement $b - a$.
Si $x < a$, la somme vaut $(a - x) + (b - x) = (b-a) + 2(a-x) > b - a$.
Si $x > b$, la somme vaut $(x - a) + (x - b) = (b-a) + 2(x-b) > b - a$.

**Application aux trois paires.**

- paire $0$ et $5$ : $|x| + |x-5| \geqslant 5$, avec égalité si $0 \leqslant x \leqslant 5$ ;
- paire $1$ et $4$ : $|x-1| + |x-4| \geqslant 3$, avec égalité si $1 \leqslant x \leqslant 4$ ;
- paire $2$ et $3$ : $|x-2| + |x-3| \geqslant 1$, avec égalité si $2 \leqslant x \leqslant 3$.

En additionnant :

$$f(x) \geqslant 5 + 3 + 1 = 9 .$$

**Quand l'égalité est-elle atteinte ?** Il faut que les trois égalités aient lieu en même temps, donc que $x$ appartienne aux trois intervalles $[0\,;5]$, $[1\,;4]$ et $[2\,;3]$ à la fois. Leur intersection est

$$[2\,;3].$$

Et pour tout $x$ de $[2\,;3]$, on a bien $f(x) = 9$. Par exemple $f(2) = 2 + 1 + 0 + 1 + 2 + 3 = 9$ et $f(\text{2,5}) = \text{2,5} + \text{1,5} + \text{0,5} + \text{0,5} + \text{1,5} + \text{2,5} = 9$.

**Conclusion.** Le minimum de $f$ vaut $9$, et il est atteint pour **tout** $x$ de l'intervalle $[2\,;3]$.

## Going further

La méthode est générale. Avec un nombre **pair** de points, on les apparie du plus extérieur au plus intérieur, et le minimum est atteint sur tout l'intervalle entre les deux points centraux. Avec un nombre **impair** de points, il reste un point tout seul au milieu, et le minimum est atteint en ce seul point.

Dans les deux cas, on retrouve la **médiane** de la série de nombres. C'est le pendant du résultat sur les carrés des écarts : la somme des carrés est minimale à la moyenne, la somme des valeurs absolues est minimale à la médiane.
