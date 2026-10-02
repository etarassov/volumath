---
id: "8922"
title: "f(x(x + f(y))) = (x + y) f(x)"
grade: 12
theme: functions-analysis
difficulty: 5
duration_min: 50
tags: [equation-fonctionnelle, injectivite, substitution, analyse-synthese]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe B"
  reference: "Poly-Valbonne-2026.pdf, chapitre IV « Groupe B », entraînement de mi-parcours, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f(x\,(x + f(y))) = (x+y)\,f(x).$$

Aucune hypothèse de continuité n'est faite : $f$ est une fonction quelconque.

## Hints

1. Commencez par chercher des solutions évidentes. Essayez la fonction nulle, puis la fonction identité.
2. Notez $P(x,y)$ l'égalité de l'énoncé pour le couple $(x,y)$. C'est en choisissant astucieusement $x$ et $y$ qu'on avance.
3. Supposons $f$ non nulle et fixons $x_0$ tel que $f(x_0) \neq 0$. Si $f(a) = f(b)$, que donnent $P(x_0, a)$ et $P(x_0, b)$ ? Comparez les membres de gauche.
4. Vous aurez alors montré que $f$ est injective. Pour s'en servir, il faut faire disparaître le facteur $(x+y)$ devant $f(x)$ : quel choix de $x$ en fonction de $y$ rend ce facteur égal à $1$ ?
5. Ce choix laisse de côté une seule valeur de $y$. Traitez-la à part, en utilisant ce que vous savez déjà de $f$ ailleurs.

## Solution

Notons $P(x,y)$ l'égalité

$$f(x(x + f(y))) = (x+y) f(x).$$

### Les deux solutions

- **La fonction nulle** $f(x) = 0$ pour tout $x$ : le membre de gauche vaut $f(x \cdot x) = 0$ et le membre de droite $(x+y) \times 0 = 0$. Elle convient.
- **L'identité** $f(x) = x$ pour tout $x$ : le membre de gauche vaut $x(x+y)$ et le membre de droite $(x+y)x$. Elle convient.

Montrons qu'il n'y en a pas d'autres.

### Étape 1 : si $f$ n'est pas la fonction nulle, alors $f$ est injective

Supposons qu'il existe $x_0$ avec $f(x_0) \neq 0$. Soient $a$ et $b$ deux réels tels que $f(a) = f(b)$. Écrivons $P(x_0, a)$ et $P(x_0, b)$ :

$$f(x_0(x_0 + f(a))) = (x_0+a) f(x_0), \qquad f(x_0(x_0 + f(b))) = (x_0+b) f(x_0).$$

Comme $f(a) = f(b)$, les deux membres de gauche sont **le même nombre**. Donc les deux membres de droite sont égaux :

$$(x_0+a) f(x_0) = (x_0+b) f(x_0).$$

Comme $f(x_0) \neq 0$, on peut simplifier : $x_0 + a = x_0 + b$, donc $a = b$. La fonction $f$ est injective.

### Étape 2 : $f(y) = y$ pour tout $y \neq 1$

Le facteur $(x+y)$ du membre de droite vaut $1$ exactement quand $x = 1-y$. Fixons donc $y \neq 1$ et écrivons $P(1-y,\ y)$ :

$$f((1-y)\,(1-y+f(y))) = (1-y+y)\,f(1-y) = f(1-y).$$

Les deux membres sont des images par $f$, et $f$ est injective. On peut donc retirer le $f$ des deux côtés :

$$(1-y)\,(1-y+f(y)) = 1-y.$$

Comme $y \neq 1$, le facteur $1-y$ n'est pas nul et on peut diviser par lui :

$$1 - y + f(y) = 1, \qquad \text{donc} \qquad f(y) = y.$$

### Étape 3 : il reste à traiter $y = 1$

Posons $k = f(1)$. Choisissons un réel $x$ vérifiant les trois conditions

$$x \neq 0, \qquad x \neq 1, \qquad x(x+k) \neq 1.$$

Un tel $x$ existe : la condition $x(x+k) = 1$ s'écrit $x^2 + kx - 1 = 0$, une équation du second degré, qui a au plus deux solutions. On exclut donc au plus quatre valeurs de $x$, et il en reste une infinité.

Écrivons $P(x, 1)$ :

$$f(x(x+k)) = (x+1) f(x).$$

Le nombre $x$ est différent de $1$, donc l'étape 2 donne $f(x) = x$ : le membre de droite vaut $(x+1)x = x^2 + x$.

Le nombre $u = x(x+k)$ est différent de $1$, donc l'étape 2 donne aussi $f(u) = u$ : le membre de gauche vaut $x(x+k) = x^2 + kx$.

En égalant : $x^2 + kx = x^2 + x$, donc $kx = x$, et comme $x \neq 0$, on obtient $k = 1$, c'est-à-dire $f(1) = 1$.

### Conclusion

Si $f$ n'est pas la fonction nulle, alors $f(y) = y$ pour tout $y \neq 1$ (étape 2) et $f(1) = 1$ (étape 3) : $f$ est l'identité.

$$\boxed{\text{Les seules solutions sont } f(x) = 0 \text{ pour tout } x, \text{ et } f(x) = x \text{ pour tout } x.}$$

*La méthode, en résumé.* Une équation fonctionnelle se travaille par **substitutions choisies**. Ici, deux substitutions ont tout fait : $x = x_0$ fixé et $y$ variable pour obtenir l'injectivité, puis $x = 1-y$ pour annuler le facteur gênant. Et comme toujours, il ne faut pas oublier la vérification finale : l'analyse ne fournit que des candidats.

## Going further

1. Où a-t-on utilisé que $f$ est définie sur $\mathbb{R}$ tout entier ? L'exercice a-t-il encore un sens si $f$ est définie seulement sur les réels strictement positifs ?
2. Résolvez de la même façon $f(x(x+f(y))) = (x+2y)f(x)$. Trouvez d'abord la bonne substitution pour faire apparaître un facteur égal à $1$.
