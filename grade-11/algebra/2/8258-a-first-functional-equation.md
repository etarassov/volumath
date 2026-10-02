---
id: "8258"
title: "Une première équation fonctionnelle"
grade: 11
theme: algebra
difficulty: 2
duration_min: 15
tags: [equation-fonctionnelle, substitution, fonction-affine]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », deuxième partie, « Équations fonctionnelles » (Vincent Jugé), exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Déterminer **toutes** les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans
$\mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f(x+y) = f(x) + y .$$

*Une remarque de méthode.* Dans un tel exercice, l'égalité doit être vraie pour **tous** les
$x$ et **tous** les $y$. On a donc le droit de choisir des valeurs particulières et de voir ce
qu'elles donnent. Mais attention : cela livre seulement des **candidats**. Il faut ensuite
vérifier que les candidats conviennent vraiment.

## Hints

1. Choisis une valeur de $x$ qui simplifie beaucoup le membre de gauche.
2. Essaie $x = 0$.
3. Une fois le candidat trouvé, n'oublie pas de vérifier qu'il convient.

## Solution

**Analyse : on cherche les candidats.**

Supposons que $f$ convienne. L'égalité est vraie pour tous $x$ et $y$ ; prenons $x = 0$ :

$$f(0 + y) = f(0) + y, \qquad \text{c'est-à-dire} \qquad f(y) = f(0) + y .$$

Notons $c = f(0)$. Cette égalité vaut pour tout réel $y$, donc

$$f(y) = y + c \quad \text{pour tout } y .$$

La fonction $f$ est donc forcément de la forme $x \mapsto x + c$, pour une constante $c$.

**Synthèse : on vérifie.**

Soit $c$ un réel quelconque et $f : x \mapsto x + c$. Alors pour tous $x$ et $y$ :

$$f(x+y) = (x+y) + c \qquad \text{et} \qquad f(x) + y = (x + c) + y = x + y + c .$$

Les deux membres sont égaux : toutes ces fonctions conviennent.

**Conclusion.**

$$\boxed{\text{Les solutions sont exactement les fonctions } f : x \mapsto x + c, \ c \in
\mathbb{R}.}$$

Il y en a donc une infinité, une par valeur de $c$. Par exemple $f(x) = x$ (avec $c = 0$) et
$f(x) = x + 5$ (avec $c = 5$).

## Going further

1. Que deviennent les solutions si l'on impose en plus $f(1) = 0$ ?
2. Déterminer toutes les fonctions $f$ telles que $f(x+y) = f(x) + 2y$ pour tous $x$, $y$.
3. Et celles telles que $f(x+y) = f(x) \times f(y)$ pour tous $x$, $y$, avec en plus
   $f(1) = 3$ ? (Commencer par chercher $f(0)$, puis $f(n)$ pour $n$ entier.)
