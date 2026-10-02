---
id: "0434"
title: "Le jeu de l'horloge"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [jeu, strategie, positions-gagnantes, raisonnement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, «Математический кружок (8 класс)», сост. А. Л. Канунников, 2017"
  reference: "Kan2017.pdf, листок 4 «Что наша жизнь? Игра!», задача 2"
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Kay et la Reine des Neiges jouent avec une horloge arrêtée. Chacun à son tour avance l'aiguille des heures, au choix de **deux heures** ou de **trois heures**.

Celui qui amène l'aiguille exactement sur le $12$ a gagné.

L'aiguille tourne comme sur une vraie horloge : si elle dépasse le $12$ sans s'arrêter dessus, la partie continue. Par exemple, depuis $11$ heures, un coup de deux heures mène à $1$ heure.

L'horloge indique six heures pile, et c'est Kay qui commence.

L'un des deux joueurs peut-il être certain de gagner ? Si oui, lequel, et comment doit-il jouer ?

## Hints

1. Joue d'abord quelques parties contre un camarade, en partant de $6$. Qui semble avoir l'avantage ?
2. N'essaie pas d'explorer toutes les parties possibles : il y en a beaucoup trop. Pars plutôt de la fin. Depuis quelles heures peut-on gagner en un seul coup ?
3. Marquons chaque heure d'une lettre. **G** : celui qui doit jouer depuis cette heure peut gagner à coup sûr. **P** : celui qui doit jouer depuis cette heure va perdre si l'adversaire joue bien.
4. Voici la règle qui permet de remplir le cadran : une heure est **G** dès qu'un de ses deux coups mène l'adversaire sur une **P** ; elle est **P** si ses deux coups mènent l'adversaire sur des **G**.
5. Remplis dans cet ordre : $9$ et $10$, puis $7$, puis $4$ et $5$, puis $2$, puis $11$, puis $8$, puis enfin $6$.

## Solution

**L'idée : étudier le jeu à l'envers, en partant de la fin.**

Marquons chaque heure du cadran :

- **G** (gagnante) si le joueur dont c'est le tour peut forcer la victoire ;
- **P** (perdante) si, quoi qu'il fasse, l'autre joueur peut forcer la victoire.

La règle est toujours la même :

> Une position est **G** s'il existe un coup qui envoie l'adversaire sur une **P**.
> Une position est **P** si **tous** ses coups envoient l'adversaire sur une **G**.

**On remplit le cadran.**

1. Depuis $10$, le coup « $+2$ » donne $12$ : victoire immédiate. Donc $10$ est **G**. De même, depuis $9$, le coup « $+3$ » donne $12$ : $9$ est **G**.
2. Depuis $7$, les deux coups mènent à $9$ et à $10$, toutes deux **G** : $7$ est **P**.
3. Depuis $4$, le coup « $+3$ » mène à $7$, qui est **P** : $4$ est **G**. Depuis $5$, le coup « $+2$ » mène aussi à $7$ : $5$ est **G**.
4. Depuis $2$, les deux coups mènent à $4$ et à $5$, toutes deux **G** : $2$ est **P**.
5. Depuis $11$, le coup « $+3$ » mène à $14$, c'est-à-dire à $2$, qui est **P** : $11$ est **G**.
6. Depuis $8$, les deux coups mènent à $10$ et à $11$, toutes deux **G** : $8$ est **P**.
7. Depuis $6$, le coup « $+2$ » mène à $8$, qui est **P** : **$6$ est G**.

(On peut finir le cadran de la même façon : $3$ est **P** et $1$ est **G**.)

| Heure | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| | G | **P** | **P** | G | G | G | **P** | **P** | G | G | G |

**La réponse.**

L'horloge indique $6$, qui est une position **G**, et c'est Kay qui joue : **Kay peut donc gagner à coup sûr.**

**Sa stratégie : toujours laisser la Reine des Neiges sur une position P**, c'est-à-dire sur $2$, $3$, $7$ ou $8$, et sauter sur le $12$ dès que c'est possible.

Voyons que cela marche à chaque coup.

- Kay joue $+2$ et amène l'aiguille de $6$ à $8$.
- Depuis $8$, la Reine ne peut aller que sur $10$ ou sur $11$.
  - Si elle joue $10$, Kay joue $+2$ et arrive sur $12$ : **il gagne**.
  - Si elle joue $11$, Kay joue $+3$ et arrive sur $2$.
- Depuis $2$, la Reine ne peut aller que sur $4$ ou sur $5$.
  - Depuis $4$, Kay joue $+3$ et arrive sur $7$.
  - Depuis $5$, Kay joue $+2$ et arrive sur $7$.
- Depuis $7$, la Reine ne peut aller que sur $9$ ou sur $10$.
  - Depuis $9$, Kay joue $+3$ et arrive sur $12$ : **il gagne**.
  - Depuis $10$, Kay joue $+2$ et arrive sur $12$ : **il gagne**.

Dans tous les cas, Kay gagne.

**Conclusion.** Kay a une stratégie gagnante. Il commence par avancer l'aiguille de deux heures, jusqu'à $8$, puis il ramène toujours l'aiguille sur $2$, $7$ ou $8$, jusqu'à pouvoir atteindre $12$.

**Ce qu'il faut retenir.** Dans un jeu à deux où les parties sont courtes, on n'étudie jamais toutes les parties : on part de la fin et on marque les positions **G** et **P** de proche en proche. Gagner, c'est ensuite simplement laisser toujours l'adversaire sur une position **P**.

## Going further

1. La partie commence maintenant à **sept** heures, Kay jouant toujours en premier. Qui gagne ?
2. Même jeu, mais la règle change : celui qui amène l'aiguille sur le $12$ a **perdu**. Refais le cadran des positions **G** et **P**. Qui gagne en partant de $6$ heures ?
3. Même jeu qu'au départ, mais on a le droit d'avancer de une, deux ou trois heures. Qui gagne en partant de $6$ heures ?
