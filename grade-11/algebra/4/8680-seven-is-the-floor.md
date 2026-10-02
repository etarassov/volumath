---
id: "8680"
title: "Trois quotients dont la somme atteint 7"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, inegalite-arithmetico-geometrique, cas-d-egalite, changement-de-variable]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 34 (niveau 1). La Muraille ne publie pas de corrigés ; solution rédigée ici et vérifiée numériquement."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $x$, $y$ et $z$ des réels strictement positifs vérifiant $x \geqslant y + z$. Montrer que

$$\frac{x+y}{z} + \frac{z+x}{y} + \frac{y+z}{x} \geqslant 7 .$$

## Hints

1. Vérifie d'abord que $7$ est bien la bonne valeur : essaie $y = z = 1$ et $x = 2$.
2. L'hypothèse ne porte que sur $x$ et sur la somme $y+z$. Pose donc $t = y+z$ : l'hypothèse devient simplement $x \geqslant t$.
3. Sépare chaque fraction. Tu peux regrouper les termes contenant $x$ : ils donnent $x\left(\frac1y + \frac1z\right)$.
4. Exprime $\frac1y + \frac1z$ et $\frac{y}{z} + \frac{z}{y}$ en fonction de $t$ et du produit $yz$.
5. Pour une somme $t$ fixée, quelle est la plus grande valeur possible du produit $yz$ ? Utilise l'inégalité arithmético-géométrique.
6. Tu arriveras à une expression ne dépendant que de $u = x/t \geqslant 1$. Factorise alors $4u + \frac1u - 5$.

## Solution

### On réorganise l'expression

Notons $E$ le membre de gauche et posons $t = y + z$, de sorte que l'hypothèse s'écrit $x \geqslant t$.

Séparons les fractions :

$$E = \frac{x}{z} + \frac{y}{z} + \frac{z}{y} + \frac{x}{y} + \frac{y+z}{x} = x\left(\frac{1}{y} + \frac{1}{z}\right) + \left(\frac{y}{z} + \frac{z}{y}\right) + \frac{t}{x} .$$

Exprimons les deux parenthèses avec $t$ et $p = yz$ :

$$\frac{1}{y} + \frac{1}{z} = \frac{y+z}{yz} = \frac{t}{p}, \qquad \frac{y}{z} + \frac{z}{y} = \frac{y^2+z^2}{yz} = \frac{(y+z)^2 - 2yz}{yz} = \frac{t^2}{p} - 2 .$$

D'où

$$E = \frac{xt}{p} + \frac{t^2}{p} - 2 + \frac{t}{x} = \frac{t\,(x + t)}{p} - 2 + \frac{t}{x} .$$

### On majore le produit $yz$

Par l'inégalité arithmético-géométrique appliquée à $y$ et $z$ :

$$\sqrt{yz} \leqslant \frac{y+z}{2}, \qquad \text{donc} \qquad p = yz \leqslant \frac{t^2}{4} .$$

Comme $t(x+t) > 0$, diminuer $p$ **augmente** la fraction $\frac{t(x+t)}{p}$. On obtient donc

$$E \geqslant \frac{t\,(x+t)}{t^2/4} - 2 + \frac{t}{x} = \frac{4(x+t)}{t} - 2 + \frac{t}{x} = \frac{4x}{t} + 4 - 2 + \frac{t}{x} = \frac{4x}{t} + \frac{t}{x} + 2 .$$

### Une seule variable

Posons $u = \dfrac{x}{t}$. L'hypothèse $x \geqslant t$ donne $u \geqslant 1$, et

$$E \geqslant 4u + \frac{1}{u} + 2 .$$

Il reste à montrer que $4u + \frac1u + 2 \geqslant 7$, c'est-à-dire $4u + \frac1u - 5 \geqslant 0$. Réduisons au même dénominateur :

$$4u + \frac{1}{u} - 5 = \frac{4u^2 - 5u + 1}{u} = \frac{(4u - 1)(u - 1)}{u} .$$

*(On vérifie le développement : $(4u-1)(u-1) = 4u^2 - 4u - u + 1 = 4u^2 - 5u + 1$.)*

Comme $u \geqslant 1$, les trois quantités $4u - 1$, $u - 1$ et $u$ sont positives ou nulles, donc le quotient est positif ou nul.

### Conclusion

$$\boxed{\frac{x+y}{z} + \frac{z+x}{y} + \frac{y+z}{x} \geqslant 7 .}$$

**Le cas d'égalité.** Il faut l'égalité partout : $yz = \frac{t^2}{4}$, c'est-à-dire $y = z$, et $u = 1$, c'est-à-dire $x = t = y+z$. Donc $x = 2y = 2z$. Par exemple $y = z = 1$ et $x = 2$ :

$$\frac{2+1}{1} + \frac{1+2}{1} + \frac{1+1}{2} = 3 + 3 + 1 = 7 . \qquad \checkmark$$

## Going further

L'exercice illustre une stratégie très générale pour les inégalités à plusieurs variables : **réduire le nombre de variables**.

Ici, l'expression dépendait de trois nombres $x$, $y$, $z$, mais l'hypothèse ne parlait que de $x$ et de $y+z$. En passant aux quantités $t = y+z$ et $p = yz$, puis en majorant $p$ par sa plus grande valeur possible, on est tombé à **une seule** variable $u = x/t$, et une inégalité à une variable se traite par une factorisation.

Remarque enfin que sans l'hypothèse $x \geqslant y+z$, l'inégalité est fausse : avec $x = y = z = 1$, le membre de gauche vaut $6 < 7$. La borne $6$ est d'ailleurs le minimum absolu sans contrainte.
