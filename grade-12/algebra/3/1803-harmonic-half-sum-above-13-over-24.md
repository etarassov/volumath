---
id: "1803"
title: "Toujours au-dessus de 13/24"
grade: 12
theme: algebra
difficulty: 3
duration_min: 35
tags: [recurrence, inegalite, fractions, suite-croissante]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction in Algebra"
  reference: "Handout-1485-1439.pdf, exercice 3 (corrigé dans Handout-1498-1446.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1485-1439.pdf"
---

## Statement

Pour tout entier $n \ge 2$, on pose

$$S_n = \frac{1}{n+1} + \frac{1}{n+2} + \ldots + \frac{1}{2n}.$$

Par exemple $S_2 = \dfrac{1}{3} + \dfrac{1}{4}$ et $S_3 = \dfrac{1}{4} + \dfrac{1}{5} + \dfrac{1}{6}$.

Démontrer que $S_n > \dfrac{13}{24}$ pour tout entier $n \ge 2$.

## Hints

1. Calcule $S_2$ et $S_3$ exactement. Écris-les sur le dénominateur $24$ pour comparer.
2. Une récurrence est naturelle, mais attention : en passant de $S_n$ à $S_{n+1}$, on n'ajoute pas seulement un terme. Écris les deux sommes l'une sous l'autre et regarde bien ce qui change.
3. $S_{n+1} = \dfrac{1}{n+2} + \ldots + \dfrac{1}{2n+2}$. Par rapport à $S_n$, deux termes apparaissent à la fin et un terme disparaît au début.
4. Calcule donc $S_{n+1} - S_n$. Tu dois obtenir $\dfrac{1}{2n+1} + \dfrac{1}{2n+2} - \dfrac{1}{n+1}$.
5. Remarque que $\dfrac{1}{n+1} = \dfrac{2}{2n+2}$. La différence se simplifie alors énormément. Quel est son signe ?
6. Si tu montres que la suite $(S_n)$ est croissante, tu n'as plus qu'à comparer $S_2$ à $\dfrac{13}{24}$.

## Solution

**L'idée.** On ne va pas essayer de minorer $S_n$ directement, ce qui serait pénible. On va montrer que la suite $(S_n)$ est **croissante** : il suffira alors de vérifier l'inégalité au départ, pour $n = 2$.

**Étape 1 : la valeur de départ.**

$$S_2 = \frac{1}{3} + \frac{1}{4} = \frac{4}{12} + \frac{3}{12} = \frac{7}{12} = \frac{14}{24} > \frac{13}{24}.$$

**Étape 2 : la suite est croissante.**

Soit $n \ge 2$. Écrivons les deux sommes l'une sous l'autre :

$$S_n = \frac{1}{n+1} + \frac{1}{n+2} + \ldots + \frac{1}{2n},$$
$$S_{n+1} = \phantom{\frac{1}{n+1} + {}} \frac{1}{n+2} + \ldots + \frac{1}{2n} + \frac{1}{2n+1} + \frac{1}{2n+2}.$$

Tous les termes du milieu sont communs. Donc

$$S_{n+1} - S_n = \frac{1}{2n+1} + \frac{1}{2n+2} - \frac{1}{n+1}.$$

Or $\dfrac{1}{n+1} = \dfrac{2}{2n+2}$, donc

$$\frac{1}{2n+2} - \frac{1}{n+1} = \frac{1}{2n+2} - \frac{2}{2n+2} = -\frac{1}{2n+2}.$$

Il reste

$$S_{n+1} - S_n = \frac{1}{2n+1} - \frac{1}{2n+2} = \frac{(2n+2) - (2n+1)}{(2n+1)(2n+2)} = \frac{1}{(2n+1)(2n+2)}.$$

Ce nombre est strictement positif. Donc $S_{n+1} > S_n$ pour tout $n \ge 2$ : la suite est strictement croissante.

**Étape 3 : la récurrence.**

Notons $Q(n)$ la propriété « $S_n > \dfrac{13}{24}$ ».

- *Initialisation :* $S_2 = \dfrac{14}{24} > \dfrac{13}{24}$, donc $Q(2)$ est vraie.
- *Hérédité :* si $S_n > \dfrac{13}{24}$, alors, d'après l'étape 2, $S_{n+1} > S_n > \dfrac{13}{24}$, donc $Q(n+1)$ est vraie.

**Conclusion.** Par récurrence, $S_n > \dfrac{13}{24}$ pour tout entier $n \ge 2$.

**Remarque : pourquoi $n \ge 2$ ?** Pour $n = 1$ la somme se réduit à $S_1 = \dfrac{1}{2} = \dfrac{12}{24}$, qui est bien **inférieur** à $\dfrac{13}{24}$. L'inégalité est donc fausse au rang $1$ : c'est exactement pour cela que l'énoncé démarre à $2$.

**Remarque : la borne $\frac{13}{24}$ est-elle bien choisie ?** La suite est croissante, et on peut montrer qu'elle s'approche de $\ln 2 \approx \text{0,693}$. La plus petite valeur est donc $S_2 = \dfrac{7}{12} \approx \text{0,583}$, et $\dfrac{13}{24} \approx \text{0,542}$ passe juste en dessous.

## Going further

1. Montre de la même façon que $S_n < \dfrac{3}{4}$ pour tout $n \ge 1$.
2. Que se passe-t-il quand $n$ devient très grand ? Encadre $S_n$ en comparant chacun de ses $n$ termes à $\dfrac{1}{n+1}$ et à $\dfrac{1}{2n}$.
