---
id: "0356"
title: "Une seule vérification suffit"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [inegalite-triangulaire, raisonnement, minimum, cas-extreme]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, второе полугодие, часть II, пособие для преподавателей"
  reference: "AU2.pdf, листок 2, задача 4"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

Pierre a reçu un jeu de construction fait de baguettes, toutes de longueurs différentes. Dans la boîte, les baguettes sont rangées de la plus courte à la plus longue, si bien que Pierre sait dans quel ordre elles se classent, mais il ne connaît aucune longueur.

Sur la notice, il est écrit :

> « Avec trois baguettes quelconques du jeu, on peut toujours construire un triangle. »

Pierre décide de contrôler cette affirmation. Une **vérification** consiste à sortir trois baguettes de la boîte et à regarder si elles forment un triangle ou non. (Rappel : trois longueurs forment un triangle exactement lorsque la plus grande est strictement inférieure à la somme des deux autres.)

Quel est le plus petit nombre de vérifications qui permet à Pierre, à coup sûr, soit de démontrer l'affirmation de la notice, soit de la réfuter, lorsque la boîte contient :

a) $4$ baguettes ?

b) $100$ baguettes ?

## Hints

1. Si Pierre prend trois baguettes au hasard et qu'elles forment un triangle, il n'a rien démontré : un autre triplet pourrait très bien échouer. Il faut donc choisir un triplet bien particulier.
2. Parmi tous les triplets, lequel est le plus « exigeant », celui qui a le plus de mal à former un triangle ? Pense aux deux baguettes les plus courtes et à la plus longue.
3. Notons $l_1 < l_2 < \dots < l_n$ les longueurs rangées dans l'ordre. Suppose que le triplet $(l_1, l_2, l_n)$ forme un triangle, c'est-à-dire que $l_1 + l_2 > l_n$. Prends alors trois baguettes quelconques, de longueurs $l_i < l_j < l_k$. Compare $l_i + l_j$ avec $l_1 + l_2$, puis $l_k$ avec $l_n$.
4. N'oublie pas l'autre moitié de la question : il faut aussi expliquer pourquoi zéro vérification ne suffit jamais.

## Solution

**La réponse est la même dans les deux cas : une seule vérification suffit.**

Notons $n$ le nombre de baguettes ($n = 4$ ou $n = 100$) et

$$l_1 < l_2 < \dots < l_n$$

leurs longueurs, rangées dans l'ordre croissant : c'est l'ordre dans lequel elles sont dans la boîte.

**L'idée : tester le triplet le plus difficile.**

Pour que trois longueurs forment un triangle, il faut que les deux plus petites, additionnées, dépassent la plus grande. Le triplet qui a le plus de mal à y arriver est donc celui qui réunit **les deux baguettes les plus courtes et la baguette la plus longue** : $(l_1, l_2, l_n)$.

C'est la seule vérification que Pierre va faire. Deux cas se présentent.

**Premier cas : les trois baguettes ne forment pas de triangle.**

Alors la notice est prise en défaut : Pierre a trouvé un triplet qui ne marche pas, l'affirmation est réfutée. Une vérification a suffi.

**Deuxième cas : les trois baguettes forment un triangle.**

Cela signifie que

$$l_1 + l_2 > l_n.$$

Montrons qu'alors **tous** les triplets conviennent. Prenons trois baguettes quelconques, de longueurs $l_i < l_j < l_k$, avec $i < j < k$. La plus longue des trois est $l_k$ ; il faut vérifier que

$$l_i + l_j > l_k.$$

Or :

- $i \ge 1$, donc $l_i \ge l_1$ ;
- $j \ge 2$, donc $l_j \ge l_2$ ;
- $k \le n$, donc $l_k \le l_n$.

En additionnant les deux premières inégalités :

$$l_i + l_j \ge l_1 + l_2 > l_n \ge l_k.$$

Donc $l_i + l_j > l_k$ : les trois baguettes forment bien un triangle. Comme le triplet était quelconque, la notice dit vrai, et là encore une seule vérification a suffi.

**Pourquoi zéro vérification ne suffit pas.**

Pierre ne connaît que l'ordre des baguettes, pas leurs longueurs. Or les deux situations sont possibles :

- une boîte de baguettes mesurant $10$ cm, $\text{10,1}$ cm, $\text{10,2}$ cm, ... : les deux plus courtes font ensemble plus de $20$ cm, ce qui dépasse largement la plus longue, donc la notice dit vrai ;
- une boîte de baguettes mesurant $1$ cm, $2$ cm, $4$ cm, $8$ cm, ... : les deux plus courtes font $3$ cm, moins que la plus longue, donc la notice est fausse.

Sans essayer une seule fois, Pierre ne peut pas distinguer ces deux boîtes. Zéro vérification ne suffit donc jamais.

**Conclusion.** Dans les deux cas, a) comme b), le plus petit nombre de vérifications qui convient à coup sûr est $1$. Ce nombre ne dépend pas du nombre de baguettes.

## Going further

1. Avec $100$ baguettes, combien de triplets différents peut-on former ? Comparer ce nombre avec le nombre de vérifications trouvé.
2. La notice affirme maintenant quelque chose de beaucoup plus faible : « il existe dans la boîte trois baguettes qui forment un triangle ». Montrer qu'il suffit alors d'essayer les triplets de baguettes **voisines** $(l_i,\, l_{i+1},\, l_{i+2})$ : si un triplet quelconque forme un triangle, alors un triplet de baguettes voisines en forme un aussi.
