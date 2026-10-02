---
id: "10636"
title: "Les intervalles fantabuleux"
grade: 12
theme: algebra
difficulty: 5
duration_min: 75
tags: [polynome, racines, inegalite, derivee, valeurs-intermediaires, passage-a-la-limite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 2 (algèbre)"
  reference: "2021-12_Sujet-envoi-2.pdf, Exercices Seniors, exercice 18 ; corrigé 2022-01_corrige-envoi-2.pdf. Le calcul de P'(−1) est mal recopié dans le corrigé, mais le résultat d(a − 1) est juste. La solution ci-dessous remplace l'inégalité arithmético-géométrique pondérée du corrigé par une somme de produits positifs."
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-12_Sujet-envoi-2.pdf"
---

## Statement

Soit $d \geqslant 1$ un entier. Soit $I = ]a, b[$ un intervalle ouvert, avec $a < b$ ; sa longueur est $b - a$. On dit que $I$ est **fantabuleux** si, pour tous réels $c_0, c_1, \ldots, c_{2d-1}$ appartenant à $I$, le polynôme

$$P(x) = x^{2d} + c_{2d-1}x^{2d-1} + \cdots + c_1 x + c_0$$

n'a aucune racine réelle.

Déterminer la plus grande longueur possible d'un intervalle fantabuleux, et tous les intervalles fantabuleux de cette longueur.

## Hints

1. Un polynôme de la forme ci-dessus tend vers $+\infty$ en $+\infty$. Montre qu'il n'a aucune racine réelle si et seulement s'il est strictement positif sur $\mathbb{R}$.
2. Regarde la valeur en $x = -1$. Prends tous les coefficients de rang pair égaux à un nombre $u$ de $I$, et tous ceux de rang impair égaux à un nombre $v$ de $I$, avec $u < v$. Déduis-en une borne sur la longueur de $I$.
3. Si $I = ]a, a + \frac{1}{d}[$ est fantabuleux, fais tendre $u$ vers $a$ et $v$ vers $a + \frac{1}{d}$. Le polynôme limite est positif ou nul et s'annule en $-1$. Que vaut sa dérivée en $-1$ ?
4. Pour montrer que $]1, 1 + \frac{1}{d}[$ convient, il faut prouver que $d\,(1 + t^2 + \cdots + t^{2d}) \geqslant (d + 1)(t + t^3 + \cdots + t^{2d-1})$ pour $t > 0$. Écris la différence comme une somme de termes positifs, du type $t^{2i}(1 - t)^2$ et $(1 - t^{2i+1})(1 - t^{2d-2i-1})$.

## Solution

**Réponse.** La plus grande longueur est $\frac{1}{d}$, et le seul intervalle fantabuleux de cette longueur est $]1, 1 + \tfrac{1}{d}[$.

**Étape 1. Pas de racine réelle, c'est être strictement positif.**

Soit $P$ un polynôme de la forme de l'énoncé. Si $P(x) > 0$ pour tout $x$, il n'a évidemment pas de racine. Réciproquement, supposons $P(r) \leqslant 0$ pour un réel $r$. Comme le terme de plus haut degré est $x^{2d}$, $P(x)$ tend vers $+\infty$ quand $x$ tend vers $+\infty$ : il existe donc $s > r$ tel que $P(s) > 0$. La fonction $P$ est continue, donc, par le théorème des valeurs intermédiaires, elle s'annule entre $r$ et $s$. Ainsi : **$P$ n'a pas de racine réelle si et seulement si $P(x) > 0$ pour tout réel $x$.**

**Étape 2. Un intervalle fantabuleux a une longueur au plus $\frac{1}{d}$.**

Soit $I = ]a, b[$ fantabuleux, et soient $u < v$ deux nombres de $I$. Prenons $c_i = u$ pour les $d$ indices pairs $i = 0, 2, \ldots, 2d - 2$, et $c_i = v$ pour les $d$ indices impairs $i = 1, 3, \ldots, 2d - 1$. En $x = -1$, une puissance paire vaut $1$ et une puissance impaire vaut $-1$, donc

$$P(-1) = 1 + du - dv$$

Par l'étape 1, $P(-1) > 0$, c'est-à-dire $v - u < \frac{1}{d}$. C'est vrai pour tous $u < v$ dans $]a, b[$. En prenant $u$ aussi proche de $a$ et $v$ aussi proche de $b$ qu'on veut, on obtient $b - a \leqslant \frac{1}{d}$.

**Étape 3. Si la longueur vaut $\frac{1}{d}$, alors $a = 1$.**

Supposons $I = ]a, a + \frac{1}{d}[$ fantabuleux. Pour $0 < \varepsilon < \frac{1}{2d}$, posons $u = a + \varepsilon$ et $v = a + \frac{1}{d} - \varepsilon$, qui sont dans $I$, et soit $P_\varepsilon$ le polynôme de l'étape 2 construit avec ces deux nombres. Par l'étape 1, $P_\varepsilon(x) > 0$ pour tout $x$. Pour $x$ fixé, $P_\varepsilon(x)$ dépend de $\varepsilon$ de façon affine. En faisant tendre $\varepsilon$ vers $0$, on obtient $P_0(x) \geqslant 0$ pour tout $x$, où

$$P_0(x) = x^{2d} + a\left(1 + x^2 + \cdots + x^{2d-2}\right) + \left(a + \frac{1}{d}\right)\left(x + x^3 + \cdots + x^{2d-1}\right)$$

Or $P_0(-1) = 1 + da - d\left(a + \frac{1}{d}\right) = 0$. La fonction $P_0$ atteint donc son minimum en $-1$, et sa dérivée y est nulle : $P_0'(-1) = 0$.

Calculons cette dérivée. La dérivée de $x^k$ est $kx^{k-1}$, qui vaut $-k$ en $-1$ si $k$ est pair et $k$ si $k$ est impair. Donc

$$P_0'(-1) = -2d - a\,(2 + 4 + \cdots + (2d - 2)) + \left(a + \frac{1}{d}\right)(1 + 3 + \cdots + (2d - 1))$$

On a $2 + 4 + \cdots + (2d - 2) = 2 \times \frac{(d - 1)d}{2} = d(d - 1)$, et la somme des $d$ premiers nombres impairs vaut $d^2$. Donc

$$P_0'(-1) = -2d - ad(d - 1) + ad^2 + d = ad - d = d(a - 1)$$

Comme $P_0'(-1) = 0$ et $d \neq 0$, on obtient $a = 1$. **Seul l'intervalle $]1, 1 + \frac{1}{d}[$ peut convenir.**

**Étape 4. Une inégalité.**

Pour $t > 0$, notons $A = 1 + t^2 + t^4 + \cdots + t^{2d}$ (les $d + 1$ puissances paires de $t$ jusqu'à $t^{2d}$) et $B = t + t^3 + \cdots + t^{2d-1}$ (les $d$ puissances impaires). Montrons que

$$dA - (d + 1)B \geqslant 0$$

Considérons les deux sommes, pour $i$ allant de $0$ à $d - 1$ :

$$U = \frac{d}{2}\sum_{i=0}^{d-1} t^{2i}(1 - t)^2 \qquad \text{et} \qquad V = \frac{1}{2}\sum_{i=0}^{d-1}\left(1 - t^{2i+1}\right)\left(1 - t^{2d-2i-1}\right)$$

- $U \geqslant 0$, car c'est une somme de carrés multipliés par des nombres positifs.
- $V \geqslant 0$ : dans chaque produit, les deux exposants $2i + 1$ et $2d - 2i - 1$ sont au moins égaux à $1$. Si $t \leqslant 1$, les deux facteurs sont positifs ou nuls ; si $t > 1$, ils sont tous les deux négatifs. Le produit est donc positif ou nul.

Développons. Dans $U$, on a $t^{2i}(1 - t)^2 = t^{2i} - 2t^{2i+1} + t^{2i+2}$. La somme des $t^{2i}$ vaut $A - t^{2d}$, celle des $t^{2i+2}$ vaut $A - 1$, et celle des $t^{2i+1}$ vaut $B$. Donc

$$U = \frac{d}{2}\left(2A - 1 - t^{2d} - 2B\right) = dA - dB - \frac{d}{2}\left(1 + t^{2d}\right)$$

Dans $V$, chaque produit vaut $1 - t^{2i+1} - t^{2d-2i-1} + t^{2d}$. Quand $i$ va de $0$ à $d - 1$, l'exposant $2i + 1$ parcourt les nombres impairs de $1$ à $2d - 1$, et $2d - 2i - 1$ aussi (dans l'autre sens). Donc

$$V = \frac{1}{2}\left(d\left(1 + t^{2d}\right) - 2B\right) = \frac{d}{2}\left(1 + t^{2d}\right) - B$$

En ajoutant, $U + V = dA - (d + 1)B$, qui est donc positif ou nul.

**Étape 5. $]1, 1 + \frac{1}{d}[$ est fantabuleux.**

Soient $c_0, \ldots, c_{2d-1}$ dans $]1, 1 + \frac{1}{d}[$, et $P$ le polynôme correspondant. Montrons que $P(x) > 0$ pour tout réel $x$.

- Si $x \geqslant 0$, tous les termes de $P(x)$ sont positifs ou nuls et le terme constant $c_0$ est strictement positif, donc $P(x) > 0$.
- Si $x = -t$ avec $t > 0$, les termes de rang pair sont $c_i t^i$ avec $c_i > 1$, et ceux de rang impair sont $-c_i t^i$ avec $c_i < 1 + \frac{1}{d}$. Donc

$$P(-t) > t^{2d} + \left(1 + t^2 + \cdots + t^{2d-2}\right) - \left(1 + \frac{1}{d}\right)B = A - \frac{d + 1}{d}\,B = \frac{dA - (d + 1)B}{d}$$

L'inégalité est stricte grâce au terme constant : $c_0 > 1$. Par l'étape 4, le dernier membre est positif ou nul, donc $P(-t) > 0$.

Ainsi $P$ n'a pas de racine réelle, et l'intervalle $]1, 1 + \frac{1}{d}[$ est fantabuleux.

**Conclusion : la longueur maximale d'un intervalle fantabuleux est $\frac{1}{d}$, et le seul intervalle fantabuleux de cette longueur est $]1, 1 + \tfrac{1}{d}[$.**
