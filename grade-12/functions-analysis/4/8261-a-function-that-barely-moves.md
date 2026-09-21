---
id: "8261"
title: "Une fonction qui bouge trop peu pour bouger"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 35
tags: [inegalite, subdivision, inegalite triangulaire, fonction constante, passage a la limite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », deuxième partie, « Équations fonctionnelles » (Vincent Jugé), exercice 12. Le polycopié suppose f continue ; l'hypothèse est inutile, la preuve ci-dessous ne s'en sert pas."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soit $f$ une fonction définie sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$ telle que, pour
tous réels $x$ et $y$,

$$\left| f(x) - f(y) \right| \ \le \ (x-y)^2 .$$

Montrer que $f$ est constante.

## Hints

1. À première vue l'hypothèse est puissante : si $x$ et $y$ sont proches, $f(x)$ et $f(y)$ sont
   *très* proches, car $(x-y)^2$ est bien plus petit que $|x-y|$.
2. Prends deux réels $a < b$ et essaie de montrer $f(a) = f(b)$. L'hypothèse appliquée
   directement donne $|f(b)-f(a)| \le (b-a)^2$, ce qui ne suffit pas.
3. Découpe le segment $[a, b]$ en $n$ morceaux égaux et passe de $a$ à $b$ par petits pas.
4. Majore $|f(b) - f(a)|$ par la somme des $n$ petits écarts, puis fais grandir $n$.

## Solution

**L'idée.**

L'hypothèse appliquée à $x = b$ et $y = a$ donne seulement $|f(b) - f(a)| \le (b-a)^2$, ce qui
n'apprend rien quand $b - a$ est grand. Mais elle est bien plus efficace sur de **petits**
intervalles, car un carré de petit nombre est très petit. L'astuce est donc d'aller de $a$ à
$b$ en beaucoup de petits pas.

**La subdivision.**

Soient $a < b$ deux réels et soit $n \ge 1$ un entier. Découpons $[a,b]$ en $n$ morceaux de même
longueur $h = \dfrac{b-a}{n}$, et posons

$$x_k = a + k\,h \qquad \text{pour } k = 0, 1, \ldots, n .$$

Ainsi $x_0 = a$ et $x_n = b$, et deux points consécutifs sont distants de $h$.

**On enchaîne les petits écarts.**

On écrit la différence $f(b) - f(a)$ comme une somme qui se télescope :

$$f(b) - f(a) = \sum_{k=0}^{n-1} \Big( f(x_{k+1}) - f(x_k) \Big) .$$

L'inégalité triangulaire donne alors

$$\left| f(b) - f(a) \right| \ \le \ \sum_{k=0}^{n-1} \left| f(x_{k+1}) - f(x_k) \right| .$$

Or l'hypothèse appliquée à chaque petit morceau donne
$\left| f(x_{k+1}) - f(x_k) \right| \le (x_{k+1} - x_k)^2 = h^2$. D'où

$$\left| f(b) - f(a) \right| \ \le \ n \, h^2 = n \times \left(\frac{b-a}{n}\right)^2 =
\frac{(b-a)^2}{n} .$$

**On fait grandir $n$.**

Cette majoration est vraie pour **tout** entier $n \ge 1$. Le nombre $|f(b) - f(a)|$ est donc
positif et plus petit que $\dfrac{(b-a)^2}{n}$, quantité qui tend vers $0$ quand $n$ tend vers
l'infini.

Un nombre positif plus petit que tout nombre strictement positif est nul. Donc

$$\left| f(b) - f(a) \right| = 0, \qquad \text{c'est-à-dire} \qquad f(a) = f(b) .$$

**Conclusion.**

Deux réels quelconques ont la même image : $f$ est **constante**. $\blacksquare$

**Remarque.** On n'a utilisé ni la continuité ni la dérivabilité de $f$ : l'inégalité de départ
les entraîne d'elle-même. En langage de terminale, elle dit que le taux d'accroissement
$\dfrac{f(x)-f(y)}{x-y}$ est majoré en valeur absolue par $|x-y|$, donc tend vers $0$ : la
fonction est dérivable de dérivée nulle partout.

## Going further

1. Que se passe-t-il si l'on remplace l'hypothèse par $|f(x)-f(y)| \le |x-y|$ ? Donner une
   fonction non constante qui la vérifie.
2. Et avec $|f(x)-f(y)| \le |x-y|^{3/2}$ ? La démonstration s'adapte-t-elle ?
3. Où exactement la démonstration utilise-t-elle que l'exposant est strictement plus grand
   que $1$ ?
