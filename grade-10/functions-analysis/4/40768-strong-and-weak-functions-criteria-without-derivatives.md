---
id: "40768"
title: "Fonctions k-fortes et k-faibles : des critères sans dérivée"
grade: 10
theme: functions-analysis
difficulty: 4
duration_min: 55
tags: [fonctions, inegalite, monotonie, maximum, signe-d-un-produit, raisonnement-par-l-absurde, contre-exemple, fonction-affine-par-morceaux]
adapted_from: null
see_also: ["40767", "40769", "40770", "40771", "40772"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2021, mathématiques"
  reference: "cg-2021-s-sujet.pdf, problème 3 « Que la force soit avec f ! », partie II « Quelques critères de force et de faiblesse », questions 6 à 8"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2021-s-sujet.pdf"
---

## Statement

Dans tout l'exercice, $k$ désigne un entier naturel non nul, $I$ un intervalle ouvert inclus dans $]0, +\infty[$, et $f$ une fonction définie sur $I$ à valeurs strictement positives. On note $g_k$ et $h_k$ les fonctions définies sur $I$ par

$$g_k(x) = x^k f(x) \qquad \text{et} \qquad h_k(x) = \frac{f(x)}{x^k}.$$

On dit que $f$ est **$k$-forte** si, pour tous les réels $x$ et $y$ de $I$,

$$\left(y^k f(y) - x^k f(x)\right) \left(\frac{f(y)}{y^k} - \frac{f(x)}{x^k}\right) \geqslant 0,$$

et que $f$ est **$k$-faible** si, pour tous les réels $x$ et $y$ de $I$, ce même produit est $\leqslant 0$. Une fonction est dite *monotone* sur $I$ si elle est croissante sur $I$ ou décroissante sur $I$ (au sens large).

1. Démontrer que $f$ est $k$-forte si et seulement si, pour tous $x$ et $y$ de $I$,
   $$\frac{x^k}{y^k} + \frac{y^k}{x^k} \leqslant \frac{f(x)}{f(y)} + \frac{f(y)}{f(x)},$$
   et que $f$ est $k$-faible si et seulement si, pour tous $x$ et $y$ de $I$, l'inégalité inverse ($\geqslant$) est vraie.
2. Démontrer que $f$ est $k$-forte si et seulement si, pour tous $x$ et $y$ de $I$,
   $$\frac{\max(x^k, y^k)}{\min(x^k, y^k)} \leqslant \frac{\max(f(x), f(y))}{\min(f(x), f(y))},$$
   et que $f$ est $k$-faible si et seulement si, pour tous $x$ et $y$ de $I$, l'inégalité inverse ($\geqslant$) est vraie.
3. a) Démontrer que, si $g_k$ et $h_k$ sont monotones, alors $f$ est $k$-forte ou $k$-faible.

   b) Démontrer que, si $f$ est $k$-faible, alors $g_k$ et $h_k$ sont monotones.

   c) Soit $f$ la fonction définie sur $I = ]0, +\infty[$ par
   $$f(x) = x \text{ si } 0 < x < 1, \quad f(1) = 4, \quad f(x) = x \text{ si } 1 < x < 2, \quad f(x) = 4x \text{ si } x \geqslant 2.$$
   Démontrer que $f$ est $1$-forte, mais que les fonctions $g_1$ et $h_1$ ne sont pas monotones.

## Hints

1. **Question 1.** Développer le produit de la définition, puis mettre $f(x)\,f(y)$ en facteur.
2. **Question 2.** Remarquer que $\frac{x^k}{y^k} + \frac{y^k}{x^k} = t + \frac{1}{t}$, avec $t = \frac{\max(x^k, y^k)}{\min(x^k, y^k)} \geqslant 1$. Étudier les variations de $t \mapsto t + \frac{1}{t}$ sur $[1, +\infty[$ en calculant la différence de deux valeurs.
3. **Question 3.** Le produit de la définition s'écrit $(g_k(y) - g_k(x))(h_k(y) - h_k(x))$.
4. **Question 3.** Pour b), remarquer que $g_k(x) = x^{2k}\, h_k(x)$. Si $g_k$ n'était pas croissante, il existerait $x < y$ avec $g_k(y) < g_k(x)$ : comparer alors $h_k(y)$ et $h_k(x)$.
5. **Question 3.** Pour c), écrire $f(x) = x\,h_1(x)$ : la fonction $h_1$ ne prend que les valeurs $1$ et $4$. Quand le produit peut-il être non nul ?

## Solution

**1.** Posons $X = x^k$, $Y = y^k$, $F = f(x)$ et $G = f(y)$, tous strictement positifs. En développant,

$$(YG - XF)\left(\frac{G}{Y} - \frac{F}{X}\right) = G^2 - \frac{Y}{X}\,FG - \frac{X}{Y}\,FG + F^2 = FG\left(\frac{G}{F} + \frac{F}{G} - \frac{X}{Y} - \frac{Y}{X}\right).$$

Comme $FG > 0$, ce produit est positif ou nul si et seulement si $\frac{X}{Y} + \frac{Y}{X} \leqslant \frac{F}{G} + \frac{G}{F}$, et négatif ou nul si et seulement si l'inégalité inverse est vraie. En écrivant cela pour tous $x$ et $y$ de $I$, on obtient les deux équivalences.

**2.** Posons $\varphi(t) = t + \frac{1}{t}$ pour $t > 0$. On a $\varphi(t) = \varphi\left(\frac{1}{t}\right)$, donc, pour $A, B > 0$,

$$\frac{A}{B} + \frac{B}{A} = \varphi\left(\frac{\max(A, B)}{\min(A, B)}\right),$$

puisque $\frac{\max(A,B)}{\min(A,B)}$ est égal à $\frac{A}{B}$ ou à $\frac{B}{A}$.

*La fonction $\varphi$ est strictement croissante sur $[1, +\infty[$.* Pour $1 \leqslant t < t'$,

$$\varphi(t') - \varphi(t) = (t' - t) + \frac{1}{t'} - \frac{1}{t} = (t' - t) - \frac{t' - t}{t t'} = (t' - t)\left(1 - \frac{1}{t t'}\right) > 0,$$

car $t' - t > 0$ et $t t' > 1$.

Ainsi, pour deux nombres $r$ et $s$ supérieurs ou égaux à $1$, $\varphi(r) \leqslant \varphi(s)$ équivaut à $r \leqslant s$. On l'applique à $r = \frac{\max(x^k, y^k)}{\min(x^k, y^k)}$ et $s = \frac{\max(f(x), f(y))}{\min(f(x), f(y))}$ : l'inégalité de la question 1 équivaut à $r \leqslant s$, ce qui donne la caractérisation des fonctions $k$-fortes. De même, l'inégalité inverse équivaut à $r \geqslant s$, d'où celle des fonctions $k$-faibles.

**3.** Le produit de la définition s'écrit $(g_k(y) - g_k(x))(h_k(y) - h_k(x))$. Il ne change pas quand on échange $x$ et $y$, et il est nul si $x = y$ : il suffit de l'étudier pour $x < y$.

**a)** Si $g_k$ et $h_k$ sont toutes deux croissantes, ou toutes deux décroissantes, alors pour $x < y$ les deux facteurs sont de même signe (ou nuls) : le produit est $\geqslant 0$ et $f$ est $k$-forte. Si l'une est croissante et l'autre décroissante, les deux facteurs sont de signes contraires (ou nuls) : le produit est $\leqslant 0$ et $f$ est $k$-faible.

**b)** Supposons $f$ $k$-faible. Remarquons que $g_k(x) = x^{2k}\, h_k(x)$ pour tout $x$ de $I$, et que $x \mapsto x^{2k}$ est strictement croissante sur $]0, +\infty[$.

*$g_k$ est croissante.* Sinon, il existe $x < y$ dans $I$ avec $g_k(y) < g_k(x)$. Alors, comme $y^{2k} > x^{2k} > 0$,

$$h_k(y) = \frac{g_k(y)}{y^{2k}} < \frac{g_k(x)}{y^{2k}} < \frac{g_k(x)}{x^{2k}} = h_k(x).$$

Les deux facteurs $g_k(y) - g_k(x)$ et $h_k(y) - h_k(x)$ sont strictement négatifs, donc leur produit est strictement positif : c'est impossible puisque $f$ est $k$-faible.

*$h_k$ est décroissante.* Sinon, il existe $x < y$ dans $I$ avec $h_k(y) > h_k(x)$. Alors

$$g_k(y) = y^{2k}\, h_k(y) > y^{2k}\, h_k(x) > x^{2k}\, h_k(x) = g_k(x).$$

Les deux facteurs sont strictement positifs, leur produit aussi : c'est encore impossible.

Donc $g_k$ est croissante et $h_k$ est décroissante ; en particulier, elles sont monotones.

**c)** Ici $h_1(x) = \frac{f(x)}{x}$ vaut $1$ si $0 < x < 1$ ou $1 < x < 2$, et $4$ si $x = 1$ ou $x \geqslant 2$. Et $g_1(x) = x\,f(x) = x^2\, h_1(x)$.

*$f$ est $1$-forte.* Soit $x$ et $y$ dans $I$. Si $h_1(x) = h_1(y)$, le produit est nul. Sinon, quitte à échanger $x$ et $y$, on a $h_1(x) = 1$ et $h_1(y) = 4$. Alors $x < 2$, donc $g_1(x) = x^2 < 4$. Et $y = 1$ ou $y \geqslant 2$, donc $g_1(y) = 4y^2 \geqslant 4$. Ainsi $g_1(y) - g_1(x) > 0$ et $h_1(y) - h_1(x) = 3 > 0$ : le produit est positif. Dans tous les cas, il est $\geqslant 0$ : $f$ est $1$-forte.

*$g_1$ et $h_1$ ne sont pas monotones.* On a $h_1(\text{0,5}) = 1 < h_1(1) = 4 > h_1(\text{1,5}) = 1$ : $h_1$ monte puis descend. De même $g_1(\text{0,5}) = \text{0,25} < g_1(1) = 4 > g_1(\text{1,5}) = \text{2,25}$.

**Bilan.** On a obtenu deux reformulations : $f$ est $k$-forte exactement quand, pour tous $x$ et $y$, le rapport du plus grand au plus petit des nombres $f(x)$, $f(y)$ est au moins celui des nombres $x^k$, $y^k$ ; $k$-faible exactement quand il est au plus celui-ci. Si $g_k$ et $h_k$ sont monotones, $f$ est $k$-forte ou $k$-faible ; une fonction $k$-faible a toujours $g_k$ croissante et $h_k$ décroissante ; mais une fonction $k$-forte peut avoir $g_k$ et $h_k$ non monotones.

## Going further

- Le critère de la question 2 dit qu'une fonction $k$-forte « écarte » ses valeurs au moins autant que $x \mapsto x^k$, et qu'une fonction $k$-faible les écarte au plus autant. Avec ce critère, montrer qu'une fonction $k$-faible est aussi $(k+1)$-faible.
- Dans la suite du sujet, on montrait, pour une fonction dérivable de dérivée continue, que $f$ est $k$-forte exactement quand $\lvert f'(x) \rvert \geqslant k\,\frac{f(x)}{x}$ pour tout $x$ (exercice 40769).
