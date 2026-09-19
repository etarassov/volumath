---
id: "2617"
title: "Quatre dés qui se battent en rond"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 40
tags: [probabilite, des, strategie, non-transitivite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School Circle, Probability I (Anand Rajagopalan)"
  reference: "Handout-451-519.pdf, exercice 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-451-519.pdf"
---

## Statement

Voici quatre dés à six faces, un peu particuliers :

| dé | faces |
|---|---|
| $A$ | $4,\ 4,\ 4,\ 4,\ 0,\ 0$ |
| $B$ | $3,\ 3,\ 3,\ 3,\ 3,\ 3$ |
| $C$ | $6,\ 6,\ 2,\ 2,\ 2,\ 2$ |
| $D$ | $5,\ 5,\ 5,\ 1,\ 1,\ 1$ |

Chaque dé est équilibré : ses six faces ont la même probabilité de sortir.

On joue à deux. Chacun choisit un dé **différent** de celui de l'autre, puis les deux joueurs lancent leur dé : celui qui obtient le plus grand nombre gagne.

1. Calculer $P(A > B)$, $P(B > C)$, $P(C > D)$ et $P(D > A)$.
2. Vaut-il mieux choisir son dé en premier ou en second ? Quelle est la stratégie gagnante ?

## Hints

1. Pour chaque paire de dés, dresse un tableau à six lignes et six colonnes, ou plus rapidement regroupe les faces identiques. Le dé $A$, par exemple, donne $4$ avec probabilité $\tfrac46$ et $0$ avec probabilité $\tfrac26$.
2. Commence par $A$ contre $B$ : $B$ donne toujours $3$. Quand $A$ gagne-t-il ?
3. Pour $C$ contre $D$, sépare selon la face du dé $C$ : si $C$ donne $6$, il gagne à coup sûr ; si $C$ donne $2$, quand gagne-t-il ?
4. Une fois les quatre probabilités calculées, écris-les en cercle. Que remarques-tu ?

## Solution

**1. Les quatre probabilités.**

Remarquons d'abord qu'aucune égalité n'est possible entre deux de ces dés : les valeurs $0, 1, 2, 3, 4, 5, 6$ ne se répètent jamais d'un dé à l'autre. Un des deux joueurs gagne donc toujours.

**$A$ contre $B$.** Le dé $B$ donne toujours $3$. Le dé $A$ gagne si et seulement s'il donne $4$, ce qui arrive sur $4$ faces sur $6$ :
$$P(A > B) = \frac{4}{6} = \frac{2}{3}.$$

**$B$ contre $C$.** Le dé $B$ donne toujours $3$. Il gagne si et seulement si $C$ donne $2$, ce qui arrive sur $4$ faces sur $6$ :
$$P(B > C) = \frac{4}{6} = \frac{2}{3}.$$

**$C$ contre $D$.** Séparons selon la face de $C$.

- $C$ donne $6$ (probabilité $\tfrac{2}{6} = \tfrac13$) : il bat $5$ comme $1$, donc il gagne à coup sûr.
- $C$ donne $2$ (probabilité $\tfrac{4}{6} = \tfrac23$) : il ne gagne que si $D$ donne $1$, ce qui arrive avec probabilité $\tfrac{3}{6} = \tfrac12$.

Ces deux cas étant incompatibles :
$$P(C > D) = \frac13 \times 1 + \frac23 \times \frac12 = \frac13 + \frac13 = \frac{2}{3}.$$

**$D$ contre $A$.** Séparons selon la face de $D$.

- $D$ donne $5$ (probabilité $\tfrac36 = \tfrac12$) : il bat $4$ comme $0$, il gagne à coup sûr.
- $D$ donne $1$ (probabilité $\tfrac12$) : il ne gagne que si $A$ donne $0$, ce qui arrive avec probabilité $\tfrac{2}{6} = \tfrac13$.

$$P(D > A) = \frac12 \times 1 + \frac12 \times \frac13 = \frac12 + \frac16 = \frac{2}{3}.$$

**Les quatre probabilités valent toutes $\dfrac23$.**

**2. La stratégie.**

Écrivons le résultat en cercle :
$$A \ \text{bat} \ B \ \text{bat} \ C \ \text{bat} \ D \ \text{bat} \ A,$$
à chaque fois avec la probabilité $\dfrac23$, c'est-à-dire deux parties sur trois.

Il n'y a donc **aucun dé meilleur que tous les autres** : chacun des quatre est battu par l'un d'eux. C'est ce qu'on appelle des dés **non transitifs**, exactement comme au jeu pierre-feuille-ciseaux.

Donc :

$$\boxed{\text{Il faut choisir son dé en SECOND.}}$$

La stratégie est alors immédiate : quel que soit le dé choisi par l'adversaire, on prend celui qui le précède dans le cercle $A \to B \to C \to D \to A$, et on gagne avec probabilité $\dfrac23$.

- L'adversaire prend $A$ ? On prend $D$.
- Il prend $B$ ? On prend $A$.
- Il prend $C$ ? On prend $B$.
- Il prend $D$ ? On prend $C$.

## Going further

Notre réflexe est de croire que « meilleur que » se transmet : si $A$ est meilleur que $B$ et $B$ meilleur que $C$, alors $A$ devrait être meilleur que $C$. Ici c'est faux. Vérifions-le directement sur $A$ et $C$ : $A$ donne $4$ avec probabilité $\tfrac23$, et $4$ bat $2$ mais perd contre $6$ ; $A$ donne $0$ avec probabilité $\tfrac13$ et perd toujours. Donc
$$P(A > C) = \frac23 \times \frac46 = \frac{4}{9} < \frac12 .$$
Le dé $A$, qui bat $B$ deux fois sur trois, est lui-même battu par $C$ cinq fois sur neuf.
