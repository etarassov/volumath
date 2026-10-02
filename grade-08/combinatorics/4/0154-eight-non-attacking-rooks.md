---
id: "0154"
title: "Huit tours qui ne se prennent pas"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [denombrement, echiquier, tours, factorielle, tiroirs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (7 класс, II полугодие)"
  reference: "Ast2017b.pdf, листок 17, задача 4"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Aux échecs, une tour attaque toutes les cases situées sur sa ligne et toutes les cases situées sur sa colonne.

On veut poser $8$ tours sur un échiquier de $8 \times 8$ cases, de façon qu'aucune tour n'en attaque une autre. De combien de façons peut-on le faire

a) si les huit tours sont toutes différentes (imaginons qu'elles soient de huit couleurs différentes) ?

b) si les huit tours sont identiques ?

## Hints

1. Commence par un tout petit échiquier. Sur un plateau de $2 \times 2$ cases, de combien de façons peut-on poser $2$ tours identiques qui ne s'attaquent pas ? Et $2$ tours différentes ?
2. Il y a $8$ tours et $8$ lignes, et deux tours ne peuvent pas être sur la même ligne. Que peux-tu en conclure sur le nombre de tours par ligne ?
3. Remplis l'échiquier ligne par ligne : choisis la colonne de la tour de la ligne du bas, puis celle de la ligne suivante, et ainsi de suite. Combien de choix restent à chaque étape ?
4. Pour la question a), une fois que tu sais quelles cases sont occupées, il reste encore à décider quelle tour va sur quelle case.

## Solution

**Étape 1. Où les tours peuvent-elles se trouver ?**

Deux tours placées sur une même ligne s'attaqueraient. Il y a donc au plus une tour par ligne. Mais il y a $8$ tours et seulement $8$ lignes : s'il y avait une ligne vide, une autre ligne porterait deux tours. Donc

> il y a exactement une tour par ligne.

Le même raisonnement avec les colonnes donne : il y a exactement une tour par colonne.

**Étape 2. Compter les cases occupées.**

Choisissons les cases ligne par ligne, en partant du bas. À chaque fois, il suffit de dire dans quelle colonne se trouve la tour de cette ligne.

- Ligne 1 : les $8$ colonnes sont libres, donc $8$ choix.
- Ligne 2 : la colonne déjà utilisée est interdite, il reste $7$ choix.
- Ligne 3 : deux colonnes sont interdites, il reste $6$ choix.
- et ainsi de suite jusqu'à la ligne 8, où il ne reste qu'un seul choix.

Le nombre de façons de choisir les huit cases est donc

$$8 \times 7 \times 6 \times 5 \times 4 \times 3 \times 2 \times 1 = 40\,320$$

Ce nombre s'écrit $8!$ et se lit « factorielle 8 ».

**Étape 3. Question b), les tours identiques.**

Si les tours sont identiques, la position est entièrement décrite par la liste des cases occupées : on ne peut pas distinguer deux tours qu'on échangerait. Le compte de l'étape 2 est donc déjà la réponse :

$$8! = 40\,320 \text{ façons}$$

**Étape 4. Question a), les tours différentes.**

Cette fois, il ne suffit plus de savoir quelles cases sont occupées : il faut aussi dire quelle tour occupe quelle case.

Fixons les huit cases (il y a $8!$ possibilités, d'après l'étape 2). Répartissons maintenant les huit tours sur ces huit cases : la première tour a $8$ cases possibles, la deuxième $7$, la troisième $6$, et ainsi de suite. Cela fait encore $8!$ possibilités.

Au total :

$$8! \times 8! = (8!)^2 = 40\,320 \times 40\,320 = 1\,625\,702\,400$$

**Réponse.**

a) Avec des tours toutes différentes : $(8!)^2 = 1\,625\,702\,400$ façons.

b) Avec des tours identiques : $8! = 40\,320$ façons.

## Going further

Sur un échiquier de $n \times n$ cases avec $n$ tours, le même raisonnement donne $n!$ façons avec des tours identiques et $(n!)^2$ avec des tours toutes différentes. On peut vérifier la méthode sur un plateau $2 \times 2$ : $2! = 2$ positions (les deux diagonales) et $(2!)^2 = 4$ façons avec deux tours de couleurs différentes.

La même question avec huit **dames** au lieu de huit tours est beaucoup plus difficile : une dame attaque aussi en diagonale, et on ne connaît pas de formule. Pour $8 \times 8$, il y a exactement $92$ positions, et il faut les chercher une par une.
