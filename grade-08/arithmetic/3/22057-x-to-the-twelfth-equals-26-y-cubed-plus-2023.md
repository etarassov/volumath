---
id: "22057"
title: "x¹² = 26y³ + 2023"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [equation-diophantienne, restes, congruences, puissances]
adapted_from: null
see_also: ["22059"]
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Équations diophantiennes, factorisation » (Augustin & Éva), exercice 2 (le corrigé utilise le petit théorème de Fermat ; la solution ci-dessous le remplace par une table des restes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver tous les couples d'entiers strictement positifs $(x, y)$ tels que
$$x^{12} = 26\,y^3 + 2023.$$

## Hints

1. Cherchez un nombre $m$ tel que $26\,y^3$ soit toujours un multiple de $m$.
2. Regardez les restes dans la division par $13$. Que vaut le reste de $2023$ ?
3. Pour trouver le reste de $x^{12}$, écrivez $x^{12} = \left(\left(x^2\right)^2\right)^3$ et calculez les restes étape par étape.

## Solution

**Un outil : calculer avec les restes.** Notons $a \equiv b \pmod{13}$ quand $a$ et $b$ ont le même reste dans la division par $13$, c'est-à-dire quand $a - b$ est un multiple de $13$. Si $a \equiv b \pmod{13}$, alors $a^2 \equiv b^2 \pmod{13}$, car $a^2 - b^2 = (a - b)(a + b)$ est un multiple de $13$. De même $a^3 \equiv b^3$, car $a^3 - b^3 = (a - b)\left(a^2 + ab + b^2\right)$. Pour connaître le reste d'un carré ou d'un cube, il suffit donc de connaître le reste du nombre de départ.

**Étape 1 : le membre de droite.** Comme $26 = 2 \times 13$, le nombre $26\,y^3$ est un multiple de $13$. Et $2023 = 13 \times 155 + 8$. Donc
$$26\,y^3 + 2023 \equiv 8 \pmod{13}.$$

**Étape 2 : le membre de gauche.** Notons $r$ le reste de $x$ dans la division par $13$.

- Si $r = 0$, alors $x$ est un multiple de $13$, et $x^{12}$ aussi : $x^{12} \equiv 0 \pmod{13}$.
- Sinon, $r$ est l'un des nombres $1, 2, \ldots, 12$. On calcule les restes de $r^2$, puis de $r^4 = \left(r^2\right)^2$, puis de $r^{12} = \left(r^4\right)^3$, en remplaçant à chaque étape un nombre par son reste.

| $r$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| reste de $r^2$ | 1 | 4 | 9 | 3 | 12 | 10 | 10 | 12 | 3 | 9 | 4 | 1 |
| reste de $r^4$ | 1 | 3 | 3 | 9 | 1 | 9 | 9 | 1 | 9 | 3 | 3 | 1 |

Les seuls restes possibles pour $r^4$ sont $1$, $3$ et $9$. Leurs cubes sont $1$, $27 = 2 \times 13 + 1$ et $729 = 56 \times 13 + 1$ : ils ont tous pour reste $1$. Donc $x^{12} \equiv 1 \pmod{13}$.

Dans tous les cas, le reste de $x^{12}$ dans la division par $13$ vaut $0$ ou $1$.

**Étape 3 : conclusion.** Le membre de gauche a pour reste $0$ ou $1$, le membre de droite a pour reste $8$. Ils ne peuvent pas être égaux. **L'équation n'a aucune solution.**

## Going further

1. Pourquoi a-t-on choisi de regarder les restes dans la division par $13$ ? Que donnerait la division par $2$, par $3$, par $7$ ?
2. Vérifiez sur quelques exemples que, si $p$ est l'un des nombres premiers $5$, $7$ ou $13$, le reste de $x^{p-1}$ dans la division par $p$ vaut toujours $0$ ou $1$. C'est le petit théorème de Fermat, vu en terminale.
