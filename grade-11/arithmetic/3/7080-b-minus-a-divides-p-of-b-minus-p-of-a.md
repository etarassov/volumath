---
id: "7080"
title: "b − a divise P(b) − P(a)"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [polynome, divisibilite, identite remarquable, coefficients entiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des avancés"
  reference: "stage_junior_2011.pdf, « Arithmétique », TD du groupe des avancés, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

On appelle *polynôme à coefficients entiers* une expression de la forme

$$P(x) = c_n x^n + c_{n-1} x^{n-1} + \ldots + c_1 x + c_0,$$

où $c_0, c_1, \ldots, c_n$ sont des entiers relatifs. Par exemple $P(x) = 3x^4 - x^2 + 7$.

Démontrer que pour tous entiers relatifs $a$ et $b$, le nombre $b - a$ divise $P(b) - P(a)$.

## Hints

1. Commence par le cas le plus simple de tous : $P(x) = x$. Puis $P(x) = x^2$. Que vaut $b^2 - a^2$ ?
2. Essaie maintenant $P(x) = x^3$. Développe $(b - a)(b^2 + ab + a^2)$ et regarde ce qui reste.
3. La même chose marche pour toute puissance : $b^k - a^k$ se factorise par $b - a$. Écris la factorisation pour $k$ quelconque et vérifie-la en développant, les termes du milieu se détruisent deux à deux.
4. Un polynôme est une somme de termes $c_k x^k$. Écris $P(b) - P(a)$ comme une somme, terme par terme. Que devient le terme constant $c_0$ ?
5. Chaque morceau de cette somme est un multiple de $b - a$. Une somme de multiples de $b - a$ est encore un multiple de $b - a$.

## Solution

**L'identité de base.** Pour tout entier $k \geq 1$ et tous nombres $a$ et $b$,

$$(\star) \qquad b^k - a^k = (b - a)\left(b^{k-1} + b^{k-2}a + \ldots + b\,a^{k-2} + a^{k-1}\right).$$

Vérifions-la en développant le membre de droite. En multipliant la parenthèse par $b$, on obtient

$$b^k + b^{k-1}a + \ldots + b^2 a^{k-2} + b\,a^{k-1},$$

et en la multipliant par $a$, on obtient

$$b^{k-1}a + b^{k-2}a^2 + \ldots + b\,a^{k-1} + a^k.$$

Ces deux sommes ont exactement les mêmes termes, sauf le premier de l'une et le dernier de l'autre. En soustrayant, tout se détruit sauf $b^k$ et $-a^k$, ce qui donne bien $(\star)$.

Pour $k = 2$ cela redonne $b^2 - a^2 = (b-a)(b+a)$, et pour $k = 3$ cela donne $b^3 - a^3 = (b-a)(b^2+ab+a^2)$.

**Le cas d'une seule puissance.** Si $a$ et $b$ sont des entiers, la parenthèse de $(\star)$ est une somme de produits d'entiers, donc un entier. Notons-la $S_k$. On a donc

$$b^k - a^k = (b - a)\,S_k, \qquad S_k \in \mathbb{Z},$$

autrement dit $b - a$ divise $b^k - a^k$.

**Le cas général.** Écrivons $P(x) = c_n x^n + \ldots + c_1 x + c_0$ et calculons la différence :

$$P(b) - P(a) = \left(c_n b^n + \ldots + c_1 b + c_0\right) - \left(c_n a^n + \ldots + c_1 a + c_0\right).$$

Les deux termes constants $c_0$ se simplifient. En regroupant les termes de même degré, il reste

$$P(b) - P(a) = c_n\left(b^n - a^n\right) + c_{n-1}\left(b^{n-1} - a^{n-1}\right) + \ldots + c_1\left(b - a\right).$$

Chacune des parenthèses est un multiple de $b - a$ d'après ce qui précède. En remplaçant chaque $b^k - a^k$ par $(b-a)S_k$ et en mettant $b - a$ en facteur :

$$P(b) - P(a) = (b - a)\left(c_n S_n + c_{n-1} S_{n-1} + \ldots + c_1 S_1\right).$$

Le facteur de droite est un entier, puisque tous les $c_k$ et tous les $S_k$ sont entiers.

**Conclusion.** Pour tous entiers $a$ et $b$, le nombre $b - a$ divise $P(b) - P(a)$.

## Going further

Ce résultat sert surtout à montrer qu'un polynôme *ne peut pas* prendre certaines valeurs.

Existe-t-il un polynôme $P$ à coefficients entiers tel que $P(1) = 2$ et $P(3) = 5$ ?

Non. Si un tel polynôme existait, $3 - 1 = 2$ devrait diviser $5 - 2 = 3$, ce qui est faux.

En revanche, avec $P(1) = 2$ et $P(3) = 6$, il n'y a plus d'obstacle : $2$ divise bien $4$. Et de fait $P(x) = 2x$ convient.
