---
id: "8020"
title: "Trois nombres premiers, deux renseignements"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [nombres premiers, parite, somme]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath du 6 juin 2017, énoncés collège, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Soient $m > n > p$ trois nombres premiers tels que

$$m + n + p = 74 \qquad \text{et} \qquad m - n - p = 44.$$

Déterminer $m$, $n$ et $p$.

*(Rappel : un nombre premier est un entier strictement plus grand que $1$ dont les seuls
diviseurs positifs sont $1$ et lui-même.)*

## Hints

1. Ajoute les deux égalités. Que se passe-t-il pour $n$ et $p$ ?
2. Une fois $m$ connu, tu sais combien vaut $n + p$. Ce nombre est-il pair ou impair ?
3. Une somme de deux nombres est impaire seulement si l'un des deux est pair et l'autre
   impair. Quel est le seul nombre premier pair ?

## Solution

**On trouve $m$ en additionnant.** Additionnons les deux égalités membre à membre :

$$(m + n + p) + (m - n - p) = 74 + 44.$$

À gauche, $n$ et $p$ disparaissent et il reste $2m$. Donc $2m = 118$, c'est-à-dire

$$m = 59.$$

Vérifions au passage que $59$ est bien premier : il n'est divisible ni par $2$, ni par $3$, ni
par $5$, ni par $7$, et $7^2 = 49 < 59 < 64 = 8^2$, donc il suffisait de tester ces
diviseurs. $59$ est premier.

**On en déduit la somme $n + p$.** En remplaçant dans la première égalité :

$$59 + n + p = 74, \qquad \text{donc} \qquad n + p = 15.$$

**La parité tranche.** Le nombre $15$ est impair. Or la somme de deux nombres impairs est
paire, et la somme de deux nombres pairs est paire aussi. Pour que $n + p$ soit impair, il
faut donc que l'un des deux nombres soit pair et l'autre impair.

Mais $n$ et $p$ sont premiers, et le seul nombre premier pair est $2$ : tout autre nombre pair
est divisible par $2$ sans lui être égal, donc n'est pas premier.

Comme $n > p$, c'est le plus petit, $p$, qui vaut $2$. Il reste

$$n = 15 - 2 = 13,$$

et $13$ est bien premier.

**Vérification.** On a bien $59 > 13 > 2$, puis $59 + 13 + 2 = 74$ et $59 - 13 - 2 = 44$.

**La réponse est $m = 59$, $n = 13$, $p = 2$.**

## Going further

L'argument « une somme impaire de deux nombres premiers oblige l'un d'eux à valoir $2$ »
revient très souvent. Par exemple, il montre tout de suite que les seuls nombres premiers
$q$ tels que $q + 2$ et $q + 4$ soient tous les deux premiers sont donnés par $q = 3$ : parmi
trois nombres qui vont de $3$ en $3$, l'un au moins est un multiple de $3$.
