---
id: "7921"
title: "Deux mille seize personnes en file indienne"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [menteurs, deduction, proche-en-proche, majorite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, épreuve de la Coupe Animath du 31 mai 2016, exercice 3 (énoncé p. 28, solution p. 30)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

$2016$ personnes sont en file indienne. Chacune d'elles est soit un **truand**, qui ment toujours, soit un **chevalier**, qui dit toujours la vérité. Chacune des $2016$ personnes sait qui sont les truands et qui sont les chevaliers.

Chaque personne, sauf celle qui est tout devant, désigne l'une des personnes placées devant elle et prononce l'une des deux phrases :

> « Cette personne est un truand. »

ou

> « Cette personne est un chevalier. »

On sait qu'il y a strictement plus de truands que de chevaliers.

Comment un observateur, qui entend toutes les déclarations mais ne connaît personne, peut-il déterminer qui est un truand et qui est un chevalier ?

## Hints

1. Oublie d'abord la question « qui ment ? » et pose-toi celle-ci : quand une personne en désigne une autre, qu'apprend-on sur le fait qu'elles soient **du même type** ou non ?
2. Vérifie les quatre cas : celui qui parle est un chevalier ou un truand, et il dit « truand » ou « chevalier ».
3. Numérote les personnes de $1$ (devant) à $2016$ (derrière). Que peut désigner la deuxième personne ? Et la troisième ?
4. À la fin, l'observateur connaît deux groupes, sans savoir lequel est lequel. Comment l'hypothèse sur le nombre de truands tranche-t-elle ?

## Solution

**L'idée : chaque déclaration dit si deux personnes sont du même type.**

**Étape 1 : traduire une déclaration.**

Supposons que la personne $P$ désigne la personne $Q$.

- Si $P$ dit « $Q$ est un chevalier » :
  - si $P$ est un chevalier, elle dit vrai, donc $Q$ est un chevalier : même type ;
  - si $P$ est un truand, elle ment, donc $Q$ est un truand : même type aussi.
- Si $P$ dit « $Q$ est un truand » :
  - si $P$ est un chevalier, elle dit vrai, donc $Q$ est un truand : types différents ;
  - si $P$ est un truand, elle ment, donc $Q$ est un chevalier : types différents aussi.

Dans les deux cas, **l'observateur apprend avec certitude si $P$ et $Q$ sont du même type**, sans savoir de quel type il s'agit :

> « c'est un chevalier » signifie « nous sommes du même type » ;
> « c'est un truand » signifie « nous sommes de types différents ».

**Étape 2 : on remonte la file.**

Numérotons les personnes $P_1, P_2, \ldots, P_{2016}$, la personne $P_1$ étant tout devant.

- $P_2$ n'a qu'une seule personne devant elle : elle désigne forcément $P_1$. L'observateur sait donc si $P_2$ est du même type que $P_1$.
- $P_3$ désigne $P_1$ ou $P_2$. Dans le premier cas, l'observateur compare directement $P_3$ à $P_1$ ; dans le second, il compare $P_3$ à $P_2$, dont il connaît déjà la relation à $P_1$. Il sait donc si $P_3$ est du même type que $P_1$.
- Et ainsi de suite : à chaque étape, $P_k$ désigne une personne $P_j$ avec $j < k$, dont la relation à $P_1$ est déjà connue. L'observateur en déduit la relation de $P_k$ à $P_1$.

En avançant de proche en proche, l'observateur répartit donc les $2016$ personnes en deux groupes : celles qui sont du même type que $P_1$ et celles qui sont de l'autre type.

**Étape 3 : on décide lequel est lequel.**

À ce stade, l'observateur connaît les deux groupes mais pas leurs noms : soit le groupe de $P_1$ est celui des chevaliers, soit c'est celui des truands.

C'est ici que sert l'hypothèse : il y a **strictement plus de truands que de chevaliers**. Les deux groupes n'ont donc pas le même nombre de personnes, et le groupe le plus nombreux est celui des truands.

L'observateur compte les effectifs, désigne le plus gros groupe comme celui des truands et l'autre comme celui des chevaliers. Il connaît alors le type de chacun.

**Conclusion.** L'observateur peut toujours déterminer qui est un truand et qui est un chevalier.

## Going further

Sans l'hypothèse sur le nombre de truands, l'observateur serait bloqué à l'étape 2 : les déclarations ne permettent que de comparer les gens entre eux, jamais de trancher dans l'absolu. En effet, si l'on échange d'un coup tous les rôles (chaque chevalier devient truand et inversement), toutes les déclarations entendues restent exactement les mêmes.
