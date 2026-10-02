---
id: "8906"
title: "x² = yz + 1, et les deux autres"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [systeme, symetrie, identites-remarquables, entiers, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2026"
  reference: "Poly-Valbonne-2026.pdf, chapitre II « Coupe Animath de printemps 2026 », exercice 6 (sujet collégiens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Trouver tous les triplets $(x, y, z)$ d'entiers relatifs (positifs ou négatifs, peu importe) tels que les trois égalités suivantes soient vraies en même temps :

$$x^2 = yz + 1, \qquad y^2 = zx + 1, \qquad z^2 = xy + 1.$$

## Hints

1. Cherchez d'abord quelques solutions à la main, avec de très petits nombres. Essayez $0$, $1$, $-1$.
2. Les trois équations se ressemblent beaucoup. Que se passe-t-il si vous soustrayez la deuxième de la première ?
3. Vous obtiendrez $x^2 - y^2 = -z(x-y)$. Faites apparaître le facteur $x - y$ des deux côtés. Attention : pour simplifier par $x-y$, il faut d'abord traiter à part le cas $x = y$.
4. Une fois obtenu $x + y + z = 0$, remplacez $z$ par $-x-y$ dans la première équation. Vous tombez sur une équation à deux inconnues seulement.
5. Pour résoudre $x^2 + xy + y^2 = 1$ en nombres entiers, multipliez tout par $4$ et regardez si un carré apparaît.
6. Ne pas oublier la dernière étape : vérifier que les triplets trouvés sont bien solutions.

## Solution

**Plan.** On raisonne en deux temps, comme pour tout système. D'abord l'**analyse** : on suppose que $(x,y,z)$ est solution et on voit ce que cela impose. Ensuite la **synthèse** : on vérifie que les candidats trouvés marchent vraiment.

### Analyse

**Étape 1 : la somme est nulle.**

Soustrayons la deuxième équation de la première :

$$x^2 - y^2 = (yz + 1) - (zx + 1) = yz - zx = -z(x - y).$$

Or $x^2 - y^2 = (x-y)(x+y)$. Donc

$$(x-y)(x+y) + z(x-y) = 0, \qquad \text{c'est-à-dire} \qquad (x-y)(x+y+z) = 0.$$

Un produit de deux entiers est nul seulement si l'un des deux est nul. Donc **$x = y$ ou $x+y+z = 0$**.

Le système ne change pas si l'on échange deux des trois lettres : il est symétrique. Le même calcul avec les deux autres couples donne donc aussi « $y = z$ ou $x+y+z=0$ » et « $x = z$ ou $x+y+z=0$ ».

Supposons un instant que $x+y+z \neq 0$. Alors les trois premières possibilités doivent toutes être vraies : $x = y$, $y = z$ et $x = z$, donc $x = y = z$. La première équation devient

$$x^2 = x \cdot x + 1 = x^2 + 1,$$

donc $0 = 1$, ce qui est impossible.

On a donc nécessairement

$$x + y + z = 0.$$

**Étape 2 : une équation à deux inconnues.**

De $x+y+z = 0$ on tire $z = -x - y$. Reportons dans la première équation :

$$x^2 = y \cdot (-x-y) + 1 = -xy - y^2 + 1,$$

donc

$$x^2 + xy + y^2 = 1.$$

**Étape 3 : résoudre en entiers.**

Multiplions par $4$ pour faire apparaître un carré :

$$4x^2 + 4xy + 4y^2 = 4.$$

On reconnaît le début d'une identité remarquable : $(2x+y)^2 = 4x^2 + 4xy + y^2$. Donc

$$(2x+y)^2 + 3y^2 = 4.$$

Les deux termes de gauche sont positifs ou nuls. On a donc $3y^2 \leq 4$, ce qui impose $y^2 \leq 1$, c'est-à-dire $y \in \{-1, 0, 1\}$. Examinons les trois cas.

- **$y = 0$** : alors $(2x)^2 = 4$, donc $2x = \pm 2$ et $x = \pm 1$. Avec $z = -x-y = -x$, on obtient $(1, 0, -1)$ et $(-1, 0, 1)$.
- **$y = 1$** : alors $(2x+1)^2 = 4 - 3 = 1$, donc $2x+1 = \pm 1$, donc $x = 0$ ou $x = -1$. On obtient $(0, 1, -1)$ et $(-1, 1, 0)$.
- **$y = -1$** : alors $(2x-1)^2 = 1$, donc $x = 0$ ou $x = 1$. On obtient $(0, -1, 1)$ et $(1, -1, 0)$.

Les seuls candidats sont donc les six triplets formés de $-1$, $0$ et $1$ dans un ordre quelconque.

### Synthèse

Le système étant symétrique, il suffit de vérifier un seul de ces six triplets, disons $(x,y,z) = (-1, 0, 1)$ :

$$(-1)^2 = 1 \quad \text{et} \quad 0 \times 1 + 1 = 1 \qquad \checkmark$$
$$0^2 = 0 \quad \text{et} \quad 1 \times (-1) + 1 = 0 \qquad \checkmark$$
$$1^2 = 1 \quad \text{et} \quad (-1) \times 0 + 1 = 1 \qquad \checkmark$$

Les six triplets sont donc bien solutions.

### Conclusion

$$\boxed{(x,y,z) \in \{(1,0,-1),\ (1,-1,0),\ (0,1,-1),\ (0,-1,1),\ (-1,0,1),\ (-1,1,0)\}.}$$

*Deux erreurs classiques.* La première : simplifier $(x-y)(x+y) = -z(x-y)$ par $x-y$ sans traiter à part le cas $x = y$, autrement dit diviser par zéro. La seconde : s'arrêter après l'analyse. Tant qu'on n'a pas vérifié, on n'a trouvé que des candidats, pas des solutions.

## Going further

1. Que se passe-t-il si l'on cherche des solutions **réelles** au lieu d'entières ? L'équation $x^2 + xy + y^2 = 1$ a-t-elle alors une infinité de solutions ?
2. Remplacez les $+1$ par $+2$ : le système $x^2 = yz+2$, $y^2 = zx+2$, $z^2 = xy+2$ a-t-il des solutions entières ?
