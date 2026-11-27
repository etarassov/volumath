---
id: "40048"
title: "Quatre points dont les orthocentres reviennent au point de départ"
grade: 11
theme: geometry
difficulty: 5
duration_min: 60
tags: [orthocentre, hyperbole, similitude, cocyclicite, rectangle, equation-de-cercle, puissances, disjonction-de-cas]
adapted_from: null
see_also: ["40041", "40042", "40043", "40044", "40045", "40046", "40047"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2003, mathématiques, série S"
  reference: "cg-2003-s-sujet.pdf, problème « parties orthocentriques », cinquième partie, questions 1 et 2"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2003.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2003-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé d'origine $O$. On appelle **triangle** tout ensemble de
trois points non alignés. Pour une partie $X$ du plan qui n'est pas incluse dans une droite, on
note $\mathcal{H}(X)$ l'ensemble des orthocentres des triangles dont les trois sommets
appartiennent à $X$.

On note $Y_1$ l'hyperbole d'équation $xy = 1$, et $Y_0$ l'ensemble d'équation $xy = 0$,
c'est-à-dire la réunion des deux axes. On admet les résultats suivants.

- **(A)** Trois points distincts de $Y_1$, d'abscisses $a$, $b$, $c$, ne sont pas alignés, et
  l'orthocentre du triangle qu'ils forment est le point de $Y_1$ d'abscisse $-\frac{1}{abc}$.
- **(B)** Si $a(b - c) \neq 0$, l'orthocentre du triangle de sommets $(0\,;\,a)$, $(b\,;\,0)$,
  $(c\,;\,0)$ est le point $\left(0\,;\,-\frac{bc}{a}\right)$. De même, si $b(a - d) \neq 0$,
  l'orthocentre du triangle de sommets $(b\,;\,0)$, $(0\,;\,a)$, $(0\,;\,d)$ est
  $\left(-\frac{ad}{b}\,;\,0\right)$.
- **(C)** Étant donnés quatre points $A$, $B$, $C$, $D$ du plan, il existe une **similitude** $s$
  (la composée d'une isométrie et d'une homothétie) telle que $s(A)$, $s(B)$, $s(C)$, $s(D)$
  appartiennent tous à $Y_1$, ou bien appartiennent tous à $Y_0$. Une similitude est une bijection
  du plan, sa réciproque est aussi une similitude, et elle transforme trois points non alignés en
  trois points non alignés, l'orthocentre d'un triangle en l'orthocentre du triangle image, un
  cercle en un cercle et un rectangle en un rectangle.

Soit $A_0$, $B_0$, $C_0$, $D_0$ quatre points dont trois ne sont jamais alignés, et
$X_0 = \{A_0, B_0, C_0, D_0\}$. On définit $X_{n+1} = \mathcal{H}(X_n)$ pour tout entier naturel
$n$. On suppose qu'il existe un entier $n \geqslant 1$ tel que $X_n = X_0$, et on note $m$ le plus
petit entier ayant cette propriété.

1. Montrer que $m = 1$ ou $m = 2$.
2. Déterminer les ensembles $X_0$ tels que $m = 1$, puis ceux tels que $m = 2$.

## Hints

1. **Question 1.** Une similitude conserve les orthocentres : on peut donc supposer que $X_0$ est
   inclus dans $Y_1$ ou dans $Y_0$.
2. **Question 1, cas de $Y_1$.** Notons $a$, $b$, $c$, $d$ les abscisses des points de $X_0$ et
   $p = abcd$. Quelle est l'abscisse de l'orthocentre du triangle formé par les trois points autres
   que celui d'abscisse $a$ ? Comment passe-t-on des abscisses de $X_0$ à celles de $X_1$ ?
3. **Question 1, cas de $Y_1$.** Montrer que le produit $p_n$ des abscisses des points de $X_n$
   vérifie $p_{n+1} = p_n^{-3}$. Que peut-on en déduire si $X_n = X_0$ ?
4. **Question 1, cas de $Y_0$.** Montrer que $X_0$ a exactement deux points sur chaque axe,
   $(b\,;\,0)$, $(c\,;\,0)$, $(0\,;\,a)$, $(0\,;\,d)$, et suivre le nombre $\frac{bc}{ad}$.
5. **Question 2.** Que signifie $abcd = -1$ d'après (A) ?
6. **Question 2.** Pour $abcd = 1$ : développer $(t - a)(t - b)(t - c)(t - d)$, puis chercher un
   cercle d'équation $x^2 + y^2 + \alpha x + \beta y + \gamma = 0$ qui passe par les quatre points.
7. **Question 2.** Dans ce dernier cas, $X_1$ est le symétrique de $X_0$ par rapport à $O$. Quand
   est-il égal à $X_0$ ?

## Solution

*Réduction.* Soit $s$ une similitude donnée par (C) pour les quatre points de $X_0$. Pour toute
partie $X$ non incluse dans une droite, $s$ envoie les triangles de $X$ sur ceux de $s(X)$ et leurs
orthocentres sur les orthocentres des images, donc $s(\mathcal{H}(X)) = \mathcal{H}(s(X))$. Par
suite, la suite construite à partir de $s(X_0)$ est $s(X_1), s(X_2), \ldots$, et comme $s$ est une
bijection, $X_n = X_0$ si et seulement si $s(X_n) = s(X_0)$. On peut donc remplacer $X_0$ par
$s(X_0)$ : **on suppose désormais $X_0 \subset Y_1$ ou $X_0 \subset Y_0$.** Les propriétés « un
point est l'orthocentre des trois autres », « les points sont sur un cercle », « les points sont les
sommets d'un rectangle » sont conservées par $s$ et par sa réciproque.

*Une remarque sur les puissances.* Si un réel $x > 0$ vérifie $x^N = 1$ pour un entier $N \neq 0$,
alors $x = 1$ (si $x > 1$, $x^N$ est $> 1$ pour $N > 0$ et $< 1$ pour $N < 0$ ; de même si
$x < 1$).

**1.** *Cas où $X_0 \subset Y_1$.* Soit $E_0$ l'ensemble des quatre abscisses (non nulles,
distinctes) des points de $X_0$ et $p_0$ leur produit. Pour $t \in E_0$, les trois autres points ont
pour produit d'abscisses $\frac{p_0}{t}$, donc d'après (A) leur orthocentre est le point de $Y_1$
d'abscisse $-\frac{t}{p_0}$. Ainsi $X_1$ est formé des quatre points de $Y_1$ d'abscisses
$-\frac{t}{p_0}$ pour $t \in E_0$ : quatre points distincts de $Y_1$, dont trois ne sont jamais
alignés, et le produit de leurs abscisses est
$$p_1 = \frac{p_0}{p_0^4} = p_0^{-3}.$$
On recommence avec $X_1$ : de proche en proche, chaque $X_n$ est formé de quatre points de $Y_1$,
et le produit $p_n$ de leurs abscisses vérifie $p_{n+1} = p_n^{-3}$, donc
$|p_n| = |p_0|^{(-3)^n}$.

Si $X_n = X_0$ avec $n \geqslant 1$, alors $p_n = p_0$, donc $|p_0|^{(-3)^n - 1} = 1$ avec
$(-3)^n - 1 \neq 0$. D'après la remarque, $|p_0| = 1$.

- Si $p_0 = -1$, les abscisses de $X_1$ sont $-\frac{t}{-1} = t$ : $X_1 = X_0$.
- Si $p_0 = 1$, les abscisses de $X_1$ sont les $-t$ : $X_1$ est le symétrique de $X_0$ par rapport
  à $O$, noté $-X_0$. Alors $p_1 = 1$, et pour la même raison $X_2 = -X_1 = X_0$.

*Cas où $X_0 \subset Y_0$.* Le point $O$ n'est pas dans $X_0$ : sinon les trois autres points
seraient sur les axes, deux sur le même axe, alignés avec $O$. Et un axe ne peut pas contenir trois
points de $X_0$. Donc
$X_0 = \{(b\,;\,0), (c\,;\,0), (0\,;\,a), (0\,;\,d)\}$ avec $a$, $b$, $c$, $d$ non nuls, $b \neq c$
et $a \neq d$. Posons $\rho_0 = \frac{bc}{ad}$. D'après (B),
$$X_1 = \left\{\left(-\frac{ad}{b}\,;\,0\right), \left(-\frac{ad}{c}\,;\,0\right), \left(0\,;\,-\frac{bc}{a}\right), \left(0\,;\,-\frac{bc}{d}\right)\right\},$$
qui a encore deux points distincts sur chaque axe, aucun en $O$. Le nombre correspondant est
$$\rho_1 = \frac{(ad)^2}{bc} \times \frac{ad}{(bc)^2} = \left(\frac{ad}{bc}\right)^3 = \rho_0^{-3}.$$
Comme dans le premier cas, $X_n = X_0$ impose $|\rho_0| = 1$.

- Si $\rho_0 = -1$, c'est-à-dire $ad = -bc$, alors $-\frac{ad}{b} = c$, $-\frac{ad}{c} = b$,
  $-\frac{bc}{a} = d$ et $-\frac{bc}{d} = a$ : $X_1 = X_0$.
- Si $\rho_0 = 1$, c'est-à-dire $ad = bc$, alors $-\frac{ad}{b} = -c$, $-\frac{ad}{c} = -b$,
  $-\frac{bc}{a} = -d$ et $-\frac{bc}{d} = -a$ : $X_1 = -X_0$. Comme $\rho_1 = 1$, de même
  $X_2 = -X_1 = X_0$.

**Conclusion :** dans tous les cas $X_2 = X_0$, donc $m = 1$ ou $m = 2$.

**2.** D'après la question 1, après réduction, $X_n$ revient à $X_0$ seulement si le produit
$p_0 = abcd$ (cas $Y_1$) ou le rapport $\rho_0 = \frac{bc}{ad}$ (cas $Y_0$) vaut $-1$ ou $1$.
Interprétons ces deux conditions.

*La valeur $-1$ : un point est l'orthocentre des trois autres.* Dans le cas $Y_1$, d'après (A),
$abcd = -1$ signifie $d = -\frac{1}{abc}$, c'est-à-dire que le point d'abscisse $d$ est
l'orthocentre des trois autres. Dans le cas $Y_0$, d'après (B), $ad = -bc$ signifie que
$(0\,;\,d)$ est l'orthocentre des trois autres. Réciproquement, si l'un des quatre points est
l'orthocentre des trois autres, les formules (A) et (B) donnent $abcd = -1$ ou $ad = -bc$ (dans le
cas $Y_0$, si c'est $(b\,;\,0)$ qui est l'orthocentre, (B) donne $b = -\frac{ad}{c}$, la même
condition). Dans ce cas, $m = 1$.

*La valeur $1$ : les quatre points sont sur un cercle.* On utilise les équations de cercle
$x^2 + y^2 + \alpha x + \beta y + \gamma = 0$. Une telle équation s'écrit
$(x - x_1)^2 + (y - y_1)^2 = K$ ; si elle est vérifiée par au moins deux points distincts, alors
$K > 0$ et c'est un cercle.

- Cas $Y_0$. Si $ad = bc$, les quatre points vérifient
  $x^2 + y^2 - (b + c)x - (a + d)y + bc = 0$ : par exemple pour $(b\,;\,0)$,
  $b^2 - (b + c)b + bc = 0$, et pour $(0\,;\,a)$, $a^2 - (a + d)a + bc = bc - ad = 0$. Ils sont
  donc sur un cercle. Réciproquement, s'ils sont sur un cercle
  $x^2 + y^2 + \alpha x + \beta y + \gamma = 0$, alors $b$ et $c$ sont les deux racines de
  $x^2 + \alpha x + \gamma = 0$, donc $bc = \gamma$ (produit des racines) ; de même $ad = \gamma$.
- Cas $Y_1$. Supposons $abcd = 1$. En développant,
  $(t - a)(t - b)(t - c)(t - d) = t^4 + \alpha t^3 + \gamma t^2 + \beta t + 1$ pour certains réels
  $\alpha$, $\beta$, $\gamma$ (le terme constant est $abcd = 1$). Pour $t \in \{a, b, c, d\}$, le
  point $\left(t\,;\,\frac{1}{t}\right)$ vérifie
  $$t^2 + \frac{1}{t^2} + \alpha t + \frac{\beta}{t} + \gamma = \frac{t^4 + \alpha t^3 + \gamma t^2 + \beta t + 1}{t^2} = 0 :$$
  les quatre points sont sur un cercle.

  Réciproquement, supposons les quatre points sur un cercle $\mathcal{C}$. Posons
  $d' = \frac{1}{abc}$ et faisons le même calcul avec $a$, $b$, $c$, $d'$ : il donne un cercle qui
  passe par les points d'abscisses $a$, $b$, $c$, $d'$ de $Y_1$. Trois points non alignés sont
  sur un seul cercle, donc c'est $\mathcal{C}$, avec une équation pour laquelle
  $t^4 + \alpha t^3 + \gamma t^2 + \beta t + 1 = (t - a)(t - b)(t - c)(t - d')$. Le point
  $\left(d\,;\,\frac{1}{d}\right)$ est sur $\mathcal{C}$, donc $(d - a)(d - b)(d - c)(d - d') = 0$,
  et comme $d \notin \{a, b, c\}$, on obtient $d = d'$, soit $abcd = 1$.

Dans ce cas, $X_1 = -X_0$ et $X_2 = X_0$ : on a $m = 1$ si $X_0 = -X_0$, et $m = 2$ sinon.

*Quand a-t-on $X_0 = -X_0$ ?* Si $X_0$ est formé des sommets d'un rectangle, tout triangle formé de
trois de ses sommets est rectangle et a pour orthocentre le sommet de l'angle droit ; chaque sommet
est obtenu ainsi, donc $\mathcal{H}(X_0) = X_0$ et $m = 1$. Réciproquement, si $X_0 = -X_0$ et si
les quatre points sont sur un cercle de centre $\Omega$, alors $X_0 = \{P, -P, Q, -Q\}$, où $-P$
désigne le symétrique de $P$ par rapport à $O$. Le centre $\Omega$ est sur la médiatrice de
$[P(-P)]$, qui est la perpendiculaire à $(OP)$ en $O$, et de même sur la perpendiculaire à $(OQ)$
en $O$. Ces deux droites sont distinctes, car $P$, $Q$, $O$ ne sont pas alignés (sinon $P$, $-P$,
$Q$ le seraient), donc $\Omega = O$. Alors $OP = OQ$ : le parallélogramme de diagonales $[P(-P)]$ et
$[Q(-Q)]$ a des diagonales de même longueur, c'est un rectangle.

**Conclusion :**

- $m = 1$ exactement quand $X_0$ est formé d'un triangle et de son orthocentre (chacun des quatre
  points est alors l'orthocentre des trois autres), ou quand $X_0$ est formé des quatre sommets
  d'un rectangle ;
- $m = 2$ exactement quand les quatre points de $X_0$ sont sur un même cercle sans être les sommets
  d'un rectangle ;
- pour tous les autres quadruplets, la suite $(X_n)$ ne revient jamais à $X_0$.

**Bilan.** En ramenant les quatre points sur l'hyperbole $xy = 1$ ou sur les deux axes, l'opération
« prendre les orthocentres » devient une formule simple sur les abscisses, et un seul nombre, le
produit $abcd$ (ou le rapport $\frac{bc}{ad}$), décide de tout : il est élevé à la puissance $-3$ à
chaque étape. Il ne peut revenir à sa valeur que s'il vaut $\pm 1$. La valeur $-1$ correspond à un
triangle avec son orthocentre, qui est fixe ; la valeur $1$ correspond à quatre points
cocycliques, renvoyés sur leurs symétriques puis ramenés à leur place.

## Going further

- Pour quatre points d'un cercle, on peut retrouver directement $X_2 = X_0$ grâce à la relation
  d'Euler : $\mathcal{H}(X_0)$ est le symétrique de $X_0$ par rapport à un point $I$, et l'on
  recommence (exercice 40041).
- Le résultat admis (C) dit que quatre points dont trois ne sont jamais alignés sont toujours sur
  une hyperbole « équilatère » (à asymptotes perpendiculaires), ou sur deux droites
  perpendiculaires. Par exemple, les quatre sommets d'un carré sont sur ses deux diagonales.
  Trouver une hyperbole équilatère qui passe par les sommets d'un rectangle qui n'est pas un carré.
