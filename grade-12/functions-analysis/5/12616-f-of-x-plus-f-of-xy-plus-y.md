---
id: "12616"
title: "f(x + f(xy)) + y = f(x)f(y) + 1"
grade: 12
theme: functions-analysis
difficulty: 5
duration_min: 90
tags: [equation-fonctionnelle, injectivite, fonction-croissante, limite, suite-monotone, fonction-affine]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 14 et 21 février 2021"
  reference: "2021-12_Enonce-Test-3-2020.pdf, exercice 7 (senior) ; corrigé 2021-03_Corrige-Test-3-Web.pdf. Le corrigé écrit f(y) = y + (q − 1)/p au lieu de f(y) = (y + q − 1)/p ; sans effet, puisqu'il traite ensuite toutes les fonctions affines."
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Enoncé-Test-3-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Test-3-2020.pdf"
---

## Statement

On note $\mathbb{R}_{>0}$ l'ensemble des nombres réels strictement positifs. Trouver toutes les
fonctions $f : \mathbb{R}_{>0} \to \mathbb{R}_{>0}$ telles que
$$f(x + f(xy)) + y = f(x)\,f(y) + 1$$
pour tous les réels strictement positifs $x$ et $y$.

## Hints

1. Cherche d'abord une solution de la forme $f(t) = ut + v$.
2. Prends $x = 1$ dans l'équation. Montre que $f$ est injective : si $f(a) = f(b)$, alors $a = b$.
3. Soit $0 < c < d$ et $t > 0$. Écris l'équation pour $(x, y) = (c/t,\, t)$, puis pour
   $(x, y) = (d/t,\, t)$. L'injectivité permet de comparer les deux. Que peux-tu dire de
   $f(d) - f(c)$, quand $t$ prend toutes les valeurs positives ?
4. La fonction $f$ est donc croissante. La suite $f(1/n)$ est alors décroissante et minorée par $0$ :
   elle a une limite $p$. Fais tendre $x$ vers $0$ dans l'équation, $y$ restant fixé.

## Solution

Soit $f$ une solution. Notons $E(x, y)$ l'égalité de l'énoncé pour le couple $(x, y)$.

**Étape 1 : $f$ est injective.** L'égalité $E(1, a)$ s'écrit $f(1 + f(a)) + a = f(1)\,f(a) + 1$,
donc
$$a = f(1)\,f(a) + 1 - f(1 + f(a)) .$$
Le membre de droite ne dépend que de la valeur $f(a)$. Si $f(a) = f(b)$, on obtient donc $a = b$.

**Étape 2 : $f$ est strictement croissante.** Soit $0 < c < d$ et $t > 0$. Les égalités
$E(c/t, t)$ et $E(d/t, t)$ s'écrivent, puisque $\frac{c}{t} \cdot t = c$ :
$$f\!\left(\tfrac{c}{t} + f(c)\right) = f\!\left(\tfrac{c}{t}\right) f(t) + 1 - t
\qquad\text{et}\qquad
f\!\left(\tfrac{d}{t} + f(d)\right) = f\!\left(\tfrac{d}{t}\right) f(t) + 1 - t .$$
Comme $c/t \neq d/t$ et que $f$ est injective, $f(c/t) \neq f(d/t)$. Comme $f(t) \neq 0$, les deux
membres de droite sont différents, donc les deux membres de gauche aussi. Une fonction donne la
même valeur en deux points égaux, donc les deux nombres auxquels on applique $f$ sont
différents :
$$\frac{c}{t} + f(c) \neq \frac{d}{t} + f(d), \qquad\text{c'est-à-dire}\qquad
f(d) - f(c) \neq \frac{c - d}{t} .$$
Ceci vaut pour tout $t > 0$. Or, comme $c - d < 0$, le nombre $\frac{c-d}{t}$ prend **toutes** les
valeurs strictement négatives quand $t$ parcourt $\mathbb{R}_{>0}$ : pour obtenir un nombre $w < 0$,
il suffit de prendre $t = \frac{c-d}{w}$. Le nombre $f(d) - f(c)$ n'est donc égal à aucun nombre
strictement négatif : $f(d) \geqslant f(c)$. Par injectivité, $f(d) > f(c)$.

**Étape 3 : deux limites.** On utilise le théorème de la limite monotone pour les suites : une
suite décroissante et minorée converge, et sa limite est inférieure ou égale à chacun de ses
termes.

*La limite en $0$.* La suite $\left(f(\frac{1}{n})\right)_{n \geqslant 1}$ est décroissante (car $f$
est croissante) et minorée par $0$. Elle converge vers un réel $p \geqslant 0$. Montrons que **pour
toute suite $(z_n)$ de réels strictement positifs qui tend vers $0$, la suite $f(z_n)$ tend vers
$p$**, et que $f(z) > p$ pour tout $z > 0$.

- Pour $z > 0$, on choisit $k$ avec $\frac{1}{k} < z$ : alors $f(z) > f(\frac{1}{k}) \geqslant p$.
- Soit $\varepsilon > 0$. Il existe $k$ tel que $f(\frac{1}{k}) < p + \varepsilon$. Pour $n$ assez
  grand, $z_n \leqslant \frac{1}{k}$, donc $p < f(z_n) \leqslant f(\frac{1}{k}) < p + \varepsilon$.
  C'est exactement dire que $f(z_n)$ tend vers $p$.

*La limite en $p$, par la droite.* De même, la suite $\left(f(p + \frac{1}{n})\right)_{n \geqslant 1}$
est décroissante et minorée par $0$, donc elle converge vers un réel $q \geqslant 0$. Le même
raisonnement montre que **pour toute suite $(w_n)$ de réels strictement supérieurs à $p$ qui tend
vers $p$, la suite $f(w_n)$ tend vers $q$**.

**Étape 4 : $f$ est affine.** Fixons $y > 0$ et posons $x_n = \frac{1}{n}$. Alors :

- $x_n$ tend vers $0$, donc $f(x_n)$ tend vers $p$ ;
- $x_n y$ tend vers $0$, donc $f(x_n y)$ tend vers $p$ ;
- $w_n = x_n + f(x_n y)$ est strictement supérieur à $p$ (car $x_n > 0$ et $f(x_n y) > p$), et tend
  vers $0 + p = p$, donc $f(w_n)$ tend vers $q$.

L'égalité $E(x_n, y)$ s'écrit $f(w_n) + y = f(x_n)\,f(y) + 1$. En faisant tendre $n$ vers
l'infini, on obtient
$$q + y = p\,f(y) + 1 \qquad \text{pour tout } y > 0 .$$
Si l'on avait $p = 0$, on aurait $y = 1 - q$ pour tout $y > 0$, ce qui est absurde (prendre $y = 1$
puis $y = 2$). Donc $p > 0$ et
$$f(y) = \frac{1}{p}\,y + \frac{q - 1}{p} .$$
La fonction $f$ est de la forme $f(t) = ut + v$, avec $u = \frac{1}{p} > 0$.

**Étape 5 : quelles fonctions affines conviennent ?** Avec $f(t) = ut + v$, on calcule
$$f(x + f(xy)) + y = u\,(x + uxy + v) + v + y = u^2xy + ux + uv + v + y,$$
$$f(x)\,f(y) + 1 = (ux + v)(uy + v) + 1 = u^2xy + uvx + uvy + v^2 + 1 .$$
L'égalité de ces deux expressions pour tous $x, y > 0$ s'écrit
$$u(1 - v)\,x + (1 - uv)\,y + (uv + v - v^2 - 1) = 0 .$$
En fixant $y$ et en faisant varier $x$, on voit que le coefficient de $x$ est nul ; puis celui de
$y$, puis la constante. Donc $u(1 - v) = 0$, ce qui donne $v = 1$ puisque $u > 0$ ; puis $uv = 1$,
donc $u = 1$. La constante vaut alors $1 + 1 - 1 - 1 = 0$. La seule possibilité est
$f(t) = t + 1$.

**Vérification.** Pour $f(t) = t + 1$, qui envoie bien $\mathbb{R}_{>0}$ dans $\mathbb{R}_{>0}$ :
$$f(x + f(xy)) + y = (x + xy + 1) + 1 + y = xy + x + y + 2,$$
$$f(x)\,f(y) + 1 = (x + 1)(y + 1) + 1 = xy + x + y + 2 .$$

**Conclusion.** L'unique solution est la fonction $f : t \mapsto t + 1$.

## Going further

L'étape 2 est le cœur du problème, et les correcteurs signalent qu'aucun candidat, ni aucun
encadrant de la préparation olympique, n'y est parvenu pendant l'épreuve. L'astuce consiste à
choisir $(x, y) = (c/t, t)$ pour que le produit $xy$ ne dépende plus de $t$, puis à exploiter le
fait que $t$ est libre.

Un piège classique : poser $x = 0$ ou $y = 0$ aide à **deviner** la solution $t \mapsto t + 1$,
mais ne démontre rien, puisque $f$ n'est définie que pour des nombres strictement positifs.
