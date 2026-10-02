---
id: "8247"
title: "Le général range ses soldats"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [division-euclidienne, restes, multiples]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », première partie, « TD d'arithmétique » (Éva Philippe, Rémi Lesbats), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Un général rassemble ses troupes.

- Quand il les range par groupes de $2$, il reste $1$ soldat qui n'appartient à aucun groupe.
- Quand il les range par groupes de $3$, il reste $2$ soldats.
- Quand il les range par groupes de $5$, il reste $3$ soldats.

S'il range maintenant ses soldats par groupes de $30$, combien en restera-t-il ?

## Hints

1. On ne sait pas combien le général a de soldats, et pourtant la question a une réponse
   unique. C'est le signe que seul le **reste** dans la division par $30$ compte.
2. Appelle $n$ le nombre de soldats et écris la division euclidienne de $n$ par $30$ :
   $n = 30q + r$ avec $0 \le r < 30$.
3. $30$ est un multiple de $2$, de $3$ et de $5$. Que peux-tu alors dire du reste de $r$ dans la
   division par $5$ ? Par $3$ ? Par $2$ ?
4. Il ne reste plus qu'à trouver les nombres entre $0$ et $29$ qui conviennent. Commence par la
   condition la plus rare : celle sur $5$.

## Solution

**Réponse : il restera $23$ soldats.**

**Ce qui compte, c'est le reste dans la division par 30.**

Appelons $n$ le nombre de soldats et écrivons la division euclidienne de $n$ par $30$ :

$$n = 30q + r, \qquad \text{avec} \quad 0 \le r < 30 .$$

Le nombre cherché est exactement $r$.

**Les trois renseignements se transportent sur $r$.**

Le nombre $30q$ est un multiple de $2$, de $3$ et de $5$ à la fois, puisque
$30 = 2 \times 3 \times 5$. Donc :

- $n = 2 \times (15q) + r$ : le reste de $n$ dans la division par $2$ est le même que celui de
  $r$. Comme ce reste vaut $1$, **$r$ est impair**.
- $n = 3 \times (10q) + r$ : de même, **$r$ a pour reste $2$ dans la division par $3$**.
- $n = 5 \times (6q) + r$ : de même, **$r$ a pour reste $3$ dans la division par $5$**.

**On cherche $r$ entre $0$ et $29$.**

Commençons par la dernière condition, la plus sélective. Les entiers de $0$ à $29$ qui laissent
le reste $3$ dans la division par $5$ sont

$$3, \quad 8, \quad 13, \quad 18, \quad 23, \quad 28 .$$

Gardons ceux qui sont impairs :

$$3, \quad 13, \quad 23 .$$

Enfin, lequel laisse le reste $2$ dans la division par $3$ ?

| $r$ | $r$ divisé par $3$ | reste |
|---|---|---|
| $3$ | $3 = 3 \times 1 + 0$ | $0$ |
| $13$ | $13 = 3 \times 4 + 1$ | $1$ |
| $23$ | $23 = 3 \times 7 + 2$ | $2$ |

Seul $r = 23$ convient.

**Vérification.**

$23 = 2 \times 11 + 1$, $\ 23 = 3 \times 7 + 2$, $\ 23 = 5 \times 4 + 3$. Les trois
renseignements de l'énoncé sont bien retrouvés.

**Il restera donc $23$ soldats.**

## Going further

1. Le général pourrait-il avoir $53$ soldats ? Et $83$ ? Et $113$ ? Quelle est la forme générale
   du nombre de soldats ?
2. Pourquoi la question aurait-elle **plusieurs** réponses possibles si on demandait le reste
   dans la division par $60$ au lieu de $30$ ?
3. Reprendre l'exercice avec : reste $1$ par groupes de $2$, reste $1$ par groupes de $3$, reste
   $4$ par groupes de $5$.
