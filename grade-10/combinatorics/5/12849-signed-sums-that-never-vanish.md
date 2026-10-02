---
id: "12849"
title: "Des sommes avec des signes qui ne s'annulent jamais"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [suites, signe, puissances-de-2, valuation, principe-des-tiroirs, construction, maximum]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 21 et 22 février 2024"
  reference: "2025-01_Enonce-Test-3.pdf, test senior, exercice 6 ; corrigé 2025-01_Corrige-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-3.pdf"
---

## Statement

Trouver le plus grand entier $\ell \geq 1$ pour lequel il existe des entiers $a_1, a_2, \ldots, a_\ell$, tous compris (au sens large) entre $1$ et $2^{2024}$, qui ont la propriété suivante :

> pour tous les entiers $i$ et $j$ tels que $1 \leq i \leq j \leq \ell$, et pour tout choix de signes $s_i, s_{i+1}, \ldots, s_j$ dans $\{-1, +1\}$, la somme $s_i a_i + s_{i+1} a_{i+1} + \cdots + s_j a_j$ n'est pas nulle.

Autrement dit, on ne peut jamais obtenir $0$ en mettant des signes $+$ et $-$ devant un bloc de termes **consécutifs** de la suite. Les entiers $a_k$ ne sont pas forcément distincts.

## Hints

1. Remplacez $2^{2024}$ par $1$, puis par $2$, puis par $4$, et cherchez à la main la plus longue suite possible. Quelle valeur de $\ell$ semble se dessiner ?
2. Avec des termes entre $1$ et $2$, la suite $2, 1, 2$ convient. Avec des termes entre $1$ et $4$, essayez $4, 2, 4, 1, 4, 2, 4$. Quel lien y a-t-il entre $a_k$ et la plus grande puissance de $2$ qui divise $k$ ?
3. Pour cette suite, regardez dans un bloc le plus petit terme. Est-il seul ? Que dire des autres termes du bloc par rapport à lui ?
4. Pour la majoration, choisissez les signes un par un : $+$ quand la somme déjà écrite est négative ou nulle, $-$ quand elle est positive. Entre quelles bornes restent les sommes partielles ? Combien y en a-t-il ?

## Solution

La réponse est $\ell = 2^{2025} - 1$. Dans toute la solution, on note $N = 2^{2024}$.

Pour un entier $k \geq 1$, on note $v(k)$ l'exposant de la plus grande puissance de $2$ qui divise $k$. Par exemple $v(12) = 2$, car $12 = 2^2 \times 3$, et $v(7) = 0$. Autrement dit, $k = 2^{v(k)} \times m$ avec $m$ impair.

### Étape 1 : une suite de longueur 2²⁰²⁵ − 1 qui convient

On pose $\ell = 2^{2025} - 1$ et, pour $1 \leq k \leq \ell$,

$$a_k = 2^{2024 - v(k)}.$$

Comme $k < 2^{2025}$, on a $v(k) \leq 2024$, donc $a_k$ est bien un entier compris entre $1$ et $2^{2024}$. Par exemple, la suite commence par $2^{2024}, 2^{2023}, 2^{2024}, 2^{2022}, 2^{2024}, 2^{2023}, 2^{2024}, \ldots$

**Un lemme.** Parmi des entiers consécutifs $i, i+1, \ldots, j$, il y en a un seul pour lequel $v$ est le plus grand.

En effet, notons $p$ la plus grande valeur de $v$ sur ce bloc, et supposons que deux entiers $u < w$ du bloc vérifient $v(u) = v(w) = p$. Écrivons $u = 2^p m$ et $w = 2^p m'$ avec $m$ et $m'$ impairs. Comme $m < m'$ sont impairs, $m' \geq m + 2$. Alors l'entier

$$u + 2^p = 2^p (m + 1)$$

vérifie $u < u + 2^p < u + 2^{p+1} \leq 2^p m' = w$, donc il est dans le bloc. Mais $m + 1$ est pair, donc $2^{p+1}$ divise $u + 2^p$, et $v(u + 2^p) \geq p + 1$. Cela contredit le choix de $p$.

**La suite convient.** Soit $i \leq j$, et soit $k$ l'unique entier du bloc $i, \ldots, j$ pour lequel $v$ est le plus grand. Notons $p = v(k)$, de sorte que $a_k = 2^{2024 - p}$. Pour tout autre entier $h$ du bloc, $v(h) \leq p - 1$, donc $a_h = 2^{2024 - v(h)}$ est un multiple de $2^{2024 - p + 1} = 2a_k$.

Quels que soient les signes, la somme $s_i a_i + \cdots + s_j a_j$ s'écrit donc $\pm a_k + 2a_k \times q$ avec $q$ entier, c'est-à-dire $a_k \times (2q \pm 1)$. Le nombre $2q \pm 1$ est impair, donc non nul, et $a_k \neq 0$ : **la somme n'est jamais nulle.**

### Étape 2 : aucune suite de longueur 2²⁰²⁵ ne convient

Si une suite de longueur plus grande que $2^{2025}$ convenait, ses $2^{2025}$ premiers termes formeraient une suite qui convient. Il suffit donc de montrer qu'aucune suite de longueur $2N = 2^{2025}$ ne convient.

Soit $a_1, \ldots, a_{2N}$ des entiers compris entre $1$ et $N$. On choisit des signes un par un, et on note $t_i$ les sommes partielles : $t_0 = 0$ et, pour $i \geq 1$, $t_i = s_1 a_1 + \cdots + s_i a_i$. La règle est la suivante :

- si $t_{i-1} \leq 0$, on prend $s_i = +1$ ;
- si $t_{i-1} > 0$, on prend $s_i = -1$.

**Les sommes partielles restent petites.** Montrons par récurrence que $-N < t_i \leq N$ pour tout $i$. C'est vrai pour $t_0 = 0$. Supposons-le pour $t_{i-1}$.

- Si $t_{i-1} \leq 0$, alors $t_i = t_{i-1} + a_i$. D'une part $t_i > t_{i-1} > -N$. D'autre part $t_i \leq 0 + a_i \leq N$.
- Si $t_{i-1} > 0$, alors $t_i = t_{i-1} - a_i$. D'une part $t_i < t_{i-1} \leq N$. D'autre part $t_i > 0 - a_i \geq -N$.

**Le principe des tiroirs.** Les $2N + 1$ entiers $t_0, t_1, \ldots, t_{2N}$ sont donc dans l'ensemble $\{-N + 1, -N + 2, \ldots, N\}$, qui ne contient que $2N$ entiers. Deux d'entre eux sont égaux : il existe des indices $i - 1 < j$ tels que $t_{i-1} = t_j$. Alors $1 \leq i \leq j \leq 2N$ et

$$s_i a_i + s_{i+1} a_{i+1} + \cdots + s_j a_j = t_j - t_{i-1} = 0.$$

La suite ne convient pas.

### Conclusion

Il existe une suite qui convient de longueur $2^{2025} - 1$, et aucune de longueur $2^{2025}$ ou plus. **Le plus grand entier cherché est $\ell = 2^{2025} - 1$.**

## Going further

1. Refaites le raisonnement quand $2^{2024}$ est remplacé par $2^n$ : la réponse est $2^{n+1} - 1$. Vérifiez que la suite de l'étape 1 s'obtient aussi ainsi : on double chaque terme de la suite qui convient pour $2^{n-1}$, puis on écrit cette suite doublée, le terme $1$, et à nouveau la suite doublée.
2. Si la borne $2^{2024}$ est remplacée par $3$, la majoration de l'étape 2 donne seulement $\ell \leq 5$. Montrez qu'en fait aucune suite de longueur $4$ à termes dans $\{1, 2, 3\}$ ne convient, alors que $2, 1, 2$ convient. La majoration de l'étape 2 n'est exacte que pour les puissances de $2$.
