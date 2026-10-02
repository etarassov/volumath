---
id: "11467"
title: "Quels entiers jolis faut-il vérifier ?"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [contre-exemple, construction, logique, olympiade]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 4 (combinatoire)"
  reference: "2025-03_Sujet-envoi-4-2024-2025.pdf, Exercices Juniors, exercice 6 (repris en Seniors, exercice 12) ; corrigé 2025-05_Corrige-envoi-4-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/03/Sujet-envoi-4-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-03_Sujet-envoi-4-2024-2025.pdf"
---

## Statement

Soit $n$ un entier strictement positif. Une olympiade compte $n$ élèves et $n$ problèmes. Chaque élève
a résolu certains problèmes, peut-être aucun, peut-être tous.

On dit qu'un entier $k$ compris entre $1$ et $n$ est **joli** si, quel que soit le groupe de $k$ élèves
choisi, ces $k$ élèves ont résolu à eux tous au moins $k$ problèmes différents (un problème compte dès
qu'au moins un élève du groupe l'a résolu).

Un ensemble $E$ d'entiers compris entre $1$ et $n$ est dit **suffisant** s'il a la propriété suivante :
quels que soient les résultats de l'olympiade, si tous les entiers de $E$ sont jolis, alors tous les
entiers $1, 2, \ldots, n$ sont jolis.

Trouver tous les ensembles suffisants.

## Hints

1. L'ensemble $\{1, 2, \ldots, n\}$ tout entier est-il suffisant ?
2. Si un entier $k$ manque dans $E$, essaie d'inventer des résultats d'olympiade où **tous** les entiers
   sauf $k$ sont jolis, et où $k$ ne l'est pas.
3. Fais résoudre à $k$ élèves les mêmes $k - 1$ problèmes et rien d'autre. Que faire résoudre aux
   $n - k$ autres élèves pour que les autres entiers restent jolis ?

## Solution

**L'ensemble $\{1, 2, \ldots, n\}$ est suffisant.** Si tous ses entiers sont jolis, alors tous les entiers
de $1$ à $n$ sont jolis : il n'y a rien à démontrer.

**Aucun autre ensemble n'est suffisant.** Soit $E$ un ensemble qui ne contient pas tous les entiers de
$1$ à $n$, et soit $k$ un entier compris entre $1$ et $n$ qui n'est pas dans $E$. On va inventer des
résultats d'olympiade pour lesquels **tous les entiers sauf $k$ sont jolis**. Alors tous les entiers de
$E$ sont jolis, mais $k$ ne l'est pas, ce qui montre que $E$ n'est pas suffisant.

Voici les résultats :

- $k$ élèves, appelés les **faibles**, ont résolu les problèmes $1, 2, \ldots, k-1$ et aucun autre (si
  $k = 1$, l'unique élève faible n'a rien résolu) ;
- les $n - k$ autres élèves, appelés les **forts**, ont résolu les $n$ problèmes.

Vérifions, pour chaque entier $i$ de $1$ à $n$, s'il est joli.

- **Si $i < k$, l'entier $i$ est joli.** Chaque élève a résolu au moins $k - 1$ problèmes, et
  $k - 1 \geqslant i$. Dans un groupe de $i$ élèves, un seul élève suffit déjà à fournir $i$ problèmes
  différents.
- **Si $i > k$, l'entier $i$ est joli.** Il n'y a que $k$ élèves faibles, donc un groupe de $i$ élèves,
  avec $i > k$, contient au moins un élève fort. Ce groupe a donc résolu les $n$ problèmes, et
  $n \geqslant i$.
- **L'entier $k$ n'est pas joli.** Le groupe des $k$ élèves faibles n'a résolu que $k - 1$ problèmes
  différents, moins que $k$.

Tous les entiers sauf $k$ sont donc jolis, comme annoncé.

**Conclusion.** Le seul ensemble suffisant est $E = \{1, 2, \ldots, n\}$ tout entier. Autrement dit,
pour être sûr que tous les entiers sont jolis, il faut les vérifier tous : aucun ne se déduit des autres.

## Going further

La condition « tous les entiers de $1$ à $n$ sont jolis » est exactement la condition du **théorème de
Hall**, qui affirme qu'on peut alors attribuer à chaque élève un problème qu'il a résolu, deux élèves
différents recevant toujours deux problèmes différents. L'exercice montre qu'on ne peut pas
raccourcir la vérification de cette condition en se contentant de certaines tailles de groupes.
