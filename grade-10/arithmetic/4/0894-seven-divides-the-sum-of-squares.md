---
id: "0894"
title: "Sept divise la somme des carrés"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [restes, divisibilite, carres, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 8, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

$a$, $b$ et $c$ sont trois entiers tels que $7$ divise $a^2 + b^2 + c^2$.

Montrer que $7$ divise alors $a^4 + b^4 + c^4$.

## Hints

1. Tout se joue sur les restes dans la division par $7$. Commence par te convaincre que le reste d'un produit ne dépend que des restes des facteurs.
2. Dresse la table des restes de $r^2$ pour $r = 0, 1, \ldots, 6$. Combien de valeurs différentes obtiens-tu ?
3. Les restes de $a^2$, $b^2$, $c^2$ appartiennent donc à un tout petit ensemble. Leur somme est comprise entre quelles valeurs ? Quels multiples de $7$ peut-elle valoir ?
4. Il ne devrait rester que deux cas à examiner. Dans chacun, calcule les restes de $a^4$, qui est le carré de $a^2$.

## Solution

**L'idée : un carré ne laisse que quatre restes possibles dans la division par $7$, et cela ne laisse presque aucune possibilité.**

Rappelons d'abord le principe de base : si l'on remplace un entier par son reste dans la division par $7$, le reste d'une somme ou d'un produit ne change pas. Il suffit donc de travailler avec les restes.

**Étape 1. Les restes possibles d'un carré.** Écrivons un entier sous la forme $7q + r$ avec $0 \leqslant r \leqslant 6$. Son carré vaut
$$(7q+r)^2 = 7\left(7q^2 + 2qr\right) + r^2,$$
donc il laisse le même reste que $r^2$. Il suffit d'examiner les sept valeurs de $r$ :

| $r$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 |
|---|---|---|---|---|---|---|---|
| $r^2$ | 0 | 1 | 4 | 9 | 16 | 25 | 36 |
| reste de $r^2$ par 7 | 0 | 1 | 4 | 2 | 2 | 4 | 1 |

**Le carré d'un entier laisse donc toujours l'un des quatre restes $0$, $1$, $2$, $4$.**

De la même façon, $a^4 = (a^2)^2$ laisse le même reste que le carré du reste de $a^2$ :

| reste de $a^2$ | 0 | 1 | 2 | 4 |
|---|---|---|---|---|
| son carré | 0 | 1 | 4 | 16 |
| reste de $a^4$ par 7 | 0 | 1 | 4 | 2 |

**Étape 2. Quels restes peuvent avoir $a^2$, $b^2$, $c^2$ ensemble ?** Notons $u$, $v$, $w$ les restes de $a^2$, $b^2$, $c^2$ : chacun vaut $0$, $1$, $2$ ou $4$. L'hypothèse dit que $u + v + w$ est un multiple de $7$. Or

$$0 \leqslant u+v+w \leqslant 4+4+4 = 12,$$

donc $u+v+w = 0$ ou $u+v+w = 7$.

- **$u+v+w = 0$ :** comme les trois nombres sont positifs ou nuls, ils sont tous nuls : $u = v = w = 0$.
- **$u+v+w = 7$ :** passons en revue les possibilités. Si l'un des trois vaut $0$, il faut que les deux autres aient pour somme $7$, or les sommes possibles de deux valeurs de $\{0,1,2,4\}$ sont $0$, $1$, $2$, $3$, $4$, $5$, $6$ et $8$ : jamais $7$. Aucun des trois n'est donc nul. Il reste à tester les choix dans $\{1, 2, 4\}$ :
$$1+1+1 = 3, \quad 1+1+2 = 4, \quad 1+1+4 = 6, \quad 1+2+2 = 5, \quad \mathbf{1+2+4 = 7},$$
$$2+2+2 = 6, \quad 2+2+4 = 8, \quad 1+4+4 = 9, \quad 2+4+4 = 10, \quad 4+4+4 = 12.$$
La seule possibilité est donc $\{u, v, w\} = \{1, 2, 4\}$, dans un certain ordre.

**Étape 3. On conclut dans chacun des deux cas.**

- **Premier cas : $u = v = w = 0$.** D'après la seconde table, les restes de $a^4$, $b^4$, $c^4$ valent alors tous $0$, donc $a^4+b^4+c^4$ a pour reste $0$ : il est divisible par $7$.
- **Second cas : les restes de $a^2$, $b^2$, $c^2$ sont $1$, $2$ et $4$ dans un certain ordre.** D'après la seconde table, les restes de $a^4$, $b^4$, $c^4$ sont alors $1$, $4$ et $2$ dans un certain ordre. Leur somme laisse le reste de
$$1 + 4 + 2 = 7,$$
c'est-à-dire le reste $0$ : la somme $a^4+b^4+c^4$ est divisible par $7$.

**Conclusion : dans tous les cas, si $7$ divise $a^2+b^2+c^2$, alors $7$ divise $a^4+b^4+c^4$.**

## Going further

Le premier cas dit quelque chose de plus fort qu'il n'y paraît. Si $7$ divise $a^2+b^2+c^2$ et que l'un des trois nombres, disons $a$, est divisible par $7$, alors on est forcément dans le cas $u=v=w=0$ (puisque $\{1,2,4\}$ ne contient pas $0$), donc $b$ et $c$ sont eux aussi divisibles par $7$. Autrement dit : **dès que $7$ divise $a^2+b^2+c^2$ et l'un des trois nombres, il divise les trois.**
