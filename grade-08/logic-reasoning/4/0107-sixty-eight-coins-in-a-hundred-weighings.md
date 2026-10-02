---
id: "0107"
title: "Soixante-huit pièces, cent pesées"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [pesees, balance, tournoi, strategie, optimisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, кружок 7 класса, I полугодие, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 2, задача 6"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

On dispose de $68$ pièces de monnaie. Deux pièces quelconques n'ont jamais exactement la même masse.

On a aussi une balance à deux plateaux, sans masses marquées. Une **pesée** consiste à poser une pièce sur chaque plateau : la balance indique alors laquelle des deux est la plus lourde.

Expliquer comment trouver à la fois la pièce la plus lourde et la pièce la plus légère en $100$ pesées au maximum.

## Hints

1. Commence par un cas plus petit. Avec $4$ pièces, combien de pesées te faut-il pour trouver seulement la plus lourde ?
2. Pour trouver la plus lourde parmi $n$ pièces, $n - 1$ pesées suffisent : on organise un tournoi, la gagnante affronte la suivante, et ainsi de suite. Mais si tu fais un tournoi pour la plus lourde, puis un autre pour la plus légère, tu dépasses $100$ pesées. Il faut donc que les premières pesées servent **deux fois**.
3. Commence par comparer les pièces deux par deux : $34$ pesées. Range les gagnantes d'un côté et les perdantes de l'autre. Dans quel tas se trouve forcément la pièce la plus lourde de toutes ? Et la plus légère ?
4. Il te reste deux tas de $34$ pièces. Combien de pesées faut-il pour trouver la plus lourde d'un tas de $34$ pièces ? Fais le total.

## Solution

**L'idée : faire travailler les premières pesées deux fois à la fois.**

Si l'on cherche d'abord la plus lourde des $68$ pièces avec un tournoi ($67$ pesées), puis la plus légère des $67$ restantes ($66$ pesées), cela fait $133$ pesées : beaucoup trop. Il faut une organisation plus maligne.

**Étape 1. On compare les pièces deux par deux : $34$ pesées.**

On forme $34$ paires de pièces, et on pèse chaque paire. Cela fait $34$ pesées.

On range ensuite :

- dans un tas **L** (« lourdes »), la plus lourde de chaque paire : $34$ pièces ;
- dans un tas **G** (« légères »), la plus légère de chaque paire : $34$ pièces.

**Étape 2. Pourquoi ce partage est utile.**

La pièce la plus lourde de toutes les $68$ est plus lourde que celle avec laquelle elle a été comparée : elle a donc gagné sa pesée, et **elle se trouve dans le tas L**.

De la même façon, la pièce la plus légère de toutes a perdu sa pesée, donc **elle se trouve dans le tas G**.

On n'a plus que $34$ candidates pour chacune des deux réponses, au lieu de $68$.

**Étape 3. Le tournoi dans chaque tas.**

Pour trouver la plus lourde d'un tas de $34$ pièces, on procède ainsi : on compare les deux premières et on garde la plus lourde ; on compare cette gagnante à la troisième pièce et on garde la plus lourde ; et ainsi de suite.

À chaque pesée, on élimine exactement une pièce. Il faut éliminer $33$ pièces sur $34$ pour qu'il n'en reste qu'une : cela demande donc $33$ pesées.

- Dans le tas L, $33$ pesées donnent la pièce la plus lourde.
- Dans le tas G, $33$ pesées, menées de la même façon mais en gardant à chaque fois la plus **légère**, donnent la pièce la plus légère.

**Étape 4. Le total.**

$$34 + 33 + 33 = 100$$

**Conclusion.** En $100$ pesées, on trouve bien à la fois la pièce la plus lourde et la pièce la plus légère. L'astuce est que les $34$ premières pesées servent aux deux recherches en même temps.

## Going further

1. Avec la même méthode, combien de pesées faut-il pour $100$ pièces ?
2. Et pour $67$ pièces ? Attention, $67$ est impair : une pièce reste sans partenaire à la première étape. Dans quel tas faut-il la mettre ?
3. Plus difficile. Montrer que l'on ne peut pas trouver la pièce la plus lourde parmi $68$ pièces en moins de $67$ pesées. Indication : réfléchis à ce qui doit arriver, au moins une fois, à chaque pièce qui n'est pas la plus lourde.
