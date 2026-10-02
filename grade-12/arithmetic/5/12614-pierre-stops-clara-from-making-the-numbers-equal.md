---
id: "12614"
title: "Pierre empêche Clara d'égaliser"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [jeu, strategie-gagnante, congruences, nombres-premiers, point-fixe, invariant, factorielle, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 14 et 21 février 2021"
  reference: "2021-12_Enonce-Test-3-2020.pdf, exercice 5 (senior) ; corrigé 2021-03_Corrige-Test-3-Web.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Enoncé-Test-3-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Test-3-2020.pdf"
---

## Statement

Pierre et Clara jouent au jeu suivant.

- D'abord, Clara choisit un entier $c$.
- Ensuite, Pierre choisit un nombre premier $p \geqslant c$, et il écrit deux entiers au tableau.
- Puis Clara a le droit de répéter autant qu'elle veut l'opération suivante : elle choisit l'un
  des deux nombres écrits au tableau, disons $n$, l'efface, et écrit à sa place un entier $m$ tel
  que $p$ divise
  $$(n^2 - m + 1)(m^2 - n + 1) .$$

Clara gagne si, après un nombre fini d'opérations, les deux entiers écrits au tableau sont égaux.
Sinon, c'est Pierre qui gagne.

Démontrer que Pierre peut empêcher Clara de gagner, quel que soit l'entier $c$ qu'elle choisit.

## Hints

1. Comme $p$ est premier, la condition sur $m$ veut dire : $m \equiv n^2 + 1 \pmod p$ ou
   $n \equiv m^2 + 1 \pmod p$. Pose $f(x) = x^2 + 1$.
2. Que se passe-t-il si Pierre écrit un nombre $a$ tel que $f(a) \equiv a \pmod p$ ? Essaie avec
   $p = 7$ : quels sont les « points fixes » de $f$ modulo $7$ ?
3. Pour un tel point fixe $a$, regarde l'ensemble des entiers $u$ dont l'un des itérés
   $u, f(u), f(f(u)), \ldots$ est congru à $a$ modulo $p$. Montre qu'une opération de Clara ne fait
   jamais sortir un nombre de cet ensemble.
4. Il suffit donc que Pierre trouve un premier $p \geqslant c$ et deux points fixes $a$ et $b$ de $f$
   qui ne sont pas congrus modulo $p$. Un point fixe est une solution de
   $a^2 - a + 1 \equiv 0 \pmod p$. Si $a$ en est une, $1 - a$ en est une autre.
5. Pour avoir $p$ grand, prends $N = M!$ avec $M$ assez grand, et un facteur premier $p$ de
   $N^2 - N + 1$. Pourquoi $p$ est-il plus grand que $M$ ?

## Solution

On utilise les congruences modulo un nombre premier $p$, ainsi que le **lemme d'Euclide** : si un
nombre premier divise un produit de deux entiers, il divise l'un des deux.

**Traduire la règle du jeu.** Posons $f(x) = x^2 + 1$. Quand Clara remplace $n$ par $m$, le
nombre premier $p$ divise le produit $(n^2 + 1 - m)(m^2 + 1 - n)$, donc il divise l'un des deux
facteurs, par le lemme d'Euclide. Ainsi :
$$m \equiv f(n) \pmod p \qquad \text{ou} \qquad n \equiv f(m) \pmod p .$$
Rappelons aussi que si $x \equiv y \pmod p$, alors $f(x) \equiv f(y) \pmod p$, puisque les
congruences se multiplient et s'additionnent.

Notons $f^k$ la fonction $f$ appliquée $k$ fois (avec $f^0(u) = u$).

**Étape 1 : un point fixe crée un « bassin » dont on ne sort pas.** Supposons que $a$ soit un
entier tel que $f(a) \equiv a \pmod p$. On dit que $a$ est un *point fixe* de $f$ modulo $p$.
Alors $f^k(a) \equiv a \pmod p$ pour tout $k$.

Appelons **bassin** de $a$ l'ensemble des entiers $u$ pour lesquels il existe $k \geqslant 0$ tel
que $f^k(u) \equiv a \pmod p$. Une fois arrivé en $a$ on y reste, donc on a alors aussi
$f^j(u) \equiv a$ pour tout $j \geqslant k$.

*Une opération de Clara ne fait pas sortir un nombre du bassin.* Soit $n$ dans le bassin de $a$,
avec $f^k(n) \equiv a$, et soit $m$ le nombre que Clara écrit à sa place.

- Si $m \equiv f(n)$, alors $f^k(m) \equiv f^k(f(n)) = f^{k+1}(n) \equiv f(a) \equiv a$.
- Si $n \equiv f(m)$, alors $f^{k+1}(m) = f^k(f(m)) \equiv f^k(n) \equiv a$.

Dans les deux cas, $m$ est encore dans le bassin de $a$.

*Deux points fixes différents ont des bassins disjoints.* Soit $a$ et $b$ deux points fixes avec
$a \not\equiv b \pmod p$. Si un entier $u$ était dans les deux bassins, avec $f^k(u) \equiv a$ et
$f^j(u) \equiv b$, alors en prenant $K$ le plus grand des deux nombres $k$ et $j$, on aurait
$f^K(u) \equiv a$ et $f^K(u) \equiv b$, donc $a \equiv b$, ce qui est faux.

**Étape 2 : la stratégie de Pierre, si les points fixes existent.** Supposons que Pierre ait trouvé
un premier $p \geqslant c$ et deux points fixes $a$ et $b$ de $f$ modulo $p$, avec
$a \not\equiv b \pmod p$. Il écrit $a$ et $b$ au tableau.

Au départ, l'un des deux nombres du tableau est dans le bassin de $a$ (c'est $a$ lui-même, avec
$k = 0$), et l'autre est dans le bassin de $b$. Chaque opération de Clara remplace un nombre par un
nombre du même bassin. Donc, à tout moment, l'un des nombres du tableau est dans le bassin de $a$
et l'autre dans le bassin de $b$. S'ils étaient égaux, ce nombre serait dans les deux bassins, ce
qui est impossible. Clara ne peut donc jamais gagner.

**Étape 3 : trouver $p$, $a$ et $b$.** Un point fixe est un entier $a$ tel que
$a^2 + 1 \equiv a$, c'est-à-dire tel que $p$ divise $a^2 - a + 1$.

Posons $M$ le plus grand des deux nombres $c$ et $3$, puis $N = M!$ et
$$S = N^2 - N + 1 .$$
Comme $N \geqslant 6$, on a $S \geqslant 31$, donc $S$ a au moins un facteur premier. Soit $p$ l'un
d'eux.

- *$p$ est plus grand que $M$.* Si $p$ divisait $N$, il diviserait $N^2 - N$, donc aussi
  $S - (N^2 - N) = 1$, ce qui est absurde. Or tout nombre premier inférieur ou égal à $M$ divise
  $M! = N$. Donc $p > M$. En particulier $p > c$ et $p > 3$.
- *$a = N$ est un point fixe*, car $a^2 - a + 1 = S$ est divisible par $p$.
- *$b = 1 - N$ est un point fixe*, car
  $$b^2 - b + 1 = (1 - N)^2 - (1 - N) + 1 = N^2 - N + 1 = S .$$
- *$a$ et $b$ ne sont pas congrus modulo $p$.* On a $a - b = 2N - 1$. Si $p$ divisait $2N - 1$,
  il diviserait $(2N - 1)^2$, et comme
  $$4S = 4N^2 - 4N + 4 = (2N - 1)^2 + 3,$$
  il diviserait aussi $3$. Donc $p = 3$, ce qui contredit $p > 3$.

**Conclusion.** Quel que soit $c$, Pierre prend $M = \max(c, 3)$, choisit pour $p$ un facteur premier
de $(M!)^2 - M! + 1$, et écrit au tableau les deux entiers $M!$ et $1 - M!$. D'après l'étape 2,
Clara ne pourra jamais rendre les deux nombres égaux : Pierre gagne.

## Going further

Pour voir les bassins sur un exemple, prenons $p = 7$. Les points fixes de $f$ sont les solutions
de $a^2 - a + 1 \equiv 0 \pmod 7$, à savoir $a \equiv 3$ et $a \equiv 5$. En calculant $f$ sur les
restes $0, 1, \ldots, 6$, on trouve
$$0 \to 1 \to 2 \to 5 \to 5, \qquad 6 \to 2, \qquad 4 \to 3 \to 3 .$$
Le bassin de $3$ est formé des entiers congrus à $3$ ou $4$, celui de $5$ de tous les autres. Si
Pierre écrit $3$ et $5$, Clara est coincée.

On remarque que $4 \equiv -3$. C'est général : $f(-x) = f(x)$, donc $-a$ est toujours dans le
bassin de $a$. Le corrigé officiel donne aussi une autre solution, qui étudie les carrés modulo $p$
et cherche un premier $p$ pour lequel $-3$ est un carré modulo $p$ mais pas $-1$.
