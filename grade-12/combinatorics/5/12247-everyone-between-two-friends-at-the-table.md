---
id: "12247"
title: "Chacun entre deux amis autour de la table"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [amis, table-ronde, graphe, amelioration-pas-a-pas, retournement, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de février 2016, senior"
  reference: "2017-10_ofm-2015-2016-test-fevrier.pdf, test du 23 février 2016, exercice 3 ; corrigé 2017-10_ofm-2015-2016-test-fevrier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-fevrier.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Un groupe de $2n$ personnes se réunit. Chacune d'elles a au moins $n$ amis dans le groupe. L'amitié est réciproque : si Alice est amie avec Bruno, alors Bruno est ami avec Alice. Personne n'est ami avec soi-même.

Montrer qu'on peut placer ces $2n$ personnes autour d'une table ronde de sorte que chacune soit assise entre deux de ses amis.

(Pour $n = 1$, chacune des deux personnes a l'autre à sa gauche et à sa droite.)

## Hints

1. Pars d'une disposition quelconque. Appelle **tension** deux voisins qui ne sont pas amis. Essaie de faire diminuer le nombre de tensions.
2. Suppose que $A$ et $B$ sont voisins et ne sont pas amis. En faisant le tour de la table, écris la disposition sous la forme $A, B, P_3, P_4, \ldots, P_{2n}$. Que se passe-t-il si l'on retourne un bloc de voisins $B, P_3, \ldots, P_i$, c'est-à-dire si on les fait asseoir dans l'ordre inverse sur les mêmes chaises ?
3. Retourner ce bloc ne change que deux paires de voisins. Il suffit donc de trouver un $i$ tel que $P_i$ soit ami de $A$ et $P_{i+1}$ ami de $B$.
4. Regarde la personne assise juste après chacun des amis de $A$. Combien $B$ a-t-il de non-amis, au plus ?

## Solution

Pour $n = 1$, les deux personnes ont chacune au moins un ami, donc elles sont amies, et il n'y a rien à faire. On suppose désormais $n \geqslant 2$, de sorte qu'il y a au moins $4$ personnes.

Une **disposition** est une façon de placer les $2n$ personnes autour de la table. En faisant le tour de la table, on l'écrit comme une liste $P_1, P_2, \ldots, P_{2n}$, où chacune est voisine de la suivante, et $P_{2n}$ est voisine de $P_1$. On appelle **tension** une paire de voisins qui ne sont pas amis. On cherche une disposition sans aucune tension.

**Étape 1. La stratégie.**

On va montrer la propriété suivante : *si une disposition a au moins une tension, on peut en construire une autre qui a strictement moins de tensions.*

Admettons-la pour l'instant. Partons d'une disposition quelconque. Tant qu'il reste une tension, on la remplace par une disposition qui a moins de tensions. Le nombre de tensions est un entier positif ou nul qui diminue à chaque fois, donc cela ne peut pas durer indéfiniment : on finit par obtenir une disposition sans tension, et c'est gagné.

**Étape 2. On trouve deux voisins bien placés.**

Prenons une disposition qui a une tension. En faisant tourner la numérotation, on peut supposer que cette tension est entre $P_1 = A$ et $P_2 = B$ : les personnes $A$ et $B$ sont voisines, et ne sont pas amies. Pour simplifier, on note aussi $P_{2n+1} = P_1 = A$, la personne qui suit $P_{2n}$.

*Il existe un indice $i$, avec $3 \leqslant i \leqslant 2n - 1$, tel que $P_i$ soit ami de $A$ et $P_{i+1}$ ami de $B$.*

La personne $A$ a au moins $n$ amis. Aucun n'est $A$ ni $B$, donc tous sont parmi $P_3, P_4, \ldots, P_{2n}$. Pour chaque ami $P_i$ de $A$, regardons la personne $P_{i+1}$ assise juste après lui. On obtient ainsi au moins $n$ personnes, toutes différentes puisqu'elles occupent des places différentes, et aucune n'est $B$, puisque leurs numéros vont de $4$ à $2n + 1$.

Supposons qu'aucune de ces personnes ne soit amie de $B$. Alors $B$ aurait au moins $n$ non-amis en dehors de lui-même. Or $B$ a au moins $n$ amis parmi les $2n - 1$ autres personnes, donc au plus $(2n - 1) - n = n - 1$ non-amis. C'est une contradiction.

Il existe donc un ami $P_i$ de $A$ tel que $P_{i+1}$ soit ami de $B$. On a $i \geqslant 3$, et $i \neq 2n$, car $P_{2n+1} = A$ n'est pas ami de $B$. Donc $3 \leqslant i \leqslant 2n - 1$.

**Étape 3. On retourne un bloc.**

Avec cet indice $i$, on fait asseoir les personnes $P_2, P_3, \ldots, P_i$ dans l'ordre inverse, sur les mêmes chaises. La nouvelle disposition s'écrit
$$A, \; P_i, \; P_{i-1}, \; \ldots, \; P_3, \; B, \; P_{i+1}, \; \ldots, \; P_{2n}.$$

Comparons les paires de voisins.

- À l'intérieur du bloc retourné, les paires de voisins sont les mêmes qu'avant : $P_j$ et $P_{j+1}$, pour $2 \leqslant j \leqslant i - 1$. Seul l'ordre de lecture a changé.
- En dehors du bloc, rien n'a bougé : les paires $P_j$ et $P_{j+1}$ pour $i + 1 \leqslant j \leqslant 2n - 1$, ainsi que la paire $P_{2n}$ et $A$, sont les mêmes.
- Les deux paires $A$ et $B$, puis $P_i$ et $P_{i+1}$, ont disparu. Elles sont remplacées par les paires $A$ et $P_i$, puis $B$ et $P_{i+1}$, qui sont des paires d'amis d'après l'étape 2.

On a donc perdu la tension entre $A$ et $B$, peut-être aussi celle entre $P_i$ et $P_{i+1}$, et l'on n'a créé aucune tension. La nouvelle disposition a strictement moins de tensions que l'ancienne.

Cela démontre la propriété de l'étape 1, et donc le résultat : on peut placer les $2n$ personnes autour de la table de sorte que chacune soit assise entre deux de ses amis.

## Going further

1. Montre que le résultat devient faux si chacun a seulement $n - 1$ amis. On pourra penser à deux groupes de $n$ personnes, où chacun est ami avec tous les membres de son groupe, et avec personne d'autre.
2. Le résultat reste-t-il vrai avec $2n + 1$ personnes qui ont chacune au moins $n$ amis ? On pourra penser à un groupe de $n$ filles et $n + 1$ garçons, où chaque fille est amie avec chaque garçon, et où personne n'a d'autre ami.

Ce résultat est un cas particulier du **théorème de Dirac** (1952) : si $N \geqslant 3$ personnes ont chacune au moins $\frac{N}{2}$ amis, on peut toujours les placer autour d'une table de sorte que chacune soit entre deux de ses amis.
