---
id: "0207"
title: "Somme des chiffres : pairs contre impairs"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [chiffres, somme, paires, parite, retenue]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (7 класс, II полугодие), сост. Е. А. Асташов, Я. А. Верёвкин, А. А. Дейч, С. М. Саулин, А. В. Феклина, МГУ, 2017"
  reference: "Ast2017b.pdf, листок 26, задача 2 (p. 67-68)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

On écrit tous les entiers de $1$ à $1000$, puis on les sépare en deux groupes : les nombres pairs d'un côté, les nombres impairs de l'autre.

Dans chaque groupe, on additionne **tous les chiffres** utilisés pour écrire ces nombres. Par exemple, le nombre $407$ apporte $4 + 0 + 7 = 11$ au total de son groupe.

Dans quel groupe la somme obtenue est-elle la plus grande, et de combien ?

## Hints

1. Calcule la somme des chiffres de $24$, puis celle de $25$. Recommence avec $68$ et $69$, puis avec $130$ et $131$. Que remarques-tu ?
2. Quand on ajoute $1$ à un nombre **pair**, que devient son dernier chiffre ? Y a-t-il une retenue ?
3. Range alors les nombres deux par deux : chaque nombre pair avec le nombre impair juste après lui.
4. Attention : tous les nombres de $1$ à $1000$ sont-ils bien rangés dans une paire ? Qui reste tout seul ?
5. Combien y a-t-il de paires ? Dans chaque paire, de combien l'impair dépasse-t-il le pair ?

## Solution

**L'idée : ranger les nombres en paires, et comparer à l'intérieur de chaque paire.** Comme on ne compare pas des quantités de nombres mais des sommes, il faut choisir des paires où la comparaison est facile.

**Étape 1. Un nombre pair et son voisin de droite.**

Prenons un nombre pair et ajoutons-lui $1$ :

$$24 \to 25, \qquad 68 \to 69, \qquad 130 \to 131.$$

Les sommes des chiffres passent de $6$ à $7$, de $14$ à $15$, de $4$ à $5$. À chaque fois, la somme des chiffres augmente **exactement de $1$**.

Ce n'est pas un hasard. Le dernier chiffre d'un nombre pair est $0$, $2$, $4$, $6$ ou $8$ : il n'est jamais égal à $9$. En ajoutant $1$, on augmente donc ce dernier chiffre de $1$ **sans retenue**, et tous les autres chiffres restent les mêmes. La somme des chiffres augmente donc de $1$, et de $1$ seulement.

**Étape 2. Former les paires.**

Associons chaque nombre pair au nombre impair qui le suit :

$$(2\,;\,3), \quad (4\,;\,5), \quad (6\,;\,7), \quad \ldots, \quad (998\,;\,999).$$

Les nombres pairs utilisés sont $2, 4, 6, \ldots, 998$ : il y en a $499$. Il y a donc $499$ paires, qui contiennent en tout $998$ nombres.

**Étape 3. Qui reste en dehors des paires ?**

Sur les $1000$ nombres, deux n'ont pas été rangés : le nombre $1$ (impair) et le nombre $1000$ (pair).

Leurs sommes de chiffres sont $1$ d'un côté et $1 + 0 + 0 + 0 = 1$ de l'autre : elles sont égales. Ces deux nombres apportent donc autant à chacun des deux groupes, et on peut les oublier.

**Étape 4. Compter l'écart.**

Dans chaque paire, l'impair apporte exactement $1$ de plus que le pair. Comme il y a $499$ paires, la somme du groupe des impairs dépasse celle du groupe des pairs de

$$499 \times 1 = 499.$$

**Conclusion.**

C'est chez les nombres impairs que la somme des chiffres est la plus grande, et elle dépasse celle des nombres pairs de $499$.

## Going further

1. Même question avec les entiers de $1$ à $100$.
2. Même question avec les entiers de $1$ à $999$. (Attention, cette fois un seul nombre reste sans partenaire.)
3. Pourquoi l'astuce tomberait-elle en panne si on associait plutôt chaque impair au pair juste après lui, c'est-à-dire $1$ avec $2$, $3$ avec $4$, et ainsi de suite ? Essaie avec $9$ et $10$.
