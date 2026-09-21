---
id: "8723"
title: "Des cubes dont la somme est le carré de la somme"
grade: 11
theme: algebra
difficulty: 5
duration_min: 50
tags: [recurrence-forte, suites, equation-du-second-degre, unicite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Récurrence » (Antoine), exercice 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Trouver toutes les suites $(a_1, a_2, a_3, \ldots)$ de réels **strictement positifs** telles que, pour tout entier $n \geqslant 1$,

$$a_1^3 + a_2^3 + \cdots + a_n^3 = \left(a_1 + a_2 + \cdots + a_n\right)^2 .$$

## Hints

1. Une identité célèbre donne un exemple : $1^3 + 2^3 + \cdots + n^3 = (1+2+\cdots+n)^2$. Vérifie-la pour $n = 1, 2, 3$. Conjecture : c'est la seule suite.
2. Commence par $n = 1$ : l'égalité devient $a_1^3 = a_1^2$. Que vaut $a_1$ ?
3. La condition est imposée pour **tout** $n$. Écris-la pour $n$ et pour $n+1$, et soustrais les deux égalités : tu obtiens une relation qui ne fait intervenir que $a_{n+1}$ et la somme $a_1+\cdots+a_n$.
4. Tu tomberas sur $a_{n+1}\left(a_{n+1}-1\right) = n(n+1)$. Il reste à voir que cette équation n'a qu'une solution strictement positive.

## Solution

**Réponse : la seule suite est $a_n = n$.**

### Vérification : la suite $a_n = n$ convient

C'est l'identité classique

$$1^3 + 2^3 + \cdots + n^3 = \left(\frac{n(n+1)}{2}\right)^2 = (1+2+\cdots+n)^2 ,$$

qui se démontre elle-même par récurrence. Donc cette suite est bien solution.

Montrons maintenant que c'est la seule.

### Le premier terme

Pour $n = 1$, la condition donne $a_1^3 = a_1^2$. Comme $a_1 > 0$, on peut diviser par $a_1^2$ :

$$a_1 = 1 .$$

### Le passage d'un terme au suivant

Notons $S_n = a_1 + a_2 + \cdots + a_n$. La condition s'écrit, pour l'indice $n$ puis pour l'indice $n+1$ :

$$a_1^3 + \cdots + a_n^3 = S_n^2 \qquad \text{et} \qquad a_1^3 + \cdots + a_n^3 + a_{n+1}^3 = S_{n+1}^2 .$$

En soustrayant la première de la seconde :

$$a_{n+1}^3 = S_{n+1}^2 - S_n^2 = \left(S_n + a_{n+1}\right)^2 - S_n^2 = 2 S_n\, a_{n+1} + a_{n+1}^2 .$$

Comme $a_{n+1} > 0$, on peut diviser par $a_{n+1}$ :

$$a_{n+1}^2 = 2 S_n + a_{n+1} , \qquad \text{c'est-à-dire} \qquad a_{n+1}\left(a_{n+1} - 1\right) = 2 S_n . \qquad (\star)$$

**Remarque importante.** La relation $(\star)$ détermine complètement $a_{n+1}$ à partir de $S_n$, à condition que l'équation n'ait qu'une seule solution strictement positive. C'est ce qu'on vérifie maintenant.

### L'équation $(\star)$ n'a qu'une solution positive

Soit $m > 0$ un réel fixé. Cherchons les réels $t > 0$ tels que $t(t-1) = m$.

- Si $0 < t \leqslant 1$, alors $t - 1 \leqslant 0$, donc $t(t-1) \leqslant 0 < m$ : pas de solution.
- Si $t > 1$, la fonction $t \mapsto t(t-1) = t^2 - t$ est **strictement croissante** sur $[1, +\infty[$. En effet, pour $1 \leqslant t < t'$,
  $$t'(t'-1) - t(t-1) = (t'-t)(t'+t-1) > 0 ,$$
  puisque $t' - t > 0$ et $t' + t - 1 > 1 > 0$.

Une fonction strictement croissante prend chaque valeur au plus une fois. L'équation $t(t-1) = m$ a donc **au plus une** solution strictement positive.

### La récurrence

Montrons par récurrence que $a_n = n$ pour tout $n \geqslant 1$.

**Initialisation.** On a vu $a_1 = 1$.

**Hérédité.** Supposons que $a_k = k$ pour tout $k \leqslant n$. Alors

$$S_n = 1 + 2 + \cdots + n = \frac{n(n+1)}{2} ,$$

et la relation $(\star)$ devient

$$a_{n+1}\left(a_{n+1}-1\right) = 2 \times \frac{n(n+1)}{2} = n(n+1) .$$

Or $t = n+1$ est une solution strictement positive de cette équation, puisque $(n+1)\left((n+1)-1\right) = (n+1)n$. Comme il n'y en a qu'une, on a nécessairement

$$a_{n+1} = n+1 .$$

**Conclusion.** Pour tout $n \geqslant 1$, $a_n = n$. C'est la seule suite qui convient.

$$\boxed{\ a_n = n \ }$$

## Going further

1. Démontre l'identité $1^3 + 2^3 + \cdots + n^3 = \left(\dfrac{n(n+1)}{2}\right)^2$ par récurrence.

2. Que se passe-t-il si on n'impose plus $a_n > 0$, mais seulement $a_n \neq 0$ ? Regarde de nouveau $a_1^3 = a_1^2$, puis l'équation $t(t-1) = n(n+1)$ : elle admet une seconde racine. Combien y a-t-il alors de suites solutions pour les trois premiers termes ?

3. Et si l'on demandait l'égalité seulement pour $n = 1$ et $n = 2$ ? Décris tous les couples $(a_1, a_2)$ possibles.
