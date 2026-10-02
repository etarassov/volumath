---
id: "12612"
title: "Trois restes presque en progression arithmétique"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [division-euclidienne, restes, progression-arithmetique, contre-exemple, multiples]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 14 et 21 février 2021"
  reference: "2021-12_Enonce-Test-3-2020.pdf, exercice 3 (junior) ; corrigé 2021-03_Corrige-Test-3-Web.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Enoncé-Test-3-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Test-3-2020.pdf"
---

## Statement

Soit $k \geqslant 1$ un entier. On travaille avec les entiers de $1$ à $3k$.

- Pour tout entier $n \geqslant 1$, on note $r_k(n)$ l'unique entier compris entre $1$ et $3k$ tel
  que $n - r_k(n)$ soit un multiple de $3k$. C'est le reste de la division de $n$ par $3k$, sauf
  qu'un reste nul est remplacé par $3k$. Par exemple, pour $k = 2$, on a $r_2(7) = 1$ et
  $r_2(12) = 6$.
- On dit qu'un entier $n$ est **petit** si $n \leqslant k$, **moyen** si
  $k + 1 \leqslant n \leqslant 2k$, et **grand** si $n \geqslant 2k + 1$.

Soit $A$ une partie de $\{1, 2, \ldots, 3k\}$ qui ne contient aucune progression arithmétique de
trois termes : pour tous $a$, $b$, $c$ dans $A$, si $a + b = 2c$, alors $a = b = c$.

On suppose qu'il existe deux entiers $x \geqslant 1$ et $d \geqslant 1$ tels que $r_k(x)$,
$r_k(x+d)$ et $r_k(x+2d)$ appartiennent tous les trois à $A$, et tels que
$r_k(x) \neq r_k(x+d)$.

Avec ces seules informations, peut-on affirmer à coup sûr que :

1. au moins l'un des deux entiers $r_k(x)$ et $r_k(x+d)$ est moyen ou grand ?
2. au moins l'un des deux entiers $r_k(x)$ et $r_k(x+d)$ est petit ou grand ?
3. au moins l'un des deux entiers $r_k(x)$ et $r_k(x+d)$ est petit ou moyen ?

## Hints

1. Les trois nombres $x$, $x+d$, $x+2d$ sont en progression arithmétique. Leurs « restes »
   $r_k(x)$, $r_k(x+d)$, $r_k(x+2d)$ ne le sont pas forcément. Pense aux nombres de $1$ à $3k$
   écrits autour d'un cadran d'horloge : ajouter $d$, c'est tourner, et parfois on fait le tour.
2. Pour les questions 1 et 3, essaie $k = 2$, donc les nombres de $1$ à $6$. Cherche deux restes
   tous les deux petits (ou tous les deux grands) pour lesquels le troisième « a fait le tour ».
3. Pour la question 2, suppose que $r_k(x)$ et $r_k(x+d)$ sont tous les deux moyens, et pose
   $t = 2\,r_k(x+d) - r_k(x)$. Encadre $t$, puis montre que $t - (x + 2d)$ est un multiple
   de $3k$.
4. Deux entiers compris entre $1$ et $3k$ dont la différence est un multiple de $3k$ sont égaux,
   car cette différence est strictement comprise entre $-3k$ et $3k$.

## Solution

Notons simplement $r$ au lieu de $r_k$. Un fait servira tout le temps : **si deux entiers $m$ et
$m'$ sont compris entre $1$ et $3k$ et que $m - m'$ est un multiple de $3k$, alors $m = m'$.** En
effet $m - m'$ est strictement compris entre $-3k$ et $3k$, et le seul multiple de $3k$ dans cet
intervalle est $0$.

L'idée générale : $x$, $x+d$ et $x+2d$ sont en progression arithmétique, mais quand on passe aux
restes, on peut « faire le tour » de $3k$, et les restes ne sont alors plus en progression. C'est
la seule façon de satisfaire l'hypothèse sur $A$. Il faut voir quand c'est possible.

**Question 1 : non.** Prenons $k = 2$, de sorte qu'on travaille avec $\{1, 2, 3, 4, 5, 6\}$, où les
petits nombres sont $1$ et $2$. Prenons $A = \{1, 2, 6\}$, puis $x = 2$ et $d = 5$.

- $A$ ne contient pas de progression de trois termes. Si $a + b = 2c$ avec $c = 1$, alors
  $a + b = 2$ impose $a = b = 1$. Avec $c = 2$, $a + b = 4$ impose $a = b = 2$ (car $3$ n'est pas
  dans $A$). Avec $c = 6$, $a + b = 12$ impose $a = b = 6$.
- $r(2) = 2$, $r(7) = 1$ (car $7 - 1 = 6$) et $r(12) = 6$ (car $12 - 6 = 6$). Ces trois nombres sont
  dans $A$, et $r(x) = 2 \neq 1 = r(x+d)$.

Toutes les hypothèses sont vérifiées, et pourtant $r(x) = 2$ et $r(x+d) = 1$ sont tous les deux
petits. On ne peut donc pas affirmer qu'au moins l'un des deux est moyen ou grand.

(Ici, ajouter $d = 5$, c'est comme reculer de $1$ sur le cadran de $6$ heures : on passe de $2$ à
$1$, puis on recule encore de $1$ et on tombe sur « $0$ », qui s'appelle $6$.)

**Question 2 : oui.** Supposons au contraire que $r(x)$ et $r(x+d)$ soient tous les deux moyens,
c'est-à-dire compris entre $k + 1$ et $2k$. Posons
$$t = 2\,r(x+d) - r(x) .$$

*Encadrement de $t$.* On a $2\,r(x+d) \geqslant 2(k+1)$ et $r(x) \leqslant 2k$, donc
$t \geqslant 2(k+1) - 2k = 2$. De même $2\,r(x+d) \leqslant 4k$ et $r(x) \geqslant k + 1$, donc
$t \leqslant 4k - (k+1) = 3k - 1$. Ainsi $t$ est compris entre $1$ et $3k$.

*$t$ est le reste de $x + 2d$.* On écrit
$$t - (x + 2d) = 2[r(x+d) - (x+d)] - [r(x) - x] .$$
Les deux crochets sont des multiples de $3k$ (au signe près), donc $t - (x+2d)$ est un multiple de
$3k$. Comme $r(x+2d) - (x+2d)$ en est un aussi, la différence $t - r(x+2d)$ est un multiple de
$3k$. Ces deux nombres sont entre $1$ et $3k$, donc, par le fait rappelé au début,
$t = r(x+2d)$.

*Contradiction.* On a donc
$$r(x) + r(x+2d) = 2\,r(x+d),$$
avec trois nombres qui sont dans $A$. Par l'hypothèse sur $A$, ils sont égaux, donc
$r(x) = r(x+d)$, ce qui contredit l'hypothèse $r(x) \neq r(x+d)$.

Donc $r(x)$ et $r(x+d)$ ne peuvent pas être tous les deux moyens : au moins l'un des deux est petit
ou grand. La réponse est oui.

**Question 3 : non.** On fait la même chose qu'à la question 1, mais à l'autre bout. Prenons
$k = 2$, $A = \{1, 5, 6\}$, $x = 5$ et $d = 1$. Les grands nombres sont $5$ et $6$.

- $A$ ne contient pas de progression de trois termes : avec $c = 1$ ou $c = 6$ c'est comme
  plus haut, et avec $c = 5$, $a + b = 10$ impose $a = b = 5$ (ni $4$ ni $9$ ne sont dans $A$).
- $r(5) = 5$, $r(6) = 6$ et $r(7) = 1$ sont dans $A$, et $5 \neq 6$.

Toutes les hypothèses sont vérifiées, et $r(x) = 5$ et $r(x+d) = 6$ sont tous les deux grands. On ne
peut donc pas affirmer qu'au moins l'un des deux est petit ou moyen.

**Conclusion.** Non pour la première question, oui pour la deuxième, non pour la troisième.

## Going further

Pourquoi les nombres moyens se comportent-ils différemment ? Si $r(x)$ et $r(x+d)$ sont deux
nombres petits, le nombre $2\,r(x+d) - r(x)$ peut être négatif ou nul, et le vrai reste de $x+2d$
s'obtient en lui ajoutant $3k$. Si ce sont deux grands, ce nombre peut dépasser $3k$. Dans les deux
cas, on « fait le tour », et l'hypothèse sur $A$ ne dit plus rien. Avec deux nombres moyens, au
contraire, $2\,r(x+d) - r(x)$ reste toujours entre $2$ et $3k - 1$ : on ne fait jamais le tour.

Les exemples ci-dessus marchent aussi pour tout $k \geqslant 2$ : dans la question 1, prendre
$x = 2$, $d = 3k - 1$ et $A = \{1, 2, 3k\}$ ; dans la question 3, prendre $x = 3k - 1$, $d = 1$ et
$A = \{1, 3k - 1, 3k\}$. Pour $k = 1$, en revanche, chaque catégorie ne contient qu'un seul nombre : deux restes différents sont alors dans deux catégories différentes, et les trois affirmations deviennent vraies.
