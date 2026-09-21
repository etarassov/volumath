---
id: "8423"
title: "Les nombres premiers juste en dessous d'un carré"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 12
tags: [nombre-premier, factorisation, identite-remarquable, diviseurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Nombres premiers » (Vladimir Ivanov), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les nombres premiers qui s'écrivent sous la forme

$$a^2 - 1,$$

où $a$ est un entier naturel supérieur ou égal à $2$.

## Hints

1. Fais d'abord la liste pour $a = 2, 3, 4, 5, 6$ : que remarques-tu ?
2. L'expression $a^2 - 1$ est une identité remarquable déguisée. Factorise-la.
3. Un nombre premier a exactement deux diviseurs positifs : $1$ et lui-même. Si $p = u \times v$ avec $u$ et $v$ entiers positifs, que peut valoir le plus petit des deux ?

## Solution

**Étape 1. On factorise.**

Pour tout entier $a$,

$$a^2 - 1 = a^2 - 1^2 = (a-1)(a+1).$$

**Étape 2. On utilise la définition d'un nombre premier.**

Supposons que $a^2 - 1$ soit un nombre premier, notons-le $p$. Comme $a \geqslant 2$, les deux facteurs $a - 1$ et $a + 1$ sont des entiers strictement positifs, et

$$p = (a-1) \times (a+1).$$

Le nombre $a-1$ est donc un diviseur positif de $p$. Or un nombre premier n'a que deux diviseurs positifs, $1$ et $p$ lui-même.

- Si $a - 1 = p$, alors $a + 1 = 1$, donc $a = 0$, ce qui contredit $a \geqslant 2$.
- Il reste donc $a - 1 = 1$, c'est-à-dire $a = 2$.

**Étape 3. On vérifie.**

Pour $a = 2$ :

$$a^2 - 1 = 4 - 1 = 3,$$

et $3$ est bien un nombre premier.

**Réponse :** le seul nombre premier de la forme $a^2 - 1$ est $\boxed{3}$, obtenu pour $a = 2$.

## Going further

On peut vérifier sur les premières valeurs : $a = 3$ donne $8 = 2 \times 4$, $a = 4$ donne $15 = 3 \times 5$, $a = 5$ donne $24 = 4 \times 6$. À chaque fois, on lit directement les deux facteurs $a-1$ et $a+1$.

Le même raisonnement s'applique à toute expression qui se factorise « gratuitement ». Par exemple, $a^3 - 1 = (a-1)(a^2+a+1)$ : le seul nombre premier de cette forme est $7$, obtenu pour $a = 2$.
