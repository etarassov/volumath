---
id: "11405"
title: "Deux cordes parallèles d'une même couleur"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [tiroirs, cercle, polygone-regulier, symetrie, coloriage]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 4 (combinatoire)"
  reference: "2020-01_EnvoiCombiFinal.pdf, Exercices Juniors, exercice 9 ; corrigé 2020-03_corrige-commente-envoi-4.pdf (le corrigé passe par des cordes de même longueur et plusieurs polygones réguliers ; la solution ci-dessous utilise un seul polygone régulier)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/EnvoiCombiFinal.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_EnvoiCombiFinal.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On dispose de $n$ couleurs, et on colorie **chaque point** d'un
cercle avec l'une de ces couleurs.

Montrer qu'il existe deux droites parallèles qui coupent le cercle en quatre points distincts,
tous les quatre de la même couleur.

## Hints

1. On ne peut pas regarder tous les points du cercle. Choisis un nombre fini de points bien
   placés : les sommets d'un polygone régulier, avec beaucoup de sommets.
2. Numérote les sommets $0, 1, \ldots, N-1$ dans l'ordre. Quand la corde qui joint les sommets
   $i$ et $j$ est-elle parallèle à celle qui joint $k$ et $\ell$ ? Pense aux axes de symétrie
   du polygone.
3. Par le principe des tiroirs, une couleur est portée par beaucoup de sommets. Combien de
   paires de sommets de cette couleur obtiens-tu, et combien de valeurs peut prendre le reste de
   $i + j$ dans la division par $N$ ?

## Solution

**L'idée.**

On se ramène à un nombre fini de points : les $N$ sommets d'un polygone régulier inscrit dans le
cercle, avec $N$ bien choisi. On les numérote $0, 1, 2, \ldots, N-1$ en tournant dans un sens.

**Quand deux cordes du polygone sont-elles parallèles ?**

Mesurons les positions sur le cercle en « $N$-ièmes de tour » : le sommet $k$ est à la position
$k$. Pour un entier $s$, notons $\Delta_s$ la droite qui passe par le centre du cercle et par le
point de position $\frac{s}{2}$ (c'est un sommet si $s$ est pair, le milieu d'un arc entre deux
sommets si $s$ est impair).

La symétrie d'axe $\Delta_s$ conserve le cercle et renverse le sens de parcours, en fixant la
position $\frac{s}{2}$. Elle envoie donc la position $\frac{s}{2} + x$ sur la position
$\frac{s}{2} - x$, et en particulier le sommet $k$ sur la position $s - k$, qui est encore un
sommet (en comptant les positions à un tour près).

Si deux sommets $i$ et $j$ vérifient $i + j = s$, la symétrie d'axe $\Delta_s$ échange $i$ et
$j$, donc $\Delta_s$ est la médiatrice de la corde $[ij]$, et cette corde est perpendiculaire à
$\Delta_s$. Enfin $\Delta_{s+N}$ passe par la position $\frac{s}{2} + \frac{N}{2}$, le point
diamétralement opposé à la position $\frac{s}{2}$ : c'est la même droite que $\Delta_s$. Ce qui
compte est donc seulement le reste de $i + j$ dans la division par $N$.

> **Deux cordes $[ij]$ et $[k\ell]$ telles que $i + j$ et $k + \ell$ ont le même reste dans la
> division par $N$ sont perpendiculaires à la même droite, donc parallèles.**

Si de plus les quatre sommets sont distincts, les deux cordes ne sont pas sur la même droite (une
droite coupe le cercle en deux points au plus) : on a bien deux droites parallèles distinctes.

**Deux paires différentes de même reste n'ont pas de sommet commun.**

Si $\{i, j\}$ et $\{i, k\}$ sont deux paires avec $i + j$ et $i + k$ de même reste, alors $j - k$
est un multiple de $N$, et comme $j$ et $k$ sont entre $0$ et $N-1$, on a $j = k$. Deux paires
**différentes** de même reste n'ont donc aucun sommet en commun : elles donnent quatre sommets
distincts.

**Le choix de $N$ et le principe des tiroirs.**

Prenons $N = 2n^2 + n + 1 = n(2n+1) + 1$.

Les $N$ sommets sont coloriés avec $n$ couleurs. Si chaque couleur colorait au plus $2n + 1$
sommets, il y aurait au plus $n(2n+1) < N$ sommets. Une couleur colore donc au moins $m = 2n+2$
sommets. Choisissons $m$ d'entre eux.

Ces $m$ sommets forment
$$\frac{m(m-1)}{2} = \frac{(2n+2)(2n+1)}{2} = (n+1)(2n+1) = 2n^2 + 3n + 1$$
paires. Pour chaque paire $\{i, j\}$, le reste de $i + j$ dans la division par $N$ prend l'une des
$N = 2n^2 + n + 1$ valeurs $0, 1, \ldots, N-1$. Comme $2n^2 + 3n + 1 > 2n^2 + n + 1$, deux paires
différentes ont le même reste, par le principe des tiroirs.

**Conclusion.**

Ces deux paires sont formées de quatre sommets distincts, tous de la même couleur, et les deux
cordes qui les joignent sont portées par deux droites parallèles distinctes.

**Il existe bien deux droites parallèles qui coupent le cercle en quatre points distincts de la
même couleur.**

## Going further

Une droite qui coupe le cercle en deux points $A$ et $B$ et une droite parallèle qui le coupe en
$C$ et $D$ forment un trapèze isocèle inscrit dans le cercle. L'énoncé dit donc aussi : quel que
soit le coloriage, il existe un trapèze isocèle (éventuellement un rectangle) dont les quatre
sommets sont sur le cercle et de la même couleur.
