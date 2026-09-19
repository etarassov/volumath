---
id: "0509"
title: "Onze bandes et un coin"
grade: 9
theme: coloring
difficulty: 4
duration_min: 30
tags: [damier, pavage, coloriage, divisibilite, demonstration]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 3 «Раскраски», задача 6"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

On dispose de deux sortes de pièces de trois cases : des **bandes** de trois cases alignées, et des **coins** de trois cases formant un L.

![Une bande de trois cases et un coin de trois cases](0509-figure-1.svg)

Peut-on recouvrir entièrement un damier $6 \times 6$ avec onze bandes et un coin, sans trou et sans chevauchement ? Les pièces peuvent être tournées dans tous les sens.

## Hints

1. Compte les cases : le nombre de pièces est-il compatible avec la taille du damier ?
2. Le coloriage en échiquier ne donnera rien ici. Essaie plutôt d'écrire un **chiffre** dans chaque case, et de comparer les sommes des chiffres recouverts par chaque pièce. Trois chiffres différents suffisent.
3. Remplis chaque ligne du damier avec $1, 2, 3, 1, 2, 3$, toujours de la même façon, de sorte que le chiffre d'une case ne dépende que de sa colonne.
4. Calcule la somme des chiffres recouverts par une bande horizontale, puis par une bande verticale. Que remarques-tu ?
5. Fais le même calcul pour un coin. Un coin occupe toujours deux colonnes voisines : combien de cases dans chacune ?

## Solution

**Réponse : non, c'est impossible.**

**Étape 1. Le compte des cases ne suffit pas.**

Le damier a $6 \times 6 = 36$ cases. Onze bandes et un coin, cela fait $12$ pièces de $3$ cases, soit $12 \times 3 = 36$ cases. Le compte tombe juste : l'obstacle est ailleurs.

**Étape 2. L'idée : trois chiffres au lieu de deux couleurs.**

Cette fois, deux couleurs ne suffiront pas, parce que les pièces ont trois cases. On écrit donc un chiffre dans chaque case, en répétant $1, 2, 3$ sur chaque ligne, toujours de la même façon :

![Le damier 6 par 6 rempli avec les chiffres 1, 2, 3](0509-figure-2.svg)

Le chiffre d'une case ne dépend donc que de sa colonne : colonnes $1$ et $4$ portent le chiffre $1$, colonnes $2$ et $5$ le chiffre $2$, colonnes $3$ et $6$ le chiffre $3$. En particulier, **deux colonnes voisines portent toujours des chiffres différents.**

**Étape 3. La somme des chiffres sur tout le damier.**

Chaque ligne porte $1 + 2 + 3 + 1 + 2 + 3 = 12$. Avec six lignes, la somme totale vaut

$$6 \times 12 = 72$$

et $72 = 3 \times 24$ est **un multiple de $3$**. C'est le fait à retenir.

**Étape 4. Ce que recouvre une bande.**

- Une bande **verticale** couvre trois cases d'une même colonne, donc trois fois le même chiffre $d$. Sa somme vaut $3d$, un multiple de $3$.
- Une bande **horizontale** couvre trois cases de colonnes consécutives, donc les trois chiffres $1$, $2$ et $3$, chacun une fois. Sa somme vaut $1 + 2 + 3 = 6$, un multiple de $3$.

**Dans tous les cas, la somme des chiffres recouverts par une bande est un multiple de $3$.**

**Étape 5. Ce que recouvre un coin.**

Un coin tient toujours dans un carré de $2 \times 2$ cases dont il occupe trois cases. Il s'étale donc sur **deux colonnes voisines**, avec deux cases dans l'une et une case dans l'autre.

Notons $d$ le chiffre de la colonne qui reçoit deux cases, et $d'$ celui de l'autre colonne. Comme les colonnes sont voisines, $d \neq d'$. La somme des chiffres du coin vaut

$$2d + d' = 3d + (d' - d)$$

Le terme $3d$ est un multiple de $3$. Il reste à regarder $d' - d$. Les chiffres $d$ et $d'$ sont deux chiffres **différents** pris parmi $1$, $2$ et $3$, donc leur différence vaut $1$, $2$, $-1$ ou $-2$ : jamais un multiple de $3$.

**La somme des chiffres recouverts par un coin n'est donc jamais un multiple de $3$.**

**Étape 6. La contradiction.**

Supposons que le damier soit recouvert par onze bandes et un coin. Chaque case est recouverte exactement une fois, donc la somme des chiffres du damier est égale à la somme, sur les douze pièces, des chiffres qu'elles recouvrent :

- les onze bandes apportent chacune un multiple de $3$, donc leur total est un multiple de $3$ ;
- le coin apporte un nombre qui n'est **pas** un multiple de $3$.

La somme totale n'est donc pas un multiple de $3$. Mais nous avons calculé à l'étape 3 qu'elle vaut $72$, qui est un multiple de $3$. C'est contradictoire.

**Conclusion.** On ne peut pas recouvrir un damier $6 \times 6$ avec onze bandes de trois cases et un coin de trois cases.

*Ce qu'il faut retenir.* Avec des pièces de trois cases, on remplace les deux couleurs de l'échiquier par trois chiffres, et l'argument de parité par un argument de divisibilité par $3$.

## Going further

1. Peut-on recouvrir le damier $6 \times 6$ avec douze bandes de trois cases ? Donner un pavage.
2. Peut-on le recouvrir avec douze coins ? (Commencer par recouvrir un rectangle de $2 \times 3$ cases avec deux coins.)
3. Et avec **dix** bandes et **deux** coins ? Le raisonnement ci-dessus l'interdit-il encore ? Expliquer précisément où il cesse de fonctionner.
