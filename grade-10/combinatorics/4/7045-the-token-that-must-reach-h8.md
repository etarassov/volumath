---
id: "7045"
title: "Le jeton qui doit atteindre H8"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [jeu, strategie gagnante, positions perdantes, echiquier]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des avancés"
  reference: "stage_junior_2011.pdf, « Combinatoire », TD stratégies, exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

On pose un jeton sur la case **C1** d'un échiquier ordinaire (colonnes A à H, lignes $1$ à
$8$).

Deux joueurs le déplacent à tour de rôle. À chaque tour, on déplace le jeton d'autant de cases
qu'on veut, mais au moins une, dans l'une des trois directions suivantes :

- vers la **droite** (on reste sur la même ligne) ;
- vers le **haut** (on reste sur la même colonne) ;
- en **diagonale** vers le haut et vers la droite.

Celui qui amène le jeton sur la case **H8** gagne.

Lequel des deux joueurs peut être sûr de gagner ?

## Hints

1. Le jeton ne peut jamais reculer, donc la partie se termine forcément : elle ne peut que
   finir en H8.
2. Appelle une case **perdante** lorsque le joueur dont c'est le tour, jeton posé sur cette
   case, est sûr de perdre. Et **gagnante** dans le cas contraire.
3. Commence par la fin. La case H8 est perdante : celui qui doit jouer depuis H8 a déjà perdu,
   l'adversaire vient d'y arriver.
4. Une case est gagnante dès qu'**un** coup en part vers une case perdante. Elle est perdante
   si **tous** les coups qui en partent mènent à des cases gagnantes.
5. Depuis H8, quelles cases peuvent l'atteindre en un coup ? Toute la ligne $8$, toute la
   colonne H, toute la diagonale A1–H8. Marque-les gagnantes, et cherche la prochaine case
   perdante.

## Solution

**Le vocabulaire.**

Disons qu'une case est **perdante** si le joueur dont c'est le tour, avec le jeton sur cette
case, perd à coup sûr quand l'adversaire joue bien. Et **gagnante** sinon.

Deux règles, qui découlent directement de la définition :

- une case est **gagnante** s'il existe au moins un coup qui mène à une case perdante (on y va,
  et l'adversaire est coincé) ;
- une case est **perdante** si tous les coups qui en partent mènent à des cases gagnantes.

Comme le jeton ne recule jamais, la partie se termine, et on peut analyser les cases **en
remontant depuis la fin**.

**On remonte.**

**H8 est perdante.** Le joueur dont c'est le tour vient de voir l'adversaire gagner.

**Toute la ligne 8, toute la colonne H et toute la diagonale A1–H8 sont gagnantes** : depuis
n'importe laquelle de ces cases, un seul coup amène le jeton en H8.

Cherchons la case perdante suivante. Prenons **G6**. Depuis G6, quatre coups seulement sont
possibles :

- vers la droite : **H6**, sur la colonne H, donc gagnante ;
- vers le haut d'une case : **G7**. La diagonale A1–H8 passe par A1, B2, C3, D4, E5, F6, G7,
  H8 : G7 est dessus, donc gagnante ;
- vers le haut de deux cases : **G8**, sur la ligne $8$, donc gagnante ;
- en diagonale : **H7**, sur la colonne H, donc gagnante.

Tous les coups depuis G6 mènent à une case gagnante : **G6 est perdante.** Par symétrie
(échanger lignes et colonnes ne change rien au jeu), **F7 est perdante** aussi.

On marque alors gagnantes toutes les cases non encore décidées qui atteignent G6 ou F7 en un
coup, c'est-à-dire la ligne $6$, la colonne G, la diagonale de G6, la ligne $7$, la colonne F
et la diagonale de F7.

En continuant de la même façon, on trouve successivement que **C5 et E3 sont perdantes**,
puis que **A4 et D1 sont perdantes**. Et il n'y en a pas d'autres.

**Le tableau complet.**

Voici l'échiquier, avec **P** pour perdante et **G** pour gagnante :

| | A | B | C | D | E | F | G | H |
|---|---|---|---|---|---|---|---|---|
| **8** | G | G | G | G | G | G | G | **P** |
| **7** | G | G | G | G | G | **P** | G | G |
| **6** | G | G | G | G | G | G | **P** | G |
| **5** | G | G | **P** | G | G | G | G | G |
| **4** | **P** | G | G | G | G | G | G | G |
| **3** | G | G | G | G | **P** | G | G | G |
| **2** | G | G | G | G | G | G | G | G |
| **1** | G | G | G | **P** | G | G | G | G |

**Conclusion.**

La case de départ **C1 est gagnante** : c'est donc le **premier joueur** qui possède une
stratégie gagnante.

Son premier coup : amener le jeton en **D1** (un pas vers la droite) ou en **C5** (quatre pas
vers le haut). Les deux sont des cases perdantes.

Ensuite il applique toujours la même règle : après chaque coup de l'adversaire, le jeton est
sur une case gagnante, donc il existe un coup qui le ramène sur une case perdante, et le
premier joueur le joue. L'adversaire ne voit donc jamais que des cases perdantes.

Comme le jeton avance à chaque coup, la partie s'arrête, et elle ne peut s'arrêter qu'en H8.
Or H8 est perdante : c'est donc l'adversaire qui la reçoit, c'est-à-dire le premier joueur
qui a amené le jeton dessus. Il a gagné.

## Going further

Ce jeu est le célèbre **jeu de Wythoff**, sous un déguisement. Pour le voir, compte les
distances : si le jeton est sur la colonne numéro $x$ et la ligne $y$, pose
$$a = 8 - x \quad \text{(colonnes restant à parcourir)}, \qquad b = 8 - y
\quad \text{(lignes restant à parcourir)} .$$

Les trois coups deviennent : diminuer $a$, diminuer $b$, ou diminuer les deux de la même
quantité. Le but est d'arriver à $(0;0)$.

Les couples perdants qu'on a trouvés sont alors
$$(0;0), \quad (1;2), \quad (3;5), \quad (4;7),$$
et leurs symétriques. Sur un échiquier plus grand, la suite continuerait par $(6;10)$,
$(8;13)$, $(9;15)$… Les premières coordonnées sont $0, 1, 3, 4, 6, 8, 9, \ldots$ et l'écart
entre les deux coordonnées d'un couple augmente de $1$ à chaque fois. C'est le nombre d'or qui
se cache derrière cette suite, mais c'est une autre histoire.
