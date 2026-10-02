---
id: "8810"
title: "Des parties entières qui se partagent 1 à n"
grade: 12
theme: algebra
difficulty: 5
duration_min: 50
tags: [partie-entiere, encadrement, telescopage, maximum-et-minimum]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2025 (dans le polycopié du stage olympique de Valbonne 2025)"
  reference: "Poly-2025-compresse.pdf, chapitre II « Coupe Animath de printemps 2025 », exercice 14 (lycéens), p. 36"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Pour un réel $x$, on note $\lfloor x \rfloor$ sa **partie entière**, c'est-à-dire le plus grand entier inférieur ou égal à $x$. Par exemple $\lfloor \text{3,7} \rfloor = 3$ et $\lfloor -\text{1,2} \rfloor = -2$.

Soit $n \geqslant 2$ un entier. On dit que des réels $x_1, x_2, \dots, x_n$ sont **$n$-partageants** lorsque chacun des entiers $1, 2, \dots, n$ est égal à exactement un des $n$ nombres
$$\lfloor x_1 \rfloor, \; \lfloor x_2 \rfloor, \; \dots, \; \lfloor x_n \rfloor .$$

Déterminer, en fonction de $n$, la plus grande et la plus petite valeur possible de la somme
$$T = \lfloor x_2 - x_1 \rfloor + \lfloor x_3 - x_2 \rfloor + \cdots + \lfloor x_n - x_{n-1} \rfloor$$
lorsque $x_1, x_2, \dots, x_n$ sont $n$-partageants.

## Hints

1. La somme ressemble beaucoup à une somme télescopique. Ce serait exactement $x_n - x_1$ s'il n'y avait pas les parties entières. Il faut donc comparer $\lfloor x_{i+1} - x_i \rfloor$ à $\lfloor x_{i+1} \rfloor - \lfloor x_i \rfloor$.
2. Établis d'abord l'encadrement général : pour tous réels $u$ et $v$, $\lfloor u \rfloor + \lfloor v \rfloor \leqslant \lfloor u + v \rfloor \leqslant \lfloor u \rfloor + \lfloor v \rfloor + 1$. Écris $u$ et $v$ comme partie entière plus partie fractionnaire.
3. Applique-le avec $u = x_{i+1} - x_i$ et $v = x_i$. Tu obtiens un encadrement de $\lfloor x_{i+1} - x_i \rfloor$ par $\lfloor x_{i+1} \rfloor - \lfloor x_i \rfloor$ et $\lfloor x_{i+1} \rfloor - \lfloor x_i \rfloor - 1$.
4. Somme les $n-1$ encadrements : tout se télescope, et il ne reste que $\lfloor x_n \rfloor - \lfloor x_1 \rfloor$. Que peut valoir au mieux, au pire, cette quantité ?
5. Pour atteindre les bornes : le maximum avec des $x_i$ entiers ; le minimum avec des parties fractionnaires strictement décroissantes.

## Solution

Écrivons chaque réel comme partie entière plus partie fractionnaire : $x = \lfloor x \rfloor + \{x\}$, avec $0 \leqslant \{x\} < 1$.

### Étape 1 : un encadrement général

**Pour tous réels $u$ et $v$ :**
$$\lfloor u \rfloor + \lfloor v \rfloor \; \leqslant \; \lfloor u + v \rfloor \; \leqslant \; \lfloor u \rfloor + \lfloor v \rfloor + 1 .$$

En effet, $u + v = (\lfloor u \rfloor + \lfloor v \rfloor) + (\{u\} + \{v\})$, et le second morceau vérifie $0 \leqslant \{u\} + \{v\} < 2$. La partie entière de $u+v$ est donc $\lfloor u \rfloor + \lfloor v \rfloor$ ou $\lfloor u \rfloor + \lfloor v \rfloor + 1$, selon que $\{u\}+\{v\}$ est plus petit ou plus grand que $1$.

### Étape 2 : on encadre chaque terme

Appliquons l'étape 1 avec $u = x_{i+1} - x_i$ et $v = x_i$, de sorte que $u + v = x_{i+1}$ :
$$\lfloor x_{i+1} - x_i \rfloor + \lfloor x_i \rfloor \; \leqslant \; \lfloor x_{i+1} \rfloor \; \leqslant \; \lfloor x_{i+1} - x_i \rfloor + \lfloor x_i \rfloor + 1 .$$

En isolant $\lfloor x_{i+1} - x_i \rfloor$ :
$$\lfloor x_{i+1} \rfloor - \lfloor x_i \rfloor - 1 \; \leqslant \; \lfloor x_{i+1} - x_i \rfloor \; \leqslant \; \lfloor x_{i+1} \rfloor - \lfloor x_i \rfloor . \qquad (\star)$$

### Étape 3 : on somme, et tout se télescope

Additionnons $(\star)$ pour $i = 1, 2, \dots, n-1$. Au milieu on obtient $T$. À droite,
$$\sum_{i=1}^{n-1} ( \lfloor x_{i+1} \rfloor - \lfloor x_i \rfloor ) = \lfloor x_n \rfloor - \lfloor x_1 \rfloor ,$$
car la somme est télescopique. À gauche, on retranche $n-1$ fois $1$. Donc
$$\lfloor x_n \rfloor - \lfloor x_1 \rfloor - (n-1) \; \leqslant \; T \; \leqslant \; \lfloor x_n \rfloor - \lfloor x_1 \rfloor . \qquad (\star\star)$$

### Étape 4 : le maximum vaut $n-1$

Les nombres $\lfloor x_1 \rfloor, \dots, \lfloor x_n \rfloor$ sont exactement $1, 2, \dots, n$ dans un certain ordre. Donc $\lfloor x_n \rfloor \leqslant n$ et $\lfloor x_1 \rfloor \geqslant 1$, d'où
$$T \; \leqslant \; \lfloor x_n \rfloor - \lfloor x_1 \rfloor \; \leqslant \; n - 1 .$$

Cette valeur est atteinte : prenons $x_i = i$ pour tout $i$. Les parties entières sont $1, 2, \dots, n$, donc les $x_i$ sont bien $n$-partageants, et
$$T = \lfloor 2-1 \rfloor + \lfloor 3-2 \rfloor + \cdots + \lfloor n - (n-1) \rfloor = \underbrace{1 + 1 + \cdots + 1}_{n-1} = n-1 .$$

**Le maximum de $T$ vaut $n-1$.**

### Étape 5 : le minimum vaut $2 - 2n$

Avec $\lfloor x_n \rfloor \geqslant 1$ et $\lfloor x_1 \rfloor \leqslant n$, l'inégalité de gauche de $(\star\star)$ donne
$$T \; \geqslant \; 1 - n - (n-1) = 2 - 2n .$$

Cette valeur est atteinte. Il faut pour cela que $\lfloor x_1 \rfloor = n$, que $\lfloor x_n \rfloor = 1$, et que chaque inégalité de gauche de $(\star)$ soit une égalité. Or, d'après l'étape 1, l'égalité $\lfloor x_{i+1} - x_i \rfloor = \lfloor x_{i+1} \rfloor - \lfloor x_i \rfloor - 1$ a lieu dès que $\{x_{i+1}\} < \{x_i\}$ : il suffit donc que les parties fractionnaires soient strictement décroissantes.

Posons
$$x_i = (n + 1 - i) + \frac{n-i}{n}, \qquad 1 \leqslant i \leqslant n .$$
Comme $0 \leqslant \dfrac{n-i}{n} < 1$, on a $\lfloor x_i \rfloor = n+1-i$ : les parties entières sont $n, n-1, \dots, 1$, donc les $x_i$ sont $n$-partageants, avec $\lfloor x_1 \rfloor = n$ et $\lfloor x_n \rfloor = 1$. Les parties fractionnaires $\dfrac{n-i}{n}$ sont strictement décroissantes.

Vérifions directement :
$$x_{i+1} - x_i = -1 - \frac{1}{n}, \qquad \text{donc} \qquad \lfloor x_{i+1} - x_i \rfloor = -2 ,$$
et en sommant les $n-1$ termes,
$$T = -2(n-1) = 2 - 2n .$$

**Le minimum de $T$ vaut $2 - 2n$.**

### Conclusion

$$\boxed{\max T = n - 1 \qquad \text{et} \qquad \min T = 2 - 2n .}$$

### Deux erreurs fréquentes

- Supposer d'emblée que la suite $(x_i)$ est croissante : rien ne l'impose, et c'est justement dans le désordre que se trouve le minimum.
- Croire que $\lfloor x \rfloor \geqslant 0$ pour tout $x$, ou que $\lfloor x_{i+1} - x_i \rfloor \leqslant 1$. Les différences peuvent être très négatives.

## Going further

Même question pour la somme « circulaire »
$$\lfloor x_2 - x_1 \rfloor + \lfloor x_3 - x_2 \rfloor + \cdots + \lfloor x_n - x_{n-1} \rfloor + \lfloor x_1 - x_n \rfloor .$$
