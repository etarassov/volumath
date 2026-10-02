---
id: "11056"
title: "Un système de trois PPCM"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [ppcm, divisibilite, encadrement, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 3 (arithmétique)"
  reference: "2024-01_Sujet-envoi-3-2023-2024.pdf, Exercices Juniors, exercice 5, repris tel quel en Exercices Seniors, exercice 12 ; corrigé 2024-02_Corrige-envoi-arithmetique-2023-2024.pdf."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/01/Sujet-envoi-3-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-01_Sujet-envoi-3-2023-2024.pdf"
---

## Statement

Déterminer tous les quadruplets $(a, b, c, d)$ d'entiers, avec $a$, $b$, $c$ strictement positifs et $d$ positif ou nul, tels que

$$\mathrm{PPCM}(b, c) = a + d, \qquad \mathrm{PPCM}(c, a) = b + d, \qquad \mathrm{PPCM}(a, b) = c + d .$$

On rappelle que $\mathrm{PPCM}(x, y)$ est le plus petit multiple commun strictement positif de $x$ et de $y$.

## Hints

1. Essaie avec $a = b = c$. Quelle valeur de $d$ faut-il prendre ?
2. Le système ne change pas si on échange les rôles de $a$, $b$ et $c$. Tu peux donc supposer que $c$ est le plus grand des trois.
3. Le nombre $c$ divise $\mathrm{PPCM}(b, c)$ et $\mathrm{PPCM}(c, a)$. Qu'en déduis-tu pour la différence $a - b$ ?
4. Un multiple de $c$ compris strictement entre $-c$ et $c$, il n'y en a qu'un.

## Solution

**Réponse :** les solutions sont les quadruplets $(a, a, a, 0)$, où $a$ est un entier strictement positif quelconque.

**Étape 1 : on peut supposer que $c$ est le plus grand.**

Si on échange $a$ et $b$, la première équation devient la deuxième, la deuxième devient la première et la troisième ne change pas (car $\mathrm{PPCM}(b, a) = \mathrm{PPCM}(a, b)$). Il en va de même pour les autres échanges. Donc, si $(a, b, c, d)$ est une solution, toute permutation de $a$, $b$, $c$ (avec le même $d$) en est une aussi.

Il suffit donc de chercher les solutions dans lesquelles $c$ est le plus grand des trois nombres : $a \leqslant c$ et $b \leqslant c$.

**Étape 2 : $a = b$.**

Le nombre $c$ divise $\mathrm{PPCM}(b, c)$, qui vaut $a + d$. Il divise aussi $\mathrm{PPCM}(c, a)$, qui vaut $b + d$. Il divise donc leur différence :
$$c \text{ divise } (a + d) - (b + d) = a - b .$$

Or $1 \leqslant a \leqslant c$ et $1 \leqslant b \leqslant c$, donc $-c < a - b < c$. Le seul multiple de $c$ strictement compris entre $-c$ et $c$ est $0$. Donc $a - b = 0$, c'est-à-dire $a = b$.

**Étape 3 : $a = c$ et $d = 0$.**

La troisième équation devient $\mathrm{PPCM}(a, a) = c + d$, c'est-à-dire $a = c + d$.

Mais $d \geqslant 0$, donc $a = c + d \geqslant c$. Comme on a aussi $a \leqslant c$, on obtient $a = c$, puis $d = a - c = 0$.

**Étape 4 : vérification.**

Si $a = b = c$ et $d = 0$, chaque équation s'écrit $\mathrm{PPCM}(a, a) = a + 0$, ce qui est vrai car $\mathrm{PPCM}(a, a) = a$.

**Conclusion.** Les solutions sont exactement les quadruplets $(a, a, a, 0)$ avec $a \geqslant 1$. Elles ne changent pas quand on permute $a$, $b$ et $c$, donc l'hypothèse de l'étape 1 ne fait perdre aucune solution.

**Attention à un piège.** « $c$ divise $x$ » n'entraîne « $c \leqslant x$ » que si $x$ est strictement positif. Ici on applique la divisibilité à $a - b$, qui peut être nul ou négatif : c'est pour cela qu'on passe par l'encadrement $-c < a - b < c$.

## Going further

Même question en remplaçant les trois PPCM par des PGCD :
$$\mathrm{PGCD}(b, c) = a + d, \qquad \mathrm{PGCD}(c, a) = b + d, \qquad \mathrm{PGCD}(a, b) = c + d .$$

*Réponse :* les mêmes quadruplets $(a, a, a, 0)$. Cette fois on suppose que $a$ est le plus grand. Un PGCD est plus petit que chacun des deux nombres, donc
$$\mathrm{PGCD}(b, c) \leqslant \min(b, c) \leqslant a \leqslant a + d = \mathrm{PGCD}(b, c) .$$
Toutes ces inégalités sont des égalités : $d = 0$ et $b = c = a$.
