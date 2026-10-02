---
id: "8311"
title: "Deux groupes de somme au plus 70"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [partition, algorithme-glouton, majoration, contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, Coupe Animath de printemps 2020"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Coupe Animath de printemps 2020, exercice 16 (lycée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

On écrit une liste d'entiers strictement positifs, tous inférieurs ou égaux à $10$. Ils ne sont
pas forcément distincts, et il peut y en avoir autant qu'on veut. On note $S$ leur somme.

Déterminer toutes les valeurs de $S$ ayant la propriété suivante :

> **quelle que soit** la liste d'entiers de somme $S$, on peut toujours répartir ces entiers en deux groupes dont chacun a une somme inférieure ou égale à $70$.

## Hints

1. Attention au sens de l'énoncé. On ne cherche pas les $S$ pour lesquels **il existe** une liste qui se partage bien ; on cherche les $S$ pour lesquels **toutes** les listes se partagent bien. Une seule liste qui résiste suffit à éliminer une valeur de $S$.
2. Une remarque immédiate donne une première borne : si un partage existe, les deux sommes valent au plus $70$ chacune, donc $S \leqslant 140$.
3. Pour éliminer des valeurs de $S$, cherche des listes « difficiles ». Quelles listes sont les plus dures à couper en deux ? Beaucoup de nombres presque égaux, ou peu de gros nombres ?
4. Essaie quinze fois le nombre $9$. Combien vaut $S$ ? Dans n'importe quel partage en deux groupes, combien de nombres au minimum se retrouvent dans le même groupe ?
5. Essaie ensuite quatorze fois $9$ et une fois $8$.
6. Pour l'autre moitié du travail, construis le premier groupe **gloutonnement** : on y verse des nombres tant que sa somme reste $\leqslant 70$, et on s'arrête quand plus aucun nombre restant ne peut y entrer. Que sait-on alors de la somme du premier groupe, et de chaque nombre resté dehors ?

## Solution

La réponse est : **les valeurs de $S$ qui conviennent sont exactement les entiers
$S \leqslant 133$.**

Il y a donc deux choses à démontrer : qu'aucun $S \geqslant 134$ ne convient, et que tout
$S \leqslant 133$ convient.

**Partie 1 : les valeurs $S \geqslant 134$ ne conviennent pas.**

*Le cas $S \geqslant 141$.* Deux groupes de somme au plus $70$ ont une somme totale d'au plus
$140$. Donc aucune liste de somme $S \geqslant 141$ ne peut se partager ainsi.

*Le cas $134 \leqslant S \leqslant 140$.* Il suffit d'exhiber, pour chacune de ces valeurs, une
liste qui résiste.

Pour $S = 134$, prenons **quatorze fois le nombre $9$ et une fois le nombre $8$** :

$$14 \times 9 + 8 = 126 + 8 = 134 .$$

Cette liste contient $15$ nombres. Si on la coupe en deux groupes, l'un des deux contient au
moins $8$ nombres, puisque $7 + 7 = 14 < 15$. Or les $8$ nombres les plus petits qu'on puisse
réunir dans cette liste sont le $8$ et sept $9$, dont la somme vaut

$$8 + 7 \times 9 = 8 + 63 = 71 > 70 .$$

Ce groupe dépasse donc $70$ : aucun partage ne convient, et $S = 134$ est éliminé.

Pour $135 \leqslant S \leqslant 140$, prenons **quinze fois le nombre $9$**, ce qui fait $135$,
et complétons avec $S - 135$ fois le nombre $1$ (entre $0$ et $5$ fois). Il y a au moins $15$
nombres, dont quinze $9$. Dans tout partage, l'un des groupes contient au moins huit de ces
quinze $9$, donc sa somme vaut au moins $8 \times 9 = 72 > 70$. Ces valeurs sont éliminées
elles aussi.

**Partie 2 : toute valeur $S \leqslant 133$ convient.**

Donnons-nous une liste quelconque d'entiers de $1$ à $10$, de somme $S \leqslant 133$, et
construisons le partage.

*La construction gloutonne.* On parcourt les nombres un par un. On place le nombre courant dans
le groupe $A$ si cela laisse la somme de $A$ inférieure ou égale à $70$ ; sinon on le place dans
le groupe $B$. À la fin, notons $S_A$ et $S_B$ les sommes des deux groupes, avec
$S_A + S_B = S$.

Deux propriétés découlent de la construction :

- $S_A \leqslant 70$, car on n'a jamais laissé la somme de $A$ dépasser $70$ ;
- pour tout nombre $b$ placé dans $B$, on a $S_A + b > 70$. En effet, au moment où $b$ a été refusé, la somme de $A$ valait $S'$ avec $S' + b > 70$, et comme $A$ n'a fait que grossir ensuite, $S_A \geqslant S'$.

*Si $B$ est vide.* Alors $S_A = S$. Mais $S_A \leqslant 70$, donc le partage $(A, \varnothing)$
convient : les deux sommes valent $S \leqslant 70$ et $0$.

*Si $B$ n'est pas vide.* Prenons $b$ dans $B$. Comme $b \leqslant 10$ et $S_A + b > 70$ :

$$S_A > 70 - b \geqslant 60 , \qquad \text{donc} \qquad S_A \geqslant 61 .$$

Premier cas : $S_A \geqslant 63$. Alors

$$S_B = S - S_A \leqslant 133 - 63 = 70 ,$$

et les deux groupes conviennent.

Second cas : $S_A = 61$ ou $S_A = 62$. Posons $d = 62 - S_A$, donc $d \in \{0, 1\}$. Pour tout
nombre $b$ de $B$,

$$b > 70 - S_A = 70 - (62 - d) = 8 + d , \qquad \text{donc} \qquad b \geqslant 9 + d .$$

- Si $B$ contient au plus $7$ nombres, alors $S_B \leqslant 7 \times 10 = 70$ et le partage convient.
- Si $B$ contient au moins $8$ nombres, alors

$$S = S_A + S_B \geqslant (62 - d) + 8(9 + d) = 62 - d + 72 + 8d = 134 + 7d \geqslant 134 ,$$

ce qui contredit $S \leqslant 133$. Ce sous-cas ne se produit donc jamais.

Dans tous les cas possibles, le partage existe.

**Conclusion.** Les valeurs de $S$ cherchées sont exactement les entiers $S \leqslant 133$.

## Going further

Il est tentant de dire que « la répartition optimale consiste à mettre sept $9$ d'un côté et le
reste de l'autre ». C'est vrai dans l'exemple à quatorze $9$ et un $8$, mais ce n'est pas une
démonstration : il faut prouver que **tout** partage échoue, pas seulement celui auquel on
pense. C'est pour cela que l'argument ci-dessus ne parle que du nombre de termes dans le plus
gros groupe, sans jamais décrire le partage.

Remarquons aussi que la borne $133$ est fine d'un cheveu : la seule liste qui bloque à $S = 134$
est celle à quatorze $9$ et un $8$, à l'ordre près.
