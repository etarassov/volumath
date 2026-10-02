---
id: "3819"
title: "Quatre voitures dans le rond-point"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, permutations, derangements, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Problem Solving: Think Outside the Box"
  reference: "Handout-4165-3921.pdf, problème 21"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4165-3921.pdf"
---

## Statement

Un rond-point a quatre branches : nord, est, sud et ouest. Chaque branche sert à la fois d'entrée et de sortie.

Au même instant, quatre voitures entrent dans le rond-point, une par branche.

- Aucune voiture ne fait le tour complet : aucune ne ressort par la branche par laquelle elle est entrée.
- Deux voitures ne ressortent jamais par la même branche.

De combien de façons différentes les quatre voitures peuvent-elles ressortir ?

## Hints

1. Comme deux voitures ne sortent jamais par la même branche, l'ensemble des sorties est une façon de faire correspondre à chaque voiture une branche différente. Combien y en a-t-il en tout, si l'on oublie la première condition ?
2. Numérote les branches $1, 2, 3, 4$ et note $s_1, s_2, s_3, s_4$ les branches de sortie. La première condition dit simplement $s_i \neq i$ pour chaque $i$.
3. Fixe la sortie de la première voiture (trois choix possibles), puis sépare en cas selon ce que fait la voiture entrée par cette branche-là.

## Solution

**L'idée : compter les façons de faire correspondre à chaque voiture une branche de sortie, sans jamais retomber sur sa propre branche.**

Numérotons les branches $1$, $2$, $3$, $4$, et appelons voiture $i$ celle qui est entrée par la branche $i$. Notons $s_i$ la branche par laquelle la voiture $i$ ressort.

Les conditions sont :

- les quatre nombres $s_1, s_2, s_3, s_4$ sont deux à deux différents (une sortie par voiture) ;
- $s_i \neq i$ pour chaque $i$ (pas de tour complet).

**Étape 1. On fixe la sortie de la voiture 1.**

La voiture $1$ peut ressortir par $2$, $3$ ou $4$ : trois choix. Par symétrie, ces trois choix donnent le même nombre de possibilités pour la suite. Supposons donc $s_1 = 2$, et multiplions par $3$ à la fin.

**Étape 2. Deux cas, selon la voiture 2.**

**Cas A : $s_2 = 1$.** Les voitures $1$ et $2$ échangent leurs branches. Il reste les voitures $3$ et $4$, qui doivent ressortir par $3$ et $4$ sans que $s_3 = 3$ ni $s_4 = 4$. La seule possibilité est $s_3 = 4$ et $s_4 = 3$.

Cela fait **$1$ possibilité**.

**Cas B : $s_2 \neq 1$.** Les branches encore libres sont $1$, $3$ et $4$, à répartir entre les voitures $2$, $3$ et $4$, avec les interdictions :

- la voiture $2$ ne peut pas prendre $1$ (c'est le cas B) ni $2$ (déjà prise) : il lui reste $3$ ou $4$ ;
- la voiture $3$ ne peut pas prendre $3$ ;
- la voiture $4$ ne peut pas prendre $4$.

Si $s_2 = 3$, il reste $1$ et $4$ pour les voitures $3$ et $4$ ; la voiture $4$ ne peut pas prendre $4$, donc $s_4 = 1$ et $s_3 = 4$. Une possibilité.

Si $s_2 = 4$, il reste $1$ et $3$ pour les voitures $3$ et $4$ ; la voiture $3$ ne peut pas prendre $3$, donc $s_3 = 1$ et $s_4 = 3$. Une possibilité.

Cela fait **$2$ possibilités**.

**Étape 3. On rassemble.**

Pour $s_1 = 2$, il y a $1 + 2 = 3$ possibilités. Comme la voiture $1$ avait $3$ choix de départ, tous symétriques :

$$3 \times 3 = 9.$$

**Conclusion.** Les quatre voitures peuvent ressortir de $9$ façons différentes.

## Going further

1. Refais le compte avec trois voitures et trois branches. Combien trouves-tu ?
2. Et avec deux voitures ?
3. En appelant $D_n$ le nombre de façons avec $n$ voitures, tu as maintenant $D_2 = 1$, $D_3 = 2$ et $D_4 = 9$. Devine $D_5$, puis vérifie.
