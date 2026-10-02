---
id: "12647"
title: "Des PGCD dans un ensemble infini"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [pgcd, principe-des-tiroirs, ensemble-infini, raisonnement-par-l-absurde, diviseurs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 23 et du 24 février 2022"
  reference: "2022-08_Enonce-Web-Test-3.pdf, exercice 5 (senior) ; corrigé 2022-03_Corrige-Web-Test-3.pdf. Dans la solution alternative du corrigé, « p divise u ∧ v mais pas u ∧ v » doit se lire « p divise u ∧ v mais pas t ∧ u »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/08/Énoncé-Web-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-08_Enonce-Web-Test-3.pdf"
---

## Statement

Soit $S$ un ensemble **infini** d'entiers naturels non nuls. On suppose que $S$ contient quatre entiers $a$, $b$, $c$, $d$, deux à deux distincts, tels que
$$\mathrm{PGCD}(a, b) \neq \mathrm{PGCD}(c, d).$$
Démontrer que $S$ contient trois entiers $x$, $y$, $z$, deux à deux distincts, tels que
$$\mathrm{PGCD}(x, y) = \mathrm{PGCD}(y, z) \neq \mathrm{PGCD}(z, x).$$

## Hints

1. L'hypothèse la plus importante est que $S$ est infini. Avec quel outil peut-on exploiter une infinité d'objets ?
2. Raisonne par l'absurde. Que veut dire « il n'existe pas de tels $x$, $y$, $z$ » ? Montre que, pour trois éléments distincts de $S$, dès que deux des trois PGCD sont égaux, les trois le sont.
3. Pour $x$ dans $S$, le nombre $\mathrm{PGCD}(a, x)$ est un diviseur de $a$ : il ne peut prendre qu'un nombre fini de valeurs. Regarde la liste des quatre nombres $\mathrm{PGCD}(a, x)$, $\mathrm{PGCD}(b, x)$, $\mathrm{PGCD}(c, x)$, $\mathrm{PGCD}(d, x)$.
4. Trouve deux éléments $s \neq t$ de $S$, différents de $a$, $b$, $c$, $d$, qui donnent la même liste. Regarde alors les triplets $(s, t, a)$, puis $(s, a, b)$ et $(s, c, d)$.

## Solution

On note $x \wedge y$ le PGCD de deux entiers $x$ et $y$, pour alléger l'écriture.

**On raisonne par l'absurde.** Supposons qu'il n'existe pas trois éléments $x$, $y$, $z$ de $S$, deux à deux distincts, tels que $x \wedge y = y \wedge z \neq z \wedge x$. Cela veut dire que la propriété suivante est vraie.

> $(\star)$ Si $x$, $y$, $z$ sont trois éléments distincts de $S$ et si $x \wedge y = y \wedge z$, alors aussi $z \wedge x = x \wedge y$.

Autrement dit, parmi les trois PGCD $x \wedge y$, $y \wedge z$, $z \wedge x$, il n'y en a jamais exactement deux égaux : ils sont soit tous égaux, soit tous différents.

**Le principe des tiroirs.** Pour chaque élément $x$ de $S$, on considère la liste de quatre nombres
$$L(x) = (a \wedge x, \; b \wedge x, \; c \wedge x, \; d \wedge x).$$
Le nombre $a \wedge x$ est un diviseur de $a$, et $a$ n'a qu'un nombre fini de diviseurs. Il en va de même pour $b$, $c$ et $d$. La liste $L(x)$ ne peut donc prendre qu'un nombre fini de valeurs différentes.

Or $S$ privé de $a$, $b$, $c$, $d$ est encore infini. On range ses éléments dans des tiroirs selon la valeur de $L(x)$ : une infinité d'éléments dans un nombre fini de tiroirs. Un tiroir contient donc au moins deux éléments. Il existe ainsi deux éléments $s \neq t$ de $S$, tous les deux différents de $a$, $b$, $c$, $d$, tels que $L(s) = L(t)$, c'est-à-dire
$$a \wedge s = a \wedge t, \qquad b \wedge s = b \wedge t, \qquad c \wedge s = c \wedge t, \qquad d \wedge s = d \wedge t.$$

**Tous les PGCD avec $s$ sont égaux.** Appliquons $(\star)$ aux trois éléments distincts $s$, $a$, $t$. On a $s \wedge a = a \wedge t$, donc $t \wedge s = s \wedge a$. De même avec $b$, $c$ et $d$ à la place de $a$. On obtient
$$s \wedge a = s \wedge b = s \wedge c = s \wedge d = s \wedge t.$$
On appelle $g$ cette valeur commune.

**La contradiction.** Appliquons $(\star)$ aux trois éléments distincts $a$, $s$, $b$. On a $a \wedge s = s \wedge b = g$, donc $b \wedge a = g$. De même, avec $c$, $s$, $d$, on obtient $d \wedge c = g$. Ainsi
$$\mathrm{PGCD}(a, b) = g = \mathrm{PGCD}(c, d),$$
ce qui contredit l'hypothèse de l'énoncé.

**Conclusion.** L'hypothèse de départ est fausse : **$S$ contient trois entiers distincts $x$, $y$, $z$ tels que $\mathrm{PGCD}(x, y) = \mathrm{PGCD}(y, z) \neq \mathrm{PGCD}(z, x)$.**

## Going further

- L'hypothèse « $S$ infini » est indispensable. L'ensemble fini $\{2, 3, 5, 30\}$ vérifie $\mathrm{PGCD}(2, 3) = 1 \neq 5 = \mathrm{PGCD}(5, 30)$, mais pour chacun de ses quatre triplets, les trois PGCD sont soit tous égaux, soit tous différents. Vérifie-le.
- Le corrigé présente le problème avec un graphe : les éléments de $S$ sont des points, et on relie deux points par un trait colorié avec la couleur $x \wedge y$. L'hypothèse par l'absurde dit que chaque triangle a une seule couleur ou trois couleurs. On montre alors que tout le graphe n'a qu'une couleur.
- Le corrigé propose aussi une solution plus arithmétique. On divise d'abord tous les éléments de $S$ par leur PGCD commun. Ensuite, soit un élément est premier avec $a$ et $b$, soit un facteur premier $p$ de $ab$ divise une infinité d'éléments de $S$, et l'on applique le principe des tiroirs à ceux-là.
- Le corrigé remarque que les élèves qui se sont concentrés sur $a$, $b$, $c$, $d$ sans utiliser que $S$ est infini n'ont pas avancé. Quand une hypothèse semble surprenante, il faut se demander où elle va servir.
