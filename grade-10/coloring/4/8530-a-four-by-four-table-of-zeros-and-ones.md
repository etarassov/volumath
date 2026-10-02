---
id: "8530"
title: "Un tableau 4 sur 4 de zéros et de uns"
grade: 10
theme: coloring
difficulty: 4
duration_min: 45
tags: [invariant, parite, coloriage-en-damier, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Invariants » (Xavier) du Groupe A, exercice 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

On considère un tableau $4 \times 4$ rempli de $0$ et de $1$. Une **opération** consiste à
choisir une ligne, une colonne ou une des deux grandes diagonales, et à y échanger tous les
$0$ et tous les $1$ (chaque $0$ devient $1$ et chaque $1$ devient $0$).

Pour chacun des trois tableaux ci-dessous, peut-on arriver, après un certain nombre
d'opérations, à un tableau ne contenant que des $0$ ?

| | | | |
|---|---|---|---|
| 0 | 1 | 1 | 0 |
| 1 | 1 | 0 | 1 |
| 0 | 0 | 1 | 1 |
| 0 | 0 | 1 | 1 |

| | | | |
|---|---|---|---|
| 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 1 |
| 0 | 0 | 0 | 1 |
| 1 | 0 | 1 | 1 |

| | | | |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 1 | 1 | 0 | 0 |
| 0 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 |

*Les deux grandes diagonales sont celles qui joignent deux coins opposés ; chacune contient
$4$ cases.*

## Hints

1. Une ligne, une colonne et une diagonale contiennent chacune $4$ cases. Que devient le nombre total de $1$ quand on retourne $4$ cases ?
2. Pour le premier tableau, compte simplement les $1$.
3. Pour le deuxième, le compte total de $1$ ne suffit pas. Colorie le tableau comme un damier et compte les $1$ sur les cases d'une seule couleur. Combien de cases de cette couleur y a-t-il sur une ligne ? sur une colonne ? sur une diagonale ?
4. Pour le troisième, il n'y a sans doute pas d'obstacle : cherche directement une suite d'opérations qui marche. Trois opérations suffisent.

## Solution

### Premier tableau : impossible

Une ligne, une colonne ou une diagonale contient exactement $4$ cases. Lorsqu'on y échange
les $0$ et les $1$, si $k$ de ces cases valaient $1$, elles valent maintenant $0$, et les
$4 - k$ autres passent de $0$ à $1$. Le nombre total de $1$ du tableau varie donc de

$$(4 - k) - k = 4 - 2k ,$$

qui est un nombre **pair**. La parité du nombre total de $1$ ne change donc jamais.

Comptons les $1$ du premier tableau : ligne par ligne, $2 + 3 + 2 + 2 = 9$. C'est impair.
Un tableau rempli de $0$ contient $0$ fois le chiffre $1$, ce qui est pair. C'est donc
**impossible**.

### Deuxième tableau : impossible aussi

Comptons d'abord les $1$ : $1 + 3 + 1 + 3 = 8$, qui est pair. La parité du nombre total ne
donne donc rien. Il faut un invariant plus fin.

**Le damier.** Colorions le tableau comme un damier, en mettant en blanc les cases dont la
somme ligne + colonne est paire (les coins, par exemple), et en noir les autres. Il y a $8$
cases de chaque couleur.

Combien de cases blanches rencontre-t-on ?

- Sur une ligne : une case sur deux, donc $2$ cases blanches.
- Sur une colonne : de même, $2$ cases blanches.
- Sur une grande diagonale : les $4$ cases d'une grande diagonale sont toutes de la même
  couleur. Celle qui va du coin en haut à gauche au coin en bas à droite est entièrement
  blanche ($4$ cases blanches) ; l'autre est entièrement noire ($0$ case blanche). Dans les
  deux cas, c'est un nombre **pair** de cases blanches.

Donc, quelle que soit l'opération, on retourne un nombre pair de cases blanches. Comme
ci-dessus, le nombre de $1$ situés sur des cases blanches varie d'un nombre pair : **sa
parité est un invariant**.

**Le compte.** Numérotons lignes et colonnes de $1$ à $4$. Les cases blanches sont celles où
ligne et colonne ont la même parité. Dans le deuxième tableau, les valeurs sur ces cases sont

- ligne 1 (colonnes 1 et 3) : $0$ et $0$ ;
- ligne 2 (colonnes 2 et 4) : $1$ et $1$ ;
- ligne 3 (colonnes 1 et 3) : $0$ et $0$ ;
- ligne 4 (colonnes 2 et 4) : $0$ et $1$.

Cela fait $3$ fois le chiffre $1$ sur les cases blanches, un nombre impair. Dans un tableau
tout à $0$, ce nombre vaut $0$, qui est pair. C'est donc **impossible**.

### Troisième tableau : possible

Effectuons les trois opérations suivantes.

**Opération 1 : on retourne la colonne 4.** Cette colonne contenait $0, 0, 1, 1$ ; elle
contient maintenant $1, 1, 0, 0$. Le tableau devient

| | | | |
|---|---|---|---|
| 0 | 0 | 0 | 1 |
| 1 | 1 | 0 | 1 |
| 0 | 1 | 0 | 0 |
| 1 | 0 | 0 | 0 |

**Opération 2 : on retourne la ligne 2.** Cette ligne contenait $1, 1, 0, 1$ ; elle contient
maintenant $0, 0, 1, 0$. Le tableau devient

| | | | |
|---|---|---|---|
| 0 | 0 | 0 | 1 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 1 | 0 | 0 | 0 |

**Opération 3.** Il ne reste plus de $1$ que sur l'antidiagonale, celle qui va du coin en bas
à gauche au coin en haut à droite. On la retourne : le tableau ne contient plus que des $0$.

C'est donc **possible**.

## Going further

Les deux premiers cas montrent une chose utile : quand un premier invariant ne suffit pas à
conclure, cela ne veut pas dire que la réponse est « oui ». Il faut alors soit affiner
l'invariant, soit trouver une construction. Ici, le passage du compte global au compte sur
les cases d'une seule couleur du damier suffit.
