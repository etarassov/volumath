---
id: "0580"
title: "Les boules magiques du coffret"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 25
tags: [absurde, denombrement, couleurs, deduction]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 6–7 классы, 2-е полугодие, пособие для преподавателей"
  reference: "KuOn2017.pdf, листок 2 «Птичка вылетает!», задача 6"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/KuOn2017.pdf"
---

## Statement

Dans un coffret se trouvent des boules magiques de plusieurs couleurs.

- Si Gandalf agite son bâton, exactement $10$ boules changent de couleur, et toutes les boules du coffret deviennent alors vertes.
- Si c'est Saroumane qui agite son bâton, ce sont exactement $14$ boules qui changent de couleur, et toutes les boules deviennent alors rouges.

C'est finalement Bilbon qui a agité sa canne, et au plus trois boules ont changé de couleur.

Est-il possible qu'après cela, toutes les boules du coffret soient devenues bleues ?

## Hints

1. Une boule qui **ne change pas** de couleur pendant le tour de magie de Gandalf est verte à la fin. De quelle couleur était-elle au début ?
2. Appelle $N$ le nombre total de boules du coffret. Combien de boules sont déjà vertes avant que Gandalf n'agisse ?
3. Saroumane fait changer $14$ boules. Combien y a-t-il de boules dans le coffret, au minimum ?
4. Combien y a-t-il donc de boules vertes au départ, au minimum ? Et que doit-il arriver à chacune de ces boules pour que tout devienne bleu ?

## Solution

**L'idée : lire chaque phrase de l'énoncé comme un renseignement sur les couleurs de départ.**

Appelons $N$ le nombre de boules du coffret.

**Ce que nous apprend le tour de Gandalf.**

Après son passage, toutes les boules sont vertes, et exactement $10$ d'entre elles ont changé de couleur. Les autres, il y en a $N - 10$, n'ont pas changé de couleur : elles sont vertes à l'arrivée, donc elles étaient **déjà vertes au départ**.

Il y a donc au départ au moins $N - 10$ boules vertes dans le coffret.

**Ce que nous apprend le tour de Saroumane.**

Son bâton fait changer de couleur $14$ boules. Pour cela, il faut qu'il y ait au moins $14$ boules dans le coffret :
$$N \geq 14$$

**On rassemble les deux renseignements.**

Le nombre de boules vertes au départ vaut $N - 10$, et comme $N \geq 14$ :
$$N - 10 \geq 14 - 10 = 4$$

Il y a donc **au moins $4$ boules vertes** dans le coffret avant que quiconque n'agite quoi que ce soit.

**Le tour de Bilbon.**

Pour que toutes les boules deviennent bleues, chaque boule verte doit changer de couleur : le vert n'est pas le bleu. Il faudrait donc qu'au moins $4$ boules changent de couleur.

Or, quand Bilbon agite sa canne, au plus $3$ boules changent de couleur. C'est impossible.

**Conclusion.**

Non, les boules ne peuvent pas toutes être devenues bleues après le geste de Bilbon.

## Going further

1. Combien le coffret peut-il contenir de boules au maximum ? (Indication : compte séparément les boules vertes et les boules rouges du départ, et remarque qu'une boule ne peut pas être des deux couleurs à la fois.)
2. Quel est le plus petit nombre de boules que Bilbon devrait faire changer de couleur pour que tout devienne bleu, dans le cas où le coffret contient exactement $14$ boules ?
