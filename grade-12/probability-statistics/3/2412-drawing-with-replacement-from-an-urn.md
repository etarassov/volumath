---
id: "2412"
title: "Six tirages avec remise"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [loi-binomiale, tirage-avec-remise, denombrement, anagrammes, independance]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Random Variables"
  reference: "Handout-505-598.pdf, exercice 13 (réponses dans Handout-506-598.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-505-598.pdf"
---

## Statement

Une urne contient $14$ boules : $4$ rouges, $5$ vertes et $5$ jaunes. On tire une boule au hasard, on note sa couleur, puis on la remet dans l'urne. On répète l'opération $6$ fois en tout.

1. Quelle est la probabilité d'obtenir exactement $3$ boules vertes ?
2. Quelle est la probabilité d'obtenir exactement $3$ vertes, $2$ rouges et $1$ jaune ?

Donner les résultats sous forme exacte, puis une valeur approchée.

## Hints

1. Comme on remet la boule, les six tirages sont indépendants et se déroulent chaque fois dans les mêmes conditions.
2. Pour la question 1, une seule chose compte à chaque tirage : la boule est verte ou elle ne l'est pas. Quelle loi reconnais-tu ?
3. Pour la question 2, décris un résultat par un mot de six lettres, par exemple $\mathrm{VRVJVR}$. Combien de mots comportent trois $\mathrm{V}$, deux $\mathrm{R}$ et un $\mathrm{J}$ ?
4. Tous ces mots ont-ils la même probabilité ? Calcule la probabilité d'un mot donné.

## Solution

Les tirages se font avec remise, donc les $6$ tirages sont **indépendants** et à chaque tirage

$$P(\text{rouge}) = \frac{4}{14} = \frac{2}{7}, \qquad P(\text{verte}) = \frac{5}{14}, \qquad P(\text{jaune}) = \frac{5}{14} .$$

### 1. Exactement trois vertes

Notons $X$ le nombre de boules vertes obtenues. À chaque tirage, « la boule est verte » est un succès de probabilité $p = \dfrac{5}{14}$, et les tirages sont indépendants : $X$ suit la loi binomiale $\mathcal{B}\left(6\,;\tfrac{5}{14}\right)$. Donc

$$P(X = 3) = \binom{6}{3}\left(\frac{5}{14}\right)^{3}\left(\frac{9}{14}\right)^{3} = 20 \times \frac{125}{2744} \times \frac{729}{2744} = \frac{455\,625}{1\,882\,384} \approx \text{0,242} .$$

### 2. Exactement trois vertes, deux rouges et une jaune

Décrivons le résultat des six tirages par un mot de six lettres prises dans $\{\mathrm{R}, \mathrm{V}, \mathrm{J}\}$, la $i$-ième lettre donnant la couleur du $i$-ième tirage.

*La probabilité d'un mot donné.* Les tirages étant indépendants, la probabilité d'un mot s'obtient en multipliant les probabilités de ses lettres. Tout mot comportant trois $\mathrm{V}$, deux $\mathrm{R}$ et un $\mathrm{J}$ a donc pour probabilité

$$\left(\frac{5}{14}\right)^{3}\left(\frac{4}{14}\right)^{2}\left(\frac{5}{14}\right)^{1} ,$$

quelle que soit la place des lettres : seul compte le nombre de lettres de chaque sorte.

*Le nombre de tels mots.* C'est le nombre d'anagrammes du mot $\mathrm{VVVRRJ}$, soit

$$\frac{6!}{3!\,2!\,1!} = \frac{720}{12} = 60 .$$

*Conclusion.*

$$P = 60 \times \left(\frac{5}{14}\right)^{3}\left(\frac{4}{14}\right)^{2}\left(\frac{5}{14}\right) = 60 \times \frac{125 \times 16 \times 5}{14^{6}} = \frac{600\,000}{7\,529\,536} = \frac{9375}{117\,649} \approx \text{0,0797} .$$

**Ce qu'il faut retenir.** La loi binomiale est le cas particulier à deux couleurs de ce calcul. Dès qu'il y a trois issues ou plus, la même méthode fonctionne : probabilité d'un mot, multipliée par le nombre de mots, c'est-à-dire par le nombre d'anagrammes.

## Going further

1. Calculer la probabilité d'obtenir exactement $2$ rouges au cours des six tirages.
2. Calculer la probabilité d'obtenir au moins une boule de chaque couleur.
3. Reprendre la question 1 si les tirages se font **sans** remise. Quelle loi obtient-on alors ?
