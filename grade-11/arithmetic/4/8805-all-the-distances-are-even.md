---
id: "8805"
title: "Des points alignés et des distances toutes paires"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [parite, valeur-absolue, abscisse, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2025 (dans le polycopié du stage olympique de Valbonne 2025)"
  reference: "Poly-2025-compresse.pdf, chapitre II « Coupe Animath de printemps 2025 », exercice 6 (collégiens), p. 24"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Rémi place $2n+1$ points deux à deux distincts sur une même droite, de façon que la distance entre deux quelconques de ces points soit toujours un nombre entier.

Elsa fait alors la remarque suivante : quel que soit le point qu'elle choisit parmi les $2n+1$, si elle additionne les $2n$ distances de ce point à tous les autres, elle obtient un nombre **pair**.

Montrer qu'alors toutes les distances entre deux de ces points sont paires.

## Hints

1. Munis la droite d'un repère et note $a_1, \dots, a_{2n+1}$ les abscisses des points. Si l'origine est placée sur l'un des points, pourquoi toutes ces abscisses sont-elles entières ?
2. La distance entre le $i$-ième et le $j$-ième point s'écrit $|a_i - a_j|$. Or $|a_i - a_j|$ et $a_i - a_j$ ont toujours la même parité : ils ne diffèrent que par le signe.
3. On peut donc remplacer chaque valeur absolue par la différence, sans changer la parité de la somme d'Elsa. Développe alors cette somme.
4. Note $S = a_1 + a_2 + \cdots + a_{2n+1}$. La somme des distances au point $i$ a la même parité que $(2n+1)a_i - S$. Qu'en déduis-tu sur la parité de $a_i$ ?

## Solution

### Mise en place

Munissons la droite d'un repère, en plaçant l'origine sur l'un des $2n+1$ points. Chaque point a alors une abscisse, et cette abscisse est la distance (au signe près) au point choisi comme origine : c'est donc un **entier**. Notons $a_1, a_2, \dots, a_{2n+1}$ ces abscisses ; ce sont des entiers relatifs deux à deux distincts.

La distance entre le $i$-ième et le $j$-ième point vaut $|a_i - a_j|$.

### L'observation clé sur la parité

Pour deux entiers $u$ et $v$, les nombres $|u - v|$ et $u - v$ sont égaux ou opposés. Deux entiers opposés ont la même parité. Donc
$$|a_i - a_j| \quad \text{et} \quad a_i - a_j \quad \text{ont la même parité.}$$

Cela permet d'enlever toutes les valeurs absolues, du moment qu'on ne s'intéresse qu'à la parité.

### On traduit l'hypothèse d'Elsa

Fixons un indice $i$. L'hypothèse dit que
$$\sum_{j \neq i} |a_i - a_j| \quad \text{est pair.}$$

D'après l'observation précédente, cette somme a la même parité que
$$\sum_{j \neq i} (a_i - a_j) .$$

Calculons cette dernière. On peut ajouter le terme $a_i - a_i$, qui est nul et ne change rien, ce qui permet de sommer sur **tous** les indices :
$$\sum_{j=1}^{2n+1} (a_i - a_j) = (2n+1)\,a_i - \sum_{j=1}^{2n+1} a_j .$$

Posons $S = a_1 + a_2 + \cdots + a_{2n+1}$. L'hypothèse devient donc : pour tout $i$,
$$(2n+1)\,a_i - S \quad \text{est pair.}$$

### Conclusion

Le nombre $2n+1$ est impair, donc $(2n+1)a_i$ a la même parité que $a_i$. Dire que $(2n+1)a_i - S$ est pair, c'est donc dire que
$$a_i \quad \text{et} \quad S \quad \text{ont la même parité.}$$

Et cela vaut pour **chaque** indice $i$. Donc tous les $a_i$ ont la même parité que $S$, et en particulier ils ont tous la même parité entre eux.

La différence de deux entiers de même parité est paire, donc pour tous $i$ et $j$,
$$|a_i - a_j| \quad \text{est pair.}$$

**Conclusion.** Toutes les distances entre deux des $2n+1$ points sont des entiers pairs.

### Pourquoi le nombre de points doit être impair

L'argument a utilisé que $2n+1$ est impair, et ce n'est pas un détail. Avec un nombre pair de points, l'énoncé tombe : prenons les quatre points d'abscisses $0$, $1$, $2$, $3$. Les sommes des distances valent
$$1+2+3 = 6, \qquad 1+1+2 = 4, \qquad 2+1+1 = 4, \qquad 3+2+1 = 6,$$
toutes paires, alors que la distance de $0$ à $1$ vaut $1$, qui est impair.

## Going further

Remplacer « pair » par « divisible par $3$ » dans l'énoncé. Pour quels nombres de points la conclusion analogue reste-t-elle vraie ?
