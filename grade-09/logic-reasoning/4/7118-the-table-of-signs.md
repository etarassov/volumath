---
id: "7118"
title: "Le tableau de signes"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [invariant, produit, parite, tableau, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2016"
  reference: "stage_junior_2016.pdf, « Débutants : stratégies de base », l'après-midi (Colin Davalo), exercice 16 (énoncé seul, sans solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2016.pdf"
---

## Statement

On part du tableau $4 \times 4$ suivant, où toutes les cases portent un $+$ sauf une :

|  | col. 1 | col. 2 | col. 3 | col. 4 |
|---|---|---|---|---|
| **ligne 1** | $+$ | $+$ | $+$ | $+$ |
| **ligne 2** | $+$ | $+$ | $+$ | $+$ |
| **ligne 3** | $+$ | $+$ | $+$ | $+$ |
| **ligne 4** | $+$ | $-$ | $+$ | $+$ |

Une opération consiste à choisir une **ligne**, une **colonne** ou une **diagonale**, et à
changer le signe de toutes ses cases.

Ici, une diagonale est n'importe quel alignement de cases parallèle à l'une des deux grandes
diagonales du tableau. Il y en a de longueur $1$ (les quatre coins), $2$, $3$ et $4$.

Peut-on, en répétant ces opérations, obtenir un tableau ne contenant que des $+$ ?

## Hints

1. Remplace chaque $+$ par le nombre $1$ et chaque $-$ par le nombre $-1$. Une opération
   revient alors à multiplier par $-1$ les nombres d'une ligne, d'une colonne ou d'une
   diagonale.
2. Cherche un groupe de cases tel que le **produit** des nombres qu'elles contiennent ne
   change jamais. Pour cela, il faut que chaque ligne, chaque colonne et chaque diagonale
   rencontre ce groupe en un nombre **pair** de cases.
3. Essaie le groupe formé des huit cases suivantes : les deux cases du milieu de la première
   ligne, les deux cases du milieu de la dernière ligne, les deux cases du milieu de la
   première colonne, et les deux cases du milieu de la dernière colonne.
4. Vérifie une par une : les quatre lignes, les quatre colonnes, puis toutes les diagonales
   des deux sens, y compris celles de longueur $1$ et $2$.

## Solution

**La réponse est non.**

**Des signes aux nombres.** Remplaçons chaque $+$ par $1$ et chaque $-$ par $-1$. Une
opération multiplie alors par $-1$ chacun des nombres d'une ligne, d'une colonne ou d'une
diagonale.

**Le groupe de cases à surveiller.** Marquons les huit cases suivantes d'un rond :

|  | col. 1 | col. 2 | col. 3 | col. 4 |
|---|---|---|---|---|
| **ligne 1** |  | ● | ● |  |
| **ligne 2** | ● |  |  | ● |
| **ligne 3** | ● |  |  | ● |
| **ligne 4** |  | ● | ● |  |

Appelons $P$ le **produit** des huit nombres qui se trouvent dans ces cases.

**Pourquoi $P$ ne change jamais.** Quand on applique une opération, chaque case marquée
qu'elle touche voit son nombre multiplié par $-1$. Le produit $P$ est donc multiplié par
$(-1)^m$, où $m$ est le nombre de cases marquées que la ligne, la colonne ou la diagonale
choisie contient. Si $m$ est pair, $P$ ne change pas.

Vérifions que c'est toujours le cas.

- *Les lignes.* La ligne 1 contient les deux cases marquées des colonnes 2 et 3 : $m = 2$.
  La ligne 4 aussi. Les lignes 2 et 3 contiennent les deux cases marquées des colonnes 1 et
  4 : $m = 2$.
- *Les colonnes.* Par symétrie de la figure, chaque colonne contient exactement deux cases
  marquées.
- *Les diagonales descendantes* (celles qui vont du coin haut-gauche vers le coin bas-droite).
  Il y en a sept. Celle de longueur $4$ est la grande diagonale, qui ne contient aucune case
  marquée : $m = 0$. Celle des cases (1,3) et (2,4) en contient deux. Celle des cases (1,2),
  (2,3), (3,4) en contient deux, à savoir (1,2) et (3,4). Celle des cases (2,1), (3,2),
  (4,3) en contient deux, à savoir (2,1) et (4,3). Celle des cases (3,1) et (4,2) en contient
  deux. Les deux diagonales de longueur $1$, réduites aux coins (1,4) et (4,1), n'en
  contiennent aucune.
- *Les diagonales montantes.* Le même examen donne $m = 0$ pour la grande diagonale et pour
  les deux coins (1,1) et (4,4), et $m = 2$ pour les quatre autres.

Dans tous les cas $m$ est pair, donc **le produit $P$ garde toujours la même valeur.**

**Conclusion.** Au départ, la seule case portant un $-$ est la case (ligne 4, colonne 2),
qui est **marquée**. Le produit $P$ vaut donc $-1$ au départ, et il vaudra $-1$ pour
toujours.

Si le tableau ne contenait que des $+$, toutes les cases marquées porteraient un $1$ et $P$
vaudrait $+1$. C'est impossible.

**On ne peut donc pas obtenir un tableau entièrement positif.**

## Going further

Tout le problème est de trouver le bon groupe de cases : une fois qu'on le tient, la
démonstration est mécanique. Comment le trouver ? On cherche une figure qui rencontre chaque
ligne, chaque colonne et chaque diagonale en un nombre pair de cases. La symétrie aide :
la figure ci-dessus est invariante par les symétries du carré, ce qui permet de ne vérifier
qu'un quart des cas et de conclure par symétrie pour les autres.

Et si le $-$ de départ était placé sur une case **non marquée** ? Le raisonnement ne
bloquerait plus, et en effet la réponse changerait. Par exemple si le $-$ est dans le coin
$(1,1)$, il suffit d'un seul coup : la diagonale montante de longueur $1$ réduite à ce coin.
Un coup, et le tableau est entièrement positif.

Une question pour continuer : pour lesquelles des seize positions possibles du $-$ de départ
peut-on rendre le tableau entièrement positif ? Le produit $P$ interdit les huit cases
marquées ; reste à examiner les huit autres.
