---
id: "10644"
title: "Deux suites qui reviennent à leur point de départ"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [suites, telescopage, somme-de-carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 8 ; corrigé 2023-01_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Soient $a$ et $b$ deux réels. On définit deux suites $(a_n)$ et $(b_n)$ par $a_0 = a$, $b_0 = b$ et, pour tout entier naturel $n$,

$$a_{n+1} = a_n + b_n \qquad \text{et} \qquad b_{n+1} = a_n b_n$$

Trouver tous les couples $(a, b)$ tels que $a_{2022} = a_0$ et $b_{2022} = b_0$.

## Hints

1. Essaie d'abord avec $b = 0$. Puis cherche à montrer que c'est le seul cas possible.
2. Ajoute les égalités $a_{i+1} - a_i = b_i$ pour $i$ allant de $0$ à $2021$. Que vaut $b_0 + b_1 + \cdots + b_{2021}$ ?
3. Fais de même avec $b_{i+1} = a_i b_i$ : que vaut $a_0 b_0 + a_1 b_1 + \cdots + a_{2021} b_{2021}$ ?
4. Élève au carré l'égalité $a_{i+1} = a_i + b_i$, puis ajoute pour $i$ allant de $0$ à $2021$.

## Solution

Supposons que $a_{2022} = a_0$ et $b_{2022} = b_0$. Dans toute la solution, les sommes portent sur les indices $i = 0, 1, \ldots, 2021$.

**Étape 1. La somme des $b_i$ est nulle.**

Pour chaque $i$, on a $b_i = a_{i+1} - a_i$. En ajoutant ces $2022$ égalités, les termes du milieu se simplifient deux à deux :

$$b_0 + b_1 + \cdots + b_{2021} = (a_1 - a_0) + (a_2 - a_1) + \cdots + (a_{2022} - a_{2021}) = a_{2022} - a_0 = 0$$

**Étape 2. La somme des $a_i b_i$ est nulle.**

Pour chaque $i$, on a $a_i b_i = b_{i+1}$. En ajoutant,

$$a_0 b_0 + a_1 b_1 + \cdots + a_{2021} b_{2021} = b_1 + b_2 + \cdots + b_{2022}$$

Comme $b_{2022} = b_0$, le membre de droite est $b_0 + b_1 + \cdots + b_{2021}$, qui vaut $0$ par l'étape 1.

**Étape 3. Tous les $b_i$ sont nuls.**

En élevant au carré $a_{i+1} = a_i + b_i$, on obtient $a_{i+1}^2 - a_i^2 = 2a_i b_i + b_i^2$. En ajoutant ces égalités, le membre de gauche se simplifie comme à l'étape 1 et vaut $a_{2022}^2 - a_0^2 = 0$. Donc

$$0 = 2(a_0 b_0 + \cdots + a_{2021} b_{2021}) + (b_0^2 + \cdots + b_{2021}^2) = b_0^2 + b_1^2 + \cdots + b_{2021}^2$$

par l'étape 2. Une somme de carrés n'est nulle que si chaque carré est nul. Donc tous les $b_i$ sont nuls, et en particulier $b = b_0 = 0$.

**Étape 4. Réciproque.**

Si $b = 0$, alors $a_1 = a + 0 = a$ et $b_1 = a \times 0 = 0$. On recommence : les deux suites sont constantes, égales à $a$ et à $0$. Donc $a_{2022} = a_0$ et $b_{2022} = b_0$.

**Conclusion : les couples cherchés sont les couples $(a, 0)$, où $a$ est un réel quelconque.**
