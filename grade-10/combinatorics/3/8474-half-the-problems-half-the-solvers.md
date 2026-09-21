---
id: "8474"
title: "La moitié des problèmes, la moitié des élèves"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [double comptage, moyenne, principe des tiroirs, inegalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe C"
  reference: "Poly-2021-Valbonne.pdf, Groupe C, « Double comptage » (Arthur Léonard), exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Au stage, $n$ problèmes sont affichés sur un mur, et il y a $m$ stagiaires.

Chaque stagiaire a résolu au moins la moitié des problèmes, c'est-à-dire au moins $\dfrac{n}{2}$ d'entre eux.

Montrer qu'il existe un problème qui a été résolu par au moins $\dfrac{m}{2}$ stagiaires.

## Hints

1. Fabrique une quantité que tu peux compter de deux façons différentes. Que veux-tu compter ici ?
2. Compte le nombre total de « résolutions », c'est-à-dire le nombre de couples (stagiaire, problème qu'il a résolu).
3. Compte-le d'abord stagiaire par stagiaire, en utilisant l'hypothèse. Puis compte-le problème par problème.
4. Pour conclure, raisonne par l'absurde : suppose que chaque problème ait été résolu par moins de $\dfrac{m}{2}$ stagiaires.

## Solution

### Étape 1. La quantité que l'on va compter deux fois

Appelons **résolution** un couple formé d'un stagiaire et d'un problème que ce stagiaire a résolu. Notons $Q$ le nombre total de résolutions.

### Étape 2. Compter par les stagiaires

Numérotons les stagiaires de $1$ à $m$, et notons $p_i$ le nombre de problèmes résolus par le stagiaire numéro $i$. En regroupant les résolutions selon le stagiaire concerné :

$$Q = p_1 + p_2 + \cdots + p_m.$$

L'hypothèse dit que chaque $p_i$ vaut au moins $\dfrac{n}{2}$. Donc

$$Q \geqslant \underbrace{\frac{n}{2} + \frac{n}{2} + \cdots + \frac{n}{2}}_{m \text{ termes}} = \frac{nm}{2}. \qquad (1)$$

### Étape 3. Compter par les problèmes

Numérotons maintenant les problèmes de $1$ à $n$, et notons $s_j$ le nombre de stagiaires ayant résolu le problème numéro $j$. En regroupant cette fois les résolutions selon le problème concerné :

$$Q = s_1 + s_2 + \cdots + s_n. \qquad (2)$$

C'est bien le même nombre $Q$ : on a seulement rangé les mêmes couples dans un autre ordre.

### Étape 4. Conclure par l'absurde

Supposons que **chaque** problème ait été résolu par strictement moins de $\dfrac{m}{2}$ stagiaires, c'est-à-dire $s_j < \dfrac{m}{2}$ pour tout $j$. Alors, d'après $(2)$,

$$Q < \underbrace{\frac{m}{2} + \cdots + \frac{m}{2}}_{n \text{ termes}} = \frac{nm}{2}.$$

Cela contredit l'inégalité $(1)$, qui donne $Q \geqslant \dfrac{nm}{2}$.

Il existe donc au moins un problème $j$ pour lequel

$$s_j \geqslant \frac{m}{2}.$$

$$\boxed{\text{Un problème au moins a été résolu par au moins } \tfrac{m}{2} \text{ stagiaires.}}$$

## Going further

La méthode s'appelle le **double comptage**, et elle se résume ainsi :

1. trouver une quantité $Q$ que l'on peut exprimer de deux façons différentes ;
2. utiliser les hypothèses pour encadrer chacune des deux expressions ;
3. relier les deux encadrements par l'intermédiaire de $Q$.

Toute la difficulté est à l'étape 1 : trouver quoi compter. Ici le choix s'imposait presque, parce que l'énoncé parle de stagiaires d'un côté et de problèmes de l'autre, et que la quantité naturelle est celle qui met les deux en relation.

Le résultat est optimal, au sens où l'on ne peut pas remplacer $\dfrac{m}{2}$ par davantage. Prenons $n = m = 2$ : le stagiaire A résout le problème 1 seulement, le stagiaire B résout le problème 2 seulement. Chacun a bien résolu $\dfrac{n}{2} = 1$ problème, et chaque problème a été résolu par exactement $\dfrac{m}{2} = 1$ stagiaire, pas plus.
