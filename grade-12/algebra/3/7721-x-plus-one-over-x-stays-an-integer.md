---
id: "7721"
title: "Si x + 1/x est entier, xⁿ + 1/xⁿ aussi"
grade: 12
theme: algebra
difficulty: 3
duration_min: 30
tags: [recurrence double, identite remarquable, entiers, suites]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mardi 19 après-midi (Cécile Gachet), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Soit $x$ un réel non nul tel que $x + \dfrac{1}{x}$ soit un **entier**.

Montrer que pour tout entier naturel $n$, le nombre

$$u_n = x^n + \frac{1}{x^n}$$

est lui aussi un entier.

*Un exemple pour fixer les idées : si $x + \dfrac1x = 3$, alors $x$ lui-même n'est pas entier (c'est $\dfrac{3+\sqrt5}{2}$ ou $\dfrac{3-\sqrt5}{2}$), et pourtant $x^2 + \dfrac{1}{x^2} = 7$.*

## Hints

1. Calcule $u_0$ et $u_1$. Sont-ils entiers ?
2. Essaie de fabriquer $u_2$ à partir de $u_1$. Que vaut $\left(x + \dfrac1x\right)^2$ ?
3. Plus généralement, développe le produit $u_{n+1} \times u_1$, c'est-à-dire $\left(x^{n+1} + \dfrac{1}{x^{n+1}}\right)\left(x + \dfrac1x\right)$. Quels sont les quatre termes obtenus ?
4. Tu obtiens une relation entre $u_{n+2}$, $u_{n+1}$ et $u_n$. Combien de rangs faut-il initialiser pour la lancer ?

## Solution

**L'idée : trouver une relation qui exprime $u_{n+2}$ à partir de $u_{n+1}$ et de $u_n$, puis faire une récurrence sur deux rangs.**

Notons $a = x + \dfrac{1}{x}$. Par hypothèse, $a$ est un entier.

**Les deux premiers termes.**

$$u_0 = x^0 + \frac{1}{x^0} = 1 + 1 = 2 , \qquad u_1 = x + \frac{1}{x} = a .$$

Ce sont bien deux entiers.

**La relation clé.** Pour tout entier $n \geqslant 0$, développons le produit $u_{n+1} \times a$ :

$$\left(x^{n+1} + \frac{1}{x^{n+1}}\right)\left(x + \frac{1}{x}\right) = x^{n+2} + x^{n+1} \times \frac{1}{x} + \frac{1}{x^{n+1}} \times x + \frac{1}{x^{n+2}} .$$

Les deux termes du milieu valent $x^n$ et $\dfrac{1}{x^n}$. Donc

$$u_{n+1} \times a = \left(x^{n+2} + \frac{1}{x^{n+2}}\right) + \left(x^{n} + \frac{1}{x^{n}}\right) = u_{n+2} + u_n ,$$

c'est-à-dire

$$\boxed{\; u_{n+2} = a \, u_{n+1} - u_n \;}$$

**La récurrence.** Considérons, pour $n \in \mathbb{N}$, la propriété

$$Q_n : \text{« } u_n \text{ et } u_{n+1} \text{ sont des entiers »} .$$

*Initialisation.* $u_0 = 2$ et $u_1 = a$ sont des entiers, donc $Q_0$ est vraie.

*Hérédité.* Supposons $Q_n$ vraie pour un certain entier $n$, c'est-à-dire que $u_n$ et $u_{n+1}$ sont des entiers. D'après la relation encadrée,

$$u_{n+2} = a \, u_{n+1} - u_n$$

est obtenu à partir d'entiers par une multiplication et une soustraction : c'est donc un entier. Ainsi $u_{n+1}$ et $u_{n+2}$ sont tous deux entiers, c'est-à-dire que $Q_{n+1}$ est vraie.

*Conclusion.* Par principe de récurrence, $Q_n$ est vraie pour tout $n \in \mathbb{N}$. En particulier $u_n$ est un entier pour tout $n$.

**Pourquoi initialiser deux rangs ?** Parce que la relation fait intervenir les **deux** rangs précédents : connaître seulement $u_{n+1}$ ne permet pas de calculer $u_{n+2}$. C'est ce qu'on appelle une récurrence double, et la propriété $Q_n$ ci-dessus est simplement une façon de l'écrire comme une récurrence ordinaire.

**Vérification sur un exemple.** Si $a = 3$ :

$$u_0 = 2, \quad u_1 = 3, \quad u_2 = 3 \times 3 - 2 = 7, \quad u_3 = 3 \times 7 - 3 = 18, \quad u_4 = 3 \times 18 - 7 = 47 .$$

Tous entiers, comme annoncé, alors que $x = \dfrac{3+\sqrt5}{2}$ est irrationnel.

## Going further

La relation $u_{n+2} = a\,u_{n+1} - u_n$ est très proche de celle de la suite de Fibonacci. Avec $a = 1$, on obtient $u_0 = 2, u_1 = 1, u_2 = -1, u_3 = -2, u_4 = -1, u_5 = 1, u_6 = 2, \ldots$ : la suite est périodique de période $6$. C'est normal, car $x + \dfrac1x = 1$ n'a pas de solution réelle, et les solutions complexes sont des racines sixièmes de l'unité.
