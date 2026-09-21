---
id: "7817"
title: "Deux voisins à retirer sur un cercle de 2015 nombres"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 45
tags: [parite, invariant, disjonction de cas, descente]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, Coupe Animath du 2 juin 2015, énoncés communs, exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

On écrit $2015$ entiers strictement positifs autour d'un cercle.

Montrer qu'il est toujours possible de choisir deux de ces nombres qui sont **voisins** sur le
cercle de telle sorte que, après les avoir supprimés, les $2013$ nombres restants ne puissent
pas être répartis en deux groupes de même somme.

## Hints

1. Quand est-il **impossible** de répartir des nombres en deux groupes de même somme ? Il y a
   une raison très simple qui marche toujours : regarde la somme totale.
2. Tu veux donc rendre la somme des $2013$ nombres restants impaire. Selon que la somme
   initiale est paire ou impaire, quelle doit être la parité de la somme des deux nombres
   supprimés ?
3. Il te faut donc soit deux voisins de parités différentes, soit deux voisins de même parité.
   Montre que l'un des deux existe toujours. Le fait que $2015$ soit impair va servir.
4. Il reste un cas gênant : si **tous** les nombres sont pairs, il n'y a aucune paire de
   voisins de parités différentes. Que peux-tu faire des nombres dans ce cas, sans changer la
   question posée ?

## Solution

**L'idée de départ.**

Si la somme de plusieurs nombres est **impaire**, on ne peut pas les répartir en deux groupes
de même somme : les deux sommes vaudraient chacune la moitié du total, or un nombre impair n'a
pas de moitié entière.

Il suffit donc de trouver deux voisins dont la suppression laisse une somme impaire.

Notons $S$ la somme des $2015$ nombres. Si on supprime deux voisins de somme $s$, il reste
$S - s$. Il faut donc :

- si $S$ est **paire**, choisir deux voisins de somme **impaire**, donc de parités
  **différentes** ;
- si $S$ est **impaire**, choisir deux voisins de somme **paire**, donc de **même** parité.

**Une simplification préalable.**

Supposons que les $2015$ nombres soient tous pairs. Divisons-les alors tous par $2$. Cela ne
change rien à la question : une répartition en deux groupes de même somme existe pour les
nouveaux nombres si et seulement si elle existait pour les anciens (on divise simplement les
deux sommes par $2$). Les voisinages sont eux aussi inchangés.

On peut recommencer tant que tous les nombres sont pairs. Cela s'arrête forcément, car les
nombres sont des entiers strictement positifs et ils diminuent à chaque fois.

**On peut donc supposer qu'au moins un des nombres est impair.**

**Cas 1 : la somme $S$ est paire.**

Les nombres ne peuvent pas être tous impairs : une somme de $2015$ nombres impairs est impaire
(c'est une somme d'un nombre impair de termes impairs), alors que $S$ est paire.

Il y a donc au moins un nombre impair (on vient de l'assurer) et au moins un nombre pair. En
parcourant le cercle, on part d'un nombre pair et on finit par arriver à un nombre impair :
quelque part entre les deux, on passe d'un nombre pair à son voisin impair.

On a bien trouvé deux voisins de parités différentes. Leur somme est impaire, donc la somme
restante $S - s$ est impaire, et les $2013$ nombres restants ne peuvent pas être partagés.

**Cas 2 : la somme $S$ est impaire.**

Supposons par l'absurde qu'il n'existe aucune paire de voisins de même parité. Cela veut dire
que les parités **alternent** tout au long du cercle : pair, impair, pair, impair, ...

Mais en faisant le tour complet, on revient au point de départ. Une alternance qui se referme
impose un nombre **pair** de termes. Or il y en a $2015$, qui est impair. C'est absurde.

Il existe donc deux voisins de même parité. Leur somme est paire, donc la somme restante
$S - s$ est impaire, et là encore les $2013$ nombres restants ne peuvent pas être partagés.

**Conclusion.**

Dans les deux cas, on a trouvé deux voisins convenables. La propriété demandée est donc vraie
pour toute disposition de $2015$ entiers strictement positifs sur un cercle.

*Où $2015$ intervient-il ?* Uniquement par le fait qu'il est **impair** : c'est ce qui interdit
l'alternance parfaite dans le cas 2, et ce qui rend impaire la somme de nombres tous impairs
dans le cas 1. Avec $2014$ nombres, l'énoncé serait faux : sur un cercle
$1, 1, 1, \ldots, 1$ de longueur paire, retirer deux voisins laisse un nombre pair de $1$, qui
se partage parfaitement.
