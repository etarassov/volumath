---
id: "1003"
title: "La règle de Pascal, et un coefficient toujours pair"
grade: 12
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, combinaisons, triangle-de-pascal, parite, partition]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Intro to Proofs"
  reference: "Handout-4880-5141.pdf, problème 7"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4880-5141.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier et soit $k$ un entier avec $1 \leqslant k \leqslant n-1$. On note $X = \{1, 2, \ldots, n\}$ et l'on appelle **partie de taille $k$** tout sous-ensemble de $X$ ayant exactement $k$ éléments.

1. On range les parties de taille $k$ en deux tas : celles qui contiennent le nombre $1$, et celles qui ne le contiennent pas. Combien y a-t-il de parties dans chaque tas ? En déduire l'égalité
$$\binom{n-1}{k-1} + \binom{n-1}{k} = \binom{n}{k}.$$
*(On demande un raisonnement de dénombrement, pas un calcul de factorielles.)*

2. En déduire que pour tout entier $n \geqslant 1$, le nombre $\displaystyle \binom{2n}{n}$ est **pair**.

## Hints

1. Une partie de taille $k$ qui contient $1$ est entièrement déterminée par ce qu'il y a dedans **à part le $1$**. Où vit ce reste, et quelle est sa taille ?
2. Une partie de taille $k$ qui ne contient pas $1$ est un sous-ensemble de quel ensemble ?
3. Les deux tas n'ont aucun élément commun et, réunis, redonnent toutes les parties de taille $k$. C'est ce qui permet d'additionner.
4. Pour la question 2, appliquer l'égalité de la question 1 avec le bon $n$ et le bon $k$ pour faire apparaître $\binom{2n}{n}$ à droite.
5. Toujours pour la question 2 : se rappeler que choisir $k$ objets parmi $m$ revient à choisir les $m-k$ qu'on laisse, donc $\binom{m}{k} = \binom{m}{m-k}$.

## Solution

### Question 1

Notons $E$ l'ensemble de toutes les parties de $X = \{1, \ldots, n\}$ de taille $k$. Par définition,
$$|E| = \binom{n}{k}.$$

Découpons $E$ en deux tas :
$$E_1 = \{\,A \in E \;:\; 1 \in A \,\}, \qquad E_2 = \{\,A \in E \;:\; 1 \notin A \,\}.$$

Toute partie de taille $k$ contient le nombre $1$ ou ne le contient pas, et jamais les deux à la fois. Donc $E_1$ et $E_2$ n'ont aucun élément commun, et leur réunion est $E$ tout entier :
$$|E| = |E_1| + |E_2|.$$

**Le premier tas.** Une partie $A \in E_1$ s'écrit $A = \{1\} \cup B$, où $B = A \setminus \{1\}$ est une partie de $\{2, 3, \ldots, n\}$ de taille $k-1$. Réciproquement, toute partie $B$ de $\{2, \ldots, n\}$ de taille $k-1$ donne une partie $\{1\} \cup B$ de $E_1$, et deux $B$ différents donnent deux parties différentes. Compter $E_1$ revient donc à choisir $k-1$ éléments parmi les $n-1$ nombres $2, 3, \ldots, n$ :
$$|E_1| = \binom{n-1}{k-1}.$$

**Le second tas.** Une partie $A \in E_2$ est exactement une partie de $\{2, 3, \ldots, n\}$ de taille $k$ :
$$|E_2| = \binom{n-1}{k}.$$

**Conclusion.** En reportant,
$$\binom{n-1}{k-1} + \binom{n-1}{k} = \binom{n}{k}.$$

C'est la **règle de Pascal** : dans le triangle de Pascal, chaque nombre est la somme des deux nombres situés juste au-dessus de lui.

*(Les deux tas sont bien non vides sous l'hypothèse $1 \leqslant k \leqslant n-1$ : la partie $\{1, 2, \ldots, k\}$ est dans $E_1$ et la partie $\{2, 3, \ldots, k+1\}$ est dans $E_2$.)*

### Question 2

Soit $n \geqslant 1$. Appliquons la règle de Pascal avec $2n$ à la place de $n$, et $k = n$ :
$$\binom{2n}{n} = \binom{2n-1}{n-1} + \binom{2n-1}{n}.$$

Or choisir $n$ éléments parmi $2n-1$, c'est choisir les $(2n-1) - n = n-1$ éléments que l'on **ne prend pas**. Autrement dit
$$\binom{2n-1}{n} = \binom{2n-1}{n-1}.$$

Les deux termes de la somme sont donc égaux, et
$$\binom{2n}{n} = 2 \binom{2n-1}{n-1}.$$

Comme $\binom{2n-1}{n-1}$ est un entier, $\binom{2n}{n}$ est le double d'un entier : il est **pair**.

**Vérification.** $\binom{2}{1} = 2$, $\binom{4}{2} = 6$, $\binom{6}{3} = 20$, $\binom{8}{4} = 70$, $\binom{10}{5} = 252$. Tous pairs, et l'on retrouve bien $2 \times 1$, $2 \times 3$, $2 \times 10$, $2 \times 35$, $2 \times 126$.

## Going further

1. Interpréter directement l'égalité $\binom{2n}{n} = 2\binom{2n-1}{n-1}$ : dans un groupe de $2n$ personnes dont Alice, on forme une équipe de $n$ personnes. Pourquoi y a-t-il autant d'équipes contenant Alice que d'équipes ne la contenant pas ?
2. Le nombre $\binom{2n}{n}$ est-il toujours divisible par $4$ ? Chercher un contre-exemple.
3. Montrer, en sommant la règle de Pascal, que $\binom{k}{k} + \binom{k+1}{k} + \cdots + \binom{n}{k} = \binom{n+1}{k+1}$.
