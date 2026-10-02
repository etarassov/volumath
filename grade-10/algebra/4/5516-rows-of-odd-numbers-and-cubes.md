---
id: "5516"
title: "Des lignes de nombres impairs qui font des cubes"
grade: 10
theme: algebra
difficulty: 4
duration_min: 45
tags: [nombres-impairs, cubes, somme, calcul-litteral, suite-arithmetique]
adapted_from: null
see_also: ["2811"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Visualization in Algebra, Tom Davis"
  reference: "TDvisualizationinalgebra.pdf, « Visualization and Symmetry », section 3.1, problème 15 (sans corrigé dans la source)"
  url: "https://mathcircles.org/activity/visualization-in-algebra/"
  original_language: "en"
  local_copy: "sources/originals/namc/TDvisualizationinalgebra.pdf"
---

## Statement

On écrit les nombres impairs à la suite, en allant à la ligne de plus en plus tard : un nombre sur la première ligne, deux sur la deuxième, trois sur la troisième, et ainsi de suite.

$$1 = 1$$
$$3 + 5 = 8$$
$$7 + 9 + 11 = 27$$
$$13 + 15 + 17 + 19 = 64$$

**a)** Écrire la cinquième ligne et calculer sa somme. Que remarque-t-on ?

**b)** Démontrer que la ligne numéro $n$ commence par le nombre $n^2 - n + 1$.

**c)** Démontrer que la somme de la ligne numéro $n$ vaut $n^3$.

**d)** On rappelle que la somme des $k$ premiers nombres impairs vaut $k^2$ :
$$1 + 3 + 5 + \cdots + (2k - 1) = k^2 .$$
En déduire la valeur de $1^3 + 2^3 + 3^3 + \cdots + n^3$.

## Hints

1. Question a) : la quatrième ligne se termine par $19$, donc la cinquième commence par $21$ et contient cinq nombres. Les quatre premières sommes valent $1$, $8$, $27$, $64$ : regarde-les de près.
2. Question b) : combien de nombres impairs ont été écrits **avant** la ligne $n$ ? Tu connais la somme $1 + 2 + \cdots + (n-1)$.
3. Le $k$-ième nombre impair est $2k - 1$. Si la ligne $n$ commence par le nombre impair de rang $N+1$, que vaut-il ?
4. Question c) : la ligne $n$ contient $n$ nombres qui augmentent de $2$ en $2$. Écris le dernier, puis additionne le premier et le dernier.
5. Pour une liste de nombres régulièrement espacés, la somme vaut « le nombre de termes, multiplié par la moyenne du premier et du dernier ».
6. Question d) : les $n$ premières lignes mises bout à bout forment une seule liste. Quelle est-elle ? Combien contient-elle de nombres ?

## Solution

**a) La cinquième ligne.**

La quatrième ligne s'arrête à $19$, donc la cinquième commence à $21$ et contient cinq nombres :
$$21 + 23 + 25 + 27 + 29 = 125 .$$

Et les cinq sommes obtenues sont
$$1 = 1^3, \qquad 8 = 2^3, \qquad 27 = 3^3, \qquad 64 = 4^3, \qquad 125 = 5^3 .$$

**La somme de la ligne $n$ semble valoir $n^3$.** C'est ce qu'il faut démontrer.

**b) Le premier nombre de la ligne $n$.**

Avant la ligne $n$, on a écrit $1$ nombre sur la première ligne, $2$ sur la deuxième, ..., $n-1$ sur la ligne $n-1$, soit en tout
$$1 + 2 + \cdots + (n-1) = \frac{n(n-1)}{2} \ \text{ nombres impairs.}$$

Le premier nombre de la ligne $n$ est donc le nombre impair de rang $\dfrac{n(n-1)}{2} + 1$. Comme le nombre impair de rang $k$ vaut $2k - 1$, ce premier nombre vaut
$$2\left(\frac{n(n-1)}{2} + 1\right) - 1 = n(n-1) + 2 - 1 = n^2 - n + 1 .$$

*Vérification :* pour $n = 4$, on obtient $16 - 4 + 1 = 13$, et la quatrième ligne commence bien par $13$.

**c) La somme de la ligne $n$.**

La ligne $n$ contient $n$ nombres, qui augmentent de $2$ à chaque fois. Le premier vaut $n^2 - n + 1$, et le dernier vaut
$$(n^2 - n + 1) + 2(n - 1) = n^2 + n - 1 .$$

Pour additionner une liste de nombres régulièrement espacés, on utilise l'astuce de Gauss : on écrit la somme $S$ dans un sens, puis dans l'autre, et on additionne terme à terme. Chaque paire donne « premier $+$ dernier », et il y a $n$ paires :
$$2S = n \times \big[(n^2 - n + 1) + (n^2 + n - 1)\big] = n \times 2n^2 = 2n^3 .$$

Donc
$$S = n^3 .$$

La somme de la ligne $n$ vaut bien $n^3$, ce qui démontre l'observation de la question a).

**d) La somme des cubes.**

Mettons bout à bout les $n$ premières lignes. D'un côté, leur somme totale vaut
$$1^3 + 2^3 + 3^3 + \cdots + n^3 .$$

De l'autre, ces lignes contiennent **tous** les nombres impairs depuis $1$ jusqu'au dernier de la ligne $n$, c'est-à-dire jusqu'à $n^2 + n - 1$, sans trou ni répétition. Combien y en a-t-il ? Le nombre $n^2 + n - 1$ est le nombre impair de rang $k$ où
$$2k - 1 = n^2 + n - 1, \qquad \text{donc} \qquad k = \frac{n^2 + n}{2} = \frac{n(n+1)}{2} .$$

La somme des $k$ premiers nombres impairs valant $k^2$, on obtient
$$1^3 + 2^3 + \cdots + n^3 = \left(\frac{n(n+1)}{2}\right)^2 .$$

Et comme $\dfrac{n(n+1)}{2} = 1 + 2 + \cdots + n$, cela s'écrit aussi
$$\boxed{\,1^3 + 2^3 + \cdots + n^3 = (1 + 2 + \cdots + n)^2 .}$$

*Vérification :* pour $n = 4$, à gauche $1 + 8 + 27 + 64 = 100$, à droite $(1+2+3+4)^2 = 10^2 = 100$.

**Ce qu'il faut retenir.** Cette égalité célèbre se démontre d'habitude par récurrence, ce qui marche très bien mais n'explique rien. Ici, elle tombe toute seule : les cubes ne sont rien d'autre que des paquets de nombres impairs, et la somme de tous ces paquets est la somme des premiers nombres impairs, donc un carré.

## Going further

1. Pourquoi la somme des $k$ premiers nombres impairs vaut-elle $k^2$ ? Essaie de le voir avec un dessin : dispose $k^2$ points en carré et découpe-les en équerres.
2. Le nombre du milieu de la ligne $n$, quand $n$ est impair, vaut exactement $n^2$. Le vérifier, puis l'expliquer.
3. Cherche un découpage analogue pour $1^2 + 2^2 + \cdots + n^2$. Est-ce que cela marche aussi bien ?
