---
id: "0682"
title: "Augmenté de 75 % quand les chiffres s'inversent"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [chiffres, pourcentage, equation, entiers]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 21"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

Trouver tous les entiers positifs à deux chiffres qui sont augmentés de $75\,\%$ lorsque leurs deux chiffres sont inversés.

## Hints

1. Un nombre à deux chiffres dont le chiffre des dizaines est $a$ et le chiffre des unités est $b$ s'écrit $10a + b$. Comment s'écrit le nombre obtenu en inversant les chiffres ?
2. Augmenter de $75\,\%$, c'est multiplier par $\text{1,75}$, c'est-à-dire par $\frac{7}{4}$.
3. Écris l'équation, puis multiplie les deux membres par $4$ pour ne plus avoir de fraction.
4. Tu devrais arriver à $33b = 66a$. Que vaut alors $b$ en fonction de $a$ ?
5. N'oublie pas que $a$ et $b$ sont des chiffres, et que $a$ ne peut pas valoir $0$.

## Solution

**Étape 1. Écrire le nombre avec ses chiffres.**

Soit $a$ le chiffre des dizaines et $b$ le chiffre des unités. Le nombre s'écrit

$$n = 10a + b, \qquad \text{avec } 1 \leq a \leq 9 \text{ et } 0 \leq b \leq 9.$$

Le nombre obtenu en inversant les chiffres est $10b + a$.

**Étape 2. Traduire « augmenté de 75 % ».**

Augmenter un nombre de $75\,\%$ revient à le multiplier par $1 + \frac{75}{100} = \frac{7}{4}$. La condition de l'énoncé s'écrit donc

$$10b + a = \frac{7}{4}\,(10a + b).$$

**Étape 3. Résoudre.**

Multiplions les deux membres par $4$ :

$$4(10b + a) = 7(10a + b),$$
$$40b + 4a = 70a + 7b,$$
$$40b - 7b = 70a - 4a,$$
$$33b = 66a,$$
$$b = 2a.$$

**Étape 4. Utiliser le fait que $a$ et $b$ sont des chiffres.**

On a $a \geq 1$ (sinon $n$ n'a pas deux chiffres) et $b = 2a \leq 9$, donc $a \leq 4$. Les valeurs possibles sont donc $a = 1$, $2$, $3$ ou $4$, ce qui donne :

| $a$ | $b = 2a$ | $n = 10a+b$ | nombre inversé | $\frac{7}{4} \times n$ |
|-----|----------|-------------|----------------|------------------------|
| $1$ | $2$      | $12$        | $21$           | $21$                   |
| $2$ | $4$      | $24$        | $42$           | $42$                   |
| $3$ | $6$      | $36$        | $63$           | $63$                   |
| $4$ | $8$      | $48$        | $84$           | $84$                   |

Les quatre nombres conviennent.

**Conclusion.** Les entiers cherchés sont $12$, $24$, $36$ et $48$.

## Going further

1. Remarque que ces quatre nombres sont $12$, $2 \times 12$, $3 \times 12$ et $4 \times 12$. Sais-tu l'expliquer à partir de la relation $b = 2a$ ?
2. Quels sont les entiers à deux chiffres qui sont augmentés de $20\,\%$ lorsqu'on inverse leurs chiffres ?
3. Démontre qu'aucun entier à deux chiffres n'est doublé lorsqu'on inverse ses chiffres.
