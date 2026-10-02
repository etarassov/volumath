---
id: "11866"
title: "Une suite définie par une partie entière : calculer a₂₀₂₂"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 35
tags: [suites, partie-entiere, recurrence, conjecture]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Seniors, exercice 12 ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Pour un réel $x$, on note $\lfloor x \rfloor$ sa partie entière, c'est-à-dire le plus grand entier inférieur ou égal à $x$.

On définit la suite $(a_n)$ par $a_0 = a_1 = a_2 = 1$ et, pour tout $n \geqslant 3$,
$$a_n = \left\lfloor \frac{n}{a_{n-1}\, a_{n-2}\, a_{n-3}} \right\rfloor.$$

Déterminer $a_{2022}$.

## Hints

1. Calculer les premiers termes, jusqu'à $a_{15}$ environ. Que remarque-t-on en regroupant les termes quatre par quatre ?
2. Conjecturer une formule pour $a_{4k}$, $a_{4k+1}$, $a_{4k+2}$ et $a_{4k+3}$.
3. Pour la démontrer de proche en proche, utiliser que $\lfloor x \rfloor = q$ équivaut à $q \leqslant x < q + 1$.

## Solution

**Rappel.** Pour un entier $q$ et un réel $x$, on a $\lfloor x \rfloor = q$ si et seulement si $q \leqslant x < q + 1$. En particulier, pour des entiers $N \geqslant 0$ et $d \geqslant 1$, on a $\left\lfloor \frac{N}{d} \right\rfloor = q$ si et seulement si $qd \leqslant N < (q+1)d$.

**Étape 1 : les premiers termes.** On calcule :

| $n$ | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $a_n$ | 3 | 1 | 1 | 2 | 3 | 1 | 1 | 3 | 3 | 1 | 1 | 4 | 3 |

Par exemple $a_3 = \lfloor 3/1 \rfloor = 3$, $a_6 = \lfloor 6/(1 \times 1 \times 3) \rfloor = 2$ et $a_7 = \lfloor 7/(2 \times 1 \times 1) \rfloor = 3$.

**Étape 2 : la conjecture.** Notons, pour $k \geqslant 1$, $m_k = \left\lfloor \frac{4k+2}{3} \right\rfloor$. Le tableau suggère que pour tout $k \geqslant 1$ :
$$a_{4k} = 1, \qquad a_{4k+1} = 1, \qquad a_{4k+2} = m_k, \qquad a_{4k+3} = 3.$$
C'est vrai pour $k = 1$ et $k = 2$ (on a $m_1 = 2$ et $m_2 = 3$).

Deux remarques sur $m_k$ serviront. D'abord $3m_k \leqslant 4k + 2$, par définition de la partie entière. Ensuite $m_k \geqslant 2$ pour $k \geqslant 1$, et même $m_k \geqslant 4$ pour $k \geqslant 3$, car alors $4k + 2 \geqslant 14$.

**Étape 3 : on passe d'un groupe de quatre au suivant.** Supposons la formule vraie pour un certain $k \geqslant 2$, et montrons-la pour $k + 1$.

- *Le terme $a_{4k+4}$.* On a $a_{4k+4} = \left\lfloor \frac{4k+4}{3 \times m_k \times 1} \right\rfloor$. D'une part $3m_k \leqslant 4k + 2 \leqslant 4k + 4$. D'autre part, le reste de la division de $4k+2$ par $3$ vaut au plus $2$, donc $3m_k \geqslant (4k + 2) - 2 = 4k$, et comme $m_k \geqslant 2$, on a aussi $3m_k \geqslant 6$. En additionnant, $6m_k = 3m_k + 3m_k \geqslant 4k + 6 > 4k + 4$. Par le rappel, $a_{4k+4} = 1$.
- *Le terme $a_{4k+5}$.* On a $a_{4k+5} = \left\lfloor \frac{4k+5}{1 \times 3 \times m_k} \right\rfloor$, et les mêmes inégalités donnent $3m_k \leqslant 4k + 5 < 4k + 6 \leqslant 6m_k$. Donc $a_{4k+5} = 1$.
- *Le terme $a_{4k+6}$.* On a $a_{4k+6} = \left\lfloor \frac{4k+6}{1 \times 1 \times 3} \right\rfloor = \left\lfloor \frac{4(k+1)+2}{3} \right\rfloor = m_{k+1}$.
- *Le terme $a_{4k+7}$.* On a $a_{4k+7} = \left\lfloor \frac{4k+7}{m_{k+1} \times 1 \times 1} \right\rfloor$. D'une part $3m_{k+1} \leqslant 4(k+1) + 2 = 4k + 6 < 4k + 7$. D'autre part, comme ci-dessus, $3m_{k+1} \geqslant 4(k+1) = 4k + 4$, et $m_{k+1} \geqslant 4$ car $k + 1 \geqslant 3$, donc $4m_{k+1} = 3m_{k+1} + m_{k+1} \geqslant 4k + 8 > 4k + 7$. Donc $a_{4k+7} = 3$.

Ce sont exactement les quatre formules pour $k + 1$. Comme elles sont vraies pour $k = 2$, elles sont vraies pour $k = 3$, puis pour $k = 4$, et ainsi de suite : elles sont vraies pour tout $k \geqslant 1$.

**Étape 4 : le terme cherché.** On a $2022 = 4 \times 505 + 2$, donc
$$a_{2022} = m_{505} = \left\lfloor \frac{2022}{3} \right\rfloor = 674.$$

**Conclusion.** **$a_{2022} = 674$.**

