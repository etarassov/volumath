---
id: "11434"
title: "2021 élèves, k amis chacun, et pas de trio d'amis"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [amities, triangle, parite, cycle-impair, double-comptage, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 4 (combinatoire)"
  reference: "2022-02_sujet-envoi-4.pdf, Exercices Seniors, exercice 18 ; corrigé 2022-04_corrige-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-02_sujet-envoi-4.pdf"
---

## Statement

Lors d'un stage de mathématiques, chacun des $2021$ élèves a exactement $k$ amis parmi les autres
élèves. L'amitié est réciproque : si $A$ est ami de $B$, alors $B$ est ami de $A$.

On sait aussi qu'il n'existe aucun groupe de trois élèves deux à deux amis.

Quelle est la plus grande valeur possible de $k$ ?

## Hints

1. Suppose qu'on puisse répartir les élèves en deux groupes de sorte que deux amis soient toujours
   dans des groupes différents. Compte les amitiés de deux façons. Que dire des tailles des groupes ?
2. Appelle **ronde** une suite d'élèves $c_1, c_2, \ldots, c_r$, tous différents, où chacun est ami du
   suivant et $c_r$ est ami de $c_1$. Montre qu'il existe une ronde de longueur $r$ impaire.
3. Prends la ronde impaire la plus courte. Deux élèves de la ronde qui ne sont pas voisins dans la
   ronde peuvent-ils être amis ? Un élève hors de la ronde peut-il avoir trois amis dans la ronde ?
4. Compte, de deux façons, les couples formés d'un élève de la ronde et d'un de ses amis. Pourquoi
   $r \geqslant 5$ ?
5. Pour la construction, répartis les élèves en cinq groupes disposés en cercle, et rends amis tous
   les élèves de deux groupes voisins.

## Solution

La réponse est $\boxed{k = 808}$. On montre d'abord que $k \leqslant 808$, puis on construit une
situation où $k = 808$.

On peut supposer $k \geqslant 1$. Appelons **chaîne** une suite d'élèves où chacun est ami du suivant ;
un même élève peut y apparaître plusieurs fois. Sa **longueur** est le nombre d'amitiés utilisées,
c'est-à-dire le nombre d'élèves moins un. Une chaîne est **fermée** si elle revient à son point de
départ.

### Étape 1 : impossible de séparer les élèves en deux camps

Supposons qu'on puisse répartir les élèves en deux camps $P$ et $Q$, de sorte que deux amis soient
toujours dans des camps différents. Notons $p$ et $q$ le nombre d'élèves de chaque camp.

Comptons les amitiés. Chacune relie un élève de $P$ à un élève de $Q$. Chaque élève de $P$ a $k$
amis, tous dans $Q$, donc il y a $kp$ amitiés. De même, en partant des élèves de $Q$, il y en a $kq$.
Donc $kp = kq$, et comme $k \geqslant 1$, $p = q$. Mais alors $2021 = p + q = 2p$ serait pair : c'est
impossible.

### Étape 2 : il existe une chaîne fermée de longueur impaire

Supposons au contraire que toutes les chaînes fermées soient de longueur paire, et construisons les
deux camps de l'étape 1.

Prenons un élève $u$ qui n'est encore dans aucun camp. Mettons-le dans $P$, et mettons chaque élève
$v$ qu'on peut joindre à $u$ par une chaîne dans $P$ si cette chaîne est de longueur paire, et dans
$Q$ si elle est de longueur impaire.

- **Ce choix ne dépend pas de la chaîne.** S'il existait une chaîne de longueur paire et une chaîne de
  longueur impaire de $u$ à $v$, on irait de $u$ à $v$ par la première puis on reviendrait par la
  seconde parcourue à l'envers. Ce serait une chaîne fermée de longueur paire plus impaire, donc
  impaire.
- **Deux amis $v$ et $w$ placés ainsi ne sont pas dans le même camp.** Une chaîne de $u$ à $v$,
  prolongée par l'amitié entre $v$ et $w$, est une chaîne de $u$ à $w$ plus longue d'une unité : les
  deux longueurs n'ont pas la même parité.

On recommence avec un nouvel élève qui n'est encore dans aucun camp, jusqu'à ce que tout le monde
soit placé. Un élève qu'on peut joindre au nouveau point de départ ne pouvait pas être joint à un
point de départ précédent, sinon le nouveau point de départ aurait déjà été placé : on ne place
donc personne deux fois. Deux amis sont toujours joints au même point de départ, donc ils sont dans
des camps différents.

On a obtenu deux camps comme à l'étape 1, ce qui est impossible. Il existe donc une chaîne fermée de
longueur impaire.

### Étape 3 : la plus courte est une ronde, de longueur au moins 5

Prenons une chaîne fermée de longueur impaire $r$, la plus courte possible.

**Elle ne passe pas deux fois par le même élève.** Sinon, en coupant au niveau de cet élève, on la
découperait en deux chaînes fermées plus courtes, dont les longueurs ont pour somme $r$. Comme $r$ est
impair, l'une des deux est de longueur impaire, et elle est plus courte que $r$ : c'est contraire au
choix de la chaîne.

Notre chaîne est donc une ronde $c_1, c_2, \ldots, c_r$ d'élèves tous différents, où $c_1$ est ami de
$c_2$, $c_2$ de $c_3$, ..., et $c_r$ de $c_1$. On ne peut pas avoir $r = 1$, car personne n'est son
propre ami, ni $r = 3$, car $c_1, c_2, c_3$ seraient trois élèves deux à deux amis. Comme $r$ est
impair, $r \geqslant 5$.

Appelons **voisins dans la ronde** deux élèves qui se suivent dans la ronde, $c_r$ et $c_1$ compris.
Chaque élève de la ronde a deux voisins dans la ronde.

### Étape 4 : deux propriétés de la ronde

**(a) Deux élèves de la ronde qui ne sont pas voisins dans la ronde ne sont pas amis.** Supposons que
$c_i$ et $c_j$, non voisins dans la ronde, soient amis. Ils découpent la ronde en deux arcs, de
longueurs $d$ et $r - d$, chacune au moins $2$. Comme $d + (r - d) = r$ est impair, l'un des deux arcs
a une longueur paire $e$, avec $2 \leqslant e \leqslant r - 2$. Cet arc, suivi de l'amitié entre
$c_j$ et $c_i$, forme une chaîne fermée de longueur $e + 1$, impaire et plus petite que $r$.
C'est impossible.

**(b) Un élève hors de la ronde a au plus deux amis dans la ronde.** Supposons qu'un élève $v$ hors de
la ronde ait au moins trois amis dans la ronde. Choisissons-en trois. Ils découpent la ronde en trois
arcs, de longueurs $d_1$, $d_2$, $d_3$, avec $d_1 + d_2 + d_3 = r$.

- Chaque $d_i$ vaut au moins $2$ : si deux de ces trois amis étaient voisins dans la ronde, ils
  formeraient avec $v$ trois élèves deux à deux amis.
- Comme $r$ est impair, l'un des $d_i$ est impair. Les deux autres valent au moins $2$, donc
  $d_i \leqslant r - 4$.

Partons de $v$, allons vers l'ami situé au début de cet arc, suivons l'arc jusqu'à l'ami situé à
l'autre bout, et revenons à $v$. C'est une chaîne fermée de longueur $d_i + 2$, impaire, et
$d_i + 2 \leqslant r - 2 < r$. C'est impossible.

### Étape 5 : le double comptage

Comptons les couples $(c, a)$ où $c$ est un élève de la ronde et $a$ un ami de $c$.

- **En partant de la ronde.** Chacun des $r$ élèves de la ronde a $k$ amis : il y a $kr$ couples.
- **En partant de l'ami $a$.** Si $a$ est dans la ronde, il est ami d'exactement deux élèves de la
  ronde, ses deux voisins, d'après (a). Si $a$ est hors de la ronde, il est ami d'au plus deux élèves
  de la ronde, d'après (b). Chacun des $2021$ élèves est donc compté au plus deux fois : il y a au
  plus $2 \times 2021 = 4042$ couples.

Donc $kr \leqslant 4042$, et comme $r \geqslant 5$,

$$k \leqslant \frac{4042}{r} \leqslant \frac{4042}{5} = \text{808,4} .$$

Comme $k$ est entier, $k \leqslant 808$.

### Étape 6 : une situation où $k = 808$

Répartissons les $2021$ élèves en cinq groupes, que l'on dispose en cercle dans cet ordre :

$$X \ (403 \text{ élèves}), \quad Y_1 \ (404), \quad Z_1 \ (405), \quad Z_2 \ (405), \quad Y_2 \ (404) .$$

On a bien $403 + 2 \times 404 + 2 \times 405 = 2021$. Décidons que :

- tout élève de $X$ est ami de tout élève de $Y_1$ et de tout élève de $Y_2$ ;
- tout élève de $Y_1$ est ami de tout élève de $Z_1$, et tout élève de $Y_2$ de tout élève de $Z_2$ ;
- on forme $405$ paires en associant chaque élève de $Z_1$ à un élève de $Z_2$, et tout élève de
  $Z_1$ est ami de tout élève de $Z_2$, **sauf** de celui qui lui est associé ;
- il n'y a pas d'autre amitié, en particulier aucune à l'intérieur d'un groupe.

**Chacun a $808$ amis.**

| élève de | amis dans | nombre d'amis |
|---|---|---|
| $X$ | $Y_1$ et $Y_2$ | $404 + 404 = 808$ |
| $Y_1$ ou $Y_2$ | $X$ et $Z_1$ (ou $Z_2$) | $403 + 405 = 808$ |
| $Z_1$ ou $Z_2$ | $Y_1$ (ou $Y_2$) et l'autre groupe $Z$ | $404 + 404 = 808$ |

**Il n'y a pas trois élèves deux à deux amis.** Il n'y a aucune amitié dans un même groupe, donc trois
élèves deux à deux amis seraient dans trois groupes différents, deux à deux voisins sur le cercle.
Or, parmi cinq groupes disposés en cercle, trois groupes quelconques en contiennent toujours deux
qui ne sont pas voisins.

**Conclusion.** La plus grande valeur possible de $k$ est $808$.

## Going further

Le nombre $808$ vient de $\dfrac{2 \times 2021}{5}$. Le même raisonnement montre que, pour un nombre
**impair** $N$ d'élèves, on a toujours $k \leqslant \dfrac{2N}{5}$.

Pour un nombre **pair** d'élèves, c'est très différent : avec $N = 2p$ élèves répartis en deux
groupes de $p$, où chacun est ami de tous les élèves de l'autre groupe, chacun a $k = p = \dfrac{N}{2}$
amis, et il n'y a aucun trio d'amis. C'est l'étape 1 qui empêche ce découpage quand $N$ est impair.
