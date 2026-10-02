---
id: "10682"
title: "Deux paquets d'entiers qui donnent la même somme"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [polynome, principe-des-tiroirs, coefficients-binomiaux, denombrement, majoration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Seniors, exercice 15 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf. Le corrigé écrit « degré d » et « degré d + 1 » là où il faut k et k + 1, et suppose que P tend vers plus l'infini, donc que son coefficient dominant est positif. La solution ci-dessous majore |P| directement et choisit N explicitement."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Soit $P$ un polynôme à coefficients entiers, et soit $k$ son degré. Montrer qu'il existe un entier $d$ avec $1 \leqslant d \leqslant k + 1$ et des entiers $a_1, a_2, \ldots, a_{2d}$ deux à deux distincts tels que

$$P(a_1) + P(a_2) + \cdots + P(a_d) = P(a_{d+1}) + P(a_{d+2}) + \cdots + P(a_{2d})$$

## Hints

1. Fixe un grand entier $N$ et regarde toutes les façons de choisir $k + 1$ entiers distincts entre $1$ et $N$. Pour chaque choix, calcule la somme des valeurs de $P$. Si deux choix différents donnent la même somme, tu n'es pas loin du but.
2. Les sommes sont des entiers. Majore $|P(x)|$ pour $1 \leqslant x \leqslant N$ par une constante fois $N^k$. Combien de valeurs différentes les sommes peuvent-elles prendre ?
3. Le nombre de choix est $\binom{N}{k+1}$. Montre qu'il est au moins égal à une constante fois $N^{k+1}$ quand $N \geqslant 2k$. Lequel des deux nombres gagne quand $N$ est grand ?
4. Les deux choix qui donnent la même somme peuvent avoir des entiers en commun. Que faire de ces entiers ?

## Solution

**Rappel.** Le **principe des tiroirs** dit que si l'on range strictement plus d'objets qu'il n'y a de tiroirs, au moins un tiroir contient deux objets. Le nombre de façons de choisir $m$ éléments parmi $N$ est $\binom{N}{m} = \frac{N(N - 1)\cdots(N - m + 1)}{m!}$.

**Étape 0. Le cas d'un polynôme constant.**

Si $P$ est constant, alors $P(1) = P(2)$, et $d = 1$, $a_1 = 1$, $a_2 = 2$ conviennent. On suppose désormais $k \geqslant 1$. Écrivons $P(X) = c_k X^k + \cdots + c_1 X + c_0$ et posons $M = |c_0| + |c_1| + \cdots + |c_k|$. Comme $c_k \neq 0$, on a $M \geqslant 1$.

**Étape 1. Les sommes prennent peu de valeurs.**

Soit $N$ un entier, que l'on choisira plus tard. Pour $1 \leqslant x \leqslant N$, chaque $x^i$ avec $i \leqslant k$ vérifie $x^i \leqslant N^k$, donc

$$|P(x)| \leqslant |c_k|\,x^k + \cdots + |c_1|\,x + |c_0| \leqslant M N^k$$

Pour un ensemble $A$ de $k + 1$ entiers distincts entre $1$ et $N$, notons $S(A)$ la somme des $P(a)$ pour $a$ dans $A$. C'est un entier, et $|S(A)| \leqslant V$ avec $V = (k + 1) M N^k$. Il y a $2V + 1$ entiers entre $-V$ et $V$, et comme $V \geqslant 1$, on a $2V + 1 \leqslant 3V$. Les sommes $S(A)$ prennent donc au plus $3(k + 1) M N^k$ valeurs différentes.

**Étape 2. Il y a beaucoup d'ensembles.**

Le nombre d'ensembles $A$ est

$$\binom{N}{k+1} = \frac{N (N - 1) \cdots (N - k)}{(k + 1)!}$$

Si $N \geqslant 2k$, chacun des $k + 1$ facteurs du numérateur vérifie $N - i \geqslant N - k \geqslant \frac{N}{2}$. Donc

$$\binom{N}{k+1} \geqslant \frac{N^{k+1}}{2^{k+1} (k + 1)!}$$

**Étape 3. Choisir $N$.**

Posons $C = 3 \times 2^{k+1} \times (k + 1) \times (k + 1)!$ et choisissons un entier $N > C M$. Comme $C M \geqslant C \geqslant 2k$, on a bien $N \geqslant 2k$. En multipliant l'inégalité $N > C M$ par $\frac{N^k}{2^{k+1}(k + 1)!}$, on obtient

$$\frac{N^{k+1}}{2^{k+1} (k + 1)!} > 3 (k + 1) M N^k$$

Par les étapes 1 et 2, il y a donc strictement plus d'ensembles $A$ que de valeurs possibles pour $S(A)$. Par le principe des tiroirs, il existe deux ensembles différents $A$ et $B$, chacun de $k + 1$ entiers entre $1$ et $N$, tels que $S(A) = S(B)$.

**Étape 4. Enlever les éléments communs.**

Les entiers qui sont à la fois dans $A$ et dans $B$ apparaissent des deux côtés de l'égalité $S(A) = S(B)$ : on peut les retirer des deux ensembles sans changer l'égalité. Il reste deux ensembles $A'$ et $B'$ sans élément commun, qui ont le même nombre d'éléments $d$, avec $d \leqslant k + 1$. Comme $A \neq B$ et que les deux ont le même nombre d'éléments, $A$ contient un élément qui n'est pas dans $B$, donc $d \geqslant 1$.

Notons $a_1, \ldots, a_d$ les éléments de $A'$ et $a_{d+1}, \ldots, a_{2d}$ ceux de $B'$. Ils sont deux à deux distincts, car $A'$ et $B'$ n'ont pas d'élément commun, et la somme des $P(a_i)$ sur $A'$ égale la somme sur $B'$.

**Conclusion : il existe toujours un entier $d$ entre $1$ et $k + 1$ et $2d$ entiers distincts qui vérifient l'égalité demandée.**

## Going further

Pour $P(X) = X^2$, on a $k = 2$. Trouve quatre entiers strictement positifs distincts $p$, $q$, $r$, $s$ tels que $p^2 + q^2 = r^2 + s^2$. Peut-on se contenter de $d = 1$ si l'on accepte les entiers négatifs ?
