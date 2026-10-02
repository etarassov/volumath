---
id: "7261"
title: "Deux tas de 2010 jetons"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [jeu, strategie-gagnante, positions-perdantes, invariant, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, « Entraînement du groupe B », exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

Antoine et Théo jouent au jeu suivant. Sur la table, deux tas de jetons contenant chacun $2010$
jetons.

Chacun à son tour, en commençant par Antoine, un joueur choisit l'un des deux coups suivants :

- enlever **un** jeton dans chacun des deux tas ;
- enlever **au moins un** jeton dans un seul des deux tas (autant qu'il veut).

Le joueur qui ne peut plus rien enlever a perdu.

Si les deux joueurs jouent de leur mieux, lequel des deux gagne ?

## Hints

1. Commence petit. Note $(a, b)$ la position où les tas contiennent $a$ et $b$ jetons. Qui perd en
   $(0,0)$ ? Qui gagne en $(1,1)$, en $(2,1)$, en $(5,0)$ ?
2. Dresse un tableau des petites positions en marquant « le joueur qui doit jouer perd » ou
   « le joueur qui doit jouer gagne ». Descends jusqu'à $(7,7)$.
3. Les positions perdantes trouvées sont $(0,0)$, $(1,2)$, $(2,1)$, $(3,3)$, $(4,5)$, $(5,4)$,
   $(6,6)$, ... Qu'ont-elles en commun ? Regarde la somme $a + b$, puis la différence.
4. Pour prouver une conjecture de ce type, il faut toujours deux choses : d'une position marquée
   perdante, **aucun** coup ne mène à une position perdante ; d'une position non marquée, **au
   moins un** coup y mène.

## Solution

Notons $(a, b)$ la position où le premier tas contient $a$ jetons et le second $b$ jetons. Le
joueur dont c'est le tour est dit « le joueur au trait ».

Une position est **perdante** si le joueur au trait perd, quoi qu'il fasse, contre un adversaire
qui joue bien. Elle est **gagnante** sinon.

**La conjecture.**

En explorant les petites positions on trouve comme positions perdantes
$$(0,0),\ (1,2),\ (2,1),\ (3,3),\ (4,5),\ (5,4),\ (6,6),\ (7,8),\ (8,7), \ldots$$

Posons
$$\mathcal{A} = \{\,(a,b) \ : \ |a - b| \leqslant 1 \ \text{ et } \ a+b \text{ est un multiple
de } 3\,\} .$$
On vérifie sur la liste ci-dessus que ce sont exactement ces positions-là.

Nous allons démontrer que $\mathcal{A}$ est bien l'ensemble des positions perdantes. Pour cela,
trois points suffisent.

**Point 1 : la partie se termine.**

À chaque coup, le nombre total de jetons diminue d'au moins $1$. La partie ne peut donc pas durer
indéfiniment, et elle s'arrête en $(0,0)$, la seule position où aucun coup n'est possible. Le
joueur au trait en $(0,0)$ a perdu : $(0,0)$ est perdante, et elle est bien dans $\mathcal{A}$.

**Point 2 : d'une position de $\mathcal{A}$, aucun coup ne mène dans $\mathcal{A}$.**

Partons de $(a,b) \in \mathcal{A}$.

*Coup « un jeton dans chaque tas ».* On arrive en $(a-1, b-1)$. La différence n'a pas changé, mais
la somme a diminué de $2$. Si $a+b$ est un multiple de $3$, alors $a+b-2$ ne l'est pas. La nouvelle
position n'est donc pas dans $\mathcal{A}$.

*Coup « dans un seul tas ».* Distinguons selon la forme de $(a,b)$.

Si $a = b$ : en enlevant $j \geqslant 1$ jetons à un tas, la différence devient $j$. Pour rester
dans $\mathcal{A}$ il faudrait $j = 1$, mais la somme deviendrait $a+b-1$, qui n'est pas un multiple
de $3$. Impossible.

Si $b = a+1$ : en enlevant $j \geqslant 1$ jetons au **petit** tas, la différence devient $j+1
\geqslant 2$ : trop grande. En enlevant $j$ jetons au **grand** tas, la position devient
$(a, a+1-j)$. Pour que la différence reste au plus $1$, il faut $j = 1$ ou $j = 2$, et la somme
devient $a+b-1$ ou $a+b-2$, qui ne sont pas des multiples de $3$. Impossible.

Le cas $a = b+1$ est symétrique.

**Point 3 : d'une position hors de $\mathcal{A}$, un coup mène dans $\mathcal{A}$.**

Soit $(a,b) \notin \mathcal{A}$.

*Cas $a = b$.* Alors $a+b = 2a$ n'est pas un multiple de $3$, donc $a$ non plus. Si $a$ a pour
reste $1$ dans la division par $3$, on enlève un jeton à chaque tas : on arrive en $(a-1, a-1)$,
dont la somme $2(a-1)$ est un multiple de $3$, et la différence est nulle. Si $a$ a pour reste $2$,
on enlève un seul jeton à un tas : on arrive en $(a, a-1)$, de différence $1$ et de somme $2a-1$,
qui est bien un multiple de $3$.

*Cas $|a-b| = 1$*, disons $b = a+1$. La somme $2a+1$ n'est pas un multiple de $3$, donc $a$ n'a pas
pour reste $1$. Si $a$ est un multiple de $3$, on enlève un jeton au grand tas et on arrive en
$(a,a)$, de somme $2a$, multiple de $3$. Si $a$ a pour reste $2$, on enlève deux jetons au grand tas
et on arrive en $(a, a-1)$, de somme $2a-1$, multiple de $3$.

*Cas $|a-b| \geqslant 2$*, disons $a \geqslant b+2$. On va enlever des jetons au grand tas pour
amener le premier tas sur une valeur $a'$ proche de $b$. Les trois valeurs $b-1$, $b$, $b+1$ donnent
trois sommes consécutives $a'+b$, donc **exactement l'une des trois** est un multiple de $3$.

Si $b \geqslant 1$, ces trois valeurs sont toutes comprises entre $0$ et $b+1 \leqslant a-1$ : le
coup qui amène le premier tas sur la bonne valeur est donc légal, et on atterrit dans $\mathcal{A}$.

Si $b = 0$, les valeurs possibles sont $0$ et $1$, et c'est $a' = 0$ qui convient : on vide le
premier tas et on arrive en $(0,0)$, qui est dans $\mathcal{A}$.

**$\mathcal{A}$ est donc exactement l'ensemble des positions perdantes.**

En effet, les points 2 et 3 montrent qu'un joueur placé devant une position hors de $\mathcal{A}$
peut toujours rendre une position de $\mathcal{A}$ à son adversaire, et que celui-ci est alors
obligé de la quitter. En répétant, le premier joueur ramène l'autre sur $\mathcal{A}$ à chaque
tour, jusqu'à $(0,0)$ où l'adversaire est bloqué. Le point 1 garantit que cela arrive.

**Conclusion.**

La position de départ est $(2010, 2010)$. Sa différence vaut $0 \leqslant 1$, et sa somme vaut
$$4020 = 3 \times 1340 ,$$
qui est un multiple de $3$. Elle appartient donc à $\mathcal{A}$ : elle est perdante pour le joueur
au trait, c'est-à-dire pour Antoine.

**C'est Théo, le second joueur, qui gagne.**

## Going further

La stratégie de Théo est simple à énoncer : après chaque coup d'Antoine, il ramène la position dans
$\mathcal{A}$, c'est-à-dire « les deux tas presque égaux, et un total divisible par $3$ ».

Le nombre $2010$ n'est là que pour faire joli. La vraie réponse est : le premier joueur perd
exactement quand les deux tas diffèrent d'au plus $1$ et que le total est un multiple de $3$. Avec
$(2011, 2011)$, par exemple, c'est Antoine qui gagnerait, en enlevant un jeton à chaque tas dès son
premier coup.
