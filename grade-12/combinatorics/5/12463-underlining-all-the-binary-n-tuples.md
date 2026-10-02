---
id: "12463"
title: "Souligner tous les n-uplets de 0 et de 1"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 75
tags: [n-uplets, voisins, recurrence, construction, minoration, processus]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 22 janvier 2020"
  reference: "2020-01_sujet-test-janvier.pdf, exercice 7 (groupe Senior) ; corrigé 2020-01_corrige-test-janvier.pdf (minoration suivant la solution alternative n° 1, par récurrence de n − 2 à n)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-01_sujet-test-janvier.pdf"
---

## Statement

Soit $n$ et $k$ deux entiers naturels non nuls tels que $k \leqslant 2^n$. Morgane a écrit sur son
cahier tous les $n$-uplets formés de $0$ et de $1$ : il y en a $2^n$. On dit que deux $n$-uplets
$(x_1, \ldots, x_n)$ et $(y_1, \ldots, y_n)$ sont **voisins** s'ils diffèrent en une seule position,
c'est-à-dire s'il existe un seul entier $i$ tel que $x_i \neq y_i$.

Morgane choisit $k$ de ces $n$-uplets et les souligne. Elle effectue ensuite des opérations : à
chaque opération, elle choisit un $n$-uplet qui n'est pas encore souligné et dont au moins deux
voisins sont soulignés, et elle le souligne à son tour.

Pour quelles valeurs de $k$ Morgane peut-elle parvenir à souligner tous les $n$-uplets ?

## Hints

1. Essaie $n = 1$, $n = 2$ et $n = 3$. Remarque d'abord qu'avec un seul $n$-uplet souligné au
   départ, il ne se passe rien.
2. Pour une construction, souligne $(0, 0, \ldots, 0)$, puis quelques $n$-uplets qui ont exactement
   deux $1$, choisis pour que chaque $n$-uplet qui a un seul $1$ ait deux voisins soulignés.
3. Une fois soulignés tous les $n$-uplets qui ont au plus un $1$, raisonne sur le nombre de $1$.
4. Tu dois trouver qu'il faut et qu'il suffit d'avoir $k \geqslant 1 + \frac{n}{2}$. Pour la
   minoration, fais une récurrence de $n - 2$ à $n$. Regarde la première opération : le $n$-uplet
   souligné a deux voisins soulignés au départ, qui diffèrent de lui en deux positions $s$ et $t$.
   Efface ces deux positions dans tous les $n$-uplets.

## Solution

**Notations.** On note $E_n$ l'ensemble des $n$-uplets formés de $0$ et de $1$, et on appelle
**poids** d'un $n$-uplet son nombre de $1$. Deux voisins ont des poids qui diffèrent de $1$.

On note $m$ le plus petit entier supérieur ou égal à $\frac{n}{2}$ : $m = \frac{n}{2}$ si $n$ est
pair et $m = \frac{n+1}{2}$ si $n$ est impair. Nous allons montrer que **Morgane peut tout souligner
si et seulement si $k \geqslant m + 1$**. Comme $m + 1 \leqslant n + 1 \leqslant 2^n$, ces valeurs
de $k$ existent.

On dira qu'un ensemble $S$ de $n$-uplets est **gagnant** si, en soulignant au départ les éléments
de $S$, Morgane peut souligner tous les $n$-uplets.

### Étape 1 : deux remarques simples

**Plus on souligne au départ, mieux c'est.** Si $S$ est gagnant et si $S'$ contient $S$, alors $S'$
est gagnant. En effet, Morgane refait les opérations qui marchaient à partir de $S$, dans le même
ordre, en sautant celles qui portent sur un $n$-uplet déjà souligné. À chaque étape, les $n$-uplets
soulignés comprennent ceux qui l'étaient la première fois, donc les deux voisins dont elle a besoin
sont toujours soulignés.

**Un seul ne suffit pas.** Une opération demande deux $n$-uplets déjà soulignés. Si un seul
$n$-uplet est souligné au départ, aucune opération n'est possible, et comme $E_n$ a au moins
$2$ éléments, Morgane échoue. Un ensemble gagnant a donc au moins $2$ éléments.

### Étape 2 : tout $k \geqslant m + 1$ convient

On note $Z = (0, 0, \ldots, 0)$. Pour $1 \leqslant i \leqslant n$, on note $U_i$ le $n$-uplet qui a
un seul $1$, en position $i$, et pour $i \neq j$ on note $U_{i,j}$ celui qui a exactement deux $1$,
en positions $i$ et $j$.

Morgane souligne au départ :

- le $n$-uplet $Z$ ;
- les $n$-uplets $U_{1,2}$, $U_{3,4}$, $U_{5,6}$, ..., c'est-à-dire $U_{2i-1,\,2i}$ pour tous les
  $i$ tels que $2i \leqslant n$ ;
- et aussi $U_n$ si $n$ est impair.

Si $n$ est pair, cela fait $1 + \frac{n}{2} = m + 1$ éléments. Si $n$ est impair, cela fait
$1 + \frac{n-1}{2} + 1 = m + 1$ éléments.

**Les $n$-uplets de poids $1$.** Prenons une paire $(2i - 1, 2i)$. Le $n$-uplet $U_{2i-1}$ a pour
voisins $Z$ et $U_{2i-1,\,2i}$, qui sont soulignés : Morgane peut le souligner. De même pour
$U_{2i}$. Toutes les positions sont dans une paire, sauf la position $n$ quand $n$ est impair, et
$U_n$ est alors souligné dès le départ. Tous les $n$-uplets de poids $0$ ou $1$ sont donc soulignés.

**Les autres poids.** Montrons par récurrence sur $\ell \geqslant 1$ que Morgane peut souligner
tous les $n$-uplets de poids au plus $\ell$. C'est fait pour $\ell = 1$. Supposons-le pour
$\ell - 1$, avec $\ell \geqslant 2$, et prenons un $n$-uplet $x$ de poids $\ell$, pas encore
souligné. Il a au moins deux $1$, disons en positions $i$ et $j$. En remplaçant par $0$ le $1$ de la
position $i$, ou celui de la position $j$, on obtient deux voisins différents de $x$, de poids
$\ell - 1$, donc déjà soulignés. Morgane peut souligner $x$. Elle traite ainsi un par un tous les
$n$-uplets de poids $\ell$.

Pour $\ell = n$, tout est souligné. Cet ensemble de $m + 1$ éléments est donc gagnant, et d'après
l'étape 1, en lui ajoutant $k - m - 1$ autres $n$-uplets, on obtient un ensemble gagnant de $k$
éléments, pour tout $k$ entre $m + 1$ et $2^n$.

*Exemple pour $n = 3$.* On souligne $(0,0,0)$, $(1,1,0)$ et $(0,0,1)$. Puis on souligne
$(1,0,0)$ et $(0,1,0)$, puis $(1,0,1)$ et $(0,1,1)$, et enfin $(1,1,1)$.

### Étape 3 : effacer deux positions

Il reste à montrer qu'un ensemble gagnant a au moins $m + 1$ éléments. Préparons un outil.

Soit $n \geqslant 3$ et $s \neq t$ deux positions. Pour un $n$-uplet $x$, on note $\overline{x}$ le
$(n-2)$-uplet obtenu en effaçant les termes de positions $s$ et $t$. Tout $(n-2)$-uplet est de la
forme $\overline{x}$ : il suffit de remettre deux $0$ en positions $s$ et $t$.

**Ce que deviennent deux voisins.** Soit $x$ et $y$ deux voisins de $E_n$, qui diffèrent en
position $i$.

- Si $i$ est $s$ ou $t$, la différence est effacée et $\overline{x} = \overline{y}$.
- Sinon, $\overline{x}$ et $\overline{y}$ diffèrent seulement là où était la position $i$ : ils sont
  voisins dans $E_{n-2}$.

**Lemme.** Si $S$ est un ensemble gagnant de $E_n$, alors l'ensemble
$\overline{S} = \{\overline{x} : x \in S\}$ est un ensemble gagnant de $E_{n-2}$.

*Preuve.* Numérotons $x_1, x_2, \ldots, x_N$ les $n$-uplets de $E_n$ dans l'ordre où Morgane les
souligne : d'abord ceux de $S$, puis ceux des opérations successives. Montrons par récurrence sur
$j$ qu'en partant de $\overline{S}$ dans $E_{n-2}$, on peut arriver à une situation où
$\overline{x_1}, \ldots, \overline{x_j}$ sont tous soulignés.

- Si $x_j$ est dans $S$, alors $\overline{x_j}$ est souligné dès le départ.
- Sinon, $x_j$ a été souligné par une opération, donc il a deux voisins $y \neq z$ parmi
  $x_1, \ldots, x_{j-1}$. Par récurrence, $\overline{y}$ et $\overline{z}$ sont soulignés. Si
  $\overline{x_j}$ est égal à $\overline{y}$ ou à $\overline{z}$, il est déjà souligné. Sinon, $y$
  diffère de $x_j$ en une position $i$ qui n'est ni $s$ ni $t$, et $z$ en diffère en une position
  $i'$ qui n'est ni $s$ ni $t$, avec $i \neq i'$ puisque $y \neq z$. Alors $\overline{y}$ et
  $\overline{z}$ sont deux voisins différents de $\overline{x_j}$, et tous deux sont soulignés :
  on peut souligner $\overline{x_j}$ s'il ne l'est pas déjà.

Pour $j = N$, tous les $\overline{x}$ sont soulignés, c'est-à-dire tous les $(n-2)$-uplets.

### Étape 4 : la minoration, par récurrence

Notons $m_n$ le nombre $m$ associé à $n$. On a $m_{n-2} = m_n - 1$ : si $n$ est pair,
$\frac{n-2}{2} = \frac{n}{2} - 1$, et si $n$ est impair, $\frac{n-1}{2} = \frac{n+1}{2} - 1$.

Pour $n \geqslant 1$, notons $P(n)$ la propriété : *tout ensemble gagnant de $E_n$ a au moins
$m_n + 1$ éléments.*

**Pour $n = 1$ et $n = 2$**, on a $m_n = 1$, et l'étape 1 montre qu'un ensemble gagnant a au moins
$2$ éléments : $P(1)$ et $P(2)$ sont vraies.

**De $n - 2$ à $n$.** Soit $n \geqslant 3$ tel que $P(n-2)$ est vraie, et soit $S$ un ensemble
gagnant de $E_n$, à $k$ éléments.

- Si $S = E_n$, alors $k = 2^n \geqslant n + 1 \geqslant m_n + 1$.
- Sinon, Morgane fait au moins une opération. Lors de la première, seuls les éléments de $S$ sont
  soulignés : elle souligne un $n$-uplet $w$ qui a deux voisins $u \neq v$ dans $S$. Notons $s$ la
  position où $u$ diffère de $w$ et $t$ celle où $v$ diffère de $w$. Comme $u \neq v$, on a
  $s \neq t$. Effaçons les positions $s$ et $t$ : alors $\overline{u} = \overline{w} = \overline{v}$.
  Deux éléments différents de $S$ ont la même image, donc $\overline{S}$ a au plus $k - 1$ éléments.
  D'après le lemme, $\overline{S}$ est gagnant dans $E_{n-2}$, et d'après $P(n-2)$ il a au moins
  $m_{n-2} + 1 = m_n$ éléments. Ainsi $k - 1 \geqslant m_n$, c'est-à-dire $k \geqslant m_n + 1$.

Dans les deux cas, $P(n)$ est vraie. Partant de $P(1)$, on obtient $P(3)$, $P(5)$, ..., et partant
de $P(2)$, on obtient $P(4)$, $P(6)$, ... : $P(n)$ est vraie pour tout $n \geqslant 1$.

### Conclusion

**Morgane peut souligner tous les $n$-uplets si et seulement si $k \geqslant m + 1$**, où $m$ est
le plus petit entier supérieur ou égal à $\frac{n}{2}$. Autrement dit : $k \geqslant \frac{n}{2} + 1$
quand $n$ est pair, et $k \geqslant \frac{n+3}{2}$ quand $n$ est impair (et toujours
$k \leqslant 2^n$).

## Going further

On change la règle des opérations.

1. Si Morgane peut souligner un $n$-uplet dès qu'**un** de ses voisins est souligné, montrer qu'il
   suffit de souligner un seul $n$-uplet au départ.
2. Si elle ne peut souligner un $n$-uplet que lorsque **tous** ses $n$ voisins sont soulignés,
   montrer que le plus petit nombre de $n$-uplets à souligner au départ est $2^{n-1}$. (On pourra
   regarder les $n$-uplets qui ne sont pas soulignés au départ : deux d'entre eux peuvent-ils être
   voisins ?)
