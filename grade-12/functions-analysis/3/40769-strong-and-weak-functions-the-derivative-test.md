---
id: "40769"
title: "Fonctions k-fortes et k-faibles : le critère de la dérivée"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 40
tags: [fonctions, derivee, monotonie, valeurs-intermediaires, inegalite, passage-a-la-limite, signe-d-un-produit]
adapted_from: null
see_also: ["40767", "40768", "40770", "40771", "40772"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2021, mathématiques"
  reference: "cg-2021-s-sujet.pdf, problème 3 « Que la force soit avec f ! », partie II, question 9 (a, b, c)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2021-s-sujet.pdf"
---

## Statement

Dans tout l'exercice, $k$ désigne un entier naturel non nul, $I$ un intervalle ouvert inclus dans $]0, +\infty[$, et $f$ une fonction définie sur $I$ à valeurs strictement positives. On suppose que $f$ est dérivable sur $I$ et que sa dérivée $f'$ est continue sur $I$. On note $g_k$ et $h_k$ les fonctions définies sur $I$ par

$$g_k(x) = x^k f(x) \qquad \text{et} \qquad h_k(x) = \frac{f(x)}{x^k}.$$

On dit que $f$ est **$k$-forte** si, pour tous les réels $x$ et $y$ de $I$,

$$(g_k(y) - g_k(x))(h_k(y) - h_k(x)) \geqslant 0,$$

et que $f$ est **$k$-faible** si, pour tous les réels $x$ et $y$ de $I$, ce même produit est $\leqslant 0$.

1. a) Démontrer que, si $\lvert f'(x) \rvert \geqslant k\,\frac{f(x)}{x}$ pour tout $x \in I$, alors $f$ est $k$-forte.

   b) Démontrer que, si $\lvert f'(x) \rvert \leqslant k\,\frac{f(x)}{x}$ pour tout $x \in I$, alors $f$ est $k$-faible.
2. Démontrer les réciproques : si $f$ est $k$-forte, alors $\lvert f'(x) \rvert \geqslant k\,\frac{f(x)}{x}$ pour tout $x \in I$ ; si $f$ est $k$-faible, alors $\lvert f'(x) \rvert \leqslant k\,\frac{f(x)}{x}$ pour tout $x \in I$.

## Hints

1. **Question 1.** Si $g_k$ et $h_k$ varient dans le même sens, le produit de la définition est toujours positif ou nul ; si elles varient en sens contraires, il est toujours négatif ou nul.
2. **Question 1.** Calculer $g_k'(x)$ et $h_k'(x)$ et les écrire avec $x f'(x) + k f(x)$ et $x f'(x) - k f(x)$.
3. **Question 1.** Pour a), la dérivée $f'$ ne s'annule jamais. Comme elle est continue sur un intervalle, que peut-on dire de son signe ?
4. **Question 2.** Diviser le produit de la définition par $(y - x)^2$ et faire tendre $y$ vers $x$.
5. **Question 2.** On obtient le signe de $g_k'(x)\, h_k'(x)$. Calculer ce produit.

## Solution

On calcule d'abord les dérivées :

$$g_k'(x) = k x^{k-1} f(x) + x^k f'(x) = x^{k-1}\,(x f'(x) + k f(x)),$$

$$h_k'(x) = \frac{x^k f'(x) - k x^{k-1} f(x)}{x^{2k}} = \frac{x f'(x) - k f(x)}{x^{k+1}}.$$

Rappelons aussi que si $g_k$ et $h_k$ sont toutes deux croissantes ou toutes deux décroissantes, alors pour $x < y$ les facteurs $g_k(y) - g_k(x)$ et $h_k(y) - h_k(x)$ sont de même signe, donc $f$ est $k$-forte (le produit ne change pas quand on échange $x$ et $y$). Si l'une est croissante et l'autre décroissante, $f$ est $k$-faible.

**1. a)** Pour tout $x \in I$, $\lvert f'(x) \rvert \geqslant k\,\frac{f(x)}{x} > 0$, donc $f'$ ne s'annule pas sur $I$. Comme $f'$ est continue sur l'intervalle $I$, le théorème des valeurs intermédiaires montre que $f'$ garde un signe constant sur $I$ (sinon elle s'annulerait entre deux points où elle change de signe).

- Si $f' > 0$ sur $I$, alors $f'(x) \geqslant k\,\frac{f(x)}{x}$, soit $x f'(x) - k f(x) \geqslant 0$, donc $h_k' \geqslant 0$. Et $x f'(x) + k f(x) > 0$, donc $g_k' > 0$. Les deux fonctions sont croissantes : $f$ est $k$-forte.
- Si $f' < 0$ sur $I$, alors $f'(x) \leqslant -k\,\frac{f(x)}{x}$, soit $x f'(x) + k f(x) \leqslant 0$, donc $g_k' \leqslant 0$. Et $x f'(x) - k f(x) < 0$, donc $h_k' < 0$. Les deux fonctions sont décroissantes : $f$ est $k$-forte.

**b)** L'hypothèse s'écrit $-k f(x) \leqslant x f'(x) \leqslant k f(x)$. Donc $x f'(x) + k f(x) \geqslant 0$ et $x f'(x) - k f(x) \leqslant 0$, c'est-à-dire $g_k' \geqslant 0$ et $h_k' \leqslant 0$. La fonction $g_k$ est croissante et $h_k$ décroissante : $f$ est $k$-faible.

**2.** Supposons $f$ $k$-forte et fixons $x \in I$. Pour tout $y \in I$ différent de $x$, en divisant le produit de la définition par $(y - x)^2 > 0$,

$$\frac{g_k(y) - g_k(x)}{y - x} \times \frac{h_k(y) - h_k(x)}{y - x} \geqslant 0.$$

Quand $y$ tend vers $x$, les deux taux d'accroissement tendent vers $g_k'(x)$ et $h_k'(x)$, et l'inégalité passe à la limite : $g_k'(x)\, h_k'(x) \geqslant 0$. Or

$$g_k'(x)\, h_k'(x) = x^{k-1}\,(x f'(x) + k f(x)) \times \frac{x f'(x) - k f(x)}{x^{k+1}} = \frac{x^2 f'(x)^2 - k^2 f(x)^2}{x^2}.$$

Donc $x^2 f'(x)^2 \geqslant k^2 f(x)^2$, et comme $x > 0$ et $f(x) > 0$, en prenant les racines carrées : $x\,\lvert f'(x) \rvert \geqslant k f(x)$, c'est-à-dire $\lvert f'(x) \rvert \geqslant k\,\frac{f(x)}{x}$.

Si $f$ est $k$-faible, le même raisonnement donne $g_k'(x)\, h_k'(x) \leqslant 0$, donc $x^2 f'(x)^2 \leqslant k^2 f(x)^2$ et $\lvert f'(x) \rvert \leqslant k\,\frac{f(x)}{x}$.

**Bilan.** Pour une fonction $f$ strictement positive, dérivable et de dérivée continue sur $I$ : $f$ est $k$-forte si et seulement si $\lvert f'(x) \rvert \geqslant k\,\frac{f(x)}{x}$ pour tout $x \in I$, et $k$-faible si et seulement si $\lvert f'(x) \rvert \leqslant k\,\frac{f(x)}{x}$ pour tout $x \in I$.

## Going further

- Avec ce critère, retrouver que $x \mapsto x^2$ est $1$-forte et $3$-faible sur $]0, +\infty[$, et que $\exp$ est $1$-faible sur $]0, 1[$ et $1$-forte sur $]1, +\infty[$.
- La quantité $\frac{x f'(x)}{f(x)}$ s'appelle l'*élasticité* de $f$ en $x$ : elle mesure de combien de pour cent $f(x)$ varie quand $x$ augmente de $1\,\%$. Le critère dit qu'une fonction est $k$-forte quand son élasticité est toujours au moins $k$ en valeur absolue, et $k$-faible quand elle est toujours au plus $k$.
- La fonction de l'exercice 40768 (question 3 c) est $1$-forte sans être dérivable : le critère ne s'applique qu'aux fonctions dérivables.
