---
id: "8235"
title: "Prendre 1, 3 ou 6 cailloux, et ne pas prendre le dernier"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [jeu, positions-gagnantes, periodicite, modulo]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, « Stratégie des jeux » (Félix Breton, Andrei Barbu), positions gagnantes et perdantes, exercice 6"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Deux joueurs ont devant eux un tas de $n$ cailloux. Chacun à son tour, un joueur prend dans le tas **exactement $1$, $3$ ou $6$ cailloux** (il ne peut pas en prendre plus qu'il n'en reste).

Celui qui prend le **dernier** caillou a **perdu**.

Pour quelles valeurs de $n$ le joueur qui doit jouer est-il en mauvaise posture, c'est-à-dire perdant si son adversaire joue bien ?

## Hints

1. Une position est dite **perdante** si le joueur dont c'est le tour perd, quel que soit son jeu, face à un adversaire parfait. Elle est **gagnante** sinon.
2. La règle de base : une position est **gagnante** s'il existe au moins un coup qui mène à une position perdante ; elle est **perdante** si tous les coups mènent à des positions gagnantes.
3. Commence à $n = 0$ : il ne reste rien, donc le joueur précédent vient de prendre le dernier caillou et a perdu. La position $n = 0$ est donc **gagnante** pour celui dont c'est le tour.
4. Remplis un tableau pour $n = 0, 1, 2, \ldots, 20$, en appliquant la règle de base. Tu verras un motif apparaître.
5. Le motif se répète : de quelle période ?
6. Une fois le motif deviné, il faut le **démontrer**, par récurrence sur les blocs de neuf.

## Solution

**Vocabulaire.**

On dit qu'une position (c'est-à-dire un nombre $n$ de cailloux restants, avec le joueur dont c'est le tour) est *perdante* si ce joueur perd face à un adversaire parfait, et *gagnante* sinon.

La règle qui permet de tout calculer est :

> Une position est **gagnante** dès qu'un coup mène à une position perdante.
> Une position est **perdante** si tous les coups possibles mènent à des positions gagnantes.

**Le point de départ.**

Pour $n = 0$, le joueur dont c'est le tour n'a rien à faire : c'est son adversaire qui vient de prendre le dernier caillou, donc qui a perdu. La position $n = 0$ est donc **gagnante**.

**Le tableau des premiers cas.**

Depuis $n$, les coups mènent à $n-1$, $n-3$ et $n-6$ (quand ces nombres sont $\ge 0$).

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|---|---|
| | G | **P** | G | **P** | G | **P** | G | G | G |

| $n$ | $9$ | $10$ | $11$ | $12$ | $13$ | $14$ | $15$ | $16$ | $17$ |
|---|---|---|---|---|---|---|---|---|---|
| | G | **P** | G | **P** | G | **P** | G | G | G |

Détaillons quelques cases. $n = 1$ : le seul coup possible est de prendre $1$ caillou, ce qui amène à $n=0$, position gagnante pour l'adversaire. Donc $n=1$ est **perdante**. $n = 2$ : on peut prendre $1$ et laisser $n=1$, qui est perdante pour l'adversaire, donc $n=2$ est gagnante. $n=3$ : les coups mènent à $2$ (G) et à $0$ (G) ; tous gagnants, donc $n=3$ est perdante. Et ainsi de suite.

**Le motif.**

Les positions perdantes rencontrées sont

$$1,\ 3,\ 5,\ \quad 10,\ 12,\ 14,\ \quad 19,\ 21,\ 23,\ \quad 28,\ 30, \ldots$$

Autrement dit, il semble que

$$n \text{ est perdante} \iff n \equiv 1, \ 3 \ \text{ou} \ 5 \pmod 9 .$$

**La démonstration.**

Notons $\mathcal{P} = \{n \ge 0 \ : \ n \equiv 1, 3 \text{ ou } 5 \pmod 9\}$ et $\mathcal{G}$ son complémentaire, c'est-à-dire les $n$ congrus à $0$, $2$, $4$, $6$, $7$ ou $8$ modulo $9$. Il suffit de vérifier les deux règles.

*Depuis une position de $\mathcal{P}$, tous les coups mènent dans $\mathcal{G}$.* Soit $n \equiv r \pmod 9$ avec $r \in \{1,3,5\}$. Les positions atteignables ont pour restes $r-1$, $r-3$ et $r-6$ modulo $9$ :

| $r$ | $r-1$ | $r-3$ | $r-6$ |
|---|---|---|---|
| $1$ | $0$ | $7$ | $4$ |
| $3$ | $2$ | $0$ | $6$ |
| $5$ | $4$ | $2$ | $8$ |

Aucun de ces neuf restes n'est dans $\{1,3,5\}$ : tous les coups mènent bien dans $\mathcal{G}$. ✓

*Depuis une position de $\mathcal{G}$, il existe un coup qui mène dans $\mathcal{P}$.* Soit $n \equiv r \pmod 9$ avec $r \in \{0,2,4,6,7,8\}$. Voici un coup qui convient :

| $r$ | coup | reste obtenu |
|---|---|---|
| $0$ | prendre $6$ | $3$ |
| $2$ | prendre $1$ | $1$ |
| $4$ | prendre $1$ | $3$ |
| $6$ | prendre $1$ | $5$ |
| $7$ | prendre $6$ | $1$ |
| $8$ | prendre $3$ | $5$ |

Il reste à vérifier que le coup indiqué est **jouable**, c'est-à-dire qu'il reste assez de cailloux. Le seul risque concerne les coups de $6$ cailloux, pour $r = 0$ et $r = 7$. Si $r = 0$ et $n < 6$, alors $n = 0$, et la position $n=0$ est bien gagnante sans avoir besoin de jouer. Si $r = 7$, alors $n \ge 7 > 6$, le coup est jouable. ✓

Les deux règles sont vérifiées, donc la description est exacte.

**Conclusion.**

$$\boxed{\text{Le joueur qui doit jouer perd exactement lorsque } n \equiv 1, \ 3 \ \text{ou} \ 5 \pmod 9 .}$$

Dans tous les autres cas, il gagne, en jouant le coup indiqué dans le second tableau.

## Going further

Reprendre l'exercice avec la règle inverse : celui qui prend le dernier caillou **gagne**. Le motif change-t-il, et de combien ?
