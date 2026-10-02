---
id: "1603"
title: "Une somme de cosinus qui vaut toujours −1/2"
grade: 12
theme: algebra
difficulty: 4
duration_min: 30
tags: [nombres-complexes, racines-de-lunite, trigonometrie, somme-geometrique]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2B, Olympiad Style Problems 1"
  reference: "Handout-2014-1714.pdf, problème 11 (d'après Shklarsky, Chentzov et Yaglom)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2014-1714.pdf"
---

## Statement

Soit $n$ un entier strictement positif. Montrer que
$$\cos\frac{2\pi}{2n+1} + \cos\frac{4\pi}{2n+1} + \cdots + \cos\frac{2n\pi}{2n+1} = -\frac12 .$$

Autrement dit, la somme
$$\sum_{k=1}^{n} \cos\frac{2k\pi}{2n+1}$$
vaut $-\dfrac12$, quelle que soit la valeur de $n$.

## Hints

1. Teste d'abord avec $n = 1$ : la somme se réduit à $\cos\frac{2\pi}{3}$. Puis avec $n = 2$, à la calculatrice.
2. Pose $N = 2n+1$ et $z = e^{2i\pi/N}$. Que vaut $z^N$ ? Que vaut $1 + z + z^2 + \cdots + z^{N-1}$ ?
3. La somme des $N$ racines $N$-ièmes de l'unité est nulle : c'est une somme géométrique de raison $z \ne 1$, et $z^N - 1 = 0$. Donc $z + z^2 + \cdots + z^{N-1} = -1$. Prends la partie réelle.
4. Tu obtiens $\sum_{k=1}^{2n} \cos\frac{2k\pi}{N} = -1$, une somme de $2n$ termes, alors que tu en veux $n$. Compare le terme d'indice $k$ et le terme d'indice $N-k$.

## Solution

**L'idée : les $2n+1$ racines de l'unité d'ordre $2n+1$ ont une somme nulle, et les termes de
cette somme se regroupent deux par deux par conjugaison.**

Posons $N = 2n+1$ et
$$z = e^{\,2i\pi/N} = \cos\frac{2\pi}{N} + i\,\sin\frac{2\pi}{N}.$$

**Étape 1. La somme des racines $N$-ièmes de l'unité est nulle.**

On a $z^N = e^{2i\pi} = 1$, et $z \ne 1$ car $0 < \frac{2\pi}{N} < 2\pi$. La somme géométrique
de raison $z$ donne donc
$$1 + z + z^2 + \cdots + z^{N-1} = \frac{z^{N} - 1}{z - 1} = \frac{1 - 1}{z-1} = 0 .$$

En isolant le premier terme :
$$z + z^2 + \cdots + z^{N-1} = -1 .$$

**Étape 2. Passer aux parties réelles.**

Pour tout $k$, la formule de Moivre donne $z^k = e^{\,2ik\pi/N}$, donc
$\operatorname{Re}(z^k) = \cos\dfrac{2k\pi}{N}$.

La partie réelle d'une somme étant la somme des parties réelles, et $-1$ étant réel :
$$\sum_{k=1}^{N-1} \cos\frac{2k\pi}{N} = -1, \qquad\text{c'est-à-dire}\qquad
\sum_{k=1}^{2n} \cos\frac{2k\pi}{2n+1} = -1 .$$

**Étape 3. Regrouper les termes deux par deux.**

Cette somme comporte $2n$ termes, alors que celle de l'énoncé n'en a que $n$. Comparons le
terme d'indice $k$ et celui d'indice $N - k$ :
$$\cos\frac{2(N-k)\pi}{N} = \cos\!\left(2\pi - \frac{2k\pi}{N}\right) = \cos\frac{2k\pi}{N},$$
car le cosinus est inchangé quand on retranche l'angle à $2\pi$.

Quand $k$ parcourt $1, 2, \ldots, n$, l'indice $N - k$ parcourt $2n, 2n-1, \ldots, n+1$. Les
$2n$ indices $1, 2, \ldots, 2n$ se répartissent donc exactement en $n$ paires
$\{k,\ N-k\}$, et les deux termes de chaque paire sont égaux. Par conséquent
$$\sum_{k=1}^{2n} \cos\frac{2k\pi}{N} = 2 \sum_{k=1}^{n} \cos\frac{2k\pi}{N} .$$

**Conclusion.**

En combinant les étapes 2 et 3 :
$$2 \sum_{k=1}^{n} \cos\frac{2k\pi}{2n+1} = -1,
\qquad\text{donc}\qquad
\sum_{k=1}^{n} \cos\frac{2k\pi}{2n+1} = -\frac12 .$$

**Vérification pour $n = 1$ :** la somme vaut $\cos\frac{2\pi}{3} = -\frac12$. Pour $n = 2$ :
$\cos 72° + \cos 144° \approx \text{0,309} - \text{0,809} = -\text{0,5}$.

## Going further

Géométriquement, les $N$ points d'affixes $1, z, z^2, \ldots, z^{N-1}$ sont les sommets d'un
polygone régulier à $N$ côtés inscrit dans le cercle unité. Dire que leur somme est nulle,
c'est dire que leur centre de gravité est le centre du cercle, ce qui est visible sur le
dessin.

Il existe une démonstration sans nombres complexes : multiplier la somme par
$2\sin\frac{\pi}{N}$ et utiliser $2\sin a \cos b = \sin(a+b) - \sin(b-a)$ fait apparaître une
somme télescopique.
