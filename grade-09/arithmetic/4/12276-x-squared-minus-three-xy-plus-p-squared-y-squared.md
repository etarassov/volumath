---
id: "12276"
title: "x² − 3xy + p²y² = 12p"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [equation diophantienne, nombres premiers, carres, identite remarquable, encadrement, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de mars 2017"
  reference: "2017-10_ofm-2016-2017-test-mars.pdf, test du 22 mars 2017, exercice 4 (exercice commun aux groupes A et B) ; pas de corrigé publié, solution rédigée pour cette base et vérifiée par ordinateur pour tous les nombres premiers p < 400"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-mars.pdf"
---

## Statement

Trouver tous les triplets $(x, y, p)$ d'entiers naturels, où $p$ est un nombre premier, tels que
$$x^2 - 3xy + p^2 y^2 = 12p.$$

Les entiers naturels sont $0, 1, 2, 3, \ldots$

## Hints

1. Fais apparaître un carré. Multiplie l'équation par $4$, et compare $4x^2 - 12xy$ avec $(2x - 3y)^2$.
2. Tu dois obtenir $(2x - 3y)^2 + (4p^2 - 9)\,y^2 = 48p$. Traite à part le cas $y = 0$.
3. Si $y \geqslant 1$, le nombre $(4p^2 - 9)\,y^2$ ne peut pas dépasser $48p$. Qu'est-ce que cela dit de $p$ ?
4. Il ne reste que quelques nombres premiers $p$, et pour chacun, très peu de valeurs de $y$. Pour chaque cas, regarde si $48p - (4p^2 - 9)\,y^2$ est un carré.

## Solution

**Étape 1. On fait apparaître un carré.**

On multiplie l'équation par $4$ : $4x^2 - 12xy + 4p^2y^2 = 48p$. Or
$$(2x - 3y)^2 = 4x^2 - 12xy + 9y^2, \qquad \text{donc} \qquad 4x^2 - 12xy = (2x - 3y)^2 - 9y^2.$$
L'équation est donc équivalente à
$$(2x - 3y)^2 + (4p^2 - 9)\,y^2 = 48p. \qquad (1)$$
Comme $p \geqslant 2$, on a $4p^2 - 9 \geqslant 16 - 9 = 7 > 0$.

**Étape 2. Le cas $y = 0$.**

L'équation de départ devient $x^2 = 12p$.

- Le nombre $x^2$ est pair, donc $x$ est pair, car le carré d'un nombre impair est impair. On écrit $x = 2u$, et l'on obtient $4u^2 = 12p$, soit $u^2 = 3p$.
- Si $u$ n'était pas un multiple de $3$, on aurait $u = 3k + 1$ ou $u = 3k + 2$, et alors $u^2 = 9k^2 + 6k + 1$ ou $u^2 = 9k^2 + 12k + 4 = 3(3k^2 + 4k + 1) + 1$. Dans les deux cas, $u^2$ aurait pour reste $1$ dans la division par $3$, alors que $u^2 = 3p$ est un multiple de $3$. Donc $u = 3k$ pour un entier $k$.
- Alors $9k^2 = 3p$, soit $p = 3k^2$. Le nombre $p$ est donc un multiple de $3$. Or les seuls diviseurs du nombre premier $p$ sont $1$ et $p$, donc $p = 3$. Il vient $k^2 = 1$, puis $k = 1$, $u = 3$ et $x = 6$.

Réciproquement, $(6, 0, 3)$ convient : $36 = 12 \times 3$.

**Étape 3. Si $y \geqslant 1$, alors $p \leqslant 11$.**

Si $y \geqslant 1$, alors $y^2 \geqslant 1$. Dans $(1)$, le carré $(2x - 3y)^2$ est positif ou nul, donc
$$4p^2 - 9 \leqslant (4p^2 - 9)\,y^2 \leqslant 48p.$$
Or, si $p \geqslant 13$, alors $4p^2 - 48p - 9 = 4p\,(p - 12) - 9 \geqslant 4 \times 13 \times 1 - 9 = 43 > 0$, c'est-à-dire $4p^2 - 9 > 48p$. C'est impossible. Donc $p$ est l'un des nombres premiers $2$, $3$, $5$, $7$, $11$.

**Étape 4. On examine ces cinq nombres premiers.**

Pour chaque $p$, l'égalité $(1)$ dit que $48p - (4p^2 - 9)\,y^2$ doit être le carré $(2x - 3y)^2$. En particulier, ce nombre doit être positif ou nul, ce qui limite $y$.

| $p$ | $4p^2 - 9$ | $48p$ | valeurs de $y$ | $48p - (4p^2 - 9)\,y^2$ |
|---|---|---|---|---|
| $2$ | $7$ | $96$ | $1$, $2$, $3$ | $89$, $68$, $33$ |
| $3$ | $27$ | $144$ | $1$, $2$ | $117$, $36$ |
| $5$ | $91$ | $240$ | $1$ | $149$ |
| $7$ | $187$ | $336$ | $1$ | $149$ |
| $11$ | $475$ | $528$ | $1$ | $53$ |

Les carrés jusqu'à $150$ sont $0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144$. Le seul nombre de la dernière colonne qui en fasse partie est $36$, obtenu pour $p = 3$ et $y = 2$.

Dans ce cas, $(2x - 6)^2 = 36$, donc $2x - 6 = 6$ ou $2x - 6 = -6$, c'est-à-dire $x = 6$ ou $x = 0$.

Réciproquement, pour $p = 3$ et $y = 2$, on a $p^2y^2 = 36 = 12p$ :

- avec $x = 6$ : $36 - 36 + 36 = 36$ ;
- avec $x = 0$ : $0 - 0 + 36 = 36$.

**Conclusion.** Les triplets cherchés sont
$$(x, y, p) = (6, 0, 3), \qquad (6, 2, 3), \qquad (0, 2, 3).$$

## Going further

1. Montre que, pour tout nombre premier $p$ et pour tous réels $x$ et $y$, le nombre $x^2 - 3xy + p^2y^2$ est positif ou nul.
2. Que deviennent les solutions si l'on autorise $x$ et $y$ à être des entiers négatifs ?
