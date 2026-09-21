---
id: "8433"
title: "Trois carrés plus un, égal à une puissance de 2"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruence, carres, puissance-de-deux, equation-en-entiers, petits-cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Modulos & factorisation » (Théo Lenoir et Angela Xue), exercice 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les quadruplets $(x, y, z, n)$ d'entiers positifs ou nuls tels que

$$x^2 + y^2 + z^2 + 1 = 2^n.$$

## Hints

1. Commence par les toutes petites valeurs de $n$ : $n = 0$, $n = 1$, $n = 2$. Combien de quadruplets trouves-tu ?
2. Pour éliminer les grandes valeurs de $n$, cherche un modulo. Modulo $4$ ne suffira pas : essaie modulo $8$.
3. Quels sont les restes possibles d'un carré modulo $8$ ? Il n'y en a que trois. Dresse le tableau pour $x$ de $0$ à $7$.
4. Additionne trois de ces restes de toutes les façons possibles, ajoute $1$, et regarde si tu peux tomber sur $0$ modulo $8$.

## Solution

### Étape 1. Les petites valeurs de $n$

- **$n = 0$ :** $x^2+y^2+z^2 = 0$, donc $x = y = z = 0$. Un quadruplet : $(0,0,0,0)$.
- **$n = 1$ :** $x^2+y^2+z^2 = 1$. L'un des trois carrés vaut $1$ et les deux autres $0$. Trois quadruplets : $(1,0,0,1)$, $(0,1,0,1)$, $(0,0,1,1)$.
- **$n = 2$ :** $x^2+y^2+z^2 = 3$. La seule possibilité est $1+1+1$. Un quadruplet : $(1,1,1,2)$.

Cela fait déjà cinq solutions.

### Étape 2. Les carrés modulo 8

Calculons les restes de $x^2$ modulo $8$ selon le reste de $x$ :

| $x \bmod 8$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|---|---|---|---|
| $x^2$ | $0$ | $1$ | $4$ | $9$ | $16$ | $25$ | $36$ | $49$ |
| $x^2 \bmod 8$ | $0$ | $1$ | $4$ | $1$ | $0$ | $1$ | $4$ | $1$ |

> **Un carré est toujours congru à $0$, à $1$ ou à $4$ modulo $8$.**

### Étape 3. Il n'y a pas de solution pour $n \geqslant 3$

Supposons $n \geqslant 3$. Alors $2^n$ est un multiple de $8$, donc

$$x^2 + y^2 + z^2 + 1 \equiv 0 \pmod 8, \qquad \text{c'est-à-dire} \qquad x^2 + y^2 + z^2 \equiv 7 \pmod 8.$$

Or chacun des trois carrés est congru à $0$, $1$ ou $4$. Les sommes possibles de trois tels nombres sont

$$0,\; 1,\; 2,\; 3,\; 4,\; 5,\; 6,\; 8,\; 9,\; 12,$$

qui donnent modulo $8$ les restes

$$0,\; 1,\; 2,\; 3,\; 4,\; 5,\; 6,\; 0,\; 1,\; 4.$$

Le reste $7$ n'apparaît jamais.

Détaillons cette liste pour ne rien oublier : les trois carrés valent chacun $0$, $1$ ou $4$ modulo $8$, donc leur somme vaut $0+0+0=0$, $0+0+1=1$, $0+1+1=2$, $1+1+1=3$, $0+0+4=4$, $0+1+4=5$, $1+1+4=6$, $0+4+4=8$, $1+4+4=9$ ou $4+4+4=12$. C'est bien la liste ci-dessus.

Il n'y a donc aucune solution avec $n \geqslant 3$.

### Conclusion

Les seuls quadruplets solutions sont

$$\boxed{(0,0,0,0), \quad (1,0,0,1), \quad (0,1,0,1), \quad (0,0,1,1), \quad (1,1,1,2)}.$$

## Going further

Pourquoi modulo $8$ et pas modulo $4$ ? Modulo $4$, les carrés valent $0$ ou $1$, donc une somme de trois carrés peut valoir $0$, $1$, $2$ ou $3$ : tous les restes sont atteints, et rien n'est interdit. Modulo $8$, les carrés n'occupent que trois restes sur huit, et la somme de trois d'entre eux rate exactement le reste $7$. C'est cette rareté qui rend l'argument possible.

Ce fait est un cas particulier d'un beau théorème de Legendre : un entier est somme de trois carrés si et seulement s'il n'est pas de la forme $4^a(8b+7)$. Le reste $7$ modulo $8$ est bien le cas interdit.
