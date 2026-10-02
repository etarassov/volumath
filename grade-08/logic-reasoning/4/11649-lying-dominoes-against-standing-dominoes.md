---
id: "11649"
title: "Dominos couchés contre dominos debout"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [jeu, strategie gagnante, dominos, denombrement, grille]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 5 (pot-pourri)"
  reference: "2018-02_pofm-2017-2018-envoi5.pdf, exercices du groupe B, exercice 2 ; corrigé 2018-06_pofm_2017-2018-envoi5-corrige.pdf (le corrigé est très bref sur le décompte final, il est détaillé ci-dessous)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/02/pofm-2017-2018-envoi5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-02_pofm-2017-2018-envoi5.pdf"
---

## Statement

Adalbert et Babette jouent aux dominos sur une grille rectangulaire de $2$ cases de hauteur et $2018$ cases de largeur. Chaque domino recouvre exactement deux cases voisines de la grille.

Adalbert commence. Il pose un domino **couché** (horizontal), qui recouvre deux cases voisines d'une même ligne. Puis Babette pose un domino **debout** (vertical), qui recouvre les deux cases d'une même colonne. Ils continuent ainsi chacun à son tour, Adalbert toujours avec des dominos couchés et Babette toujours avec des dominos debout. Un domino ne doit jamais chevaucher un domino déjà posé.

Le premier joueur qui ne peut plus jouer a perdu.

Montrer qu'Adalbert a une stratégie gagnante, c'est-à-dire une façon de jouer qui le fait gagner quoi que fasse Babette.

## Hints

1. Un domino de Babette occupe toujours une colonne entière. Découpe la grille en $1009$ carrés de $2 \times 2$ cases.
2. Si Adalbert pose un domino sur la ligne du haut d'un carré encore vide, Babette pourra-t-elle un jour jouer dans ce carré ? Qui peut encore utiliser la ligne du bas de ce carré ?
3. Chaque coup de Babette abîme au plus un carré. Pendant combien de coups Adalbert est-il sûr de trouver un carré encore vide ?
4. Combien de dominos la grille peut-elle contenir au maximum ?

## Solution

On numérote les colonnes de $1$ à $2018$ et on découpe la grille en $1009$ **blocs** de $2 \times 2$ cases : les colonnes $1$ et $2$, puis $3$ et $4$, et ainsi de suite jusqu'aux colonnes $2017$ et $2018$.

Un domino de Babette occupe une colonne entière, donc il est toujours à l'intérieur d'un seul bloc.

**La stratégie d'Adalbert.** Adalbert ne pose ses dominos qu'à l'intérieur d'un bloc, jamais à cheval sur deux blocs.

- Tant qu'il existe un bloc **vide**, où personne n'a encore joué, Adalbert pose son domino sur la ligne du haut d'un bloc vide. On dit que ce bloc est **ouvert** par Adalbert.
- Quand il n'y a plus de bloc vide, Adalbert pose son domino sur la ligne du bas d'un bloc qu'il a ouvert, et dont la ligne du bas est encore libre.

**Étape 1 : chaque bloc ouvert vaut deux coups.** Dans un bloc ouvert par Adalbert, les deux cases du haut sont couvertes. Babette ne peut donc jamais y jouer, puisqu'il lui faudrait une colonne entièrement libre. Et Adalbert lui-même n'y pose rien d'autre tant qu'il ouvre des blocs. La ligne du bas de ce bloc reste donc libre jusqu'à ce qu'Adalbert l'utilise : chaque bloc ouvert lui garde **un coup en réserve**.

**Étape 2 : Adalbert ouvre au moins $505$ blocs.** Plaçons-nous juste avant le coup numéro $j$ d'Adalbert. Il a déjà joué $j - 1$ fois, et Babette aussi.

- Chacun des $j - 1$ coups d'Adalbert a touché un seul bloc.
- Chacun des $j - 1$ coups de Babette a touché un seul bloc, puisque ses dominos tiennent dans une colonne.

Au plus $2j - 2$ blocs ont donc été touchés. Si $j \leqslant 505$, cela fait au plus $2 \times 504 = 1008$ blocs, et il reste au moins un bloc vide sur les $1009$. Ainsi, pendant ses $505$ premiers coups, Adalbert trouve toujours un bloc vide à ouvrir.

Notons $K$ le nombre de blocs qu'Adalbert ouvre en tout. On vient de voir que $K \geqslant 505$.

**Étape 3 : Adalbert peut jouer au moins $1010$ fois.** Adalbert ouvre un bloc à chacun de ses $K$ premiers coups. Ensuite, il n'y a plus jamais de bloc vide, et il dispose de ses $K$ coups en réserve, qu'il joue un par un. Il est donc sûr de pouvoir jouer à chacun de ses $2K$ premiers tours, et $2K \geqslant 1010$.

**Étape 4 : Babette sera bloquée la première.** La grille a $2 \times 2018 = 4036$ cases et chaque domino en couvre $2$, donc on ne peut jamais poser plus de $2018$ dominos.

Chaque coup couvre deux nouvelles cases, donc la partie s'arrête forcément : un des deux joueurs finit par ne plus pouvoir jouer. Supposons que ce soit Adalbert, à son tour numéro $k$. D'après l'étape 3, on a $k \geqslant 1011$. Avant ce tour, Adalbert a posé $k - 1 \geqslant 1010$ dominos, et Babette aussi. Cela fait au moins $2020$ dominos sur la grille, ce qui est impossible.

C'est donc Babette qui se retrouve bloquée la première.

**Conclusion : avec la stratégie des blocs, Adalbert gagne quoi que fasse Babette.**

## Going further

Le décompte de l'étape 4 utilise le fait que $1009$ est impair. Avec une grille de $2$ cases sur $4$, il n'y a que deux blocs : Adalbert en ouvre un, Babette joue dans l'autre, et la même stratégie le fait perdre. Pourtant, un ordinateur montre qu'Adalbert peut gagner sur les grilles de largeur $2, 3, 4, 6, 7, 8, 10, 11, 12, 14$, mais que Babette gagne sur celles de largeur $5$, $9$ et $13$. Sur une grille de largeur $4$, pourrais-tu trouver une stratégie gagnante pour Adalbert ?
