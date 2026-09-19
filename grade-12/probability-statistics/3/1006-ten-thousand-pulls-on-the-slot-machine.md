---
id: "1006"
title: "Dix mille parties à la machine à sous"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [loi binomiale, independance, limite, nombre e, evenement contraire]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Euler's number"
  reference: "Handout-4820-5022.pdf, problèmes 26 et 27"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4820-5022.pdf"
---

## Statement

Une machine à sous distribue un lot une fois sur $10\,000$ : à chaque partie, indépendamment des autres, la probabilité de gagner est $p = \dfrac{1}{10\,000}$.

Un joueur fait $10\,000$ parties.

1. Quelle est la probabilité qu'il ne gagne **aucune** fois ?
2. Avant tout calcul, donnez votre intuition : cette probabilité est-elle proche de $0$ ? de $\frac12$ ? de $1$ ? Calculez-la ensuite, et comparez.
3. Quelle est la probabilité qu'il gagne **exactement une** fois ? **au moins deux** fois ?
4. On remplace $10\,000$ par un entier $n$ quelconque : la machine paie une fois sur $n$ et le joueur fait $n$ parties. Montrer que la probabilité de ne rien gagner tend, quand $n$ devient grand, vers $\dfrac{1}{e} \approx \text{0,3679}$.

## Hints

1. Nommez $X$ le nombre de parties gagnantes. Quelle loi suit $X$ ?
2. « Ne gagner aucune fois », c'est que les $10\,000$ parties soient toutes perdantes. Les parties sont indépendantes : les probabilités se multiplient.
3. Beaucoup de gens répondent « à peu près zéro » ou « à peu près un demi » à la question 2. Faites le calcul à la calculatrice avant de vous décider.
4. Pour la question 4, écrivez la probabilité cherchée sous la forme $\left(1 - \frac{1}{n}\right)^{n}$, et rappelez-vous la limite $\left(1 + \frac{x}{n}\right)^{n} \to e^{x}$.

## Solution

### Questions 1 à 3

Notons $X$ le nombre de parties gagnantes parmi les $10\,000$. Les parties sont indépendantes et ont toutes la même probabilité de succès $p = 10^{-4}$ : la variable $X$ suit la **loi binomiale** de paramètres $n = 10\,000$ et $p = 10^{-4}$.

**Aucun gain.** L'événement $\{X = 0\}$ signifie que les $10\,000$ parties sont perdantes, chacune avec probabilité $1 - p$. Par indépendance,
$$P(X = 0) = (1 - 10^{-4})^{10\,000} = \left(\frac{9999}{10\,000}\right)^{10\,000} \approx \text{0,3679}.$$

**Exactement un gain.** Il faut choisir laquelle des $10\,000$ parties est gagnante, puis multiplier les probabilités :
$$P(X = 1) = \binom{10\,000}{1} \times 10^{-4} \times (1 - 10^{-4})^{9999} = (1 - 10^{-4})^{9999} \approx \text{0,3679}.$$

*(Le coefficient $10\,000$ et la probabilité $10^{-4}$ se compensent exactement ; c'est un joli hasard de cet énoncé.)*

**Au moins deux gains.** On passe par l'événement contraire :
$$P(X \geqslant 2) = 1 - P(X = 0) - P(X = 1) \approx 1 - \text{0,3679} - \text{0,3679} = \text{0,2642}.$$

### Ce qu'il faut retenir de la question 2

L'intuition courante est mauvaise. On se dit souvent : « une chance sur $10\,000$, joué $10\,000$ fois, ça doit marcher », et l'on attend une probabilité de gain proche de $1$, donc une probabilité de bredouille proche de $0$.

En réalité **plus d'un joueur sur trois repart les mains vides**, et un autre tiers ne gagne qu'une seule fois.

Ce n'est pas un accident de calcul : c'est que le nombre moyen de gains vaut
$$E(X) = np = 10\,000 \times 10^{-4} = 1,$$
c'est-à-dire un gain en moyenne. Or une moyenne de $1$ est parfaitement compatible avec « souvent zéro, parfois deux ou trois ».

### Question 4 : la limite

Avec une machine payant une fois sur $n$, jouée $n$ fois, la probabilité de ne rien gagner est
$$q_n = \left(1 - \frac{1}{n}\right)^{n}.$$

Or on connaît la limite
$$\left(1 + \frac{x}{n}\right)^{n} \xrightarrow[n \to +\infty]{} e^{x},$$
qui, appliquée à $x = -1$, donne
$$q_n \xrightarrow[n \to +\infty]{} e^{-1} = \frac{1}{e} \approx \text{0,367879}.$$

**Vérification numérique.**

| $n$ | $10$ | $100$ | $1\,000$ | $10\,000$ |
|---|---|---|---|---|
| $q_n$ | $\text{0,3487}$ | $\text{0,3660}$ | $\text{0,3677}$ | $\text{0,3679}$ |

La convergence vers $1/e \approx \text{0,3679}$ est nette.

**Conclusion.** La probabilité de ne rien gagner en $10\,000$ parties vaut environ $\text{0,368}$, soit à peu près $\dfrac{1}{e}$. Près de $37\,\%$ des joueurs repartent bredouilles.

## Going further

1. Montrer que $P(X = k) \approx \dfrac{1}{e \cdot k!}$ pour $k$ petit, quand $n$ est grand et $p = 1/n$. (C'est la **loi de Poisson** de paramètre $1$.) Vérifier pour $k = 0, 1, 2, 3$.
2. Combien de parties faut-il jouer pour que la probabilité de gagner au moins une fois dépasse $\text{0,9}$ ?
3. Une classe de $23$ élèves : quelle est la probabilité que deux d'entre eux aient la même date d'anniversaire ? Le résultat surprend pour la raison inverse de celle de cet exercice.
