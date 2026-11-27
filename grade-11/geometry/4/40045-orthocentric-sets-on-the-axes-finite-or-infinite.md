---
id: "40045"
title: "Sur les deux axes, un ensemble orthocentrique a au plus cinq points ou une infinité"
grade: 11
theme: geometry
difficulty: 4
duration_min: 50
tags: [orthocentre, coordonnees, disjonction-de-cas, classification, suite-geometrique, limite, ensemble-infini]
adapted_from: null
see_also: ["40041", "40042", "40043", "40044", "40046", "40047", "40048"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2003, mathématiques, série S"
  reference: "cg-2003-s-sujet.pdf, problème « parties orthocentriques », troisième partie, question 4 (a et b)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2003.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2003-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé $(O\,;\,\vec{u}, \vec{v})$. On appelle **triangle** tout
ensemble de trois points non alignés. Une partie $X$ du plan est dite **orthocentrique** si elle
n'est pas incluse dans une droite et si l'orthocentre de tout triangle dont les sommets sont dans
$X$ appartient à $X$.

On admet les deux résultats suivants.

- **(A)** Si $a(b - c) \neq 0$, l'orthocentre du triangle de sommets $(0\,;\,a)$, $(b\,;\,0)$,
  $(c\,;\,0)$ est le point $\left(0\,;\,-\frac{bc}{a}\right)$. De même, si $b(a - d) \neq 0$,
  l'orthocentre du triangle de sommets $(b\,;\,0)$, $(0\,;\,a)$, $(0\,;\,d)$ est le point
  $\left(-\frac{ad}{b}\,;\,0\right)$.
- **(B)** Si une partie orthocentrique incluse dans la réunion des deux axes contient au moins
  trois points de l'axe des abscisses distincts de $O$, alors elle contient au moins trois points de
  cet axe d'abscisses strictement positives. Le même énoncé vaut en échangeant les deux axes.

1. Déterminer les parties orthocentriques finies, ayant au plus cinq points, incluses dans la
   réunion des deux axes.
2. Soit $X$ une partie orthocentrique incluse dans la réunion des deux axes et ayant au moins six
   points. Montrer qu'il existe deux suites $(x_n)$ et $(x'_n)$ de réels non nuls telles que, pour
   tout entier $n$, les points $(x_n\,;\,0)$ et $(x'_n\,;\,0)$ appartiennent à $X$, et
   $$\lim_{n \to +\infty} x_n = +\infty, \qquad \lim_{n \to +\infty} x'_n = 0.$$
   Une telle partie peut-elle être finie ?

## Hints

1. **Question 1.** Noter $P$ l'ensemble des abscisses non nulles des points de $X$ sur l'axe des
   abscisses et $Q$ l'ensemble des ordonnées non nulles des points de $X$ sur l'axe des ordonnées.
   Pourquoi $P$ et $Q$ sont-ils non vides ?
2. **Question 1.** Montrer que si $P$ a au moins trois éléments, alors $Q$ aussi, et $X$ a au moins
   six points. Il reste les cas où $P$ et $Q$ ont un ou deux éléments.
3. **Question 1.** Le point $O$ joue un rôle à part : quel est l'orthocentre d'un triangle dont un
   sommet est $O$ ? Un triangle qui n'a pas $O$ pour sommet peut-il avoir $O$ pour orthocentre ?
4. **Question 1.** Avec $P = \{b, c\}$ et $Q = \{a, d\}$, écrire que $-\frac{bc}{a}$ est égal à $a$
   ou à $d$, et séparer les deux cas.
5. **Question 2.** Trouver trois éléments de $Q$ de même signe $c_1$, $c_2$, $c_3$. Que donne
   l'application $t \mapsto -\frac{c_1c_2}{t}$ suivie de $t \mapsto -\frac{c_1c_3}{t}$ ?

## Solution

Notons $P$ l'ensemble des abscisses non nulles des points de $X$ situés sur l'axe des abscisses, et
$Q$ l'ensemble des ordonnées non nulles des points de $X$ situés sur l'axe des ordonnées. Une partie
$X$ incluse dans les axes est donc formée des points $(b\,;\,0)$ pour $b \in P$, des points
$(0\,;\,a)$ pour $a \in Q$, et éventuellement de $O$. Comme $X$ n'est inclus dans aucun des deux
axes, $P$ et $Q$ ne sont pas vides. Le résultat (A) donne deux règles :

- **(R1)** si $a \in Q$ et si $b \neq c$ sont dans $P$, alors $-\frac{bc}{a} \in Q$ ;
- **(R2)** si $b \in P$ et si $a \neq d$ sont dans $Q$, alors $-\frac{ad}{b} \in P$.

*Lemme.* Si $P$ contient trois nombres distincts $x_1$, $x_2$, $x_3$ de même signe et si
$a \in Q$, alors (R1) met dans $Q$ les trois nombres $-\frac{x_1x_2}{a}$, $-\frac{x_1x_3}{a}$,
$-\frac{x_2x_3}{a}$, qui sont distincts et tous du signe de $-a$. De même en échangeant les axes.

*Le rôle de $O$.* Un triangle dont $O$ est un sommet a ses deux autres sommets sur des axes
différents (sinon les trois seraient alignés) : il est rectangle en $O$, et son orthocentre est
$O$. Un triangle sans le sommet $O$ a deux sommets sur un axe et un sur l'autre, et d'après (A) son
orthocentre n'est pas $O$ (on a $-\frac{bc}{a} \neq 0$). Par conséquent, si $X$ n'est pas incluse
dans une droite : $X$ est orthocentrique si et seulement si l'orthocentre de chaque triangle formé
de points de $X$ autres que $O$ est un point de $X$ autre que $O$. Ajouter ou retirer $O$ ne
change donc rien, du moment que $X$ reste non incluse dans une droite.

**1.** *Au plus deux points sur chaque axe.* Si $P$ a au moins trois éléments, (B) donne trois
éléments positifs dans $P$, puis le lemme donne trois éléments dans $Q$ : $X$ a au moins six
points. De même si $Q$ a au moins trois éléments. Donc, pour $X$ d'au plus cinq points, $P$ et $Q$
ont chacun un ou deux éléments.

- *$P = \{b\}$ et $Q = \{a\}$.* Sans $O$, deux points sont toujours alignés. Il faut donc $O$, et
  $X = \{O, (b\,;\,0), (0\,;\,a)\}$ : un triangle rectangle en $O$, qui est bien orthocentrique.
- *$P = \{b, c\}$ et $Q = \{a\}$.* Le seul triangle sans $O$ a pour orthocentre
  $\left(0\,;\,-\frac{bc}{a}\right)$, qui doit être $(0\,;\,a)$ : la condition est $a^2 = -bc$.
  C'est un triangle rectangle en $(0\,;\,a)$ (son orthocentre est ce sommet), dont $O$ est le pied
  de la hauteur issue de l'angle droit. On peut ajouter $O$ ou non.
- *$P = \{b\}$ et $Q = \{a, d\}$.* De même, en échangeant les axes : $b^2 = -ad$, avec ou sans $O$.
- *$P = \{b, c\}$ et $Q = \{a, d\}$.* Les conditions sont : $-\frac{bc}{a}$ et $-\frac{bc}{d}$
  sont dans $\{a, d\}$, et $-\frac{ad}{b}$ et $-\frac{ad}{c}$ sont dans $\{b, c\}$.
  - Si $-\frac{bc}{a} = d$, c'est-à-dire $ad = -bc$, alors $-\frac{bc}{d} = a$,
    $-\frac{ad}{b} = c$ et $-\frac{ad}{c} = b$ : les quatre conditions sont remplies. Le point
    $(0\,;\,d)$ est l'orthocentre du triangle formé par les trois autres.
  - Sinon $-\frac{bc}{a} = a$, soit $bc = -a^2$. Alors $-\frac{bc}{d} = \frac{a^2}{d}$ vaut $a$ ou
    $d$ ; $\frac{a^2}{d} = a$ donnerait $d = a$, donc $\frac{a^2}{d} = d$, soit $d^2 = a^2$ et
    $d = -a$. Ensuite $-\frac{ad}{b} = \frac{a^2}{b}$ vaut $b$ ou $c$ ; $\frac{a^2}{b} = c$
    donnerait $bc = a^2$, impossible puisque $bc = -a^2$ et $a \neq 0$. Donc $b^2 = a^2$, puis
    $c = -\frac{a^2}{b} = -b$. Les quatre points sont $(\pm a\,;\,0)$ et $(0\,;\,\pm a)$ : un carré
    de centre $O$, qui est bien orthocentrique (ses triangles sont rectangles).

  Dans les deux cas, on peut ajouter $O$ ou non.

**Conclusion :** les parties orthocentriques des deux axes ayant au plus cinq points sont, à
l'échange des axes près :

- $\{O, (b\,;\,0), (0\,;\,a)\}$ avec $a$, $b$ non nuls ;
- $\{(b\,;\,0), (c\,;\,0), (0\,;\,a)\}$ avec $a^2 = -bc$, avec ou sans $O$ ;
- $\{(b\,;\,0), (c\,;\,0), (0\,;\,a), (0\,;\,d)\}$ avec $b \neq c$, $a \neq d$ et $ad = -bc$, avec
  ou sans $O$ ;
- $\{(a\,;\,0), (-a\,;\,0), (0\,;\,a), (0\,;\,-a)\}$ avec $a \neq 0$, avec ou sans $O$.

**2.** *$P$ a au moins trois éléments.* $X$ a au moins six points, dont au plus un est $O$, donc
$P$ et $Q$ ont au moins cinq éléments à eux deux : l'un des deux en a au moins trois. Si c'est $Q$,
(B) avec les axes échangés donne trois éléments positifs dans $Q$, et le lemme en donne trois dans
$P$. Dans tous les cas $P$ a au moins trois éléments, donc d'après (B) il contient un nombre
$x_0 > 0$ (et même trois), et d'après le lemme $Q$ contient trois nombres distincts $c_1$, $c_2$,
$c_3$ de même signe.

*Deux applications.* Posons $f(t) = -\frac{c_1c_2}{t}$ et $g(t) = -\frac{c_1c_3}{t}$. D'après (R2),
si $t \in P$ alors $f(t) \in P$ et $g(t) \in P$. Or
$$g(f(t)) = -\frac{c_1c_3}{-\frac{c_1c_2}{t}} = \frac{c_3}{c_2}\,t, \qquad f(g(t)) = \frac{c_2}{c_3}\,t.$$
Le nombre $\lambda = \frac{c_3}{c_2}$ est strictement positif (même signe) et différent de $1$.
Quitte à échanger les noms de $c_2$ et $c_3$, on peut supposer $\lambda > 1$.

*Les suites.* Posons $x_n = \lambda^n x_0$ et $x'_n = \lambda^{-n} x_0$. On a $x_0 \in P$, et si
$x_n \in P$ alors $x_{n+1} = g(f(x_n)) \in P$ ; de proche en proche, tous les $x_n$ sont dans $P$.
De même, $x'_{n+1} = f(g(x'_n))$, donc tous les $x'_n$ sont dans $P$. Ce sont des réels non nuls,
et comme $\lambda > 1$ et $x_0 > 0$, la suite géométrique $(x_n)$ tend vers $+\infty$ et $(x'_n)$,
de raison $\frac{1}{\lambda} \in \,]0, 1[$, tend vers $0$.

*Finie ?* Non : la suite $(x_n)$ est strictement croissante, donc ses termes sont tous distincts,
et $X$ contient une infinité de points $(x_n\,;\,0)$.

**Bilan.** Une partie orthocentrique contenue dans deux droites perpendiculaires a au plus cinq
points, et alors c'est l'un des quatre types de la question 1 (on retrouve les ensembles
orthocentriques de trois et quatre points, éventuellement complétés par le point $O$), ou bien elle
est infinie, et ses points s'accumulent à la fois vers l'infini et vers $O$.

## Going further

- Dans le sujet, on construisait ensuite des parties orthocentriques infinies remarquables sur une
  hyperbole d'équation $xy = k$ (exercice 40046), puis avec des points à coordonnées entières
  (exercice 40047).
- La réunion des deux axes tout entière est orthocentrique (exercice 40044). Vérifier que
  l'ensemble des points $(2^k\,;\,0)$, $(-2^k\,;\,0)$, $(0\,;\,2^k)$ et $(0\,;\,-2^k)$, pour $k$
  entier relatif, est aussi orthocentrique. Ses abscisses positives tendent bien vers $+\infty$
  et vers $0$.
