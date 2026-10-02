---
id: "11658"
title: "Une fonction de k variables qui n'en utilise qu'une"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [fonctions, recurrence, bijection, ensembles finis, principe des tiroirs, raisonnement par l'absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 5 (pot-pourri)"
  reference: "2019-02_envoi-5.pdf, exercices Seniors, exercice 9 (l'en-tête du document porte « Envoi 4 : pot-pourri ») ; corrigé juge_Corrige-Envoi-5-2019.pdf (récurrence sur k ; quelques coquilles dans le corrigé : β(a₂, …, aₙ) pour β(a₂, …, aₖ), la fonction auxiliaire appelée tantôt f′ tantôt g, et un signe = manquant)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/02/envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-02_envoi-5.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier, soit $S = \{1, 2, \ldots, n\}$, et soit $k \geqslant 1$ un entier. On note $S^k$ l'ensemble des $k$-uplets $(x_1, \ldots, x_k)$ formés d'éléments de $S$.

On dit que deux $k$-uplets $x = (x_1, \ldots, x_k)$ et $y = (y_1, \ldots, y_k)$ sont **totalement différents** si $x_i \neq y_i$ pour tout $i$ compris entre $1$ et $k$.

Soit $f$ une fonction de $S^k$ dans $S$ telle que deux $k$-uplets totalement différents ont toujours des images différentes par $f$.

Montrer qu'il existe un indice $\ell$ compris entre $1$ et $k$ et une fonction $g$ de $S$ dans $S$ tels que, pour tous $x_1, \ldots, x_k$ dans $S$,

$$f(x_1, \ldots, x_k) = g(x_\ell).$$

## Hints

1. Raisonne par récurrence sur $k$. Pour $k \geqslant 2$, fixe les $k - 1$ dernières coordonnées $u = (u_2, \ldots, u_k)$ et regarde la fonction $a \mapsto f(a, u_2, \ldots, u_k)$, de $S$ dans $S$.
2. Une fonction de $S$ dans $S$ qui prend $n$ valeurs différentes prend toutes les valeurs de $S$, chacune une fois.
3. Premier cas : pour un certain $u$, la fonction $a \mapsto f(a, u)$ prend $n$ valeurs différentes. Montre que $f(b, v) = f(b, u)$ dès que $v$ est totalement différent de $u$. Puis utilise $n \geqslant 3$ pour passer d'un $u$ à n'importe quel $w$ en deux étapes.
4. Second cas : pour chaque $u$, il existe deux éléments différents $\alpha(u)$ et $\beta(u)$ de $S$ qui ont la même image. Pose $F(u) = f(\alpha(u), u)$ et montre que $F$ vérifie l'hypothèse de l'énoncé avec $k - 1$ au lieu de $k$.

## Solution

Dans toute la solution, une fonction de $S$ dans $S$ est dite **injective** si elle prend $n$ valeurs différentes. Comme $S$ n'a que $n$ éléments, une fonction injective de $S$ dans $S$ prend alors chaque valeur de $S$ exactement une fois.

On écrit $(a, u)$ pour le $k$-uplet $(a, u_2, \ldots, u_k)$, où $a \in S$ et $u = (u_2, \ldots, u_k)$. On dit qu'une fonction de $S^k$ dans $S$ vérifie la propriété $(\mathrm{H})$ si deux $k$-uplets totalement différents ont toujours des images différentes.

On démontre par récurrence sur $k \geqslant 1$ la propriété $\mathcal{P}(k)$ : « toute fonction de $S^k$ dans $S$ qui vérifie $(\mathrm{H})$ s'écrit $x \mapsto g(x_\ell)$ ».

**Initialisation.** Pour $k = 1$, on prend $\ell = 1$ et $g = f$.

**Hérédité.** Soit $k \geqslant 2$ tel que $\mathcal{P}(k - 1)$ soit vraie, et soit $f$ une fonction de $S^k$ dans $S$ qui vérifie $(\mathrm{H})$. Pour $u \in S^{k-1}$, on note $\varphi_u$ la fonction de $S$ dans $S$ définie par $\varphi_u(a) = f(a, u)$.

**Premier cas : il existe $u$ tel que $\varphi_u$ soit injective.**

*Étape 1.* Soit $v \in S^{k-1}$ totalement différent de $u$. Montrons que $\varphi_v = \varphi_u$. Soit $b \in S$. Pour tout $a \neq b$, les $k$-uplets $(a, u)$ et $(b, v)$ sont totalement différents, donc $f(b, v) \neq \varphi_u(a)$. Or $\varphi_u$ prend toutes les valeurs de $S$ : il existe $c$ tel que $f(b, v) = \varphi_u(c)$, et ce $c$ ne peut être que $b$. Donc $\varphi_v(b) = \varphi_u(b)$ pour tout $b$. En particulier, $\varphi_v$ est elle aussi injective.

*Étape 2.* Soit $w \in S^{k-1}$ quelconque. Comme $n \geqslant 3$, on peut choisir pour chaque $i$ un élément $v_i$ de $S$ différent de $u_i$ et de $w_i$. Le $(k-1)$-uplet $v = (v_2, \ldots, v_k)$ est totalement différent de $u$, donc $\varphi_v = \varphi_u$ d'après l'étape 1, et $\varphi_v$ est injective. Il est aussi totalement différent de $w$, donc l'étape 1, appliquée cette fois à $v$, donne $\varphi_w = \varphi_v = \varphi_u$.

Ainsi $f(a, w) = \varphi_u(a)$ pour tous $a$ et $w$ : la conclusion est vraie avec $\ell = 1$ et $g = \varphi_u$.

**Second cas : aucune fonction $\varphi_u$ n'est injective.** Pour chaque $u \in S^{k-1}$, on choisit deux éléments **différents** $\alpha(u)$ et $\beta(u)$ de $S$ tels que $f(\alpha(u), u) = f(\beta(u), u)$, et l'on pose

$$F(u) = f(\alpha(u), u) = f(\beta(u), u).$$

*Étape 3 : $F$ vérifie $(\mathrm{H})$.* Soient $u$ et $v$ deux $(k-1)$-uplets totalement différents.

- Si $\alpha(u) \neq \alpha(v)$, les $k$-uplets $(\alpha(u), u)$ et $(\alpha(v), v)$ sont totalement différents, donc $F(u) \neq F(v)$.
- Si $\alpha(u) = \alpha(v)$, alors $\alpha(u) \neq \beta(v)$, puisque $\beta(v) \neq \alpha(v)$. Les $k$-uplets $(\alpha(u), u)$ et $(\beta(v), v)$ sont totalement différents, donc $F(u) = f(\alpha(u), u) \neq f(\beta(v), v) = F(v)$.

D'après $\mathcal{P}(k - 1)$, il existe un indice $\ell$ entre $2$ et $k$ et une fonction $h$ de $S$ dans $S$ tels que $F(u) = h(u_\ell)$ pour tout $u = (u_2, \ldots, u_k)$.

*Étape 4 : $h$ est injective.* Si $a \neq b$, les $(k-1)$-uplets $(a, \ldots, a)$ et $(b, \ldots, b)$ sont totalement différents, donc $h(a) = F(a, \ldots, a) \neq F(b, \ldots, b) = h(b)$. Ainsi $h$ prend chaque valeur de $S$ exactement une fois.

*Étape 5 : $f(x) = h(x_\ell)$ pour tout $x \in S^k$.* Supposons au contraire qu'il existe $x = (x_1, \ldots, x_k)$ tel que $f(x) \neq h(x_\ell)$. Comme $h$ prend toutes les valeurs, il existe $c \in S$ tel que $h(c) = f(x)$, et $c \neq x_\ell$. On construit $v = (v_2, \ldots, v_k)$ en posant $v_\ell = c$, et en choisissant pour chaque autre indice $i$ un élément $v_i \neq x_i$. Ainsi $v_i \neq x_i$ pour tout $i$ entre $2$ et $k$.

On a $f(\alpha(v), v) = F(v) = h(c) = f(x)$. Si l'on avait $\alpha(v) \neq x_1$, les $k$-uplets $(\alpha(v), v)$ et $x$ seraient totalement différents et auraient la même image, ce qui contredit $(\mathrm{H})$. Donc $\alpha(v) = x_1$. Exactement de la même façon, $f(\beta(v), v) = f(x)$ donne $\beta(v) = x_1$. Mais alors $\alpha(v) = \beta(v)$, ce qui contredit leur choix.

Donc $f(x) = h(x_\ell)$ pour tout $x$, et la conclusion est vraie avec cet $\ell$ et $g = h$.

Dans les deux cas, $\mathcal{P}(k)$ est vraie, ce qui achève la récurrence.

**Conclusion : il existe $\ell$ et $g$ tels que $f(x_1, \ldots, x_k) = g(x_\ell)$ pour tous $x_1, \ldots, x_k$ dans $S$.**

## Going further

La réciproque est vraie si $g$ est injective : la fonction $x \mapsto g(x_\ell)$ vérifie alors l'hypothèse, puisque deux $k$-uplets totalement différents ont des coordonnées d'indice $\ell$ différentes. Et l'argument de l'étape 4 montre que $g$ est forcément injective. Les fonctions qui conviennent sont donc exactement les $x \mapsto g(x_\ell)$ où $g$ prend chaque valeur de $S$ une fois.

L'hypothèse $n \geqslant 3$ est indispensable. Avec $S = \{1, 2\}$ et $k = 3$, prenons pour $f(x_1, x_2, x_3)$ la valeur qui apparaît au moins deux fois parmi $x_1, x_2, x_3$. Deux triplets totalement différents s'obtiennent l'un de l'autre en échangeant partout $1$ et $2$, donc leurs valeurs majoritaires sont différentes. Pourtant $f$ ne s'écrit pas $g(x_\ell)$, car chacune de ses trois variables compte : $f(1, 1, 2) = 1$ et $f(2, 1, 2) = 2$ ne diffèrent que par $x_1$, $f(1, 1, 2) = 1$ et $f(1, 2, 2) = 2$ ne diffèrent que par $x_2$, et $f(1, 2, 1) = 1$ et $f(1, 2, 2) = 2$ ne diffèrent que par $x_3$. Un ordinateur trouve d'ailleurs $16$ fonctions de ce type pour $n = 2$ et $k = 3$, dont seulement $6$ sont de la forme $g(x_\ell)$.
