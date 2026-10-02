---
id: "2801"
title: "Les billes d'Isabelle"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [probabilite, produit-telescopique, suites, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Relays"
  reference: "Handout-1301-1322.pdf, problème 27 (réponse dans Handout-1302-1322.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1301-1322.pdf"
---

## Statement

On aligne $2010$ boîtes. Chaque boîte contient exactement une bille **rouge**, et pour tout entier $k$ compris entre $1$ et $2010$, la boîte placée en $k$-ième position contient en plus $k$ billes **blanches**.

Isabelle commence par la première boîte et tire au hasard une bille dans chaque boîte, dans l'ordre. Elle s'arrête dès qu'elle tire une bille rouge.

On note $P(n)$ la probabilité qu'Isabelle s'arrête après avoir tiré exactement $n$ billes.

1. Exprimer $P(n)$ le plus simplement possible.
2. Quel est le plus petit entier $n$ pour lequel $P(n) < \dfrac{1}{2010}$ ?

## Hints

1. Combien de billes y a-t-il en tout dans la $k$-ième boîte ? Quelle est alors la probabilité d'en tirer la bille rouge ? et celle d'en tirer une bille blanche ?
2. Pour qu'Isabelle s'arrête exactement au $n$-ième tirage, que doit-il se passer aux boîtes $1, 2, \ldots, n-1$, puis à la boîte $n$ ?
3. Les tirages se font dans des boîtes différentes, donc ils sont indépendants : $P(n)$ est un **produit** de $n$ facteurs. Écris-le en entier pour $n = 4$.
4. Dans ce produit, regarde le numérateur d'un facteur et le dénominateur du précédent. Presque tout disparaît.
5. Une fois $P(n)$ obtenue, l'inégalité demandée devient une inégalité sur un produit de deux entiers consécutifs. Il suffit d'essayer quelques valeurs.

## Solution

**1. Le calcul de $P(n)$.**

La boîte numéro $k$ contient $1$ bille rouge et $k$ billes blanches, donc $k + 1$ billes en tout. Comme le tirage y est équiprobable :

$$P(\text{rouge dans la boîte } k) = \frac{1}{k+1}, \qquad P(\text{blanche dans la boîte } k) = \frac{k}{k+1}.$$

Isabelle s'arrête après exactement $n$ tirages si et seulement si elle tire une bille **blanche** dans chacune des boîtes $1, 2, \ldots, n-1$, puis la bille **rouge** dans la boîte $n$. Les tirages ayant lieu dans des boîtes différentes, ils sont indépendants, et la probabilité cherchée est le produit des probabilités :

$$P(n) = \underbrace{\frac{1}{2} \times \frac{2}{3} \times \frac{3}{4} \times \cdots \times \frac{n-1}{n}}_{\text{les } n-1 \text{ billes blanches}} \times \underbrace{\frac{1}{n+1}}_{\text{la bille rouge}}.$$

**Le produit se télescope.** Dans le grand produit, le numérateur de chaque facteur est le dénominateur du facteur précédent :

$$\frac{1}{2} \times \frac{2}{3} \times \frac{3}{4} \times \cdots \times \frac{n-1}{n} = \frac{1 \times 2 \times 3 \times \cdots \times (n-1)}{2 \times 3 \times 4 \times \cdots \times n} = \frac{1}{n}.$$

Tous les facteurs de $2$ à $n-1$ se simplifient, il ne reste que le $1$ du tout premier numérateur et le $n$ du tout dernier dénominateur. Donc

$$P(n) = \frac{1}{n} \times \frac{1}{n+1} = \frac{1}{n(n+1)}.$$

*Vérification rapide.* Pour $n = 1$ on trouve $P(1) = \frac12$, ce qui est bien la probabilité de tirer la bille rouge dans une boîte qui contient une rouge et une blanche. Pour $n = 2$ on trouve $\frac16 = \frac12 \times \frac13$ : blanche dans la première boîte, puis rouge dans la deuxième, qui contient trois billes.

**2. L'inégalité.**

On cherche le plus petit $n$ tel que

$$\frac{1}{n(n+1)} < \frac{1}{2010}.$$

Les deux membres sont des inverses de nombres strictement positifs, donc l'inégalité équivaut à

$$n(n+1) > 2010.$$

La suite $n \mapsto n(n+1)$ est strictement croissante sur les entiers positifs : il suffit donc de trouver le premier $n$ qui dépasse $2010$.

$$44 \times 45 = 1980 \leqslant 2010, \qquad 45 \times 46 = 2070 > 2010.$$

**Conclusion.** $P(n) = \dfrac{1}{n(n+1)}$, et le plus petit entier $n$ tel que $P(n) < \dfrac{1}{2010}$ est

$$n = 45.$$

**Une remarque pour finir.** La somme de toutes les probabilités vaut bien $1$ si l'on va jusqu'au bout, car

$$\frac{1}{n(n+1)} = \frac{1}{n} - \frac{1}{n+1},$$

et en additionnant de $n = 1$ à $n = N$ tout se télescope à nouveau : la somme vaut $1 - \frac{1}{N+1}$. Avec $N = 2010$ il reste donc $\frac{1}{2011}$, qui est exactement la probabilité qu'Isabelle tire une bille blanche dans **toutes** les boîtes et n'ait jamais à s'arrêter.

## Going further

1. Démontrer l'identité $\dfrac{1}{n(n+1)} = \dfrac{1}{n} - \dfrac{1}{n+1}$, puis calculer $\displaystyle\sum_{n=1}^{2010} P(n)$.
2. Quelle est la probabilité qu'Isabelle ouvre les $2010$ boîtes sans jamais tirer de rouge ?
3. On remplace « $k$ billes blanches » par « $k^2$ billes blanches ». Que devient $P(n)$ ?
