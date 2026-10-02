---
id: "13410"
title: "Un nombre impair d'ensembles équilibrés"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [parite, appariement, symetrie, sous-ensembles, moyenne, mediane]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2021"
  reference: "2021-10_Sujet.pdf, épreuve lycée, exercice 14 ; corrigé 2021-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2021-10_Sujet.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier, et soit $T$ une partie non vide de $\{1, 2, \ldots, n\}$.

On dit qu'un nombre réel $m$ (pas forcément entier) est **un nombre médian** de $T$ s'il y a dans $T$ autant d'éléments inférieurs ou égaux à $m$ que d'éléments supérieurs ou égaux à $m$.

On dit que $T$ est **équilibrée** si la moyenne de ses éléments est un nombre médian de $T$.

Par exemple, $\{1, 2, 6\}$ n'est pas équilibrée : sa moyenne est $3$, et il y a deux éléments inférieurs ou égaux à $3$ pour un seul supérieur ou égal à $3$.

Montrer que le nombre de parties équilibrées non vides de $\{1, 2, \ldots, n\}$ est impair.

## Hints

1. Fais la liste complète pour $n = 1$, $n = 2$ et $n = 3$. Tu dois trouver $1$, $3$ et $7$ parties équilibrées.
2. Pour montrer qu'un nombre est impair, on peut grouper presque tous les objets par paires, et voir ce qui reste.
3. Que devient une partie quand on remplace chaque élément $k$ par $n + 1 - k$ ? Que deviennent sa moyenne et ses éléments médians ?
4. Les parties qui ne bougent pas par cette transformation restent seules. Montre qu'elles sont toutes équilibrées, et compte-les.

## Solution

**Le miroir d'une partie.**

Pour une partie $A$ de $\{1, \ldots, n\}$, on appelle **miroir** de $A$ la partie $A'$ obtenue en remplaçant chaque élément $k$ par $n + 1 - k$. Par exemple, pour $n = 6$, le miroir de $\{1, 2, 6\}$ est $\{6, 5, 1\}$, c'est-à-dire $\{1, 5, 6\}$.

Le miroir du miroir de $A$ est $A$ lui-même, car $n + 1 - (n + 1 - k) = k$.

**Étape 1 : le miroir d'une partie équilibrée est équilibré.**

Soit $A$ une partie de $r$ éléments $a_1, \ldots, a_r$, de moyenne $m$. La moyenne de son miroir est

$$\frac{(n + 1 - a_1) + \ldots + (n + 1 - a_r)}{r} = \frac{r(n+1) - (a_1 + \ldots + a_r)}{r} = n + 1 - m.$$

De plus, $a \leqslant m$ équivaut à $n + 1 - a \geqslant n + 1 - m$. Donc le nombre d'éléments de $A$ inférieurs ou égaux à $m$ est égal au nombre d'éléments de $A'$ supérieurs ou égaux à $n + 1 - m$, et inversement. Si ces deux nombres sont égaux pour $A$, ils le sont aussi pour $A'$ : si $A$ est équilibrée, $A'$ l'est aussi.

**Étape 2 : on groupe les parties équilibrées par paires.**

Mettons ensemble chaque partie équilibrée $A$ et son miroir $A'$, qui est aussi équilibré. Deux cas se présentent.

- Si $A' \neq A$, on obtient une paire de deux parties équilibrées différentes. Ces paires ne se chevauchent pas, puisque le miroir de $A'$ est $A$. Les parties équilibrées de ce type sont donc en nombre **pair**.
- Si $A' = A$, la partie reste seule. On dit alors que $A$ est **symétrique** : chaque fois que $k$ est dans $A$, $n + 1 - k$ y est aussi.

Il reste donc à montrer que le nombre de parties symétriques équilibrées non vides est impair.

**Étape 3 : toute partie symétrique non vide est équilibrée.**

Soit $A$ une partie symétrique non vide, et $c = \frac{n+1}{2}$. Les éléments de $A$ se groupent par paires $\{k, n + 1 - k\}$ de somme $n + 1$, plus éventuellement l'élément $c$ lui-même quand $n$ est impair. La moyenne de $A$ vaut donc exactement $c$.

De plus, l'application $k \mapsto n + 1 - k$ envoie les éléments de $A$ inférieurs ou égaux à $c$ sur les éléments de $A$ supérieurs ou égaux à $c$, et elle est réversible. Ces deux ensembles ont donc le même nombre d'éléments : $c$ est un nombre médian de $A$, et $A$ est équilibrée.

**Étape 4 : on compte les parties symétriques.**

On découpe $\{1, \ldots, n\}$ en « blocs » : les paires $\{1, n\}$, $\{2, n - 1\}$, et ainsi de suite, plus le singleton $\{c\}$ quand $n$ est impair. Il y a $q$ blocs, avec $q = \frac{n}{2}$ si $n$ est pair et $q = \frac{n+1}{2}$ si $n$ est impair.

Une partie symétrique est exactement une réunion de blocs. Pour chaque bloc, on a deux choix (le prendre ou non), donc il y a $2^q$ parties symétriques, dont la partie vide. Il y a donc $2^q - 1$ parties symétriques non vides. Comme $q \geqslant 1$, ce nombre est **impair**.

**Conclusion.** Le nombre de parties équilibrées non vides est la somme d'un nombre pair (les parties qui ne sont pas symétriques) et d'un nombre impair (les parties symétriques non vides) : il est impair.

*Vérification sur $n = 3$.* Les parties équilibrées sont $\{1\}$, $\{2\}$, $\{3\}$, $\{1, 2\}$, $\{2, 3\}$, $\{1, 3\}$ et $\{1, 2, 3\}$. Les paires de miroirs sont $\{1\}$ et $\{3\}$, $\{1, 2\}$ et $\{2, 3\}$. Les parties symétriques sont $\{2\}$, $\{1, 3\}$ et $\{1, 2, 3\}$ : il y en a $2^2 - 1 = 3$. Au total $4 + 3 = 7$.

## Going further

Pour $n = 4$, il y a $13$ parties équilibrées. Les retrouver toutes, et repérer lesquelles sont symétriques.
