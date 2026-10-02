---
id: "13802"
title: "Aligner un million d'élèves amis"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [graphe, arbre, construction, contre-exemple, denombrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2017"
  reference: "2017-09_coupe_printemps_2017.pdf, énoncés lycée, exercice 7 ; corrigé 2017-09_coupe_printemps_2017_corrige.pdf. La partie a) du corrigé décrit un placement pas à pas sans justifier qu'il se termine bien ; la solution ci-dessous passe par la forme des groupes d'amis."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2017.pdf"
---

## Statement

Un stage de mathématiques accueille exactement un million d'élèves. Certains d'entre eux
sont amis, et l'amitié est réciproque : si $A$ est ami de $B$, alors $B$ est ami de $A$.
On veut placer tous les élèves sur une seule ligne, les uns à côté des autres.

1. On suppose que chaque élève a au plus deux amis. Montrer qu'on peut placer les élèves
   de sorte que, pour deux amis quelconques, il y ait au plus $2017$ élèves entre eux.
2. On suppose maintenant seulement que chaque élève a au plus trois amis. Montrer que ce
   n'est plus toujours possible : décrire des amitiés pour lesquelles aucun placement ne
   convient.

## Hints

1. Question 1 : pars d'un élève et va d'ami en ami. Comme chacun a au plus deux amis, à
   quoi peut ressembler un groupe d'élèves reliés entre eux par des amitiés ?
2. Question 1 : une file d'amis se place facilement. Pour une ronde, pars d'un élève et
   place les autres en prenant tour à tour un élève de chaque côté de la ronde.
3. Question 2 : imagine un arbre généalogique. Un élève a deux amis, chacun d'eux a deux
   nouveaux amis, qui ont chacun deux nouveaux amis, et ainsi de suite. Combien d'élèves
   touche-t-on en $18$ générations ?
4. Question 2 : si deux amis sont toujours à au plus $2018$ places l'un de l'autre, à
   quelle distance du premier élève peut se trouver un élève de la $18^\text{e}$
   génération ? Combien y a-t-il de places à cette distance ?

## Solution

Numérotons les places de la ligne de $1$ à $1\,000\,000$. Dire qu'il y a au plus $2017$
élèves entre deux amis, c'est dire que leurs numéros de place diffèrent d'au plus $2018$.

**Question 1.** On va faire beaucoup mieux que demandé : deux amis auront au plus **un**
élève entre eux.

*Les groupes.* Disons que deux élèves sont reliés si l'on peut aller de l'un à l'autre en
passant d'ami en ami. Un groupe, c'est un élève avec tous ceux qui lui sont reliés. Deux
élèves de groupes différents ne sont jamais amis. Il suffit donc de placer chaque groupe sur
des places qui se suivent, puis de mettre les groupes les uns après les autres.

*La forme d'un groupe.* Un élève sans ami forme un groupe à lui tout seul. Prenons
maintenant un élève $X_1$ qui a au moins un ami. Allons vers un de ses
amis $X_2$, puis vers un ami $X_3$ de $X_2$ autre que $X_1$, puis vers un ami $X_4$ de
$X_3$ autre que $X_2$, et ainsi de suite. Comme chaque élève a au plus deux amis et que l'un
d'eux est celui d'où l'on vient, il y a chaque fois au plus un choix. Les élèves sont en
nombre fini, donc la promenade finit par s'arrêter, ou par revenir sur un élève déjà vu.

Elle ne peut revenir que sur $X_1$. En effet, si l'on arrivait depuis $X_i$ sur un élève
$X_j$ avec $2 \leqslant j \leqslant i - 2$, alors $X_j$ aurait trois amis différents :
$X_{j-1}$, $X_{j+1}$ et $X_i$. C'est interdit. Et l'on ne revient pas sur $X_{i-1}$, puisqu'on
choisit toujours un ami autre que celui d'où l'on vient.

- Si la promenade revient sur $X_1$ après $X_k$, les élèves $X_1, X_2, \ldots, X_k$ forment
  une **ronde** : chacun est ami du suivant, et $X_k$ est ami de $X_1$. Chacun d'eux a déjà
  ses deux amis dans la ronde, donc personne d'autre n'est ami avec eux : le groupe est
  exactement cette ronde.
- Sinon, la promenade s'arrête sur un élève $X_k$. On repart alors de $X_1$ dans l'autre
  sens, par son second ami s'il en a un. Cette seconde promenade ne peut rencontrer aucun
  des $X_i$ (ils ont déjà tous leurs amis), ni revenir sur $X_1$ (il aurait trois amis), donc
  elle s'arrête aussi. Le groupe est alors une **file** : une suite d'élèves dans laquelle
  chacun est ami de ses voisins dans la suite, et de personne d'autre.

*Le placement.* Une file se place dans son ordre : deux amis sont alors côte à côte.

Pour une ronde $X_1, X_2, \ldots, X_k$, on fait le tour de la ronde dans les deux sens à la
fois à partir de $X_1$, en prenant tour à tour un élève de chaque côté :

$$X_1,\ X_2,\ X_k,\ X_3,\ X_{k-1},\ X_4,\ X_{k-2},\ \ldots$$

jusqu'à ce que tous soient placés. Deux amis qui sont du même côté de la ronde, comme $X_2$
et $X_3$, ou $X_k$ et $X_{k-1}$, n'ont entre eux qu'un seul élève, celui de l'autre côté.
L'élève $X_1$ est voisin de $X_2$ et n'a que $X_2$ entre lui et $X_k$. Enfin les deux
derniers placés, là où les deux côtés se rejoignent, sont amis et côte à côte. Par exemple,
pour $k = 6$, l'ordre est $X_1, X_2, X_6, X_3, X_5, X_4$.

Avec ce placement, deux amis ont toujours au plus un élève entre eux, et a fortiori au plus
$2017$.

**Question 2.** On construit des amitiés en forme d'arbre généalogique.

*La construction.* On choisit $2^{19} - 1 = 524\,287$ élèves, ce qui est moins d'un million.
On les range en générations numérotées de $0$ à $18$ : la génération $0$ contient un seul
élève $R$, la génération $1$ en contient $2$, la génération $2$ en contient $4$, et ainsi
de suite jusqu'à la génération $18$, qui en contient $2^{18}$. Au total, il y en a bien

$$1 + 2 + 4 + \cdots + 2^{18} = 2^{19} - 1 .$$

Chaque élève d'une génération $n \leqslant 17$ est ami avec deux élèves de la génération
$n + 1$, ses deux « enfants », et chaque élève des générations $1$ à $18$ est l'enfant d'un
seul élève. Ainsi $R$ a deux amis, les élèves des générations $1$ à $17$ en ont trois (leur
parent et leurs deux enfants), ceux de la génération $18$ en ont un. Les $475\,713$ autres
élèves n'ont aucun ami. Tout le monde a au plus trois amis.

*Pourquoi aucun placement ne convient.* Supposons qu'il existe un placement où deux amis
sont toujours à au plus $2018$ places l'un de l'autre. Prenons un élève $S$ de l'arbre,
d'une génération $n \leqslant 18$. En passant de $S$ à son parent, puis au parent de
celui-ci, et ainsi de suite, on arrive à $R$ en $n$ pas. Chaque pas relie deux amis, donc
avance d'au plus $2018$ places. Ainsi $S$ est à au plus $18 \times 2018 = 36\,324$ places de
$R$.

Mais il n'y a que peu de places aussi proches de $R$ : au plus $36\,324$ à sa gauche, au plus
$36\,324$ à sa droite, plus la place de $R$, soit au plus $72\,649$ places. Or les
$524\,287$ élèves de l'arbre devraient tous y tenir. C'est impossible, puisque
$524\,287 > 72\,649$.

**Conclusion.** Si chaque élève a au plus deux amis, on peut toujours placer les élèves
avec au plus $2017$ élèves (et même au plus un) entre deux amis. Si chaque élève a au plus
trois amis, ce n'est plus toujours possible : les amitiés en arbre ci-dessus l'empêchent.

## Going further

Avec trois amis, l'arbre fait « exploser » le nombre d'élèves proches du sommet : il double
à chaque génération, alors que le nombre de places proches ne grandit que de $2 \times 2018$
à chaque pas. Avec deux amis au plus, aucune explosion n'est possible, car une file ou une
ronde ne s'élargit jamais. C'est cette différence entre une croissance qui double et une
croissance qui ajoute une quantité fixe qui fait toute la différence entre les deux
questions.
