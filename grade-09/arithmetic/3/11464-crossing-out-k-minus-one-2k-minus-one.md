---
id: "11464"
title: "Barrer k − 1, 2k − 1, 3k − 1, …"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres-premiers, diviseurs, minimum, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 4 (combinatoire)"
  reference: "2025-03_Sujet-envoi-4-2024-2025.pdf, Exercices Juniors, exercice 2 ; corrigé 2025-05_Corrige-envoi-4-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/03/Sujet-envoi-4-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-03_Sujet-envoi-4-2024-2025.pdf"
---

## Statement

Martin écrit au tableau les nombres entiers de $1$ à $30$.

À chaque opération, il choisit un entier $k \geqslant 2$ et barre tous les nombres du tableau de la forme
$k - 1$, $2k - 1$, $3k - 1$, et ainsi de suite. Par exemple, avec $k = 5$, il barre $4$, $9$, $14$, $19$,
$24$ et $29$. Un nombre déjà barré peut l'être une seconde fois, cela ne change rien.

Combien d'opérations lui faut-il au minimum pour barrer tous les nombres ?

## Hints

1. Avec un $k$ donné, quels nombres $n$ sont barrés ? Regarde plutôt le nombre $n + 1$.
2. Le nombre $n$ est barré par $k$ exactement quand $k$ divise $n + 1$. Que se passe-t-il quand $n + 1$
   est un nombre premier ?
3. Pour montrer que ton nombre d'opérations suffit, souviens-toi que tout entier supérieur ou égal à $2$
   a au moins un diviseur premier.

## Solution

**Ce que barre une opération.** Les nombres barrés quand Martin choisit $k$ sont ceux qui s'écrivent
$jk - 1$ avec $j$ entier, $j \geqslant 1$. Or

$$n = jk - 1 \qquad \text{équivaut à} \qquad n + 1 = jk .$$

Donc **le nombre $n$ est barré par $k$ exactement quand $k$ divise $n + 1$**. Comme $n$ va de $1$ à $30$,
le nombre $n + 1$ va de $2$ à $31$.

**Il faut au moins $11$ opérations.** Les nombres premiers compris entre $2$ et $31$ sont

$$2,\ 3,\ 5,\ 7,\ 11,\ 13,\ 17,\ 19,\ 23,\ 29,\ 31,$$

il y en a $11$. Prenons l'un d'eux, disons $p$, et regardons le nombre $n = p - 1$, qui est bien au
tableau. Pour le barrer, Martin doit choisir un $k \geqslant 2$ qui divise $n + 1 = p$. Comme $p$ est
premier, son seul diviseur supérieur ou égal à $2$ est $p$ lui-même : il faut choisir $k = p$.

Ainsi Martin doit choisir $k = 2$ pour barrer $1$, $k = 3$ pour barrer $2$, $k = 5$ pour barrer $4$, et
ainsi de suite jusqu'à $k = 31$ pour barrer $30$. Ce sont $11$ choix différents, donc au moins
$11$ opérations.

**Ces $11$ opérations suffisent.** Supposons que Martin choisisse les $11$ valeurs
$k = 2, 3, 5, \ldots, 31$. Soit $n$ un nombre du tableau. L'entier $n + 1$ est compris entre $2$ et $31$,
il a donc au moins un diviseur premier $p$, et ce diviseur vérifie $p \leqslant n + 1 \leqslant 31$.
Donc $p$ est l'un des $11$ nombres premiers choisis, et comme $p$ divise $n + 1$, le nombre $n$ est barré
lors de l'opération $k = p$.

Tous les nombres de $1$ à $30$ sont donc barrés.

**Conclusion.** Il faut au minimum **$11$ opérations**.

## Going further

Avec les nombres de $1$ à $N$, le même raisonnement montre que le minimum est le nombre de nombres
premiers compris entre $2$ et $N + 1$. Ne pas oublier le dernier : beaucoup d'élèves ont oublié de
choisir $k = 31$, qui est indispensable pour barrer $30$.
