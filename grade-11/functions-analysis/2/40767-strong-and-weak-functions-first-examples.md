---
id: "40767"
title: "Fonctions k-fortes et k-faibles : premiers exemples"
grade: 11
theme: functions-analysis
difficulty: 2
duration_min: 40
tags: [fonctions, exponentielle, derivee, monotonie, signe-d-un-produit, fonction-inverse, contre-exemple]
adapted_from: null
see_also: ["40768", "40769", "40770", "40771", "40772"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2021, mathématiques"
  reference: "cg-2021-s-sujet.pdf, problème 3 « Que la force soit avec f ! », préambule et partie I « Quelques exemples et propriétés », questions 1 à 5"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2021-s-sujet.pdf"
---

## Statement

Dans tout l'exercice, $k$ désigne un entier naturel non nul, $I$ un intervalle ouvert inclus dans $]0, +\infty[$, et $f$ une fonction définie sur $I$ à valeurs strictement positives.

On dit que $f$ est **$k$-forte** si, pour tous les réels $x$ et $y$ de $I$,

$$\left(y^k f(y) - x^k f(x)\right) \left(\frac{f(y)}{y^k} - \frac{f(x)}{x^k}\right) \geqslant 0.$$

On dit que $f$ est **$k$-faible** si, pour tous les réels $x$ et $y$ de $I$,

$$\left(y^k f(y) - x^k f(x)\right) \left(\frac{f(y)}{y^k} - \frac{f(x)}{x^k}\right) \leqslant 0.$$

1. Démontrer que la fonction $f_1$ définie sur $]0, +\infty[$ par $f_1(x) = x^2$ est $1$-forte et $3$-faible.
2. Démontrer que la fonction $f_2$ définie sur $]0, 1[$ par $f_2(x) = \exp(x)$ est $1$-faible mais pas $1$-forte.
3. Démontrer que la fonction $f_3$ définie sur $]1, +\infty[$ par $f_3(x) = \exp(x)$ est $1$-forte mais pas $1$-faible.
4. Démontrer que la fonction $f_4$ définie sur $]0, +\infty[$ par $f_4(x) = \frac{1}{x}$ est $k$-faible pour tout entier $k \geqslant 1$.
5. Existe-t-il une fonction définie sur $]0, +\infty[$ qui soit $k$-forte pour tout entier $k \geqslant 1$ ?

## Hints

1. **Question 1.** Poser $g(x) = x^k f(x)$ et $h(x) = \frac{f(x)}{x^k}$. La quantité de la définition s'écrit $(g(y) - g(x))(h(y) - h(x))$. Que se passe-t-il si $g$ et $h$ varient dans le même sens ? En sens contraires ?
2. **Question 2.** Étudier les variations de $x \mapsto x\,\mathrm{e}^x$ et de $x \mapsto \frac{\mathrm{e}^x}{x}$ sur $]0, 1[$. Pour « pas $1$-forte », il suffit d'un couple $(x, y)$ bien choisi.
3. **Question 5.** Écrire la condition pour $x = 1$ et $y = 2$ : que deviennent les deux facteurs quand $k$ est très grand ?

## Solution

Notons $g_k(x) = x^k f(x)$ et $h_k(x) = \frac{f(x)}{x^k}$. La quantité de la définition est

$$(g_k(y) - g_k(x))(h_k(y) - h_k(x)).$$

Elle ne change pas quand on échange $x$ et $y$ (les deux facteurs changent de signe), et elle est nulle si $x = y$. Il suffit donc de l'étudier pour $x < y$.

- Si $g_k$ et $h_k$ sont croissantes toutes les deux, ou décroissantes toutes les deux, les deux facteurs ont le même signe pour $x < y$ : la quantité est positive ou nulle, et $f$ est $k$-forte.
- Si l'une est croissante et l'autre décroissante, les deux facteurs sont de signes contraires : la quantité est négative ou nulle, et $f$ est $k$-faible.

**1.** Pour $k = 1$ : $g_1(x) = x^3$ et $h_1(x) = x$ sont croissantes sur $]0, +\infty[$, donc $f_1$ est $1$-forte. Pour $k = 3$ : $g_3(x) = x^5$ est croissante et $h_3(x) = \frac{1}{x}$ est décroissante sur $]0, +\infty[$, donc $f_1$ est $3$-faible.

**2.** Ici $g_1(x) = x\,\mathrm{e}^x$ et $h_1(x) = \frac{\mathrm{e}^x}{x}$. On calcule

$$g_1'(x) = (1 + x)\,\mathrm{e}^x > 0, \qquad h_1'(x) = \frac{x\,\mathrm{e}^x - \mathrm{e}^x}{x^2} = \frac{(x - 1)\,\mathrm{e}^x}{x^2}.$$

Sur $]0, 1[$, $h_1'(x) < 0$ : $g_1$ est strictement croissante et $h_1$ strictement décroissante. Donc $f_2$ est $1$-faible. De plus, pour $x < y$ dans $]0, 1[$, on a $g_1(y) - g_1(x) > 0$ et $h_1(y) - h_1(x) < 0$, donc la quantité est strictement négative. Par exemple, pour $x = \frac{1}{4}$ et $y = \frac{1}{2}$, elle est $< 0$ : $f_2$ n'est pas $1$-forte.

**3.** Mêmes fonctions $g_1$ et $h_1$, mais sur $]1, +\infty[$. Là, $h_1'(x) > 0$ : $g_1$ et $h_1$ sont strictement croissantes, donc $f_3$ est $1$-forte. Pour $x < y$, les deux facteurs sont strictement positifs, la quantité est strictement positive (par exemple pour $x = 2$, $y = 3$), donc $f_3$ n'est pas $1$-faible.

**4.** Ici $g_k(x) = x^{k-1}$, qui est croissante sur $]0, +\infty[$ (constante égale à $1$ si $k = 1$), et $h_k(x) = \frac{1}{x^{k+1}}$, qui est décroissante. Donc $f_4$ est $k$-faible, pour tout $k \geqslant 1$.

**5.** La réponse est non. Supposons qu'une fonction $f$ définie sur $]0, +\infty[$ soit $k$-forte pour tout $k \geqslant 1$. Avec $x = 1$ et $y = 2$, on aurait pour tout $k \geqslant 1$

$$\left(2^k f(2) - f(1)\right)\left(\frac{f(2)}{2^k} - f(1)\right) \geqslant 0.$$

Les nombres $2^k$ deviennent aussi grands qu'on veut : choisissons $k$ tel que $2^k > \frac{f(1)}{f(2)}$ et $2^k > \frac{f(2)}{f(1)}$. Alors $2^k f(2) > f(1)$, donc le premier facteur est strictement positif, et $\frac{f(2)}{2^k} < f(1)$, donc le second est strictement négatif. Leur produit est strictement négatif : contradiction. Aucune fonction n'est $k$-forte pour tous les $k$.

**Bilan.** Une fonction est $k$-forte quand $x^k f(x)$ et $\frac{f(x)}{x^k}$ varient « dans le même sens » entre deux points quelconques, et $k$-faible quand elles varient en sens contraires. La fonction carré est $1$-forte et $3$-faible, l'exponentielle est $1$-faible sur $]0, 1[$ et $1$-forte sur $]1, +\infty[$, la fonction inverse est $k$-faible pour tout $k$, et aucune fonction sur $]0, +\infty[$ n'est $k$-forte pour tous les $k$.

## Going further

- Dans la suite du sujet, on montrait que $f$ est $k$-forte exactement quand $\frac{\max(x^k, y^k)}{\min(x^k, y^k)} \leqslant \frac{\max(f(x), f(y))}{\min(f(x), f(y))}$ pour tous $x$, $y$ (exercice 40768). Autrement dit, une fonction $k$-forte « écarte » ses valeurs au moins autant que $x \mapsto x^k$. Que devient la question 5 avec ce critère ?
- Pour quels entiers $k$ la fonction $x \mapsto x^2$ est-elle $k$-forte ? $k$-faible ?
