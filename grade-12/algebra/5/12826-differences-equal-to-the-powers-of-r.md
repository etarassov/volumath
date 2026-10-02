---
id: "12826"
title: "Des différences qui sont les puissances r, r², r³, …"
grade: 12
theme: algebra
difficulty: 5
duration_min: 90
tags: [puissances, differences, principe-extremal, raisonnement-par-l-absurde, theoreme-des-valeurs-intermediaires, concours]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection d'avril 2023"
  reference: "2023-09_Enonce-Test-4.pdf, test senior, exercice 7 ; corrigé 2023-09_Corrige-Test-4.pdf (la preuve suit la solution alternative n° 1 du corrigé ; le corrigé contient des coquilles dans le cas n = 4, où il écrit a3 − a1 = λ⁶ pour a4 − a1 et des signes = pour des +)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-4.pdf"
---

## Statement

Trouver tous les entiers $n \geq 2$ pour lesquels il existe un réel $r > 0$ et $n$ réels $a_1 < a_2 < \cdots < a_n$ tels que les $\frac{n(n-1)}{2}$ différences $a_j - a_i$, pour $1 \leq i < j \leq n$, soient égales, dans un certain ordre, aux nombres

$$r^1, \ r^2, \ \ldots, \ r^{n(n-1)/2}.$$

## Hints

1. Cherchez des exemples pour $n = 2$, $n = 3$, $n = 4$. Pour $n = 3$, avec $a_1 = 0$ et $a_2 = r$, quelle équation doit vérifier $r$ ?
2. Montrez que l'on peut supposer $r > 1$. Notez alors $p(i, j)$ l'exposant tel que $a_j - a_i = r^{p(i,j)}$. Pour $i < k < j$, que donne l'égalité $a_j - a_i = (a_j - a_k) + (a_k - a_i)$ quand on la divise par $a_j - a_i$ ?
3. Appelez *couple pivot* deux entiers $1 \leq c < d$ tels que $r^{-c} + r^{-d} = 1$. Montrez que, si l'on range les couples pivots par $c$ croissants, les $d$ décroissent, et que tous les $c$ sont plus petits que tous les $d$.
4. En coupant $a_n - a_1$ au point $a_k$, trouvez au moins $n - 2$ couples pivots. Regardez ensuite la plus petite des différences $a_j - a_i$ avec $j \geq i + 2$.
5. Enfin, coupez $a_{n-1} - a_1$ au point $a_2$.

## Solution

La réponse : **$n = 2$, $n = 3$ et $n = 4$**.

Dans toute la suite, on note $m = \frac{n(n-1)}{2}$ le nombre de différences.

### Partie 1 : les exemples pour n = 2, 3, 4

**Pour $n = 2$**, on prend $r = 1$, $a_1 = 0$, $a_2 = 1$ : la seule différence vaut $1 = r^1$.

**Pour $n = 3$**, soit $\varphi = \frac{1 + \sqrt{5}}{2}$, qui vérifie $\varphi^2 = \varphi + 1$. On prend $r = \varphi$ et $a_1 = 0$, $a_2 = \varphi$, $a_3 = \varphi^3$. Les trois différences valent

$$a_2 - a_1 = \varphi, \qquad a_3 - a_2 = \varphi(\varphi^2 - 1) = \varphi \times \varphi = \varphi^2, \qquad a_3 - a_1 = \varphi^3.$$

**Pour $n = 4$**, la fonction $x \mapsto x^3 - x - 1$ est continue, vaut $-1$ en $1$ et $5$ en $2$. D'après le théorème des valeurs intermédiaires, elle s'annule en un réel $\lambda \in \, ]1, 2[$, qui vérifie $\lambda^3 = \lambda + 1$. On prend $r = \lambda$ et $a_1 = 0$, $a_2 = \lambda$, $a_3 = \lambda^4$, $a_4 = \lambda^6$. Alors

- $a_2 - a_1 = \lambda$ ;
- $a_3 - a_2 = \lambda(\lambda^3 - 1) = \lambda \times \lambda = \lambda^2$ ;
- $a_4 - a_3 = \lambda^3(\lambda^3 - \lambda) = \lambda^3 \times 1 = \lambda^3$ ;
- $a_3 - a_1 = \lambda^4$ ;
- $a_4 - a_2 = (a_4 - a_3) + (a_3 - a_2) = \lambda^3 + \lambda^2 = \lambda^2(\lambda + 1) = \lambda^2 \times \lambda^3 = \lambda^5$ ;
- $a_4 - a_1 = \lambda^6$.

On obtient bien $\lambda, \lambda^2, \ldots, \lambda^6$. Les valeurs $2$, $3$, $4$ conviennent donc.

### Partie 2 : n ≥ 5 est impossible

Supposons qu'il existe une solution avec $n \geq 5$, et cherchons une contradiction.

**Étape 1 : deux simplifications.**

*On peut supposer $r > 1$.* Si $r = 1$, toutes les différences vaudraient $1$, alors que $a_3 - a_1 > a_2 - a_1$. Si $r < 1$, posons $s = \frac{1}{r} > 1$ et $b_i = a_i\, s^{m+1}$. Alors $b_j - b_i = r^k s^{m+1} = s^{m+1-k}$, et quand $k$ prend les valeurs $1, \ldots, m$, l'exposant $m + 1 - k$ prend les valeurs $m, \ldots, 1$. Les $b_i$ et $s$ forment donc une autre solution, avec $s > 1$.

Comme $r > 1$, on a $r < r^2 < \cdots < r^m$ : les $m$ différences sont toutes distinctes. Pour $i < j$, on note $p(i, j)$ l'entier tel que $a_j - a_i = r^{p(i,j)}$. Chaque entier de $1$ à $m$ est égal à exactement un $p(i, j)$.

*On peut supposer $a_{n-1} - a_1 > a_n - a_2$.* En effet, les nombres $-a_n < -a_{n-1} < \cdots < -a_1$ forment aussi une solution (ils ont les mêmes différences), et ce changement échange les rôles de $a_{n-1} - a_1$ et de $a_n - a_2$.

**Étape 2 : deux faits simples.**

- **(F1)** Si $i \leq i' < j' \leq j$ et $(i', j') \neq (i, j)$, alors $a_{j'} - a_{i'} < a_j - a_i$, donc $p(i', j') < p(i, j)$.
- **(F2)** Si $i < k < j$, alors $r^{p(i,j)} = r^{p(i,k)} + r^{p(k,j)}$. En divisant par $r^{p(i,j)}$ :
$$r^{-(p(i,j) - p(i,k))} + r^{-(p(i,j) - p(k,j))} = 1.$$

D'après (F1), la plus grande différence est $a_n - a_1$, donc $p(1, n) = m$. Toute autre paire $(i, j)$ vérifie $i \geq 2$ ou $j \leq n - 1$, donc sa différence est au plus $a_n - a_2$ ou au plus $a_{n-1} - a_1$. Avec la seconde simplification, la deuxième plus grande différence est $a_{n-1} - a_1$ : $p(1, n-1) = m - 1$.

**Étape 3 : les couples pivots.** On appelle *couple pivot* deux entiers $c$ et $d$ tels que $1 \leq c < d$ et $r^{-c} + r^{-d} = 1$. On dit que $c$ est son *petit élément* et $d$ son *grand élément*. D'après (F2), **pour $i < k < j$, les deux entiers $p(i,j) - p(i,k)$ et $p(i,j) - p(k,j)$, rangés dans l'ordre croissant, forment un couple pivot** (ils sont strictement positifs d'après (F1), et différents car $p(i,k) \neq p(k,j)$).

Comme $r > 1$, la fonction $x \mapsto r^{-x}$ est strictement décroissante.

- Si $(c, d)$ est un couple pivot, $d$ est déterminé par $c$, puisque $r^{-d} = 1 - r^{-c}$.
- Si $(c, d)$ et $(c', d')$ sont deux couples pivots avec $c < c'$, alors $r^{-c'} < r^{-c}$, donc $r^{-d'} = 1 - r^{-c'} > 1 - r^{-c} = r^{-d}$, et $d' < d$.
- Il n'y a qu'un nombre fini de couples pivots, car $2r^{-c} > r^{-c} + r^{-d} = 1$ impose $r^c < 2$.

Notons $(c_1, d_1), \ldots, (c_K, d_K)$ les couples pivots, rangés de sorte que $c_1 < c_2 < \cdots < c_K$. On vient de voir que $d_1 > d_2 > \cdots > d_K$, et $c_K < d_K$. Donc

$$1 \leq c_1 < c_2 < \cdots < c_K < d_K < \cdots < d_2 < d_1.$$

Deux conséquences : **tout petit élément est inférieur à tout grand élément**, et $c_i \geq i$ pour chaque $i$, donc $d_K \geq K + 1$.

**Étape 4 : il y a au moins n − 2 couples pivots.** Pour chaque $k$ de $2$ à $n - 1$, appliquons l'étape 3 à $(1, k, n)$ : les entiers $m - p(1, k)$ et $m - p(k, n)$ forment un couple pivot. Les $2(n - 2)$ paires $(1, k)$ et $(k, n)$, pour $2 \leq k \leq n - 1$, sont toutes différentes, donc les $2(n - 2)$ entiers $m - p(1,k)$ et $m - p(k,n)$ sont tous différents. On obtient ainsi $n - 2$ couples pivots différents, donc

$$K \geq n - 2 \qquad \text{et} \qquad d_K \geq K + 1 \geq n - 1.$$

**Étape 5 : la plus petite différence « non voisine ».** Une paire $(i, j)$ est dite *voisine* si $j = i + 1$ ; il y en a $n - 1$. Parmi les $n$ exposants $1, 2, \ldots, n$, au plus $n - 1$ proviennent de paires voisines. Il existe donc une paire non voisine d'exposant au plus $n$. Soit $(I, J)$ la paire non voisine d'exposant le plus petit : $p(I, J) \leq n$. Si l'on avait $J \geq I + 3$, la paire $(I, J - 1)$ serait non voisine et d'exposant plus petit d'après (F1). Donc $J = I + 2$.

Appliquons l'étape 3 à $(I, I+1, I+2)$ : on obtient un couple pivot dont le grand élément vaut

$$D = p(I, I+2) - \min\left(p(I, I+1),\, p(I+1, I+2)\right) \leq n - 1.$$

Or $D$ est l'un des $d_i$, donc $D \geq d_K \geq K + 1 \geq n - 1$. Toutes ces inégalités sont donc des égalités :

- $K = n - 2$ et $d_K = n - 1$. Les petits éléments $c_1 < \cdots < c_{n-2}$ sont strictement inférieurs à $n - 1$, donc $c_i = i$ : **les petits éléments sont $1, 2, \ldots, n - 2$**.
- $p(I, I+2) = n$. Les exposants $1, 2, \ldots, n - 1$ proviennent donc tous de paires voisines. Il y a $n - 1$ paires voisines, donc ce sont exactement elles : en particulier **$p(1, 2) \leq n - 1$**.

**Étape 6 : un exposant trop petit.** Comme $K = n - 2$, les $n - 2$ couples pivots de l'étape 4 sont tous les couples pivots. Leurs éléments, les entiers $m - p(1,k)$ et $m - p(k,n)$, contiennent donc $1, 2, \ldots, n - 2$ et $d_K = n - 1$. Autrement dit, chacun des exposants $m - 1, m - 2, \ldots, m - n + 1$ est celui d'une paire $(1, k)$ ou $(k, n)$ avec $2 \leq k \leq n - 1$, et l'exposant $m$ est celui de $(1, n)$.

Comme $n \geq 5$, la paire $(2, n - 1)$ n'est d'aucune de ces formes. Donc $p(2, n-1) \leq m - n$.

Appliquons maintenant l'étape 3 à $(1, 2, n - 1)$, en rappelant que $p(1, n - 1) = m - 1$ : les entiers $(m - 1) - p(1, 2)$ et $(m - 1) - p(2, n - 1)$ forment un couple pivot. Le second vaut au moins $(m - 1) - (m - n) = n - 1$, il est donc plus grand que tous les petits éléments : c'est le grand élément du couple. Le premier est donc un petit élément, et il vaut au plus $n - 2$ :

$$(m - 1) - p(1, 2) \leq n - 2, \qquad \text{donc} \qquad m \leq p(1, 2) + n - 1 \leq 2(n - 1).$$

Cela s'écrit $\frac{n(n-1)}{2} \leq 2(n - 1)$, c'est-à-dire $n \leq 4$. C'est une contradiction.

### Conclusion

**Les entiers cherchés sont exactement $n = 2$, $n = 3$ et $n = 4$.**

## Going further

1. Pour $n = 3$, montrez que $r = \varphi$ est le seul réel $r > 1$ possible.
2. Dans l'exemple $n = 4$, trouvez les deux couples pivots, et vérifiez sur cet exemple les conclusions de l'étape 5.
