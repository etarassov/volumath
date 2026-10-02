---
id: "7326"
title: "Une suite qui revient tous les cinq pas"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [suites, recurrence, periodicite, calcul]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « La muraille », exercices de niveau 2, exercice 4 ; repris de stage_ete_2007.pdf, « En TPE », exercice 93"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

On définit une suite de nombres $(x_n)$ par
$$x_0 = 1, \qquad x_1 = 1, \qquad x_{n+2} = \frac{1 + x_{n+1}}{x_n} \quad \text{pour tout } n \geqslant 0 .$$

Calculer $x_{2007}$.

## Hints

1. Calcule les premiers termes à la main : $x_2$, $x_3$, $x_4$, $x_5$, $x_6$, $x_7$. Note-les bien tous.
2. Rien ne sert de chercher une formule savante : regarde simplement si les valeurs se répètent.
3. Dès que deux termes **consécutifs** reprennent les valeurs de deux termes consécutifs précédents, tout ce qui suit est forcément identique. Pourquoi ?
4. Tu devrais trouver une suite périodique. De quelle période ?
5. Il ne reste qu'à calculer le reste de $2007$ dans la division par cette période.

## Solution

**Les premiers termes.**

$$x_0 = 1, \qquad x_1 = 1 .$$
$$x_2 = \frac{1 + x_1}{x_0} = \frac{1 + 1}{1} = 2 .$$
$$x_3 = \frac{1 + x_2}{x_1} = \frac{1 + 2}{1} = 3 .$$
$$x_4 = \frac{1 + x_3}{x_2} = \frac{1 + 3}{2} = 2 .$$
$$x_5 = \frac{1 + x_4}{x_3} = \frac{1 + 2}{3} = 1 .$$
$$x_6 = \frac{1 + x_5}{x_4} = \frac{1 + 1}{2} = 1 .$$

**On reconnaît le départ.**

Le couple $(x_5, x_6) = (1, 1)$ est exactement le couple de départ $(x_0, x_1)$.

Or chaque terme ne dépend que des **deux** termes qui le précèdent. Donc si $(x_5, x_6) = (x_0, x_1)$, alors $x_7 = x_2$, puis $x_8 = x_3$, et ainsi de suite :
$$x_{n+5} = x_{n} \qquad \text{pour tout } n \geqslant 0 .$$

La suite est **périodique de période $5$** :
$$1,\ 1,\ 2,\ 3,\ 2,\ \ 1,\ 1,\ 2,\ 3,\ 2,\ \ 1,\ 1,\ 2,\ 3,\ 2,\ \ldots$$

**Le calcul final.**

Divisons $2007$ par $5$ :
$$2007 = 5 \times 401 + 2 .$$

Donc
$$x_{2007} = x_{2} = 2 .$$

**Conclusion.** $x_{2007} = \boxed{2}$.

**Remarque.** La récurrence $x_{n+2} = \dfrac{1 + x_{n+1}}{x_n}$ est périodique de période $5$ **quelles que soient** les deux valeurs de départ (pourvu qu'aucun dénominateur ne s'annule). C'est un fait remarquable, et assez rare : la plupart des récurrences de ce genre ne reviennent jamais à leur point de départ.

## Going further

1. Reprends le calcul avec $x_0 = 2$ et $x_1 = 5$. La période est-elle encore $5$ ?
2. Démontre que $x_{n+5} = x_n$ pour n'importe quelles valeurs de départ $a$ et $b$ (strictement positives), en calculant les cinq premiers termes en fonction de $a$ et $b$.
3. Que se passe-t-il pour la récurrence $x_{n+2} = \dfrac{x_{n+1}}{x_n}$ ? Trouve sa période.
