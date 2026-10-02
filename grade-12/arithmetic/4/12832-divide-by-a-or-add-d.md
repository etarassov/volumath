---
id: "12832"
title: "Diviser par a ou ajouter d"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [suites, divisibilite, congruences, lemme-de-gauss, permutations, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2023"
  reference: "2023-09_Enonce-Test-5.pdf, test senior, exercice 6 ; corrigé 2023-09_Corrige-Test-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-5.pdf"
---

## Statement

Soit $a \geq 2$ et $d \geq 2$ deux entiers premiers entre eux. On pose $x_1 = 1$, puis, pour tout entier $k \geq 1$ :

- $x_{k+1} = x_k / a$ si $a$ divise $x_k$,
- $x_{k+1} = x_k + d$ sinon.

Trouver, en fonction de $a$ et de $d$, le plus grand entier $\ell$ tel que $a^\ell$ divise au moins l'un des termes $x_1, x_2, x_3, \ldots$

## Hints

1. Écrivez la suite pour $a = 2$ et $d = 5$, puis pour $a = 3$ et $d = 7$. Que remarquez-vous sur sa taille ?
2. Partant d'un terme $n$, on ajoute $d$ jusqu'à tomber sur un multiple de $a$. Combien de fois au plus ? Utilisez le fait que $a$ et $d$ sont premiers entre eux.
3. Appelez « départ » le terme $x_1$ et chaque terme obtenu par une division. Montrez par récurrence que tout départ est au plus égal à $d$. Qu'en déduire pour la puissance de $a$ qui divise un terme ?
4. Pour la réciproque : si $n$ est un départ, notez $f(n)$ le départ suivant. Montrez que $a f(n) - n$ est un multiple de $d$, puis que deux départs différents ont des suivants différents.

## Solution

Notons $\kappa$ le plus grand entier $\kappa \geq 0$ tel que $a^\kappa < d$. Il existe, car $a^0 = 1 < d$ et les puissances de $a$ deviennent aussi grandes qu'on veut. On va montrer que la réponse est

$$\ell = \kappa + 1, \qquad \text{c'est-à-dire l'entier } \ell \text{ tel que } a^{\ell - 1} < d < a^{\ell}.$$

Par exemple, pour $a = 2$ et $d = 5$, on a $4 < 5 < 8$, donc $\ell = 3$ ; en effet la suite commence par $1, 6, 3, 8, 4, 2, 1, \ldots$ et $8 = 2^3$.

Remarquons d'abord que $a^{\kappa+1} \geq d$ par définition de $\kappa$, et que $a^{\kappa+1} \neq d$ car $a^{\kappa+1}$ et $d$ sont premiers entre eux (un diviseur commun à $a^{\kappa+1}$ et $d$ différent de $1$ aurait un facteur premier divisant à la fois $a$ et $d$). Donc $a^\kappa < d < a^{\kappa+1}$.

### Rappel : le lemme de Gauss

Si un entier $a$ divise un produit $bc$ et si $a$ est premier avec $b$, alors $a$ divise $c$. C'est un résultat du cours de maths expertes.

### Étape 1 : au plus a − 1 additions avant une division

Soit $n$ un entier. Parmi les $a$ nombres $n, n + d, n + 2d, \ldots, n + (a-1)d$, l'un est un multiple de $a$.

En effet, ces $a$ nombres ont des restes deux à deux différents dans la division par $a$. Si $n + id$ et $n + jd$, avec $0 \leq i < j \leq a - 1$, avaient le même reste, alors $a$ diviserait leur différence $(j - i)d$, donc diviserait $j - i$ d'après le lemme de Gauss, puisque $a$ est premier avec $d$. C'est impossible car $0 < j - i < a$. Ces $a$ nombres prennent donc les $a$ restes possibles, et l'un d'eux a pour reste $0$.

Conséquence : à partir de n'importe quel terme $n$ de la suite, on ajoute $d$ au plus $a - 1$ fois avant d'arriver à un multiple de $a$, que l'on divise ensuite par $a$.

### Étape 2 : les départs sont au plus égaux à d

Appelons **départ** le terme $x_1 = 1$ et chaque terme obtenu juste après une division. La suite se découpe en morceaux : à partir d'un départ $n$, on obtient $n, n + d, \ldots, n + jd$, où $n + jd$ est le premier multiple de $a$ de cette liste, puis le départ suivant $\frac{n + jd}{a}$. D'après l'étape 1, $j \leq a - 1$.

Montrons par récurrence que **tout départ est compris entre $1$ et $d$**. C'est vrai pour $x_1 = 1$. Si un départ $n$ vérifie $n \leq d$, le départ suivant vérifie

$$\frac{n + jd}{a} \leq \frac{d + (a - 1)d}{a} = \frac{ad}{a} = d.$$

### Étape 3 : aucun terme n'est divisible par a puissance κ + 2

Supposons que $a^{m}$ divise un terme $x_k$, avec $m \geq 1$. Alors $a$ divise $x_k$, donc $x_{k+1} = \frac{x_k}{a}$ est un départ, divisible par $a^{m-1}$. D'après l'étape 2, $a^{m-1} \leq x_{k+1} \leq d$. Comme $a^{m-1} \neq d$ (ces deux nombres sont premiers entre eux et $d \geq 2$), on a $a^{m-1} < d$, donc $m - 1 \leq \kappa$ par définition de $\kappa$.

**Ainsi aucune puissance $a^m$ avec $m \geq \kappa + 2$ ne divise un terme de la suite.**

### Étape 4 : le départ suivant détermine le départ précédent

Pour un départ $n$, notons $f(n)$ le départ suivant. D'après l'étape 2, $f$ envoie l'ensemble $\{1, 2, \ldots, d\}$ dans lui-même (on peut définir $f(n)$ par la même règle pour tout $n$ de cet ensemble, même s'il n'apparaît pas dans la suite). On a $a f(n) = n + jd$, donc $a f(n) - n$ est un multiple de $d$.

**Deux nombres différents de $\{1, \ldots, d\}$ ont des images différentes par $f$.** Si $f(n) = f(n')$, alors $n$ et $n'$ ont tous les deux le reste de $a f(n)$ dans la division par $d$. Deux nombres entre $1$ et $d$ qui ont le même reste dans la division par $d$ sont égaux, donc $n = n'$.

Les départs successifs de la suite sont $y_0 = 1$, $y_1 = f(y_0)$, $y_2 = f(y_1)$, etc. Ils prennent leurs valeurs dans un ensemble fini, donc deux d'entre eux sont égaux. Prenons $y_i = y_j$ avec $i < j$, et $i$ le plus petit possible. Si $i \geq 1$, alors $f(y_{i-1}) = f(y_{j-1})$, donc $y_{i-1} = y_{j-1}$, ce qui contredit le choix de $i$. Donc $i = 0$ : **il existe $j \geq 1$ tel que $y_j = 1$**, et la suite des départs se répète ensuite indéfiniment : $y_{p + j} = y_p$ pour tout $p$.

Notons $Y = \{y_0, y_1, \ldots, y_{j-1}\}$ l'ensemble des départs. Tout élément $y_p$ de $Y$ est l'image d'un élément de $Y$ : $y_p = f(y_{p-1})$ si $p \geq 1$, et $y_0 = y_j = f(y_{j-1})$.

### Étape 5 : a puissance κ + 1 apparaît

Pour $1 \leq i \leq \kappa$, le nombre $a^i$ est inférieur à $d$ et divisible par $a$ : partant de lui, on divise tout de suite, donc $f(a^i) = a^{i-1}$.

Remontons à partir de $1 \in Y$. Si $\kappa \geq 1$ : le nombre $1$ est l'image d'un élément de $Y$, et c'est aussi l'image de $a$. Comme $f$ ne prend jamais deux fois la même valeur, cet élément est $a$, donc $a \in Y$. De la même façon, $a$ est l'image d'un élément de $Y$ et c'est l'image de $a^2$, donc $a^2 \in Y$, et ainsi de suite jusqu'à $a^\kappa \in Y$. (Si $\kappa = 0$, on a directement $a^\kappa = 1 \in Y$.)

Enfin $a^\kappa$ est l'image d'un départ $n \in Y$. Partant du départ $n$, la suite passe par $n, n + d, \ldots, n + jd$, puis donne $\frac{n + jd}{a} = a^\kappa$. Donc le terme $n + jd = a^{\kappa+1}$ **apparaît dans la suite**, et il est divisible par $a^{\kappa+1}$.

### Conclusion

D'après l'étape 5, $a^{\kappa+1}$ divise un terme de la suite, et d'après l'étape 3, aucune puissance plus grande ne le fait. **Le plus grand entier cherché est $\ell = \kappa + 1$, c'est-à-dire l'unique entier $\ell$ tel que $a^{\ell-1} < d < a^\ell$** (ou encore $d < a^\ell < ad$).

## Going further

1. Montrez que la suite $(x_k)$ est périodique, c'est-à-dire qu'elle revient à $1$.
2. Pour $a = 2$ et $d = 7$, combien de termes compte une période ? Quels départs rencontre-t-on ?
