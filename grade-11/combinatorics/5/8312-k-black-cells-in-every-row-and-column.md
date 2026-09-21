---
id: "8312"
title: "k cases noires par ligne et par colonne"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [grille, coloriage, minimum, denombrement, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, Coupe Animath de printemps 2020"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Coupe Animath de printemps 2020, exercice 17 (lycée). La construction décrite dans le corrigé publié est mal recopiée : elle contredit la figure qui l'accompagne. La construction donnée ici est celle de la figure, vérifiée."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Soit $k > 1$ un entier fixé.

On veut colorier en noir certaines cases d'un tableau carré $n \times n$ de telle sorte que :

- deux cases noires n'aient jamais ni un côté ni un sommet en commun ;
- chaque ligne contienne exactement $k$ cases noires ;
- chaque colonne contienne exactement $k$ cases noires.

Déterminer le plus petit entier $n$ pour lequel c'est possible.

## Hints

1. Comme toujours quand on cherche un plus petit entier, il y a deux moitiés : montrer qu'une certaine valeur marche en la construisant, et montrer qu'on ne peut pas descendre en dessous.
2. Deux cases d'un même carré $2 \times 2$ ont toujours un côté ou un sommet en commun. Qu'en déduis-tu sur le nombre de cases noires dans un carré $2 \times 2$ ?
3. Regarde deux lignes **consécutives** du tableau. Combien de cases noires contiennent-elles en tout ? Découpe-les en carrés $2 \times 2$ en partant de la gauche.
4. Traite séparément le cas $n$ pair et le cas $n$ impair : quand $n$ est impair il reste une colonne isolée à droite.
5. Tu obtiens $n \geqslant 4k-1$. Il reste à éliminer $n = 4k-1$. Dans ce cas, le découpage est **serré** : la dernière colonne doit contenir exactement une case noire dans chaque paire de lignes consécutives. Que devient alors l'avant-dernière colonne ?
6. Pour la construction avec $n = 4k$, coupe le tableau en quatre carrés de côté $2k$ et traite chacun séparément, en décalant les cases noires d'un quart de tour à l'autre.

## Solution

La réponse est $n = 4k$.

**Le fait de base : au plus une case noire par carré $2 \times 2$.**

Prenons n'importe quel carré $2 \times 2$ du tableau. Deux de ses quatre cases ont toujours soit
un côté commun, soit un sommet commun. Il ne peut donc y avoir **au plus qu'une** case noire
dans un tel carré.

**Première minoration : $n \geqslant 4k-1$.**

Choisissons deux lignes consécutives. Elles contiennent en tout $2k$ cases noires, puisque
chaque ligne en contient $k$.

Découpons ces deux lignes en carrés $2 \times 2$ en partant de la gauche. Si $n$ est pair, on
obtient exactement $\tfrac{n}{2}$ carrés et rien d'autre ; chacun contient au plus une case noire,
donc

$$2k \leqslant \frac{n}{2} , \qquad \text{c'est-à-dire} \qquad n \geqslant 4k .$$

Si $n$ est impair, écrivons $n = 2m+1$. On obtient $m$ carrés $2 \times 2$, plus une colonne
isolée de deux cases tout à droite. Ces deux cases ont un côté commun, donc cette colonne
contient au plus une case noire. Ainsi

$$2k \leqslant m + 1 , \qquad \text{donc} \qquad m \geqslant 2k-1 \qquad \text{et} \qquad n = 2m+1 \geqslant 4k-1 .$$

Dans les deux cas, $n \geqslant 4k-1$.

**On élimine $n = 4k-1$.**

Supposons par l'absurde qu'un tableau de taille $(4k-1) \times (4k-1)$ convienne. Ici $n$ est
impair et $m = 2k-1$, donc l'inégalité $2k \leqslant m+1 = 2k$ est une **égalité** : tous les
maillons de la chaîne sont saturés.

Concrètement, cela veut dire que, pour n'importe quelle paire de lignes consécutives :

- chacun des $2k-1$ carrés $2 \times 2$ des colonnes $1$ à $4k-2$ contient exactement une case noire ;
- la dernière colonne contient exactement une case noire.

Regardons cette case noire de la dernière colonne, disons en ligne $i$ ou en ligne $i+1$ (les
deux lignes choisies). Les deux cases de l'**avant-dernière** colonne situées sur ces deux
lignes lui touchent, l'une par un côté et l'autre par un sommet. Elles sont donc toutes les
deux blanches.

Ce raisonnement vaut pour **n'importe quelle** paire de lignes consécutives, donc pour toutes
les lignes du tableau : l'avant-dernière colonne est entièrement blanche. Elle contient alors
$0$ case noire, et non $k \geqslant 1$. C'est une contradiction.

Donc $n \neq 4k-1$, et finalement

$$n \geqslant 4k .$$

**La construction pour $n = 4k$.**

Voici un coloriage explicite d'un tableau $4k \times 4k$. On numérote les lignes de $1$ à $4k$
du haut vers le bas et les colonnes de $1$ à $4k$ de la gauche vers la droite.

| lignes | cases noires |
|---|---|
| $1, 3, 5, \ldots, 2k-1$ | colonnes $2, 4, \ldots, 2k$ |
| $2, 4, 6, \ldots, 2k$ | colonnes $2k+2, 2k+4, \ldots, 4k$ |
| $2k+1, 2k+3, \ldots, 4k-1$ | colonnes $1, 3, \ldots, 2k-1$ |
| $2k+2, 2k+4, \ldots, 4k$ | colonnes $2k+1, 2k+3, \ldots, 4k-1$ |

Voici ce que cela donne pour $k = 2$, donc sur un tableau $8 \times 8$. Les traits rouges
séparent les quatre quarts du tableau.

![Un tableau 8 sur 8 avec deux cases noires par ligne et par colonne, sans que deux cases noires se touchent](8312-figure-1.svg)

*Chaque ligne a bien $k$ cases noires :* chacune des quatre familles de lignes reçoit une liste
de $k$ colonnes.

*Chaque colonne a bien $k$ cases noires :* les colonnes paires inférieures ou égales à $2k$ sont
servies par les lignes $1, 3, \ldots, 2k-1$, soit $k$ lignes ; les colonnes impaires inférieures
à $2k$ par les lignes $2k+1, 2k+3, \ldots, 4k-1$, soit $k$ lignes ; les colonnes paires
supérieures à $2k$ par les lignes $2, 4, \ldots, 2k$ ; les colonnes impaires supérieures à $2k$
par les lignes $2k+2, \ldots, 4k$. Chacune des $4k$ colonnes apparaît une fois et une seule dans
cette liste, avec $k$ cases noires.

*Deux cases noires ne se touchent jamais.* Sur une même ligne, les colonnes noires diffèrent
d'au moins $2$. Pour deux lignes consécutives, il suffit de vérifier les trois situations :

- deux lignes consécutives de la moitié haute : l'une a ses cases noires dans les colonnes $\leqslant 2k$, l'autre dans les colonnes $\geqslant 2k+2$, l'écart est au moins $2$ ;
- les lignes $2k$ et $2k+1$ : colonnes $\geqslant 2k+2$ d'un côté, $\leqslant 2k-1$ de l'autre, l'écart est au moins $3$ ;
- deux lignes consécutives de la moitié basse : colonnes $\leqslant 2k-1$ d'un côté, $\geqslant 2k+1$ de l'autre, l'écart est au moins $2$.

Enfin, deux lignes distantes d'au moins deux rangs ne peuvent évidemment pas se toucher.

**Conclusion.** Le plus petit entier $n$ cherché est

$$\boxed{n = 4k} .$$

## Going further

Beaucoup d'élèves ont lu cet énoncé à l'envers, en cherchant le plus petit $n$ tel qu'**il
existe** un $k > 1$ qui marche. Ce problème-là est beaucoup plus facile, et sa réponse est
$n = 8$ avec $k = 2$, qui est justement la figure ci-dessus.

Une construction plus simple donne $n = 5k$ : on prend un motif en diagonale qui se répète. Elle
est correcte mais ne donne pas la valeur optimale ; c'est la réponse à laquelle beaucoup de
candidats se sont arrêtés.
