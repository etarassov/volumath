---
id: "2819"
title: "La pièce truquée et les quatre lancers"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [loi-binomiale, second-degre, equation, probabilite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School II, Counting and probabilities"
  reference: "Handout-854-941.pdf, problème 6"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-854-941.pdf"
---

## Statement

Une pièce de monnaie est truquée : la probabilité $p$ d'obtenir « pile » est **strictement inférieure à $\dfrac12$**.

On lance cette pièce quatre fois de suite, les lancers étant indépendants les uns des autres. On observe que la probabilité d'obtenir **autant de « pile » que de « face »** vaut exactement $\dfrac16$.

Déterminer la valeur exacte de $p$.

## Hints

1. Quatre lancers, autant de pile que de face : combien de « pile » faut-il obtenir exactement ?
2. Nomme $X$ le nombre de « pile » obtenus sur les quatre lancers. Quelle loi suit $X$ ? Quels sont ses paramètres ?
3. Écris $P(X = 2)$ en fonction de $p$. N'oublie pas le coefficient binomial.
4. Tu obtiens une équation de degré $4$ en $p$. Mais le membre de gauche est un **carré** : $p^2(1-p)^2 = \big(p(1-p)\big)^2$. Cela ramène à une équation du second degré.
5. Attention au signe : $p(1-p)$ est-il positif ou négatif ? Et à la fin, laquelle des deux racines retenir ?

## Solution

**Mettre le problème en équation.**

Notons $X$ le nombre de « pile » obtenus au cours des quatre lancers. Les quatre lancers sont indépendants et ont chacun la même probabilité $p$ de donner « pile » : la variable $X$ suit donc la loi binomiale de paramètres $n = 4$ et $p$.

Obtenir autant de « pile » que de « face » sur quatre lancers, c'est obtenir exactement deux « pile ». La donnée de l'énoncé s'écrit donc

$$P(X = 2) = \frac16 .$$

Or, pour une loi binomiale,

$$P(X = 2) = \binom{4}{2} \, p^2 (1-p)^{2} = 6\, p^2 (1-p)^2 .$$

L'équation à résoudre est donc

$$6\, p^2 (1-p)^2 = \frac16, \qquad \text{c'est-à-dire} \qquad p^2(1-p)^2 = \frac{1}{36}.$$

**Passer au second degré.**

Le membre de gauche est un carré :

$$p^2 (1-p)^2 = \big(p(1-p)\big)^2 .$$

L'équation devient

$$\big(p(1-p)\big)^2 = \left(\frac16\right)^2 .$$

Deux nombres ont le même carré s'ils sont égaux ou opposés, donc

$$p(1-p) = \frac16 \qquad \text{ou} \qquad p(1-p) = -\frac16 .$$

Comme $p$ est une probabilité strictement comprise entre $0$ et $1$ (si $p$ valait $0$ ou $1$, la probabilité d'obtenir deux « pile » serait nulle), les deux facteurs $p$ et $1-p$ sont strictement positifs, donc $p(1-p) > 0$. Le second cas est impossible, et il reste

$$p(1-p) = \frac16 .$$

**Résoudre.**

$$p - p^2 = \frac16 \quad \Longleftrightarrow \quad 6p - 6p^2 = 1 \quad \Longleftrightarrow \quad 6p^2 - 6p + 1 = 0 .$$

Le discriminant vaut

$$\Delta = (-6)^2 - 4 \times 6 \times 1 = 36 - 24 = 12 > 0 .$$

Il y a deux racines :

$$p = \frac{6 - \sqrt{12}}{12} = \frac{6 - 2\sqrt3}{12} = \frac{3 - \sqrt3}{6} \qquad \text{et} \qquad p = \frac{3 + \sqrt3}{6}.$$

**Choisir la bonne racine.**

Les deux racines ont pour somme $1$ : elles sont symétriques par rapport à $\dfrac12$. L'énoncé impose $p < \dfrac12$, donc on retient la plus petite :

$$p = \frac{3 - \sqrt3}{6} \approx \text{0,211} .$$

**Vérification.** Avec $p \approx \text{0,2113}$ : $p(1-p) \approx \text{0,2113} \times \text{0,7887} \approx \text{0,1667} = \dfrac16$, donc $6p^2(1-p)^2 \approx 6 \times \left(\dfrac16\right)^2 = \dfrac16$. C'est bien la valeur annoncée.

**Conclusion.** La probabilité d'obtenir « pile » vaut

$$p = \frac{3 - \sqrt3}{6} \approx \text{0,211}.$$

**Une remarque.** L'autre racine, $\dfrac{3+\sqrt3}{6} \approx \text{0,789}$, correspond à la même pièce vue à l'envers : une pièce qui donne « pile » avec cette probabilité donne « face » avec la probabilité $\dfrac{3-\sqrt3}{6}$, et elle a évidemment la même chance de donner deux « pile » et deux « face » sur quatre lancers. La condition $p < \dfrac12$ sert uniquement à trancher entre les deux.

## Going further

1. Pour quelle valeur de $p$ la probabilité d'obtenir exactement deux « pile » sur quatre lancers est-elle **maximale** ? Que vaut alors cette probabilité ?
2. Existe-t-il une pièce truquée pour laquelle cette probabilité vaut $\dfrac12$ ? Justifier.
3. Reprendre le problème avec six lancers et la probabilité $\dfrac16$ d'obtenir trois « pile » : combien de solutions trouve-t-on ?
