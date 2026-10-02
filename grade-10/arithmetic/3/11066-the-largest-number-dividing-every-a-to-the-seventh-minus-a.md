---
id: "11066"
title: "Le plus grand nombre qui divise tous les a⁷ − a"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, factorisation, restes, nombres-premiers, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Juniors, exercice 2 (repris en exercice 10 chez les Seniors) ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf. Le corrigé utilise le petit théorème de Fermat ; la solution ci-dessous le remplace par une factorisation et l'étude des restes."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Trouver le plus grand entier $d \geqslant 1$ tel que, pour tout entier naturel $a$, le nombre $d$ divise $a^7 - a$.

## Hints

1. Essaie $a = 2$ puis $a = 3$ : le nombre $d$ doit diviser les deux résultats. Cela te donne un candidat.
2. Factorise $a^7 - a$ au maximum. Commence par $a(a^6 - 1)$, puis écris $a^6 - 1 = (a^3 - 1)(a^3 + 1)$.
3. Trois des facteurs obtenus sont trois entiers consécutifs. Pour la divisibilité par $7$, examine les sept restes possibles de $a$ dans la division par $7$.

## Solution

**Réponse :** $d = 42$.

**Étape 1 : $d$ divise $42$.**

Le nombre $d$ doit diviser $a^7 - a$ pour $a = 2$ et pour $a = 3$, c'est-à-dire
$$2^7 - 2 = 126 = 2 \times 3^2 \times 7 \qquad \text{et} \qquad 3^7 - 3 = 2184 = 2^3 \times 3 \times 7 \times 13 .$$
Il divise donc leur PGCD, qui vaut $2 \times 3 \times 7 = 42$. Ainsi $d \leqslant 42$.

**Étape 2 : $42$ divise $a^7 - a$ pour tout $a$.**

On factorise avec les identités $x^3 - 1 = (x - 1)(x^2 + x + 1)$ et $x^3 + 1 = (x + 1)(x^2 - x + 1)$ :
$$a^7 - a = a\,(a^6 - 1) = a\,(a^3 - 1)(a^3 + 1) = (a - 1)\,a\,(a + 1)\,(a^2 + a + 1)\,(a^2 - a + 1) .$$

*Divisibilité par 2 et par 3.* Les nombres $a - 1$, $a$, $a + 1$ sont trois entiers consécutifs. L'un d'eux est pair, et l'un d'eux est un multiple de $3$. Donc $2$ et $3$ divisent $a^7 - a$.

*Divisibilité par 7.* Écrivons $a = 7q + r$ avec $r \in \{0, 1, \ldots, 6\}$. En développant,
$$a^2 + a + 1 = 7\,(7q^2 + 2qr + q) + (r^2 + r + 1),$$
donc $a^2 + a + 1$ est un multiple de $7$ dès que $r^2 + r + 1$ en est un. De même pour $a^2 - a + 1$ et $r^2 - r + 1$. On regarde les sept cas.

| $r$ | facteur multiple de $7$ |
|---|---|
| $0$ | $a$ |
| $1$ | $a - 1$ |
| $6$ | $a + 1$ |
| $2$ | $a^2 + a + 1$, car $4 + 2 + 1 = 7$ |
| $4$ | $a^2 + a + 1$, car $16 + 4 + 1 = 21$ |
| $3$ | $a^2 - a + 1$, car $9 - 3 + 1 = 7$ |
| $5$ | $a^2 - a + 1$, car $25 - 5 + 1 = 21$ |

Dans tous les cas, l'un des facteurs est un multiple de $7$, donc $7$ divise $a^7 - a$.

Les nombres premiers $2$, $3$ et $7$ sont distincts et divisent tous les trois $a^7 - a$. Ils apparaissent donc tous dans sa décomposition en facteurs premiers, et leur produit $42$ divise $a^7 - a$.

**Conclusion.** Le nombre $42$ divise tous les $a^7 - a$, et aucun nombre plus grand ne le fait d'après l'étape 1. Donc $d = 42$.

## Going further

1. Montrer de la même façon que le plus grand entier qui divise tous les $a^5 - a$ est $30$. On pourra factoriser $a^5 - a = (a - 1)\,a\,(a + 1)(a^2 + 1)$.
2. En Terminale, le petit théorème de Fermat dit que $p$ divise $a^p - a$ pour tout nombre premier $p$. Avec lui, on montre que le plus grand entier qui divise tous les $a^{13} - a$ est $2730 = 2 \times 3 \times 5 \times 7 \times 13$ : ce sont exactement les nombres premiers $p$ tels que $p - 1$ divise $12$.
