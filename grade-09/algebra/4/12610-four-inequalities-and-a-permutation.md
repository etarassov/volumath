---
id: "12610"
title: "Quatre inégalités et une permutation"
grade: 9
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, permutation, extremal, minimum]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 14 et 21 février 2021"
  reference: "2021-12_Enonce-Test-3-2020.pdf, exercice 1 (junior) ; corrigé 2021-03_Corrige-Test-3-Web.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Enoncé-Test-3-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Test-3-2020.pdf"
---

## Statement

Soit $a$, $b$, $c$ et $d$ quatre nombres réels. On suppose qu'on peut ranger ces quatre nombres
dans un certain ordre, que l'on note $(x, y, z, t)$, de sorte que

$$x \leqslant 2a - b, \qquad y \leqslant 2b - c, \qquad z \leqslant 2c - d \qquad \text{et} \qquad t \leqslant 2d - a .$$

Autrement dit, $x$, $y$, $z$ et $t$ sont les nombres $a$, $b$, $c$ et $d$, chacun pris une fois,
mais pas forcément dans cet ordre.

Démontrer que $a = b = c = d$.

## Hints

1. Pense au plus petit des quatre nombres $a$, $b$, $c$, $d$. Appelle-le $u$.
2. Lis les quatre membres de droite : chacun s'écrit « deux fois une lettre, moins la lettre
   suivante », en tournant dans l'ordre $a \to b \to c \to d \to a$. Appelle $v$ la lettre qui
   suit $u$. L'expression $2u - v$ est l'un des quatre membres de droite.
3. Le nombre écrit à gauche de cette inégalité est l'un des quatre nombres, donc il est au moins
   égal à $u$. Qu'en déduis-tu pour $v$ ?
4. Une fois que tu sais que $v = u$, recommence avec la lettre qui suit $v$.

## Solution

**La forme des inégalités.** Faisons tourner les lettres dans l'ordre
$$a \to b \to c \to d \to a .$$
Chacun des quatre membres de droite s'écrit alors « deux fois une lettre, moins la lettre qui la
suit » : $2a - b$, $2b - c$, $2c - d$ et $2d - a$. Chaque lettre apparaît une fois en tête d'un
de ces membres de droite.

De plus, le membre de gauche de chaque inégalité est l'un des nombres $a$, $b$, $c$, $d$.

**Le plus petit nombre.** Notons $u$ le plus petit des quatre nombres $a$, $b$, $c$, $d$ (s'il y
en a plusieurs égaux, on en prend un), et $v$ la lettre qui suit $u$ dans l'ordre ci-dessus.
L'expression $2u - v$ est l'un des membres de droite. Dans l'inégalité correspondante, le membre de
gauche est l'un des quatre nombres, appelons-le $w$. On a donc
$$w \leqslant 2u - v .$$
Mais $w$ est l'un des quatre nombres, donc $w \geqslant u$, car $u$ est le plus petit. Ainsi
$$u \leqslant w \leqslant 2u - v, \qquad \text{donc} \qquad v \leqslant u .$$
Comme $v$ est lui aussi l'un des quatre nombres, on a aussi $v \geqslant u$. Finalement $v = u$.

**On fait le tour.** La lettre $v$ est donc, elle aussi, égale au plus petit des quatre nombres.
On peut refaire exactement le même raisonnement en partant de $v$ à la place de $u$ : la lettre
qui suit $v$ est égale à $v$, donc à $u$. Puis la lettre suivante est égale à $u$, et ainsi de
suite. En trois étapes, on a parcouru les quatre lettres $a$, $b$, $c$, $d$, et elles sont toutes
égales à $u$.

**Conclusion.** On a bien $a = b = c = d$.

**Un piège à éviter.** Il est tentant d'écrire « supposons, sans perte de généralité, que $a$ est
le plus petit ». Ce n'est pas justifié ici : les inégalités ne restent pas les mêmes quand on
échange deux lettres au hasard, par exemple $a$ et $b$. Elles ne sont pas changées seulement
quand on fait tourner les lettres dans l'ordre $a \to b \to c \to d \to a$. Le raisonnement
ci-dessus évite ce problème en appelant $u$ le plus petit nombre et $v$ celui qui le suit, quels
qu'ils soient.

## Going further

Une autre méthode, plus calculatoire. En additionnant les quatre inégalités, on obtient
$$x + y + z + t \leqslant (2a - b) + (2b - c) + (2c - d) + (2d - a) = a + b + c + d .$$
Or $x + y + z + t = a + b + c + d$, puisque ce sont les mêmes nombres. La somme des quatre
inégalités est donc une égalité, ce qui n'est possible que si chacune est une égalité :
$x = 2a - b$, $y = 2b - c$, $z = 2c - d$ et $t = 2d - a$.

Comme $x$, $y$, $z$, $t$ sont les mêmes nombres que $a$, $b$, $c$, $d$, la somme de leurs carrés est
la même. En notant $S = a^2 + b^2 + c^2 + d^2$, on développe $(2a - b)^2 = 4a^2 - 4ab + b^2$ et les
trois autres, ce qui donne
$$S = x^2 + y^2 + z^2 + t^2 = 5S - 4(ab + bc + cd + da),$$
soit $4S - 4(ab + bc + cd + da) = 0$. On reconnaît alors
$$(a-b)^2 + (b-c)^2 + (c-d)^2 + (d-a)^2 = 2S - 2(ab + bc + cd + da) = 0 .$$
Une somme de carrés nulle impose que chaque carré soit nul, d'où $a = b = c = d$.
