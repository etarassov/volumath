---
id: "8714"
title: "Un tiers n'est pas un nombre décimal"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [nombres-decimaux, raisonnement-par-absurde, divisibilite, criteres]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Découverte » (Melvil), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Un **nombre décimal** est un nombre qui peut s'écrire $\dfrac{a}{10^b}$, où $a$ est un entier relatif et $b$ un entier positif ou nul. Ce sont exactement les nombres dont l'écriture décimale s'arrête : $\text{2,5}$, $\text{0,125}$, $-\text{3,04}$ sont des nombres décimaux.

Montrer que $\dfrac{1}{3}$ n'est **pas** un nombre décimal.

## Hints

1. Ce genre de question (« montrer qu'une chose est impossible ») se traite presque toujours par l'absurde : suppose que $\frac{1}{3}$ est décimal et arrive à une contradiction.
2. Si $\frac{1}{3} = \frac{a}{10^b}$, débarrasse-toi des fractions en multipliant en croix.
3. Tu obtiens que $3$ divise $10^b$. Pourquoi est-ce impossible ? Le critère de divisibilité par $3$ répond en une ligne.

## Solution

**Raisonnons par l'absurde.**

Supposons que $\dfrac{1}{3}$ soit un nombre décimal. Il existe alors un entier $a$ et un entier $b \geqslant 0$ tels que

$$\frac{1}{3} = \frac{a}{10^b} .$$

En multipliant en croix, on obtient

$$10^b = 3a .$$

Cette égalité dit que **$10^b$ est un multiple de $3$**.

**Pourquoi c'est impossible.**

Le nombre $10^b$ s'écrit $1$ suivi de $b$ zéros : $1$, $10$, $100$, $1000$, et ainsi de suite. La somme de ses chiffres vaut donc toujours

$$1 + 0 + 0 + \cdots + 0 = 1 .$$

Or un entier est divisible par $3$ si et seulement si la somme de ses chiffres l'est. Ici cette somme vaut $1$, qui n'est pas un multiple de $3$. Donc $10^b$ n'est pas un multiple de $3$.

**Contradiction.**

On a donc à la fois « $10^b$ est un multiple de $3$ » et « $10^b$ n'est pas un multiple de $3$ ». L'hypothèse de départ était donc fausse :

$$\boxed{\ \dfrac{1}{3} \text{ n'est pas un nombre décimal.}\ }$$

*Autre façon de conclure.* On peut aussi dire que $10^b = 2^b \times 5^b$. Dans cette décomposition en facteurs premiers, le nombre $3$ n'apparaît pas. Comme la décomposition en facteurs premiers d'un entier est unique, $3$ ne divise pas $10^b$.

## Going further

1. C'est bien ce que montre la calculatrice : $\frac{1}{3} = \text{0,3333}\ldots$, l'écriture ne s'arrête jamais. Mais « la calculatrice affiche beaucoup de 3 » n'est pas une démonstration : elle n'affiche qu'un nombre fini de chiffres, et rien n'empêcherait a priori l'écriture de s'arrêter au dixième milliard de chiffres.

2. Reprends la même démonstration pour $\dfrac{1}{7}$, puis pour $\dfrac{1}{6}$.

3. **La question générale.** Soit $\dfrac{n}{d}$ une fraction irréductible avec $d > 0$. Montre qu'elle est un nombre décimal si et seulement si $d$ s'écrit $2^{\alpha} \times 5^{\beta}$. Vérifie sur $\dfrac{7}{40}$, $\dfrac{3}{80}$ et $\dfrac{5}{12}$.
