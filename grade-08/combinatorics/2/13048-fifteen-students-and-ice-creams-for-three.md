---
id: "13048"
title: "Quinze élèves et des glaces à trois"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [double-comptage, paires, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, test de rentrée (Coupe Animath d'automne) du 7 octobre 2015"
  reference: "2017-09_coupe_automne_2015.pdf, exercices collège, exercice 1 ; corrigé 2017-09_coupe_automne_2015_corrige.pdf. Le même problème, avec quinze campeurs de corvée de vaisselle, figure aussi dans stage_junior_2013.pdf, « Avancés : combinatoire », mercredi matin (Irène Marcovici), exercice 7."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015.pdf"
---

## Statement

Quinze élèves participent à un stage de mathématiques. Chaque soir, trois d'entre elles vont manger une glace ensemble.

À la fin du stage, on constate que deux élèves quelconques sont allées manger une glace ensemble **une fois et une seule**.

Combien de jours le stage a-t-il duré ?

## Hints

1. L'énoncé parle de **deux** élèves à la fois. Compte donc des paires d'élèves.
2. Combien de paires différentes peut-on former avec quinze élèves ?
3. Un soir, trois élèves vont manger une glace. Combien de paires d'élèves ont mangé une glace ensemble ce soir-là ?

## Solution

**Les paires d'élèves.** Chacune des $15$ élèves peut former une paire avec chacune des $14$ autres. Cela fait $15 \times 14 = 210$, mais ainsi chaque paire est comptée deux fois (la paire Anna et Léa est comptée une fois à partir d'Anna et une fois à partir de Léa). Il y a donc
$$\frac{15 \times 14}{2} = 105$$
paires d'élèves.

**Les paires d'un soir.** Si Anna, Léa et Zoé vont manger une glace, les paires qui sont ensemble ce soir-là sont Anna et Léa, Anna et Zoé, Léa et Zoé : il y en a $3$.

**On compte de deux façons.** D'après l'énoncé, chacune des $105$ paires a mangé une glace ensemble exactement une fois. Si le stage a duré $d$ jours, on obtient chaque paire exactement une fois en faisant la liste des $3$ paires de chaque soir. Donc
$$3d = 105, \qquad d = 35 .$$

**Conclusion.** Le stage a duré $35$ jours.

**Remarque.** Le raisonnement montre que le stage dure forcément $35$ jours, mais il ne dit pas si une telle organisation existe vraiment. Elle existe : c'est une version d'un problème célèbre posé par le pasteur anglais Thomas Kirkman en 1850, avec quinze écolières qui se promènent par groupes de trois. Elles se promènent sept jours de suite, en cinq rangs de trois chaque jour : cela fait $7 \times 5 = 35$ rangs, exactement le nombre trouvé ici.

## Going further

1. Avec $7$ élèves, combien de jours durerait le stage ? Trouver une organisation qui convient.
2. Montrer qu'avec $6$ élèves, c'est impossible. (Avec combien d'autres élèves une élève donnée mange-t-elle une glace chaque soir où elle sort ?)
3. Plus généralement, montrer que si une telle organisation existe avec $n$ élèves, alors $n - 1$ est pair et $n(n - 1)$ est divisible par $6$.
