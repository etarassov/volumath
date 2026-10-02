---
id: "10646"
title: "Une suite de périodes 2022 et 5"
grade: 10
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [suites, periodicite, multiples]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Seniors, exercice 10 ; corrigé 2023-01_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

On dit qu'une suite de nombres $u_0, u_1, u_2, \ldots$ est **périodique de période $t$** si $u_{n+t} = u_n$ pour tout entier naturel $n$.

Une suite $(u_n)$ est périodique de période $2022$ et aussi de période $5$. Montrer qu'elle est constante.

## Hints

1. Si une suite est de période $t$, est-elle aussi de période $2t$ ? de période $3t$ ?
2. Cherche un multiple de $2022$ qui dépasse d'exactement $1$ un multiple de $5$.

## Solution

**Étape 1. Une période $t$ donne aussi la période $kt$.**

Si $u_{n+t} = u_n$ pour tout $n$, alors $u_{n+2t} = u_{(n+t)+t} = u_{n+t} = u_n$, puis de même $u_{n+3t} = u_n$, et ainsi de suite : pour tout entier naturel $k$, on a $u_{n+kt} = u_n$.

**Étape 2. Deux termes voisins sont égaux.**

On remarque que $2 \times 2022 = 4044$, et que $4044 + 1 = 4045 = 5 \times 809$. Soit $n$ un entier naturel. Par l'étape 1 avec la période $2022$ et $k = 2$, puis avec la période $5$ et $k = 809$ :

$$u_{n+1} = u_{n+1+4044} = u_{n+4045} = u_{n + 5 \times 809} = u_n$$

**Étape 3. Conclusion.**

On a $u_{n+1} = u_n$ pour tout $n$, donc $u_0 = u_1 = u_2 = \cdots$.

**Conclusion : la suite est constante.**

## Going further

Une suite est périodique de période $6$ et de période $10$. Est-elle forcément constante ? Quelle période peut-on lui trouver à coup sûr ?
