---
id: "3419"
title: "Une somme de fractions avec des factorielles"
grade: 12
theme: algebra
difficulty: 3
duration_min: 25
tags: [factorielle, telescopage, somme, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Algebra (ORMC AMC Packet 2)"
  reference: "Handout-5118-5603.pdf, problème 5, d'après AMC 10B 2022, problème 9 (réponse dans Handout-5124-5603.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5118-5603.pdf"
---

## Statement

Calculer la somme

$$\frac{1}{2!} + \frac{2}{3!} + \frac{3}{4!} + \cdots + \frac{2021}{2022!}.$$

On rappelle que $n! = 1 \times 2 \times \cdots \times n$.

## Hints

1. Calcule les trois ou quatre premières sommes partielles : $\frac12$, puis $\frac12 + \frac13$, puis... Écris-les sous la forme « $1$ moins quelque chose ».
2. Tu devrais voir apparaître $\frac12$, $\frac56$, $\frac{23}{24}$, c'est-à-dire $1 - \frac{1}{2!}$, $1 - \frac{1}{3!}$, $1 - \frac{1}{4!}$. Il reste à comprendre pourquoi.
3. Regarde le terme général $\dfrac{n}{(n+1)!}$. Écris le numérateur sous la forme $n = (n+1) - 1$.
4. Tu obtiens $\dfrac{n}{(n+1)!} = \dfrac{1}{n!} - \dfrac{1}{(n+1)!}$. Additionne alors tous les termes et regarde ce qui se simplifie.

## Solution

**L'idée : chaque terme est une différence de deux nombres consécutifs de la même famille. En additionnant, presque tout se détruit.**

**Étape 1. On décompose le terme général.**

Le terme de rang $n$ est $\dfrac{n}{(n+1)!}$, pour $n$ allant de $1$ à $2021$. Écrivons $n = (n+1) - 1$ :

$$\frac{n}{(n+1)!} = \frac{(n+1) - 1}{(n+1)!} = \frac{n+1}{(n+1)!} - \frac{1}{(n+1)!}.$$

Or $(n+1)! = (n+1) \times n!$, donc $\dfrac{n+1}{(n+1)!} = \dfrac{1}{n!}$. Ainsi

$$\boxed{\ \frac{n}{(n+1)!} = \frac{1}{n!} - \frac{1}{(n+1)!}.\ }$$

*Contrôle sur un exemple :* pour $n = 3$, à gauche $\dfrac{3}{24} = \dfrac18$, à droite $\dfrac16 - \dfrac1{24} = \dfrac{4-1}{24} = \dfrac18$. C'est bon.

**Étape 2. La somme se télescope.**

$$\sum_{n=1}^{2021} \frac{n}{(n+1)!} = \left(\frac{1}{1!} - \frac{1}{2!}\right) + \left(\frac{1}{2!} - \frac{1}{3!}\right) + \left(\frac{1}{3!} - \frac{1}{4!}\right) + \cdots + \left(\frac{1}{2021!} - \frac{1}{2022!}\right).$$

Chaque terme négatif d'une parenthèse est annulé par le terme positif de la parenthèse suivante. Il ne reste que le tout premier et le tout dernier :

$$\sum_{n=1}^{2021} \frac{n}{(n+1)!} = \frac{1}{1!} - \frac{1}{2022!} = 1 - \frac{1}{2022!}.$$

**Conclusion : la somme vaut $1 - \dfrac{1}{2022!}$.**

C'est un nombre extraordinairement proche de $1$ : $2022!$ compte plus de $5\,000$ chiffres, donc la somme et $1$ ne diffèrent qu'à partir de la $5\,000^\text{e}$ décimale.

## Going further

Le même calcul avec $n$ variable montre que

$$\frac{1}{2!} + \frac{2}{3!} + \cdots + \frac{n}{(n+1)!} = 1 - \frac{1}{(n+1)!}.$$

Quand $n$ tend vers l'infini, $\dfrac{1}{(n+1)!}$ tend vers $0$, donc la série converge et sa somme vaut exactement $1$.
