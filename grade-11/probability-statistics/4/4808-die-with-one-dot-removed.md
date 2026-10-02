---
id: "4808"
title: "Un dé auquel il manque un point"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 40
tags: [probabilite-conditionnelle, probabilites-totales, des, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Essential Counting Strategies (Kevin Wang)"
  reference: "handoutId11-0.pdf, exercice 16"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/handoutId11-0.pdf"
---

## Statement

Un dé ordinaire porte $1$, $2$, $3$, $4$, $5$ et $6$ points sur ses six faces, soit $21$ points en tout.

On efface **un** de ces $21$ points, choisi au hasard : chaque point a la même probabilité $\dfrac{1}{21}$ d'être effacé. Puis on lance le dé, les six faces restant équiprobables.

Quelle est la probabilité que la face du dessus porte un nombre **impair** de points ?

## Hints

1. La réponse n'est pas $\dfrac{1}{2}$. Effacer un point change la parité de la face concernée : une face paire devient impaire, et une face impaire devient paire.
2. Les $21$ points ne sont pas répartis équitablement : la face $6$ en porte six, la face $1$ n'en porte qu'un. Quelle est la probabilité que le point effacé se trouve sur la face numéro $k$ ?
3. Utilise la formule des probabilités totales en conditionnant par la face à laquelle on a retiré le point.
4. Sachant que le point effacé était sur la face $k$, combien le dé a-t-il alors de faces impaires ? Distingue $k$ pair et $k$ impair.

## Solution

**Les événements de base.** Pour $k$ allant de $1$ à $6$, notons $E_k$ l'événement « le point effacé se trouvait sur la face numéro $k$ ». Cette face porte $k$ points parmi les $21$, donc
$$P(E_k) = \frac{k}{21} .$$
Ces six événements forment une partition de l'univers, et on vérifie que $\sum_{k=1}^{6} \frac{k}{21} = \frac{21}{21} = 1$.

Notons $I$ l'événement « la face du dessus porte un nombre impair de points » après le lancer.

**On conditionne.** Supposons $E_k$ réalisé. Le dé porte alors les nombres
$$1, 2, 3, 4, 5, 6 \quad \text{sauf que la face } k \text{ porte maintenant } k - 1 .$$
Les six faces sont équiprobables, donc
$$P(I \mid E_k) = \frac{\text{nombre de faces portant un nombre impair}}{6} .$$

Au départ, trois faces sont impaires ($1$, $3$, $5$). Deux cas :

- **$k$ est impair.** La face $k$ passe de impair à pair : il reste $3 - 1 = 2$ faces impaires, donc $P(I \mid E_k) = \dfrac{2}{6}$.
- **$k$ est pair.** La face $k$ passe de pair à impair : il y a maintenant $3 + 1 = 4$ faces impaires, donc $P(I \mid E_k) = \dfrac{4}{6}$.

**Formule des probabilités totales.**
$$P(I) = \sum_{k=1}^{6} P(E_k) \, P(I \mid E_k) = \sum_{k \text{ impair}} \frac{k}{21} \times \frac{2}{6} \; + \sum_{k \text{ pair}} \frac{k}{21} \times \frac{4}{6}.$$

Or $1 + 3 + 5 = 9$ et $2 + 4 + 6 = 12$, donc
$$P(I) = \frac{9}{21} \times \frac{2}{6} + \frac{12}{21} \times \frac{4}{6} = \frac{18}{126} + \frac{48}{126} = \frac{66}{126} .$$

En simplifiant par $6$ :
$$\boxed{P(I) = \frac{11}{21} \approx \text{0,524} .}$$

**Pourquoi c'est un peu plus que $\dfrac{1}{2}$.** Le point effacé a plus de chances de venir d'une grande face que d'une petite, et les faces paires $2$, $4$, $6$ portent $12$ points contre $9$ pour les faces impaires. Il est donc plus probable que ce soit une face paire qui devienne impaire que le contraire : la parité penche légèrement du côté impair.

## Going further

1. Quelle est, après l'effacement, la probabilité que la face du dessus porte un nombre **pair** ? Vérifie que les deux probabilités ont bien pour somme $1$.
2. Reprends le problème en effaçant deux points au hasard parmi les $21$ (deux points distincts, éventuellement sur la même face).
3. On efface un point au hasard, on lance le dé et on obtient un nombre impair. Quelle est la probabilité que le point effacé ait été sur la face $6$ ?
