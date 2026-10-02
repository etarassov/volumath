---
id: "7669"
title: "Écrire tout entier en base −2"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [numeration, recurrence-forte, parite, unicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 48 (sans solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Soit $n$ un entier relatif, positif, négatif ou nul.

Démontrer qu'il existe un **unique** polynôme $P$ dont tous les coefficients valent $0$ ou $1$ tel que

$$P(-2) = n .$$

*Exemple : pour $n = 3$, le polynôme $P(X) = X^2 + X + 1$ convient, car $4 - 2 + 1 = 3$.*

## Hints

1. Commencez par chercher le polynôme à la main pour $n = 5$, $n = -1$, $n = -3$. Une méthode va se dégager.
2. Écrivez $P(X) = a_0 + a_1 X + a_2 X^2 + \cdots$, avec chaque $a_i$ égal à $0$ ou à $1$. Regardez l'égalité $P(-2) = n$ **modulo 2**. Que vaut forcément $a_0$ ?
3. Une fois $a_0$ connu, $P(X) - a_0$ est divisible par $X$. Posez $P(X) = a_0 + X \, Q(X)$. Quelle est la valeur que doit prendre $Q$ en $-2$ ?
4. Vous obtenez un nouvel entier, plus petit en valeur absolue. Cela suggère une récurrence forte sur $|n|$.
5. Attention à bien traiter à part les valeurs $n = -1$, $n = 0$, $n = 1$, pour lesquelles la descente s'arrête.

## Solution

Notons $\mathcal{E}$ l'ensemble des polynômes dont tous les coefficients valent $0$ ou $1$ (le polynôme nul en fait partie).

Nous allons démontrer, **par récurrence forte sur $|n|$**, que pour tout entier relatif $n$ il existe un unique $P \in \mathcal{E}$ tel que $P(-2) = n$.

### Les cas de départ

- $n = 0$ : le polynôme nul convient. Est-il le seul ? Si $P \in \mathcal{E}$ est non nul, notons $a_d = 1$ son coefficient de plus haut degré. Alors
$$|P(-2)| = \left| \sum_{i=0}^{d} a_i (-2)^i \right| \geqslant 2^d - \left(2^{d-1} + 2^{d-2} + \cdots + 1\right) = 2^d - (2^d - 1) = 1 > 0 .$$
Donc $P(-2) \neq 0$. Le polynôme nul est bien le seul.
- $n = 1$ : le polynôme $P(X) = 1$ convient.
- $n = -1$ : le polynôme $P(X) = X + 1$ convient, car $-2 + 1 = -1$.

L'unicité pour $n = 1$ et $n = -1$ résultera de l'argument général ci-dessous, appliqué à ces valeurs.

### Le pas de récurrence

Soit $n$ un entier avec $|n| \geqslant 1$, et supposons le résultat établi pour tous les entiers $m$ avec $|m| < |n|$.

**Le coefficient constant est imposé.**

Supposons $P(X) = a_0 + a_1 X + \cdots + a_d X^d \in \mathcal{E}$ avec $P(-2) = n$. Tous les termes sauf le premier contiennent un facteur $-2$, donc

$$n = a_0 + a_1(-2) + \cdots + a_d(-2)^d \equiv a_0 \pmod{2} .$$

Comme $a_0 \in \{0, 1\}$, cela détermine $a_0$ sans ambiguïté :

$$a_0 = 0 \quad \text{si } n \text{ est pair}, \qquad a_0 = 1 \quad \text{si } n \text{ est impair}.$$

**On descend d'un cran.**

Posons $P(X) = a_0 + X\,Q(X)$, où $Q(X) = a_1 + a_2 X + \cdots + a_d X^{d-1}$ appartient encore à $\mathcal{E}$. L'égalité $P(-2) = n$ devient

$$a_0 - 2\,Q(-2) = n, \qquad \text{c'est-à-dire} \qquad Q(-2) = \frac{a_0 - n}{2} .$$

Posons $m = \dfrac{a_0 - n}{2}$. C'est bien un entier, puisque $a_0$ et $n$ ont la même parité.

**La valeur absolue diminue.**

Montrons que $|m| < |n|$ dès que $|n| \geqslant 2$ :

$$|m| = \frac{|a_0 - n|}{2} \leqslant \frac{|n| + 1}{2} ,$$

et $\dfrac{|n|+1}{2} < |n|$ équivaut à $|n| + 1 < 2|n|$, c'est-à-dire à $|n| > 1$. C'est bien le cas.

Reste $|n| = 1$. Si $n = 1$, alors $a_0 = 1$ et $m = 0$. Si $n = -1$, alors $a_0 = 1$ et $m = \dfrac{1 - (-1)}{2} = 1$ ; ici $|m| = |n|$, donc la récurrence ne s'applique pas telle quelle, et c'est pourquoi nous avons traité $n = -1$ directement parmi les cas de départ.

**Conclusion du pas.**

Pour $|n| \geqslant 2$, le coefficient $a_0$ est imposé, puis $m$ est imposé, et par hypothèse de récurrence il existe un unique $Q \in \mathcal{E}$ tel que $Q(-2) = m$. Le polynôme $P(X) = a_0 + X\,Q(X)$ est donc le seul candidat possible, et il convient. Il appartient bien à $\mathcal{E}$, puisque $a_0 \in \{0,1\}$ et que les coefficients de $Q$ valent $0$ ou $1$.

Pour $n = 1$ et $n = -1$, l'argument sur $a_0$ donne $a_0 = 1$ dans les deux cas, puis $m = 0$ et $m = 1$ respectivement, ce qui conduit à $P(X) = 1$ et $P(X) = 1 + X \cdot 1 = X + 1$ : les polynômes annoncés, et eux seuls.

La récurrence est établie. $\blacksquare$

### Un exemple complet

Cherchons le polynôme pour $n = 7$.

| étape | $n$ | parité | $a_i$ | $m = \dfrac{a_i - n}{2}$ |
|---|---|---|---|---|
| $0$ | $7$ | impair | $a_0 = 1$ | $-3$ |
| $1$ | $-3$ | impair | $a_1 = 1$ | $2$ |
| $2$ | $2$ | pair | $a_2 = 0$ | $-1$ |
| $3$ | $-1$ | impair | $a_3 = 1$ | $1$ |
| $4$ | $1$ | impair | $a_4 = 1$ | $0$ |

On obtient $P(X) = X^4 + X^3 + X + 1$. Vérifions : $16 - 8 - 2 + 1 = 7$. $\checkmark$

## Going further

Ce résultat dit exactement que **tout entier relatif s'écrit d'une seule façon en base $-2$**, avec les chiffres $0$ et $1$. Le polynôme $a_0 + a_1X + \cdots + a_dX^d$ correspond à l'écriture $a_d \ldots a_1 a_0$.

L'intérêt de cette base est qu'elle n'a **pas besoin du signe moins** : les entiers négatifs s'écrivent comme les positifs, avec les mêmes deux chiffres. Quelques exemples :

| $n$ | $-4$ | $-3$ | $-2$ | $-1$ | $0$ | $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|---|---|---|---|---|---|
| base $-2$ | $1100$ | $1101$ | $10$ | $11$ | $0$ | $1$ | $110$ | $111$ | $100$ |

Cette base a réellement été utilisée dans quelques ordinateurs expérimentaux des années 1950, précisément pour éviter d'avoir à traiter le signe à part.

**Une question pour prolonger.** Le même énoncé est-il vrai en base $-3$, avec des coefficients dans $\{0, 1, 2\}$ ? Reprenez la démonstration : l'argument « modulo $3$ » impose encore le coefficient constant, et la majoration de $|m|$ fonctionne encore. La réponse est donc oui, et plus généralement en base $-b$ avec des chiffres dans $\{0, 1, \ldots, b-1\}$.
