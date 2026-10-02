---
id: "11003"
title: "Les diviseurs de kp + 1 entre k et p"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [diviseurs, nombres-premiers, restes, denombrement, double-comptage]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 3 (arithmétique)"
  reference: "2020-01_sujet-envoi-3.pdf, Exercices Juniors, exercice 7 ; corrigé 2020-02_corrige-commente-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_sujet-envoi-3.pdf"
---

## Statement

Soit $p \geqslant 3$ un nombre premier. Pour chaque entier $k$ tel que $1 \leqslant k \leqslant p - 1$, on
note $a_k$ le nombre de diviseurs de $kp + 1$ qui sont strictement compris entre $k$ et $p$.

Que vaut la somme $a_1 + a_2 + \cdots + a_{p-1}$ ?

## Hints

1. Fais le calcul pour $p = 5$, puis pour $p = 7$, et devine la réponse.
2. Au lieu de compter, pour chaque $k$, ses diviseurs $m$, change de point de vue : fixe un entier $m$ entre $2$ et $p - 1$ et demande-toi pour combien de valeurs de $k$ il est compté.
3. L'entier $m$ est compté pour $k$ exactement quand $k < m$ et $m$ divise $kp + 1$. Regarde les restes des $m$ nombres $1,\ p + 1,\ 2p + 1,\ \ldots,\ (m-1)p + 1$ dans la division par $m$.
4. Deux de ces nombres ne peuvent pas avoir le même reste : sinon $m$ diviserait leur différence.

## Solution

**Un exemple pour deviner.** Pour $p = 5$ :

- $k = 1$ : $6$ a pour diviseurs entre $1$ et $5$ (exclus) les nombres $2$ et $3$, donc $a_1 = 2$ ;
- $k = 2$ : $11$ n'a aucun diviseur parmi $3$ et $4$, donc $a_2 = 0$ ;
- $k = 3$ : $16$ est divisible par $4$, donc $a_3 = 1$ ;
- $k = 4$ : il n'y a aucun entier strictement entre $4$ et $5$, donc $a_4 = 0$.

La somme vaut $3 = p - 2$. On va montrer que la réponse est toujours $p - 2$.

**Changer de point de vue.** La somme $a_1 + \cdots + a_{p-1}$ compte tous les couples $(k, m)$ tels
que $1 \leqslant k \leqslant p-1$, $k < m < p$ et $m$ divise $kp + 1$. Dans un tel couple, $m$ est un entier
entre $2$ et $p - 1$, et $k$ est entre $1$ et $m - 1$.

On fixe donc un entier $m$ avec $2 \leqslant m \leqslant p - 1$, et on va montrer qu'il existe
**exactement un** entier $k$ entre $1$ et $m - 1$ tel que $m$ divise $kp + 1$. Comme il y a $p - 2$
valeurs possibles pour $m$, la somme vaudra $p - 2$.

**Les restes des nombres $ip + 1$.** Considérons les $m$ nombres
$$0 \cdot p + 1, \quad 1 \cdot p + 1, \quad 2p + 1, \quad \ldots, \quad (m-1)p + 1 .$$
Supposons que deux d'entre eux, $ip + 1$ et $jp + 1$ avec $0 \leqslant i < j \leqslant m - 1$, aient le
même reste dans la division par $m$. Alors $m$ divise leur différence $(j - i)\,p$.

Or $m < p$ et $p$ est premier, donc $m$ n'a aucun facteur premier en commun avec $p$. Tous les
facteurs premiers de $m$ (avec leurs multiplicités) se retrouvent dans le produit $(j-i)\,p$, mais aucun
ne peut venir de $p$ : ils sont tous dans $j - i$, donc $m$ divise $j - i$. C'est impossible, car
$0 < j - i < m$.

Ces $m$ nombres ont donc $m$ restes différents. Comme il n'y a que $m$ restes possibles,
$0, 1, \ldots, m - 1$, chaque reste est atteint **exactement une fois**. En particulier, le reste $0$
est atteint exactement une fois.

Il n'est pas atteint par le premier nombre, $0 \cdot p + 1 = 1$, car $m \geqslant 2$ ne divise pas $1$.
Il existe donc un unique $k$ avec $1 \leqslant k \leqslant m - 1$ tel que $m$ divise $kp + 1$.

**Conclusion.** Chaque entier $m$ de $2$ à $p - 1$ est compté exactement une fois, et aucun autre
entier n'est compté. Donc
$$a_1 + a_2 + \cdots + a_{p-1} = p - 2 .$$
