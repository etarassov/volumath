---
id: "12899"
title: "Les suites périodiques qui vérifient une relation entre carrés"
grade: 12
theme: algebra
difficulty: 5
duration_min: 75
tags: [suites, periodicite, recurrence, monotonie, signe, disjonction-de-cas, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 14 mai 2025"
  reference: "2025-10_Sujet-Test-5-2024-2025.pdf, test senior, exercice 7 ; corrigé 2025-10_Corrige-Test-5-2024-2025.pdf (deuxième solution, qui évite l'inégalité arithmético-géométrique de la première)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-5-2024-2025.pdf"
---

## Statement

Déterminer toutes les suites périodiques $(a_n)_{n \geq 1}$ de nombres réels qui vérifient, pour tout entier $n \geq 1$, les deux conditions

$$a_{n+2} + a_n^2 = a_n + a_{n+1}^2 \qquad \text{et} \qquad |a_{n+1} - a_n| \leq 1.$$

Une suite $(b_n)_{n \geq 1}$ est dite périodique s'il existe un entier $T \geq 1$ tel que $b_{n+T} = b_n$ pour tout entier $n \geq 1$.

## Hints

1. Cherchez d'abord les suites constantes, puis les suites de la forme $a, b, a, b, \ldots$
2. Posez $s_n = a_n + a_{n+1}$ et $d_n = a_{n+1} - a_n$. Exprimez $s_{n+1}$ et $d_{n+1}$ à l'aide de $s_n$ et $d_n$ seulement.
3. Une suite strictement croissante, ou strictement décroissante, ne peut pas être périodique. Appliquez cette remarque à $(s_n)$ et à $(|d_n|)$.
4. Si aucun des $s_n$ et aucun des $d_n$ n'est nul, montrez que tous les $s_n$ sont strictement positifs, puis que $d_n > 0$ entraîne $s_n < 1$.

## Solution

La réponse : **les suites qui conviennent sont les suites constantes $a, a, a, \ldots$ avec $a$ réel quelconque, et les suites $a, -a, a, -a, \ldots$ avec $-1/2 \leq a \leq 1/2$.**

### Ces suites conviennent

Pour une suite constante égale à $a$, la relation s'écrit $a + a^2 = a + a^2$, et $|a_{n+1} - a_n| = 0 \leq 1$.

Pour la suite $a, -a, a, -a, \ldots$, on a $a_{n+2} = a_n$ et $a_{n+1}^2 = a^2 = a_n^2$, donc la relation est vraie. De plus $|a_{n+1} - a_n| = |2a|$, qui est au plus $1$ exactement quand $-1/2 \leq a \leq 1/2$.

### Deux suites auxiliaires

Soit $(a_n)$ une suite qui convient, de période $T$. On pose, pour tout $n \geq 1$,

$$s_n = a_n + a_{n+1} \qquad \text{et} \qquad d_n = a_{n+1} - a_n.$$

Ces deux suites ont aussi la période $T$, et $|d_n| \leq 1$ pour tout $n$. La relation de l'énoncé s'écrit $a_{n+2} = a_n + a_{n+1}^2 - a_n^2 = a_n + d_n s_n$. Donc

$$s_{n+1} = a_{n+1} + a_{n+2} = a_{n+1} + a_n + d_n s_n = s_n (1 + d_n),$$

$$d_{n+1} = a_{n+2} - a_{n+1} = a_n - a_{n+1} + d_n s_n = d_n (s_n - 1).$$

On utilisera plusieurs fois la remarque suivante.

**Remarque.** Une suite $(u_n)$ de période $T$ ne peut pas être strictement croissante à partir d'un rang $k$. Sinon on aurait $u_k < u_{k+1} < \cdots < u_{k+T} = u_k$. De même, elle ne peut pas être strictement décroissante à partir d'un rang.

### Premier cas : la somme de deux termes consécutifs est nulle

Supposons $s_k = 0$ pour un indice $k$. Alors $s_{k+1} = s_k(1 + d_k) = 0$, puis $s_{k+2} = 0$, et de proche en proche $s_m = 0$ pour tout $m \geq k$. Pour $m < k$, on choisit un entier $r$ tel que $m + rT \geq k$, et $s_m = s_{m + rT} = 0$. Donc tous les $s_n$ sont nuls.

Alors $a_{n+1} = -a_n$ pour tout $n$, et la suite est $a, -a, a, -a, \ldots$ avec $a = a_1$. Comme $|a_2 - a_1| = |2a| \leq 1$, on a $-1/2 \leq a \leq 1/2$. **On retrouve les suites alternées.**

### Deuxième cas : deux termes consécutifs sont égaux

Supposons $d_k = 0$ pour un indice $k$, c'est-à-dire $a_{k+1} = a_k$. Alors $d_{k+1} = d_k(s_k - 1) = 0$, et de la même façon tous les $d_n$ sont nuls. **La suite est constante.**

### Troisième cas : aucune somme nulle et aucun écart nul

On suppose que $s_n \neq 0$ et $d_n \neq 0$ pour tout $n$, et on va montrer que c'est impossible.

**Tous les $s_n$ sont strictement positifs.** Comme $s_{n+1} = s_n(1 + d_n)$ n'est pas nul, $1 + d_n \neq 0$. Or $d_n \geq -1$, donc $1 + d_n > 0$, et $s_{n+1}$ a le même signe que $s_n$. Tous les $s_n$ ont donc le même signe. S'ils étaient tous négatifs, on aurait $|s_n - 1| = 1 - s_n > 1$, donc

$$|d_{n+1}| = |d_n| \times |s_n - 1| > |d_n|$$

pour tout $n$, car $d_n \neq 0$. La suite $(|d_n|)$ serait strictement croissante, ce que la remarque interdit. Donc $s_n > 0$ pour tout $n$.

**Si $d_n > 0$, alors $s_n < 1$.** Supposons au contraire $d_k > 0$ et $s_k \geq 1$ pour un indice $k$. Alors $d_{k+1} = d_k(s_k - 1) \geq 0$, donc $d_{k+1} > 0$ car il n'est pas nul. Et $s_{k+1} = s_k(1 + d_k) > s_k \geq 1$. On recommence avec l'indice $k + 1$ : de proche en proche, $d_m > 0$ et $s_{m+1} > s_m \geq 1$ pour tout $m \geq k$. La suite $(s_n)$ serait strictement croissante à partir du rang $k$, ce que la remarque interdit.

**Un indice où $d_k > 0$.** On a $d_1 + d_2 + \cdots + d_T = a_{T+1} - a_1 = 0$. Les $d_n$ ne sont pas nuls, et leur somme est nulle, donc l'un d'eux est strictement positif : il existe $k$ tel que $d_k > 0$, et alors $0 < s_k < 1$.

**À partir du rang $k$, on a $s_n < 2$.** C'est vrai pour $n = k$. Supposons $s_n < 2$ pour un $n \geq k$.

- Si $d_n < 0$, alors $0 < 1 + d_n < 1$, donc $s_{n+1} = s_n(1 + d_n) < s_n < 2$.
- Si $d_n > 0$, alors $s_n < 1$ d'après le point précédent, et comme $d_n \leq 1$, on a $s_{n+1} = s_n(1 + d_n) \leq 2s_n < 2$.

Donc $s_{n+1} < 2$, et de proche en proche $s_n < 2$ pour tout $n \geq k$.

**La contradiction.** Pour tout $n \geq k$, on a $0 < s_n < 2$, donc $|s_n - 1| < 1$, et

$$|d_{n+1}| = |d_n| \times |s_n - 1| < |d_n|,$$

car $d_n \neq 0$. La suite $(|d_n|)$ est strictement décroissante à partir du rang $k$, ce que la remarque interdit. **Le troisième cas est impossible.**

### Conclusion

**Les suites qui conviennent sont les suites constantes, et les suites $a, -a, a, -a, \ldots$ avec $-1/2 \leq a \leq 1/2$.**

## Going further

1. Où a-t-on utilisé l'hypothèse $|a_{n+1} - a_n| \leq 1$ ? Montrez que sans elle, toutes les suites $a, -a, a, -a, \ldots$ vérifient la relation, quel que soit le réel $a$.
2. Une autre méthode. Supposons qu'aucun $s_n$ n'est nul. Montrez que $(1 + d_1)(1 + d_2) \cdots (1 + d_T) = s_{T+1}/s_1 = 1$, alors que $d_1 + d_2 + \cdots + d_T = 0$. À l'aide de l'inégalité entre moyenne géométrique et moyenne arithmétique, déduisez-en que tous les $d_n$ sont égaux, puis que la suite est constante.
