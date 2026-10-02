---
id: "7622"
title: "Quand x² + x est une puissance parfaite"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [entiers-consecutifs, nombres-premiers-entre-eux, puissances-parfaites, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 8 (une étoile, sans solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Soit $k$ un entier avec $k \geqslant 2$.

Trouver tous les couples d'entiers relatifs $(x, y)$ tels que

$$y^k = x^2 + x .$$

## Hints

1. Factorisez le membre de droite. Que remarquez-vous sur les deux facteurs ?
2. Deux entiers consécutifs n'ont jamais de facteur premier commun. Pourquoi ?
3. Si un produit de deux entiers **positifs et premiers entre eux** est une puissance $k$-ième, que peut-on dire de chacun des deux facteurs ? Regardez leurs décompositions en facteurs premiers.
4. Vous arriverez à une équation du type $b^k - a^k = 1$ avec $b > a \geqslant 1$. Pourquoi est-ce impossible dès que $k \geqslant 2$ ?
5. N'oubliez pas les valeurs de $x$ pour lesquelles le produit est nul.

## Solution

**Réponse : les seuls couples sont $(0, 0)$ et $(-1, 0)$.**

**Vérification préalable.** Pour $x = 0$ : $x^2 + x = 0$, donc $y^k = 0$, donc $y = 0$. Pour $x = -1$ : $x^2 + x = 1 - 1 = 0$, donc là encore $y = 0$. Ces deux couples conviennent.

Montrons qu'il n'y en a pas d'autres. Supposons donc $x \neq 0$ et $x \neq -1$, et cherchons une contradiction.

**Étape 1 : le produit est strictement positif.**

$$x^2 + x = x(x+1) .$$

Si $x \geqslant 1$, les deux facteurs sont strictement positifs. Si $x \leqslant -2$, les deux facteurs sont strictement négatifs. Dans les deux cas le produit est **strictement positif**.

Posons $c = |y|$. Alors $c^k = |y^k| = y^k$ si $k$ est pair, et si $k$ est impair alors $y^k > 0$ impose $y > 0$, donc $y = c$. Dans tous les cas

$$c^k = x(x+1), \qquad c \geqslant 1 .$$

**Étape 2 : se ramener à deux entiers positifs consécutifs.**

- Si $x \geqslant 1$, posons $m = x + 1$, de sorte que $x(x+1) = (m-1)\,m$ avec $m \geqslant 2$.
- Si $x \leqslant -2$, posons $m = -x \geqslant 2$ ; alors $x(x+1) = (-m)(-m+1) = m(m-1)$.

Dans les deux cas, on obtient deux entiers **positifs consécutifs** $m - 1$ et $m$, avec $m \geqslant 2$, tels que

$$(m-1) \, m = c^k .$$

**Étape 3 : deux entiers consécutifs sont premiers entre eux.**

Si un entier $d \geqslant 1$ divise $m - 1$ et $m$, il divise leur différence, qui vaut $1$ : donc $d = 1$. Ainsi $m-1$ et $m$ n'ont aucun facteur premier commun.

**Étape 4 : chacun des deux facteurs est une puissance $k$-ième.**

Soit $p$ un nombre premier, et soit $\alpha$ son exposant dans la décomposition de $c^k$. Comme $c^k$ est une puissance $k$-ième, $\alpha$ est un multiple de $k$.

Or $c^k = (m-1)\,m$, et $p$ ne peut apparaître que dans **un seul** des deux facteurs, puisqu'ils sont premiers entre eux. L'exposant de $p$ dans ce facteur vaut donc $\alpha$, un multiple de $k$.

Cela vaut pour chaque nombre premier : tous les exposants de $m - 1$ et tous ceux de $m$ sont des multiples de $k$. Il existe donc des entiers $a \geqslant 0$ et $b \geqslant 1$ tels que

$$m - 1 = a^k \qquad \text{et} \qquad m = b^k .$$

**Étape 5 : la contradiction.**

On a alors

$$b^k - a^k = 1 .$$

Comme $m \geqslant 2$, on a $m - 1 \geqslant 1$, donc $a \geqslant 1$. Et $b^k = m > m - 1 = a^k$ donne $b > a$, donc $b \geqslant a + 1 \geqslant 2$.

Utilisons maintenant la factorisation

$$b^k - a^k = (b - a)\left(b^{k-1} + b^{k-2}a + \cdots + b\,a^{k-2} + a^{k-1}\right) .$$

Le premier facteur vaut au moins $1$. Le second est une somme de $k$ termes, tous supérieurs ou égaux à $1$ puisque $a \geqslant 1$ et $b \geqslant 2$ ; son premier terme vaut même $b^{k-1} \geqslant 2$. Cette somme vaut donc au moins $k + 1 \geqslant 3$, et par conséquent

$$b^k - a^k \geqslant 3 .$$

C'est incompatible avec $b^k - a^k = 1$.

**Conclusion.** Les seuls couples d'entiers solutions sont

$$(x, y) = (0, 0) \qquad \text{et} \qquad (x, y) = (-1, 0) .$$

## Going further

Autrement dit : **le produit de deux entiers consécutifs n'est jamais une puissance parfaite**, sauf quand il est nul. Le résultat est plus frappant sous cette forme : $2 \times 3 = 6$, $3 \times 4 = 12$, $4 \times 5 = 20$, … aucun de ces nombres n'est un carré, ni un cube, ni quoi que ce soit d'autre.

L'argument de l'étape 4 est à connaître par cœur, car il resservira souvent :

> Si $u$ et $v$ sont des entiers **positifs et premiers entre eux** et si $uv$ est une puissance $k$-ième, alors $u$ et $v$ sont chacun une puissance $k$-ième.

Attention, l'hypothèse « premiers entre eux » est indispensable : $2 \times 8 = 16$ est un carré, sans que $2$ ni $8$ en soit un.

Et si l'on autorisait $k = 1$ ? L'équation devient $y = x^2 + x$, qui a évidemment une infinité de solutions. C'est pourquoi l'énoncé impose $k \geqslant 2$.
