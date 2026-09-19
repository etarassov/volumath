---
id: "2409"
title: "Full, deux paires, une paire"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 45
tags: [probabilite, denombrement, cartes, coefficient-binomial, surcomptage]
adapted_from: null
see_also: ["2408"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Probability"
  reference: "Handout-487-575.pdf, exercice 4c, 4d et 4e (réponses dans Handout-488-575.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-487-575.pdf"
---

## Statement

On distribue $5$ cartes d'un jeu de $52$ cartes bien battu ; l'ordre ne compte pas. Le jeu comporte $13$ hauteurs ($2, 3, \ldots, 10$, valet, dame, roi, as) et $4$ couleurs.

Il y a $\binom{52}{5} = 2\,598\,960$ mains possibles, toutes équiprobables.

Calculer la probabilité d'obtenir :

1. un **full**, c'est-à-dire trois cartes d'une même hauteur et deux cartes d'une autre même hauteur ;
2. **exactement deux paires**, c'est-à-dire deux cartes d'une hauteur, deux cartes d'une deuxième hauteur, et une cinquième carte d'une troisième hauteur ;
3. **exactement une paire**, c'est-à-dire deux cartes d'une même hauteur et trois cartes de trois hauteurs différentes entre elles et de la première.

## Hints

1. Décris chaque main par la liste des hauteurs qui y figurent et du nombre de cartes de chaque hauteur. Pour le full, c'est $3 + 2$ ; pour deux paires, $2+2+1$ ; pour une paire, $2+1+1+1$.
2. Choisis d'abord les hauteurs, ensuite les couleurs. Pour une hauteur dont tu prends $j$ cartes, il y a $\binom{4}{j}$ choix de couleurs.
3. Attention au full : les deux hauteurs ne jouent pas le même rôle, l'une fournit trois cartes et l'autre deux. Il faut donc les choisir l'une après l'autre.
4. Attention aux deux paires : là, les deux hauteurs jouent le même rôle. Si tu les choisis l'une après l'autre, tu comptes chaque main deux fois.

## Solution

Dans les trois cas on compte les mains favorables, puis on divise par $2\,598\,960$.

### 1. Le full

Une main de type full est décrite par :

* la hauteur du brelan (les trois cartes identiques) : $13$ choix ;
* les couleurs de ces trois cartes : $\binom{4}{3} = 4$ choix ;
* la hauteur de la paire, différente de la première : $12$ choix ;
* les couleurs de ces deux cartes : $\binom{4}{2} = 6$ choix.

Les deux hauteurs ne sont pas interchangeables : l'une fournit trois cartes, l'autre deux. On les choisit donc l'une après l'autre sans rien corriger. Nombre de mains :

$$13 \times 4 \times 12 \times 6 = 3744 ,$$

$$P(\text{full}) = \frac{3744}{2\,598\,960} = \frac{6}{4165} \approx \text{0,00144} .$$

### 2. Exactement deux paires

Une telle main est décrite par :

* les deux hauteurs des paires. Ici les deux hauteurs jouent le même rôle, il s'agit donc d'un choix de $2$ hauteurs parmi $13$ **sans ordre** : $\binom{13}{2} = 78$ choix ;
* les couleurs de la première paire : $\binom{4}{2} = 6$ ; celles de la seconde : $\binom{4}{2} = 6$ ;
* la hauteur de la cinquième carte, différente des deux précédentes : $11$ choix ;
* sa couleur : $4$ choix.

Nombre de mains :

$$\binom{13}{2} \times 6 \times 6 \times 11 \times 4 = 78 \times 36 \times 44 = 123\,552 ,$$

$$P(\text{deux paires}) = \frac{123\,552}{2\,598\,960} = \frac{198}{4165} \approx \text{0,0475} .$$

*Le piège à éviter.* Si l'on avait écrit « $13$ choix pour la première hauteur, puis $12$ pour la seconde », on aurait obtenu $13 \times 12 = 156$ au lieu de $78$, c'est-à-dire le double : la main contenant une paire de rois et une paire de dames aurait été comptée une fois comme « rois puis dames » et une fois comme « dames puis rois ».

### 3. Exactement une paire

Une telle main est décrite par :

* la hauteur de la paire : $13$ choix ;
* les couleurs des deux cartes de la paire : $\binom{4}{2} = 6$ choix ;
* les trois hauteurs des trois cartes restantes, toutes différentes entre elles et de celle de la paire. Elles jouent le même rôle, donc c'est un choix sans ordre de $3$ hauteurs parmi les $12$ restantes : $\binom{12}{3} = 220$ choix ;
* la couleur de chacune de ces trois cartes, librement : $4^3 = 64$ choix.

Nombre de mains :

$$13 \times 6 \times 220 \times 64 = 1\,098\,240 ,$$

$$P(\text{une paire}) = \frac{1\,098\,240}{2\,598\,960} = \frac{352}{833} \approx \text{0,423} .$$

### Bilan

| main | nombre | probabilité |
|---|---|---|
| full | $3\,744$ | $\approx \text{0,0014}$ |
| deux paires | $123\,552$ | $\approx \text{0,0475}$ |
| une paire | $1\,098\,240$ | $\approx \text{0,423}$ |

Plus de quatre mains sur dix contiennent donc exactement une paire. La règle à retenir : on choisit **sans ordre** les hauteurs qui jouent le même rôle, et **l'une après l'autre** celles qui jouent des rôles différents.

## Going further

1. Combien y a-t-il de mains sans aucune paire, c'est-à-dire formées de cinq hauteurs différentes ? Vérifier que l'on retrouve bien le total $2\,598\,960$ en additionnant tous les types de mains.
2. Quelle est la probabilité d'obtenir un brelan, c'est-à-dire exactement trois cartes de même hauteur et deux cartes de deux autres hauteurs différentes ?
3. Comparer les probabilités obtenues avec l'ordre des combinaisons au poker. L'ordre du jeu suit-il exactement l'ordre des raretés ?
