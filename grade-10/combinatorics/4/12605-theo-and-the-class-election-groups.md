---
id: "12605"
title: "Les élections de Théo"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [recurrence, double-comptage, graphe, coloriage, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 6 janvier 2021"
  reference: "2021-01_Enonce-Test-2.pdf, exercice 2 (junior) ; corrigé 2021-01_Corrige-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/Énoncé-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-01_Enonce-Test-2.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier. Théo organise l'élection des délégués de sa classe de $n$ élèves.
Tout le monde est candidat, et chaque élève vote pour **un** de ses camarades (personne ne vote
pour soi-même).

Ensuite, Théo répartit les élèves en groupes, de sorte que si un élève est dans un groupe,
l'élève pour lequel il a voté **ne soit pas** dans ce groupe.

Pour quelles valeurs de l'entier $k$ Théo est-il sûr de pouvoir répartir les élèves en au plus
$k$ groupes, quelle que soit la façon dont les élèves ont voté ?

## Hints

1. Avec $2$ groupes, cherche une façon de voter qui met Théo en échec. Pense à trois élèves
   qui votent « en rond ».
2. Pour montrer que $3$ groupes suffisent toujours, essaie d'enlever un élève bien choisi, de
   répartir les autres, puis de le remettre dans un groupe.
3. Il y a $n$ votes pour $n$ élèves. Montre qu'un élève au moins a reçu au plus une voix. Quand
   on le remet, combien de groupes lui sont interdits ?
4. Quand on enlève un élève, ceux qui avaient voté pour lui n'ont plus de vote dans le reste de
   la classe. Pour faire une récurrence, démontre donc un énoncé un peu plus général : chaque
   élève vote pour **au plus** un camarade.

## Solution

La réponse est : **pour tout $k \geqslant 3$**.

### Deux groupes ne suffisent pas toujours

Prenons trois élèves $A$, $B$, $C$ qui votent en rond : $A$ vote pour $B$, $B$ pour $C$ et
$C$ pour $A$. Les autres élèves (s'il y en a) votent tous pour $A$.

Alors $A$ et $B$ doivent être dans des groupes différents, de même que $B$ et $C$, et que $C$ et
$A$. Les trois élèves $A$, $B$, $C$ sont donc dans trois groupes différents : avec au plus
$2$ groupes, c'est impossible. Théo n'est donc pas sûr de réussir avec $k \leqslant 2$ groupes.

### Trois groupes suffisent toujours

On démontre un énoncé un peu plus général, parce qu'il se prête à une récurrence.

> **(P$_m$)** Dans un groupe de $m$ élèves où chacun vote pour **au plus** un autre élève du
> groupe, on peut toujours répartir les élèves en $3$ groupes (certains peut-être vides) de
> sorte que personne ne soit dans le même groupe que l'élève pour qui il a voté.

On le démontre par récurrence sur $m \geqslant 1$.

**Initialisation.** Si $m \leqslant 3$, on met chaque élève seul dans son groupe.

**Hérédité.** Soit $m \geqslant 4$, et supposons (P$_{m-1}$) vraie. On considère $m$ élèves
comme dans l'énoncé.

*Un élève a reçu au plus une voix.* Il y a au plus $m$ votes en tout, puisque chacun vote au
plus une fois. Si chaque élève avait reçu au moins $2$ voix, il y aurait au moins $2m$ votes,
ce qui est plus que $m$. Il existe donc un élève $X$ qui a reçu au plus une voix.

*On le met de côté.* Les $m - 1$ autres élèves forment un groupe où chacun vote pour au plus
un camarade de ce groupe : celui qui avait voté pour $X$ n'a simplement plus de vote, et les
autres gardent le leur. D'après (P$_{m-1}$), on peut les répartir en $3$ groupes qui
conviennent.

*On remet $X$.* Il faut éviter de placer $X$ :

- dans le groupe de l'élève pour lequel $X$ a voté (s'il a voté) ;
- dans le groupe de l'élève qui a voté pour $X$ (s'il y en a un, il y en a au plus un).

Cela interdit au plus $2$ des $3$ groupes. On place $X$ dans un groupe restant. La répartition
obtenue convient : les contraintes entre les autres élèves étaient déjà respectées, et celles
qui concernent $X$ sont exactement les deux que l'on vient de vérifier.

Donc (P$_m$) est vraie, ce qui termine la récurrence.

La situation de l'énoncé est un cas particulier (chaque élève vote pour exactement un camarade),
donc Théo réussit toujours avec $3$ groupes, et a fortiori avec $k$ groupes pour tout
$k \geqslant 3$.

### Conclusion

**Théo est sûr de réussir exactement lorsque $k \geqslant 3$.**

## Going further

- Si chaque élève vote pour **deux** camarades, combien de groupes faut-il prévoir ? Le même
  raisonnement montre que $5$ groupes suffisent : il y a $2m$ votes, donc un élève a reçu au plus
  $2$ voix, et quand on le remet, au plus $2 + 2 = 4$ groupes lui sont interdits.
- Ce résultat donne aussi une réponse à la question suivante : dans un parlement de $400$
  députés où chacun a giflé exactement un autre député, peut-on former une commission de $134$
  députés sans gifle entre eux ? (Indication : parmi les $3$ groupes, l'un a au moins combien de
  membres ?)
