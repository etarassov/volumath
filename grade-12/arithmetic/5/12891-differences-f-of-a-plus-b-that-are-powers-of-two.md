---
id: "12891"
title: "Des différences f(a + b) − f(a) − f(b) qui sont des puissances de 2"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 90
tags: [equation-fonctionnelle, puissances-de-2, recurrence, construction, partie-entiere]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 2 avril 2025"
  reference: "2025-10_Sujet-Test-4-2024-2025.pdf, test senior, exercice 6 ; corrigé 2025-10_Corrige-Test-4-2024-2025.pdf (construction plus simple pour deux valeurs, avec le quotient par 2 ; analyse de la solution alternative n° 1 ; dans la formule (⋆) du corrigé, la somme doit s'arrêter à e(n − 1, 1) et non à e(1, n))"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-4-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-4-2024-2025.pdf"
---

## Statement

On note $\mathbb{N}^*$ l'ensemble des entiers strictement positifs. Déterminer tous les ensembles $S$ formés de puissances de $2$ (c'est-à-dire de nombres parmi $2^0, 2^1, 2^2, \ldots$) pour lesquels il existe une fonction $f : \mathbb{N}^* \to \mathbb{N}^*$ telle que

$$S = \{ f(a + b) - f(a) - f(b) \;:\; a, b \in \mathbb{N}^* \}.$$

Autrement dit, quand $a$ et $b$ parcourent $\mathbb{N}^*$, le nombre $f(a + b) - f(a) - f(b)$ est toujours une puissance de $2$, et l'ensemble de ses valeurs est exactement $S$.

## Hints

1. Trouvez une fonction affine $f(x) = cx + d$ pour laquelle $S = \{1\}$, puis $S = \{2^k\}$.
2. Pour obtenir deux valeurs, ajoutez à cette fonction affine un terme qui dépend du quotient de $x$ par $2$. Que vaut ce terme quand $a$ et $b$ sont tous les deux impairs ?
3. Montrez que si $p$, $q$, $r$, $s$ sont des puissances de $2$ telles que $p + q = r + s$, alors $\{p, q\} = \{r, s\}$.
4. Posez $u_n = f(n + 1) - f(n) - f(1)$. Exprimez $f(n)$ à l'aide de $f(1)$ et des $u_i$, puis $f(a + b) - f(a) - f(b)$ à l'aide des $u_i$ seulement.
5. Montrez par récurrence sur $k$ qu'en retirant un terme bien choisi de la liste $u_n, u_{n+1}, \ldots, u_{n+k}$, il reste exactement les nombres $u_1, \ldots, u_k$, dans un autre ordre peut-être.

## Solution

La réponse : **les ensembles qui conviennent sont exactement les ensembles formés d'une ou de deux puissances de $2$.**

Pour une fonction $f$ donnée et des entiers $a, b \geq 1$, on note

$$g(a, b) = f(a + b) - f(a) - f(b).$$

On a $g(a, b) = g(b, a)$, et $S$ est l'ensemble des valeurs prises par $g$.

### Les ensembles à un élément conviennent

Soit $S = \{2^k\}$ avec $k \geq 0$. On pose $f(x) = 2^{k+1} x - 2^k$. Pour $x \geq 1$, on a $f(x) \geq 2^{k+1} - 2^k = 2^k \geq 1$, donc $f$ va bien de $\mathbb{N}^*$ dans $\mathbb{N}^*$. Et pour tous $a, b \geq 1$,

$$g(a, b) = \left(2^{k+1}(a + b) - 2^k\right) - \left(2^{k+1} a - 2^k\right) - \left(2^{k+1} b - 2^k\right) = 2^k.$$

### Les ensembles à deux éléments conviennent

Soit $S = \{2^k, 2^\ell\}$ avec $0 \leq k < \ell$. Pour un entier $x \geq 1$, on note $q(x)$ le quotient de la division euclidienne de $x$ par $2$ (c'est la partie entière de $x/2$). On pose

$$f(x) = 2^{k+1} x - 2^k + \left(2^\ell - 2^k\right) q(x).$$

Comme $q(x) \geq 0$ et $2^\ell - 2^k > 0$, on a encore $f(x) \geq 2^k \geq 1$. La partie affine donne $2^k$ comme plus haut, donc

$$g(a, b) = 2^k + \left(2^\ell - 2^k\right) \left( q(a + b) - q(a) - q(b) \right).$$

Calculons $q(a + b) - q(a) - q(b)$.

- Si $a$ est pair, $a = 2m$, alors $a + b = 2m + b$ et $q(a + b) = m + q(b)$. La différence vaut $0$. De même si $b$ est pair.
- Si $a = 2m + 1$ et $b = 2p + 1$ sont impairs, alors $a + b = 2(m + p + 1)$, et la différence vaut $(m + p + 1) - m - p = 1$.

Donc $g(a, b) = 2^\ell$ si $a$ et $b$ sont tous les deux impairs, et $g(a, b) = 2^k$ sinon. Les deux valeurs sont atteintes, par exemple $g(1, 1) = 2^\ell$ et $g(1, 2) = 2^k$. L'ensemble des valeurs est bien $\{2^k, 2^\ell\}$.

Il reste à montrer qu'**aucun autre ensemble ne convient**. L'ensemble $S$ n'est pas vide, puisqu'il contient $g(1, 1)$. On fixe donc une fonction $f$ qui convient pour un ensemble $S$, et on va montrer que $S$ a au plus deux éléments.

### Un lemme sur les puissances de 2

**Lemme 1.** Si $p$, $q$, $r$, $s$ sont des puissances de $2$ et $p + q = r + s$, alors $\{p, q\} = \{r, s\}$ : les deux paires sont les mêmes, à l'ordre près.

*Preuve.* Quitte à échanger les noms, on suppose $p \leq q$, $r \leq s$ et $p \leq r$. Supposons $p < r$. Les puissances de $2$ plus grandes que $p$ sont des multiples de $2p$, donc $r$ et $s$ sont des multiples de $2p$.

- Si $q = p$, alors $r + s = 2p$, alors que $r + s \geq 2p + 2p = 4p$. C'est impossible.
- Si $q > p$, alors $q$ est aussi un multiple de $2p$, donc $p = r + s - q$ est un multiple de $2p$, ce qui est impossible puisque $0 < p < 2p$.

Donc $p = r$, puis $q = s$. $\square$

### La suite u

Pour $n \geq 1$, on pose $u_n = g(n, 1) = f(n + 1) - f(n) - f(1)$. C'est une puissance de $2$. On a $f(m + 1) - f(m) = f(1) + u_m$ pour tout $m \geq 1$. En additionnant ces égalités pour $m = 1, \ldots, n - 1$, on obtient

$$f(n) = n\,f(1) + u_1 + u_2 + \cdots + u_{n-1} \qquad \text{pour tout } n \geq 1,$$

la somme étant vide pour $n = 1$. Alors, pour tous $a, b \geq 1$,

$$g(a, b) = (u_1 + \cdots + u_{a+b-1}) - (u_1 + \cdots + u_{a-1}) - (u_1 + \cdots + u_{b-1}),$$

car les termes en $f(1)$ s'éliminent : $(a + b) f(1) - a f(1) - b f(1) = 0$. Il reste

$$u_a + u_{a+1} + \cdots + u_{a+b-1} = g(a, b) + u_1 + u_2 + \cdots + u_{b-1}. \qquad (\star)$$

À gauche, il y a $b$ termes, et à droite aussi. Mais attention : deux listes de puissances de $2$ de même longueur peuvent avoir la même somme sans être égales, par exemple $1 + 1 + 4 = 2 + 2 + 2$. Le lemme 1 ne s'applique qu'à deux termes, et c'est pourquoi on avance par récurrence.

### Le lemme principal

Dans la suite, deux listes sont **égales à l'ordre près** si elles contiennent les mêmes nombres, chacun le même nombre de fois.

**Lemme 2.** Soit $n \geq 1$. Pour tout entier $k \geq 0$, on peut retirer de la liste $(u_n, u_{n+1}, \ldots, u_{n+k})$, qui a $k + 1$ termes, un terme égal à $g(n, k + 1)$, de sorte que les $k$ termes restants soient égaux, à l'ordre près, à $(u_1, u_2, \ldots, u_k)$.

*Preuve.* On fixe $n$ et on raisonne par récurrence sur $k$.

**Initialisation.** Pour $k = 0$, la liste est $(u_n)$, et $u_n = g(n, 1)$. On retire ce terme, il reste la liste vide, qui est bien $(u_1, \ldots, u_0)$.

**Hérédité.** Supposons le résultat vrai pour un entier $k \geq 0$ : la liste $(u_n, \ldots, u_{n+k})$ est formée, à l'ordre près, de $u_1, \ldots, u_k$ et d'un terme $t = g(n, k + 1)$. En particulier

$$u_n + \cdots + u_{n+k} = u_1 + \cdots + u_k + t.$$

La formule $(\star)$ avec $a = n$ et $b = k + 2$ donne

$$u_n + \cdots + u_{n+k} + u_{n+k+1} = g(n, k + 2) + u_1 + \cdots + u_k + u_{k+1}.$$

En remplaçant et en simplifiant par $u_1 + \cdots + u_k$, on obtient

$$t + u_{n+k+1} = g(n, k + 2) + u_{k+1}.$$

Ce sont quatre puissances de $2$, donc d'après le lemme 1, $\{t, u_{n+k+1}\} = \{g(n, k + 2), u_{k+1}\}$. Deux cas se présentent.

- Si $u_{k+1} = t$ et $g(n, k + 2) = u_{n+k+1}$ : la liste $(u_n, \ldots, u_{n+k+1})$ est formée de $u_1, \ldots, u_k$, de $t = u_{k+1}$ et de $u_{n+k+1}$. On retire le terme $u_{n+k+1}$, qui vaut $g(n, k + 2)$, et il reste $u_1, \ldots, u_{k+1}$.
- Si $u_{k+1} = u_{n+k+1}$ et $g(n, k + 2) = t$ : la liste est formée de $u_1, \ldots, u_k$, de $t$ et de $u_{n+k+1} = u_{k+1}$. On retire le terme $t$, qui vaut $g(n, k + 2)$, et il reste $u_1, \ldots, u_{k+1}$.

Dans les deux cas, le résultat est vrai au rang $k + 1$. $\square$

### S est l'ensemble des valeurs de la suite u

Chaque $u_n = g(n, 1)$ est dans $S$. Inversement, soit $a, b \geq 1$. Le lemme 2 avec $n = a$ et $k = b - 1$ montre que $g(a, b)$ est égal à l'un des termes $u_a, \ldots, u_{a+b-1}$. Donc toute valeur de $g$ est une valeur de la suite $u$.

Ainsi **$S$ est exactement l'ensemble des valeurs prises par la suite $u$.** Il reste à montrer que cette suite prend au plus deux valeurs.

### La suite u prend au plus deux valeurs

Notons $x = u_1$. Si la suite est constante, elle prend une seule valeur. Sinon, soit $k$ le plus petit indice tel que $u_k \neq x$, et notons $y = u_k$. On a donc $k \geq 2$ et

$$u_1 = u_2 = \cdots = u_{k-1} = x.$$

Supposons, par l'absurde, qu'il existe un indice $\ell$ tel que $z = u_\ell$ est différent de $x$ et de $y$. Alors $\ell > k$, car tous les termes d'indice au plus $k$ valent $x$ ou $y$.

**Avant $u_\ell$.** On applique le lemme 2 avec $n = \ell - k + 1 \geq 1$ et $k - 1$ à la place de $k$ : en retirant un terme de la liste $(u_{\ell-k+1}, \ldots, u_{\ell-1}, u_\ell)$, qui a $k$ termes, il reste $u_1, \ldots, u_{k-1}$, c'est-à-dire $k - 1$ fois le nombre $x$. Comme $u_\ell = z \neq x$, le terme retiré est forcément $u_\ell$, et donc

$$u_{\ell-k+1} = \cdots = u_{\ell-1} = x.$$

En particulier $u_{\ell-1} = x$, puisque $k \geq 2$.

**Après $u_\ell$.** On applique le lemme 2 avec $n = \ell$ et $k - 1$ à la place de $k$ : en retirant un terme de $(u_\ell, u_{\ell+1}, \ldots, u_{\ell+k-1})$, il reste $k - 1$ fois $x$. Pour la même raison, le terme retiré est $u_\ell$, et

$$u_{\ell+1} = \cdots = u_{\ell+k-1} = x.$$

**La contradiction.** On applique enfin le lemme 2 avec $n = \ell - 1$ et $k$ : en retirant un terme de la liste $(u_{\ell-1}, u_\ell, \ldots, u_{\ell+k-1})$, il doit rester $u_1, \ldots, u_k$, qui contient le nombre $y$. Or cette liste est formée de $u_\ell = z$ et de $k$ termes égaux à $x$ : elle ne contient pas $y$, puisque $z \neq y$ et $x \neq y$. C'est une contradiction.

Donc la suite $u$ ne prend que les valeurs $x$ et $y$.

### Conclusion

L'ensemble $S$ est l'ensemble des valeurs de la suite $u$, qui en prend une ou deux. Donc $S$ a un ou deux éléments, et on a vu que tous ces ensembles conviennent.

**Les ensembles $S$ qui conviennent sont exactement les ensembles formés d'une seule puissance de $2$ ou de deux puissances de $2$ distinctes.**

## Going further

1. Montrez que les fonctions $f$ pour lesquelles $S = \{1\}$ sont exactement les fonctions $f(x) = cx - 1$, où $c \geq 2$ est un entier. (Que vaut la suite $u$ ?)
2. Peut-on avoir $u_1 = 1$, $u_2 = 2$ et $u_3 = 2$ ? Utilisez le lemme 2 avec $n = 2$ et $k = 1$.
3. Pour $S = \{1, 2\}$, la construction de la solution donne la suite $u = 2, 1, 2, 1, \ldots$ Trouvez une fonction $f$ pour laquelle la suite $u$ commence par $1, 2, 1, 2$, puis une pour laquelle elle commence par $1, 1, 2$.
