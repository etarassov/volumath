---
id: "7516"
title: "Filles et garçons en cercle"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [double-comptage, cercle, voisins, paires]
adapted_from: null
see_also: ["7618"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 2. La Muraille ne donne pas de solution pour cet exercice : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

$p$ filles et $q$ garçons se mettent en cercle, dans un ordre quelconque. On suppose qu'ils sont au moins trois en tout.

On note $a$ le nombre de paires de filles côte à côte, et $b$ le nombre de paires de garçons côte à côte.

Montrer que

$$a - b = p - q.$$

## Hints

1. Essaie d'abord sur de petits cercles, par exemple $p = 3$ et $q = 2$, en changeant l'ordre. Le résultat semble-t-il ne pas dépendre de l'ordre ?
2. Appelle « voisinage » chaque paire de personnes assises côte à côte. Combien y a-t-il de voisinages en tout dans un cercle de $p+q$ personnes ?
3. Chaque voisinage est de l'un des trois types : deux filles, deux garçons, ou une fille et un garçon. Note $m$ le nombre de voisinages du troisième type.
4. Compte maintenant de deux façons la quantité suivante : « le nombre de fois où une fille apparaît dans un voisinage ». Chaque fille a deux voisins.

## Solution

**Étape 1. On nomme les voisinages.**

Appelons **voisinage** chaque paire de personnes assises côte à côte. Dans un cercle de $p+q$ personnes il y a exactement $p+q$ voisinages, un par « intervalle » entre deux places consécutives.

Chaque voisinage est de l'un des trois types suivants :

- fille-fille : il y en a $a$ ;
- garçon-garçon : il y en a $b$ ;
- fille-garçon (mixte) : notons $m$ leur nombre.

**Étape 2. On compte les filles, deux fois.**

Comptons la quantité $N$ suivante : le nombre de couples (une fille, un voisinage qui la contient).

*Premier comptage, par les filles.* Chaque fille a exactement deux voisins, donc appartient à exactement deux voisinages. Il y a $p$ filles, donc

$$N = 2p.$$

*Second comptage, par les voisinages.* Un voisinage fille-fille contient deux filles, il compte donc pour $2$. Un voisinage mixte contient une fille, il compte pour $1$. Un voisinage garçon-garçon ne compte pour rien. Donc

$$N = 2a + m.$$

En égalant :

$$2a + m = 2p.$$

**Étape 3. On recommence avec les garçons.**

Exactement le même comptage, appliqué aux garçons, donne

$$2b + m = 2q.$$

**Étape 4. On soustrait.**

$$(2a + m) - (2b + m) = 2p - 2q,$$

c'est-à-dire $2a - 2b = 2p - 2q$, et en divisant par $2$ :

$$a - b = p - q.$$

## Going further

Ce qui est frappant, c'est que $a$ et $b$ dépendent beaucoup de l'ordre choisi, alors que leur **différence** n'en dépend pas du tout. Par exemple avec $p = 3$ filles et $q = 2$ garçons : l'ordre F F F G G donne $a = 2$, $b = 1$ ; l'ordre F G F G F donne $a = 1$, $b = 0$. Dans les deux cas $a - b = 1 = p - q$.

La méthode employée s'appelle le **double comptage** : on calcule une même quantité de deux façons et on égale les deux résultats. C'est l'un des outils les plus efficaces de toute la combinatoire.

Au passage, on obtient gratuitement une autre information : en soustrayant $2a + m = 2p$ de la relation $a + b + m = p + q$ multipliée par $2$, on trouve $m = 2(q - b)$, donc le nombre de voisinages mixtes est toujours **pair**. C'est logique : en faisant le tour du cercle, on change de sexe un nombre pair de fois avant de revenir au point de départ.
