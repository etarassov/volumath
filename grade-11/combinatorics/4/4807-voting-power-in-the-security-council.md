---
id: "4807"
title: "Le pouvoir de vote au Conseil de sécurité"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [denombrement, coefficients-binomiaux, coalitions, vote, parties-d-un-ensemble]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Group A, Voting: Power, Procedures, and Problems (Clint Givens)"
  reference: "Handout-189-206.pdf, exercice 3 (réponses dans Handout-190-206.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-189-206.pdf"
---

## Statement

Le Conseil de sécurité des Nations unies compte $15$ membres : $5$ membres **permanents** et $10$ membres **non permanents**. Une résolution est adoptée si et seulement si

- les $5$ membres permanents votent tous pour (chacun dispose d'un droit de veto), **et**
- au moins $9$ des $15$ membres votent pour, c'est-à-dire au moins $4$ membres non permanents en plus des $5$ permanents.

On appelle *coalition gagnante* un groupe de membres qui suffit à faire adopter la résolution lorsque tous ses membres votent pour (et que les autres votent contre).

Dans une coalition gagnante, un membre est dit *décisif* si, en le retirant, la coalition cesse d'être gagnante.

Enfin, le *pouvoir* d'un membre est défini comme
$$\text{pouvoir} = \frac{\text{nombre de coalitions gagnantes où ce membre est décisif}}{\text{nombre total de « membre décisif dans une coalition gagnante », tous membres confondus}} .$$

1. Combien y a-t-il de coalitions gagnantes ?
2. Dans combien de coalitions gagnantes un membre permanent donné est-il décisif ?
3. Même question pour un membre non permanent donné.
4. En déduire le pouvoir d'un membre permanent et celui d'un membre non permanent. Combien de fois un permanent est-il plus puissant qu'un non permanent ?

## Hints

1. Une coalition gagnante contient forcément les $5$ permanents. Elle est donc entièrement décrite par la liste des non permanents qu'elle contient. Combien faut-il en prendre au minimum ?
2. Compter les parties d'au moins $4$ éléments dans un ensemble de $10$, c'est une somme de coefficients binomiaux. Il est plus court de compter celles qui ont $0$, $1$, $2$ ou $3$ éléments et de retrancher de $2^{10}$.
3. Si on enlève un permanent d'une coalition gagnante, le veto n'est plus levé. Que peut-on en conclure d'un coup ?
4. Si on enlève un non permanent d'une coalition gagnante, celle-ci reste gagnante dès qu'il reste au moins $4$ non permanents. Dans quel cas exactement le retrait fait-il perdre la coalition ?

## Solution

### 1. Les coalitions gagnantes

Une coalition gagnante doit contenir les $5$ membres permanents (sinon un veto bloque tout), plus au moins $4$ membres non permanents.

Réciproquement, tout groupe formé des $5$ permanents et d'au moins $4$ non permanents est gagnant.

Une coalition gagnante est donc déterminée par le choix d'une partie d'au moins $4$ éléments parmi les $10$ non permanents. Leur nombre est
$$N = \binom{10}{4} + \binom{10}{5} + \cdots + \binom{10}{10}.$$

Plutôt que d'additionner sept termes, passons par le complémentaire. La somme de **tous** les coefficients binomiaux vaut $2^{10} = 1024$, donc
$$N = 2^{10} - \left[\binom{10}{0} + \binom{10}{1} + \binom{10}{2} + \binom{10}{3}\right] = 1024 - (1 + 10 + 45 + 120) = 1024 - 176 .$$

$$\boxed{N = 848 \text{ coalitions gagnantes.}}$$

### 2. Un membre permanent

Retirons un membre permanent d'une coalition gagnante : le groupe restant ne contient plus les $5$ permanents, donc il n'est plus gagnant.

Un membre permanent est donc décisif dans **toutes** les coalitions gagnantes, soit $848$ d'entre elles.

### 3. Un membre non permanent

Soit $M$ un membre non permanent, et prenons une coalition gagnante qui le contient. Elle contient les $5$ permanents et $k$ non permanents, avec $k \geqslant 4$ et $M$ parmi eux.

En retirant $M$, il reste les $5$ permanents et $k-1$ non permanents. Cette coalition est encore gagnante si $k - 1 \geqslant 4$, c'est-à-dire si $k \geqslant 5$.

Donc $M$ est décisif exactement quand $k = 4$ : la coalition contient $M$ et exactement $3$ autres non permanents, choisis parmi les $9$ restants. Cela fait
$$\binom{9}{3} = \frac{9 \times 8 \times 7}{3 \times 2 \times 1} = 84$$
coalitions.

### 4. Les pouvoirs

Comptons le total des « décisions » :
$$T = 5 \times 848 + 10 \times 84 = 4240 + 840 = 5080 .$$

D'où

$$\text{pouvoir d'un permanent} = \frac{848}{5080} = \frac{106}{635} \approx \text{0,167},$$

$$\text{pouvoir d'un non permanent} = \frac{84}{5080} = \frac{21}{1270} \approx \text{0,0165} .$$

(On vérifie que la somme de tous les pouvoirs vaut bien $1$ : $5 \times \frac{848}{5080} + 10 \times \frac{84}{5080} = \frac{5080}{5080} = 1$.)

Le rapport des deux vaut
$$\frac{848}{84} = \frac{212}{21} \approx \text{10,1} .$$

**Réponse : il y a $848$ coalitions gagnantes ; un permanent est décisif dans les $848$, un non permanent dans $84$ d'entre elles. Un membre permanent a un pouvoir d'environ $\text{16,7}\,\%$, un membre non permanent d'environ $\text{1,65}\,\%$ : un permanent est à peu près $10$ fois plus puissant qu'un non permanent.**

## Going further

1. Cette mesure s'appelle l'*indice de Banzhaf*. Calcule-la pour un conseil de trois personnes qui disposent respectivement de $1$, $5$ et $5$ voix, une décision étant prise à la majorité des voix. Le résultat est-il celui qu'on attend ?
2. Le règlement du Conseil de sécurité peut-il se décrire par un système de voix pondérées ? Autrement dit, peut-on donner $p$ voix à chaque permanent, $q$ voix à chaque non permanent et fixer un seuil $s$, de sorte que les coalitions gagnantes soient exactement les mêmes ? (Essaie $p = 7$, $q = 1$, $s = 39$.)
3. Avec la même définition, quel est le pouvoir de chacun dans un conseil où les voix sont $4$, $3$, $2$ et $1$, et où il faut $6$ voix pour l'emporter ?
