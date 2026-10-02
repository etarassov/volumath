---
id: "0556"
title: "Pairs ou impairs sur l'île des chevaliers"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [chevaliers-et-menteurs, parite, disjonction-de-cas, contre-exemple, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 12 «Рыцари и лжецы», задача 4"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Sur une île vivent des **chevaliers**, qui disent toujours la vérité, et des **menteurs**, qui mentent toujours. Chaque habitant est soit l'un, soit l'autre.

Des sociologues ont interrogé **tous** les habitants de l'île. Certains ont déclaré :

> « Le nombre de chevaliers de l'île est pair. »

et tous les autres ont déclaré :

> « Le nombre de menteurs de l'île est impair. »

Chacune des deux phrases a donc été prononcée par au moins un habitant.

Peut-on savoir avec certitude si :

1. le nombre de chevaliers de l'île est pair ou impair ?
2. le nombre d'habitants de l'île est pair ou impair ?

## Hints

1. Une phrase donnée est soit vraie, soit fausse — cela ne dépend pas de qui la prononce. Que peut-on alors dire de tous les habitants qui ont prononcé la **même** phrase ?
2. Les habitants se répartissent donc en deux groupes, et chaque groupe est entièrement formé de chevaliers, ou entièrement formé de menteurs.
3. Montrer que les deux groupes ne peuvent pas être du même type : il est impossible que tout le monde soit chevalier, et impossible que tout le monde soit menteur.
4. Il reste deux cas. Dans chacun, dire si la première phrase est vraie ou fausse, si la seconde est vraie ou fausse, et en déduire la parité du nombre de chevaliers **et** celle du nombre de menteurs.
5. Pour la question 1, il suffit de trouver une île possible dans chaque cas, avec des réponses différentes.

## Solution

Notons $C$ le nombre de chevaliers de l'île et $M$ le nombre de menteurs. Le nombre d'habitants est $C + M$.

**L'observation de départ.**

Une phrase est vraie ou fausse, indépendamment de qui la prononce. Or :

- un chevalier ne prononce que des phrases vraies ;
- un menteur ne prononce que des phrases fausses.

Donc **tous les habitants qui ont dit la même phrase sont du même type**. Appelons *groupe A* ceux qui ont dit « $C$ est pair », et *groupe B* ceux qui ont dit « $M$ est impair ». Chacun des deux groupes est formé uniquement de chevaliers, ou uniquement de menteurs.

**Les deux groupes ne sont pas du même type.**

- Si les deux groupes étaient des chevaliers, tous les habitants seraient chevaliers, donc $M = 0$. La phrase du groupe B, « $M$ est impair », serait alors fausse, alors qu'elle est dite par des chevaliers. Impossible.
- Si les deux groupes étaient des menteurs, tous les habitants seraient menteurs, donc $C = 0$. La phrase du groupe A, « $C$ est pair », serait alors vraie ($0$ est pair), alors qu'elle est dite par des menteurs. Impossible.

Il reste donc exactement deux cas.

**Cas 1 : le groupe A est formé de chevaliers, le groupe B de menteurs.**

- Le groupe A dit vrai : $C$ est **pair**.
- Le groupe B ment : « $M$ est impair » est faux, donc $M$ est **pair**.
- Alors $C + M$ est pair $+$ pair $=$ **pair**.

**Cas 2 : le groupe A est formé de menteurs, le groupe B de chevaliers.**

- Le groupe A ment : « $C$ est pair » est faux, donc $C$ est **impair**.
- Le groupe B dit vrai : $M$ est **impair**.
- Alors $C + M$ est impair $+$ impair $=$ **pair**.

**Les deux cas se produisent réellement.**

- *Cas 1.* Une île avec $2$ chevaliers et $2$ menteurs. Les deux chevaliers disent « le nombre de chevaliers est pair » : c'est vrai, $C = 2$. $\checkmark$ Les deux menteurs disent « le nombre de menteurs est impair » : c'est faux, $M = 2$. $\checkmark$ Ici $C = 2$ est pair.
- *Cas 2.* Une île avec $1$ chevalier et $1$ menteur. Le menteur dit « le nombre de chevaliers est pair » : c'est faux, $C = 1$. $\checkmark$ Le chevalier dit « le nombre de menteurs est impair » : c'est vrai, $M = 1$. $\checkmark$ Ici $C = 1$ est impair.

**Réponses.**

1. **Non.** Les deux exemples ci-dessus sont tous les deux compatibles avec l'énoncé, et dans l'un le nombre de chevaliers est pair, dans l'autre il est impair. On ne peut donc pas trancher.
2. **Oui.** Dans les deux cas possibles, $C + M$ est pair. **Le nombre d'habitants de l'île est pair.**

**L'idée à retenir.** On ne connaît pas la situation exacte, mais on a séparé tous les cas possibles, et une même conclusion sort de chacun d'eux : c'est ce qui permet d'affirmer quelque chose de sûr sans tout savoir.

## Going further

1. Dans le cas 1, l'île peut-elle ne compter aucun menteur ? Et dans le cas 2, aucun chevalier ?
2. Reprendre le problème en remplaçant la seconde phrase par « Le nombre de menteurs de l'île est **pair** ». Peut-on encore conclure sur la parité du nombre d'habitants ? (Attention : cette fois, un troisième cas devient possible.)
