---
id: "40046"
title: "Sur l'hyperbole xy = k, l'orthocentre reste sur la courbe"
grade: 11
theme: geometry
difficulty: 3
duration_min: 30
tags: [orthocentre, hyperbole, produit-scalaire, coordonnees, factorisation]
adapted_from: null
see_also: ["40041", "40042", "40043", "40044", "40045", "40047", "40048"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2003, mathématiques, série S"
  reference: "cg-2003-s-sujet.pdf, problème « parties orthocentriques », quatrième partie, question 1 (a, b et c)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2003.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2003-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé. On appelle **triangle** tout ensemble de trois points non
alignés. Une partie $X$ du plan est dite **orthocentrique** si elle n'est pas incluse dans une
droite et si l'orthocentre de tout triangle dont les sommets sont dans $X$ appartient encore à $X$.

Soit $k$ un réel non nul et $Y$ l'hyperbole d'équation $xy = k$.

1. Soit $A$, $B$, $C$, $D$ quatre points distincts de $Y$, d'abscisses respectives $a$, $b$, $c$,
   $d$. Montrer que les vecteurs $\overrightarrow{AB}$ et $\overrightarrow{CD}$ sont orthogonaux si
   et seulement si $abcd = -k^2$.
2. Soit $A$, $B$, $C$ trois points distincts de $Y$, d'abscisses respectives $a$, $b$, $c$.
   Déterminer l'orthocentre du triangle $ABC$.
3. Montrer que $Y$ est orthocentrique.

## Hints

1. **Question 1.** Écrire les coordonnées : $A\left(a\,;\,\frac{k}{a}\right)$, etc. Mettre
   $b - a$ en facteur dans les coordonnées de $\overrightarrow{AB}$.
2. **Question 2.** Chercher l'orthocentre sur l'hyperbole elle-même : quel point $H$ de $Y$, d'abscisse
   $h$, rend $\overrightarrow{AH}$ orthogonal à $\overrightarrow{BC}$ ?
3. **Question 2.** La condition de la question 1, appliquée à $A$, $H$, $B$, $C$, donne $h$. Vérifier
   que le même $H$ convient pour les deux autres hauteurs.
4. **Question 3.** Trois points distincts de $Y$ forment-ils toujours un triangle ? Combien de points
   une droite peut-elle avoir en commun avec $Y$ ?

## Solution

**1.** Les points sont $A\left(a\,;\,\frac{k}{a}\right)$, $B\left(b\,;\,\frac{k}{b}\right)$, etc.,
avec $a$, $b$, $c$, $d$ non nuls. Comme $\frac{k}{b} - \frac{k}{a} = -\frac{k(b - a)}{ab}$,
$$\overrightarrow{AB} = (b - a)\left(1\,;\,-\frac{k}{ab}\right), \qquad \overrightarrow{CD} = (d - c)\left(1\,;\,-\frac{k}{cd}\right).$$
Donc
$$\overrightarrow{AB} \cdot \overrightarrow{CD} = (b - a)(d - c)\left(1 + \frac{k^2}{abcd}\right).$$
Comme $a \neq b$ et $c \neq d$, ce produit est nul si et seulement si $1 + \frac{k^2}{abcd} = 0$,
c'est-à-dire $abcd = -k^2$.

Ce calcul n'utilise que $a \neq b$ et $c \neq d$ : il reste valable si l'un des points $A$, $B$ est
égal à l'un des points $C$, $D$. C'est ainsi qu'on l'utilise à la question suivante.

**2.** Posons $h = -\frac{k^2}{abc}$ et soit $H\left(h\,;\,\frac{k}{h}\right)$ le point de $Y$
d'abscisse $h$.

- *$H$ est sur la hauteur issue de $A$.* Si $H = A$, c'est clair. Sinon, d'après le calcul de la
  question 1 avec les points $A$, $H$, $B$, $C$ :
  $\overrightarrow{AH} \cdot \overrightarrow{BC} = (h - a)(c - b)\left(1 + \frac{k^2}{ahbc}\right)$,
  et $ahbc = abc \times h = -k^2$, donc ce produit scalaire est nul : $(AH) \perp (BC)$.
- *De même*, $hbca = -k^2$ montre que $H$ est sur la hauteur issue de $B$, et sur celle issue de
  $C$.

**Conclusion :** l'orthocentre de $ABC$ est le point de $Y$ d'abscisse $-\frac{k^2}{abc}$,
c'est-à-dire $\left(-\frac{k^2}{abc}\,;\,-\frac{abc}{k}\right)$.

**3.** *Trois points distincts de $Y$ ne sont jamais alignés.* Une droite verticale $x = x_0$ coupe
$Y$ en au plus un point. Une droite $y = mx + p$ coupe $Y$ aux points dont l'abscisse vérifie
$x(mx + p) = k$, soit $mx^2 + px - k = 0$. Si $m \neq 0$, c'est une équation du second degré, qui a
au plus deux solutions ; si $m = 0$, elle s'écrit $px = k$ et a au plus une solution (aucune si
$p = 0$, car $k \neq 0$). En particulier $Y$ n'est pas incluse dans une droite.

Ainsi, trois points distincts de $Y$ forment toujours un triangle, et d'après la question 2 son
orthocentre est sur $Y$.

**Conclusion :** l'hyperbole $Y$ est orthocentrique.

**Bilan.** Sur l'hyperbole $xy = k$, deux cordes $[AB]$ et $[CD]$ sont perpendiculaires exactement
quand le produit des quatre abscisses vaut $-k^2$. Il en découle que l'orthocentre d'un triangle
inscrit dans cette hyperbole est encore sur l'hyperbole, au point d'abscisse $-\frac{k^2}{abc}$.

## Going further

- L'hyperbole $xy = k$ est une hyperbole **équilatère** : ses asymptotes sont perpendiculaires.
  Le résultat reste vrai pour toute hyperbole équilatère, puisqu'on peut toujours choisir le repère
  pour que ses asymptotes soient les axes.
- Dans la suite du sujet, on s'en servait pour montrer que les points à coordonnées entières de la
  courbe $x^2 + qxy - y^2 = 1$ forment un ensemble orthocentrique infini (exercice 40047).
