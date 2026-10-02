---
id: "3208"
title: "Le pourcentage de victoires après le tournoi"
grade: 10
theme: algebra
difficulty: 4
duration_min: 25
tags: [fractions, inegalite, entiers, proportion]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Algebra review"
  reference: "Handout-4789-4966.pdf, section 2.2, exercice 11, d'après AIME 1992 I, problème 3 (réponse dans Handout-4792-4966.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4789-4966.pdf"
---

## Statement

Une joueuse de tennis appelle **taux de victoires** le quotient du nombre de matchs qu'elle a gagnés par le nombre de matchs qu'elle a joués.

Au début du week-end, son taux de victoires est exactement $\text{0,500}$.

Pendant le week-end elle dispute quatre matchs : elle en gagne trois et en perd un. À la fin du week-end, son taux de victoires est strictement supérieur à $\text{0,503}$.

Quel est le plus grand nombre de matchs qu'elle pouvait avoir gagnés **avant** le week-end ?

## Hints

1. Appelle $n$ le nombre de matchs gagnés avant le week-end. Combien de matchs avait-elle joués en tout ?
2. Après le week-end, combien de matchs a-t-elle gagnés ? Combien en a-t-elle joués ?
3. Écris l'inégalité demandée avec la fraction $\dfrac{503}{1000}$ plutôt qu'avec un nombre décimal, c'est plus commode.
4. Les deux dénominateurs sont strictement positifs : tu peux faire un produit en croix sans changer le sens de l'inégalité.
5. Tu obtiens une majoration de $n$ par un nombre qui n'est pas entier. Le plus grand $n$ possible est l'entier juste en dessous.

## Solution

**Mise en équation.**

Soit $n$ le nombre de matchs gagnés avant le week-end. Comme son taux vaut alors exactement $\text{0,500}$, c'est-à-dire $\dfrac12$, elle a joué exactement $2n$ matchs.

Pendant le week-end, elle joue $4$ matchs de plus et en gagne $3$. À la fin, elle a donc gagné $n + 3$ matchs sur $2n + 4$ joués, et l'énoncé dit

$$\frac{n+3}{2n+4} > \frac{503}{1000}.$$

**On résout l'inégalité.**

Les deux dénominateurs $2n+4$ et $1000$ sont strictement positifs, donc on peut multiplier en croix sans changer le sens :

$$1000\,(n+3) > 503\,(2n+4)$$
$$1000n + 3000 > 1006n + 2012$$
$$3000 - 2012 > 1006n - 1000n$$
$$988 > 6n$$
$$n < \frac{988}{6} = \frac{494}{3} = \text{164,66}\ldots$$

**Conclusion.**

Le plus grand entier strictement inférieur à $\dfrac{494}{3}$ est $164$.

**Vérification.** Avec $n = 164$ :

$$\frac{164+3}{2\times 164+4} = \frac{167}{332} = \text{0,50301}\ldots > \text{0,503}. \quad \text{Convient.}$$

Avec $n = 165$ :

$$\frac{168}{334} = \text{0,50299}\ldots < \text{0,503}. \quad \text{Ne convient pas.}$$

Elle avait donc gagné au plus **164 matchs** avant le week-end.

## Going further

1. Que devient la réponse si l'on demande un taux final strictement supérieur à $\text{0,502}$ ?
2. Expliquer pourquoi gagner trois matchs sur quatre fait *monter* le taux, mais de moins en moins quand $n$ grandit.
3. Combien de matchs faudrait-il gagner d'affilée, en partant de $n = 164$ victoires sur $328$ matchs, pour dépasser un taux de $\text{0,51}$ ?
