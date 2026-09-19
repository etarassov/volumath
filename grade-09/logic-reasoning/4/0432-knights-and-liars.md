---
id: "0432"
title: "Sherlock Holmes et les vingt-cinq insulaires"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [logique, chevaliers, menteurs, strategie, denombrement]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, «Математический кружок (8 класс)», сост. А. Л. Канунников, 2017"
  reference: "Kan2017.pdf, листок 1 «Логика», задача 3"
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Sur une île vivent des **chevaliers**, qui disent toujours la vérité, et des **menteurs**, qui mentent toujours. De l'extérieur, rien ne les distingue.

$25$ habitants de l'île rendent visite à Sherlock Holmes. Il y a parmi eux plus de chevaliers que de menteurs, et Holmes le sait.

Holmes peut poser à n'importe lequel d'entre eux une question de la forme :

> « Untel, est-ce un chevalier ou un menteur ? »

en désignant la personne de son choix. Chacun répond, selon sa nature, la vérité ou le mensonge.

Montrer que $24$ questions suffisent à Holmes pour savoir, de chacune des $25$ personnes, si c'est un chevalier ou un menteur.

## Hints

1. Commence par traduire « plus de chevaliers que de menteurs » en nombres : au minimum combien de chevaliers, au maximum combien de menteurs ?
2. $24$ questions pour $25$ personnes, c'est très peu. Essaie de n'interroger qu'**une seule** personne, appelons-la $A$, en l'interrogeant sur chacune des $24$ autres.
3. Les réponses de $A$ donnent tout de suite la solution... à condition de savoir si $A$ ment ou non. Comment le savoir sans poser de question supplémentaire ?
4. Compte le nombre de fois où $A$ répond « chevalier ». Si $A$ est un chevalier, il désigne ainsi tous les autres chevaliers : combien au minimum ? Si $A$ est un menteur, il désigne ainsi exactement les menteurs : combien au maximum ?

## Solution

**Étape 1. Ce que veut dire « plus de chevaliers que de menteurs ».**

Il y a $25$ personnes. Si les chevaliers étaient au plus $12$, les menteurs seraient au moins $13$, et ils seraient les plus nombreux. Donc

$$\text{nombre de chevaliers} \geqslant 13 \qquad \text{et} \qquad \text{nombre de menteurs} \leqslant 12$$

**Étape 2. La stratégie de Holmes.**

Holmes choisit une personne au hasard, appelons-la $A$, et lui pose $24$ questions : il l'interroge sur chacune des $24$ autres personnes.

Il note $N$ le nombre de fois où $A$ a répondu « chevalier ».

**Étape 3. Le comptage qui démasque $A$.**

*Premier cas : $A$ est un chevalier.* Il dit la vérité à chaque fois. Il répond donc « chevalier » exactement pour les chevaliers parmi les $24$ autres. Comme il y a au moins $13$ chevaliers en tout et que $A$ en est un, il y en a au moins $12$ parmi les autres. Donc

$$N \geqslant 12$$

*Second cas : $A$ est un menteur.* Il ment à chaque fois. Il répond donc « chevalier » exactement pour les **menteurs** parmi les $24$ autres. Comme il y a au plus $12$ menteurs en tout et que $A$ en est un, il y en a au plus $11$ parmi les autres. Donc

$$N \leqslant 11$$

Les deux cas ne peuvent pas se confondre : $N \geqslant 12$ dans le premier, $N \leqslant 11$ dans le second. En regardant $N$, Holmes sait donc à coup sûr ce qu'est $A$ :

- si $N \geqslant 12$, alors $A$ est un chevalier ;
- si $N \leqslant 11$, alors $A$ est un menteur.

**Étape 4. Tout le monde est démasqué.**

- Si $A$ est un chevalier, ses $24$ réponses sont vraies : Holmes les prend telles quelles.
- Si $A$ est un menteur, ses $24$ réponses sont toutes fausses : Holmes les inverse, « chevalier » devenant « menteur » et inversement.

Dans les deux cas, Holmes connaît la nature de chacune des $24$ autres personnes, et il vient aussi de déterminer celle de $A$.

**Conclusion.** En interrogeant une seule personne sur toutes les autres, soit $24$ questions, Holmes sait qui est chevalier et qui est menteur.

**Ce qu'il faut retenir.** Les réponses d'un inconnu qui ment peut-être restent utilisables : elles sont soit toutes vraies, soit toutes fausses. Il suffit alors d'un comptage pour décider dans quel cas on est.

## Going further

1. On enlève l'hypothèse « il y a plus de chevaliers que de menteurs ». Montrer que Holmes ne peut alors plus jamais y arriver, quelles que soient ses questions. *Indication : que se passe-t-il si chaque chevalier devient menteur et chaque menteur devient chevalier ?*
2. Reprendre l'exercice avec $2n+1$ personnes dont plus de la moitié sont des chevaliers. Combien de questions suffisent ?
3. Holmes demande à quelqu'un : « Êtes-vous un chevalier ? » Que répond un chevalier ? Que répond un menteur ? Cette question sert-elle à quelque chose ?
