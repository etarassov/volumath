---
id: "12877"
title: "2025 nombres au tableau et des progressions arithmétiques"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [tiroirs, progression-arithmetique, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2025"
  reference: "2025-10_Sujet-Test-3-2024-2025.pdf, test junior, exercice 1 ; corrigé 2025-10_Corrige-Test-3-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-3-2024-2025.pdf"
---

## Statement

On dit que quatre nombres $a < b < c < d$ sont **en progression arithmétique** si $b - a = c - b = d - c$. Par exemple, $1$, $4$, $7$, $10$ sont en progression arithmétique.

Aurélien écrit $2025$ nombres au tableau. Certains peuvent être égaux entre eux. Théo remarque que, chaque fois que l'on choisit quatre nombres du tableau qui sont deux à deux différents, ces quatre nombres sont en progression arithmétique.

Montrer qu'un même nombre est écrit au moins $507$ fois au tableau.

## Hints

1. Si le tableau ne contenait que quatre valeurs différentes, pourquoi l'une d'elles serait-elle écrite au moins $507$ fois ?
2. Supposez qu'il y ait au moins cinq valeurs différentes $a < b < c < d < e$. Écrivez ce que dit Théo pour les quatre nombres $a$, $b$, $c$, $d$, puis pour $a$, $b$, $d$, $e$.

## Solution

### Au plus quatre valeurs différentes

Supposons qu'il y ait au moins cinq valeurs différentes au tableau. On en choisit cinq, que l'on range dans l'ordre croissant : $a < b < c < d < e$.

- Les quatre nombres $a$, $b$, $c$, $d$ sont deux à deux différents, donc en progression arithmétique : $c - b = b - a$.
- Les quatre nombres $a$, $b$, $d$, $e$ aussi, donc $d - b = b - a$.

On en déduit $c - b = d - b$, donc $c = d$. C'est impossible, puisque $c < d$.

Il y a donc au plus quatre valeurs différentes au tableau.

### Une valeur écrite au moins 507 fois

On range les $2025$ nombres en au plus quatre groupes, un par valeur. Si chaque valeur était écrite au plus $506$ fois, il y aurait au plus $4 \times 506 = 2024$ nombres au tableau. Or il y en a $2025$.

**Une valeur est donc écrite au moins $507$ fois.**

## Going further

1. Montrez que l'on ne peut pas remplacer $507$ par $508$ : trouvez $2025$ nombres qui vérifient la remarque de Théo et dont aucun n'est écrit $508$ fois.
2. Que se passe-t-il si Théo remarque la même chose pour trois nombres au lieu de quatre (trois nombres $a < b < c$ sont en progression arithmétique si $b - a = c - b$) ?
