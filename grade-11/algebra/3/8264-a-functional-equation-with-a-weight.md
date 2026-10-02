---
id: "8264"
title: "Une équation fonctionnelle avec un poids"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [equation-fonctionnelle, substitution, cas-particulier, analyse-synthese]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », deuxième partie, « TD d'algèbre » (Lilou Wattez, Auguste de Lambilly), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$
telles que, pour tous réels $x$ et $y$,

$$f(x+y) = x\,f(x) + y\,f(y) .$$

## Hints

1. Commence par la substitution la plus simple : $y = 0$.
2. Elle donne une égalité de la forme $f(x) = x f(x)$. Que peut-on en tirer, et pour quels $x$ ?
3. Attention : une valeur de $x$ résiste. Laquelle ?
4. Pour cette valeur récalcitrante, écris-la comme une somme de deux nombres pour lesquels tu
   sais déjà que $f$ vaut $0$.

## Solution

**Réponse : la seule solution est la fonction nulle.**

**Analyse : la substitution $y = 0$.**

Supposons que $f$ convienne. Prenons $y = 0$ : pour tout réel $x$,

$$f(x + 0) = x\,f(x) + 0 \times f(0), \qquad \text{c'est-à-dire} \qquad f(x) = x\,f(x) .$$

Cette égalité se réécrit

$$f(x)\,(1 - x) = 0 .$$

Un produit est nul quand l'un de ses facteurs l'est. Donc, pour tout $x \ne 1$, le facteur
$1-x$ n'est pas nul, et il vient

$$f(x) = 0 \qquad \text{pour tout } x \ne 1 .$$

**Le cas récalcitrant $x = 1$.**

Pour $x = 1$ l'égalité $f(1)(1-1) = 0$ est automatiquement vraie et n'apprend rien. Revenons
donc à l'équation de départ avec $x = y = \dfrac{1}{2}$ :

$$f\left(\frac{1}{2} + \frac{1}{2}\right) = \frac{1}{2}\,f\!\left(\frac{1}{2}\right) +
\frac{1}{2}\,f\!\left(\frac{1}{2}\right) = f\!\left(\frac{1}{2}\right) .$$

Le membre de gauche vaut $f(1)$, et comme $\dfrac{1}{2} \ne 1$, on sait déjà que
$f\!\left(\dfrac{1}{2}\right) = 0$. Donc

$$f(1) = 0 .$$

**Synthèse.**

On a donc $f(x) = 0$ pour tout réel $x$. Réciproquement, la fonction nulle convient : les deux
membres valent $0$.

**Conclusion.**

$$\boxed{\text{L'unique solution est la fonction nulle } f : x \mapsto 0 .}$$

## Going further

1. On aurait pu traiter le cas $x = 1$ autrement, par exemple avec $x = 3$ et $y = -2$.
   Vérifier que cela marche aussi.
2. Que devient le problème si on remplace $\mathbb{R}$ par $\mathbb{N}$, c'est-à-dire si $x$ et
   $y$ ne peuvent être que des entiers naturels ? Le cas $x = 1$ se règle-t-il encore ?
3. Déterminer toutes les fonctions de $\mathbb{R}$ dans $\mathbb{R}$ telles que
   $f(x+y) = x f(y) + y f(x)$ pour tous $x$, $y$. (Attention, ce n'est pas la même équation.)
