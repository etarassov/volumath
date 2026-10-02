---
id: "0185"
title: "Les trois chiffres de l'ogre"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [ecriture-decimale, chiffres, strategie, numeration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 7 класс, II полугодие, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 22, задача 1"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Un ogre a capturé un chevalier. Il lui dit :

« Tu as la vie sauve jusqu'à demain matin. Demain, je penserai à trois chiffres $x$, $y$ et $z$. Tu me diras alors trois nombres $a$, $b$ et $c$ de ton choix. Je t'annoncerai la valeur de

$$a x + b y + c z$$

et rien d'autre. À toi ensuite de deviner quels étaient mes trois chiffres. Si tu te trompes, tant pis pour toi. »

Le chevalier peut-il s'en tirer à coup sûr, quels que soient les chiffres choisis par l'ogre ?

## Hints

1. Relis l'énoncé de très près. L'ogre pense à trois **chiffres**, et non à trois nombres quelconques. Entre quelles valeurs se trouve donc chacun d'eux ?
2. Le chevalier choisit $a$, $b$ et $c$ comme il l'entend. S'il annonce $a = b = c = 1$, il apprend seulement la valeur de $x+y+z$. Cela lui suffit-il pour retrouver les trois chiffres ?
3. Le problème, c'est que les trois chiffres se mélangent dans le résultat. Le chevalier voudrait que chacun occupe une place bien à lui, sans jamais empiéter sur celle des autres.
4. Rappelle-toi comment on écrit un nombre de trois chiffres : le nombre dont les chiffres sont $x$, $y$, $z$ vaut $100x + 10y + z$.

## Solution

**L'idée :** le chevalier ne peut poser qu'une seule question, et la réponse est un seul nombre. Il faut donc que ce nombre contienne les trois chiffres **sans qu'ils se mélangent**. Le mot important de l'énoncé est « chiffres » : chacun est compris entre $0$ et $9$.

**La réponse du chevalier.** Il annonce

$$a = 100, \qquad b = 10, \qquad c = 1$$

**Ce que l'ogre est alors obligé de dire.** La valeur annoncée est

$$100x + 10y + z$$

Or c'est exactement la façon dont s'écrit le nombre de trois chiffres $x$, $y$, $z$ : $x$ au rang des centaines, $y$ au rang des dizaines, $z$ au rang des unités. L'ogre annonce donc, sans le vouloir, un nombre dont les chiffres sont précisément ceux qu'il avait en tête.

**Pourquoi le chevalier ne peut pas se tromper.** C'est ici que la condition « ce sont des chiffres » sert. Comme

$$0 \leqslant x \leqslant 9, \qquad 0 \leqslant y \leqslant 9, \qquad 0 \leqslant z \leqslant 9$$

l'écriture $100x + 10y + z$ est bien l'écriture décimale du nombre annoncé. Et un nombre ne s'écrit que d'une seule façon en base dix. Le chevalier lit donc les trois chiffres directement, il n'y a aucune autre possibilité.

**Un exemple.** Si l'ogre a pensé à $4$, $0$ et $7$, il est forcé d'annoncer

$$100 \times 4 + 10 \times 0 + 1 \times 7 = 407$$

et le chevalier répond : $4$, $0$, $7$.

**Un cas à ne pas oublier.** Si le premier chiffre est $0$, le nombre annoncé a moins de trois chiffres. Par exemple pour $0$, $3$, $7$, l'ogre annonce $37$. Le chevalier complète alors par des zéros à gauche jusqu'à trois rangs, $037$, et répond $0$, $3$, $7$. Aucune ambiguïté là non plus.

**Pourquoi d'autres choix échouent.** Si le chevalier avait pris $a = 1$, $b = 2$, $c = 3$, la réponse $3$ pourrait venir des chiffres $(3,\,0,\,0)$, ou de $(1,\,1,\,0)$, ou encore de $(0,\,0,\,1)$. Il ne saurait pas trancher. Ce sont bien les rangs de la numération décimale qui font tout le travail : ils empêchent les trois chiffres de se mélanger.

**Conclusion.** Oui, le chevalier s'en tire à coup sûr : il annonce $100$, $10$ et $1$, puis il lit les trois chiffres dans le nombre que l'ogre est forcé de prononcer.

## Going further

1. L'ogre change les règles : il pense maintenant à trois **nombres entiers** compris entre $0$ et $999$. Quels $a$, $b$, $c$ le chevalier doit-il annoncer ?
2. Et si l'ogre pensait à cinq chiffres $x$, $y$, $z$, $t$, $u$, et annonçait $ax + by + cz + dt + eu$ ?
3. L'ogre décide de ne penser qu'à deux chiffres et de n'annoncer que $x + y$. Combien de couples de chiffres différents peuvent donner la réponse $9$ ? Le chevalier est-il perdu ?
