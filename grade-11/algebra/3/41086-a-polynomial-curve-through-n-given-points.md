---
id: "41086"
title: "Une courbe polynomiale par n points donnés : les polynômes de Lagrange"
grade: 11
theme: algebra
difficulty: 3
duration_min: 55
tags: [polynome, interpolation, existence-et-unicite, systeme-lineaire, derivee, racines-d-un-polynome]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série ES"
  reference: "cg-2019-es-sujet.pdf, problème III « Polynômes de Lagrange », questions 1° (a) à (f), 2° (a) à (f) et 3° (a), (b). Le résultat admis, placé dans le sujet à la question 2° (e), est rappelé en tête de l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-es-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-es-sujet.pdf"
---

## Statement

Soit $n$ un entier naturel non nul. On considère $n$ points du plan : $M_1$ de coordonnées
$(a_1, b_1)$, $M_2$ de coordonnées $(a_2, b_2)$, …, $M_n$ de coordonnées $(a_n, b_n)$. On suppose
que les abscisses $a_1, a_2, \ldots, a_n$ sont deux à deux distinctes.

Le but de l'exercice est de trouver une fonction polynôme de degré au plus $n - 1$ dont la courbe
représentative passe par $M_1, M_2, \ldots, M_n$.

Une fonction polynôme de degré au plus $m$ est une fonction de la forme
$x \mapsto c_0 + c_1 x + c_2 x^2 + \cdots + c_m x^m$, où les réels $c_0, c_1, \ldots, c_m$ sont
ses coefficients. Par exemple, les fonctions affines sont les fonctions polynômes de degré au
plus $1$.

On admet le résultat suivant : **si une fonction polynôme de degré au plus $n - 1$ s'annule en
$n$ réels distincts, alors tous ses coefficients sont nuls.**

1. Dans cette question, $n = 2$. Pour tout réel $x$, on pose $R(x) = x^2 - (a_1 + a_2)x + a_1 a_2$.

   a) Résoudre l'équation $R(x) = 0$, d'inconnue $x$.

   b) Donner la forme factorisée de $R(x)$.

   c) Calculer $R'(a_1)$ et $R'(a_2)$.

   d) Pour tout réel $x$, on pose $K_1(x) = \frac{x - a_2}{a_1 - a_2}\,b_1$. Calculer $K_1(a_1)$ et
   $K_1(a_2)$.

   e) Construire de même une fonction affine $K_2$ telle que $K_2(a_1) = 0$ et $K_2(a_2) = b_2$.

   f) Construire enfin une fonction affine $F$ telle que $F(a_1) = b_1$ et $F(a_2) = b_2$.

2. Dans cette question, $n = 3$. Pour tout réel $x$, on pose $S(x) = (x - a_1)(x - a_2)(x - a_3)$.

   a) Soit $u$, $v$, $w$ trois fonctions définies et dérivables sur $\mathbb{R}$. Calculer la
   dérivée du produit $uvw$.

   b) En déduire, pour tout réel $x$, une expression de $S'(x)$.

   c) Calculer $S'(a_1)$, $S'(a_2)$ et $S'(a_3)$.

   d) Pour tout réel $x$, on pose
   $$L_1(x) = \frac{(x - a_2)(x - a_3)}{S'(a_1)}\,b_1.$$
   Calculer $L_1(a_1)$, $L_1(a_2)$ et $L_1(a_3)$.

   e) Construire une fonction polynôme $G$ de degré au plus $2$ telle que $G(a_1) = b_1$,
   $G(a_2) = b_2$ et $G(a_3) = b_3$. Montrer, à l'aide du résultat admis, que $G$ est la seule
   fonction polynôme de degré au plus $2$ qui convient.

   f) On considère le système d'équations, d'inconnues $x$, $y$, $z$ :
   $$x + a_1 y + a_1^2 z = b_1, \qquad x + a_2 y + a_2^2 z = b_2, \qquad x + a_3 y + a_3^2 z = b_3.$$
   Montrer que ce système a un unique triplet $(x, y, z)$ solution, et exprimer cette solution en
   fonction de $a_1$, $a_2$, $a_3$, $b_1$, $b_2$, $b_3$.

3. a) Dans cette question, $n$ est un entier naturel non nul quelconque. Montrer qu'il existe une
   unique fonction polynôme de degré au plus $n - 1$ dont la courbe représentative passe par les
   points $M_1, M_2, \ldots, M_n$.

   b) En utilisant la question précédente, résoudre le système d'équations, d'inconnues $x$, $y$,
   $z$, $t$ :
   $$x + y + z + t = 0, \qquad x + 2y + 4z + 8t = 0,$$
   $$x + 3y + 9z + 27t = 0, \qquad x + 4y + 16z + 64t = 1.$$

## Hints

1. **Question 1 a.** Calculer $R(a_1)$ et $R(a_2)$. Combien de solutions une équation du second
   degré peut-elle avoir au plus ?
2. **Question 1 e.** Échanger les rôles de $a_1$ et $a_2$ dans $K_1$.
3. **Question 2 a.** Écrire $uvw = (uv) \times w$ et appliquer deux fois la formule de la dérivée
   d'un produit.
4. **Question 2 c.** Dans $S'(a_1)$, deux des trois termes contiennent le facteur $a_1 - a_1$.
5. **Question 2 e.** Construire $L_2$ et $L_3$ sur le modèle de $L_1$, puis les additionner. Pour
   l'unicité, regarder la différence de deux solutions.
6. **Question 2 f.** Un triplet $(x, y, z)$ est solution exactement quand la fonction
   $s \mapsto x + ys + zs^2$ prend les valeurs $b_1$, $b_2$, $b_3$ en $a_1$, $a_2$, $a_3$.
7. **Question 3 a.** Pour le point $M_i$, multiplier tous les facteurs $x - a_j$ avec $j \neq i$,
   puis diviser par la valeur de ce produit en $a_i$.
8. **Question 3 b.** Le système dit qu'une fonction polynôme de degré au plus $3$ s'annule en $1$,
   $2$, $3$ et vaut $1$ en $4$. Quelle est cette fonction ?

## Solution

**1. a)** $R(a_1) = a_1^2 - a_1^2 - a_2 a_1 + a_1 a_2 = 0$ et de même $R(a_2) = 0$. Une équation du
second degré a au plus deux solutions, et $a_1 \neq a_2$, donc l'ensemble des solutions est
$\{a_1 ; a_2\}$. (On peut aussi calculer le discriminant :
$(a_1 + a_2)^2 - 4a_1 a_2 = (a_1 - a_2)^2 > 0$.)

**1. b)** $R(x) = (x - a_1)(x - a_2)$ ; on le vérifie en développant.

**1. c)** $R'(x) = 2x - (a_1 + a_2)$, donc $R'(a_1) = a_1 - a_2$ et $R'(a_2) = a_2 - a_1$. Ces deux
nombres sont non nuls.

**1. d)** $K_1(a_1) = \frac{a_1 - a_2}{a_1 - a_2}\,b_1 = b_1$ et $K_1(a_2) = 0$. Remarquons que
$K_1(x) = \frac{x - a_2}{R'(a_1)}\,b_1$.

**1. e)** $K_2(x) = \frac{x - a_1}{a_2 - a_1}\,b_2$ convient : $K_2(a_1) = 0$ et $K_2(a_2) = b_2$.

**1. f)** $F = K_1 + K_2$, c'est-à-dire
$$F(x) = \frac{x - a_2}{a_1 - a_2}\,b_1 + \frac{x - a_1}{a_2 - a_1}\,b_2,$$
est affine (somme de deux fonctions affines), et $F(a_1) = b_1 + 0 = b_1$,
$F(a_2) = 0 + b_2 = b_2$.

**2. a)** En dérivant $(uv) \times w$, puis $uv$ :
$$(uvw)' = (uv)'w + (uv)w' = u'vw + uv'w + uvw'.$$

**2. b)** Avec $u(x) = x - a_1$, $v(x) = x - a_2$, $w(x) = x - a_3$, dont les dérivées valent $1$ :
$$S'(x) = (x - a_2)(x - a_3) + (x - a_1)(x - a_3) + (x - a_1)(x - a_2).$$

**2. c)** En $a_1$, les deux derniers termes contiennent le facteur $a_1 - a_1 = 0$. Donc
$$S'(a_1) = (a_1 - a_2)(a_1 - a_3), \quad S'(a_2) = (a_2 - a_1)(a_2 - a_3), \quad S'(a_3) = (a_3 - a_1)(a_3 - a_2).$$
Ces trois nombres sont non nuls, car les $a_i$ sont distincts.

**2. d)** $L_1(a_1) = \frac{(a_1 - a_2)(a_1 - a_3)}{(a_1 - a_2)(a_1 - a_3)}\,b_1 = b_1$, et
$L_1(a_2) = L_1(a_3) = 0$ car le numérateur s'annule.

**2. e)** *Existence.* Posons de même
$$L_2(x) = \frac{(x - a_1)(x - a_3)}{S'(a_2)}\,b_2, \qquad L_3(x) = \frac{(x - a_1)(x - a_2)}{S'(a_3)}\,b_3,$$
et $G = L_1 + L_2 + L_3$. Chaque $L_i$ est une fonction polynôme de degré au plus $2$, donc $G$
aussi. De plus $L_i(a_i) = b_i$ et $L_i(a_j) = 0$ pour $j \neq i$, donc
$G(a_1) = b_1 + 0 + 0 = b_1$, et de même $G(a_2) = b_2$, $G(a_3) = b_3$.

*Unicité.* Soit $H$ une autre fonction polynôme de degré au plus $2$ telle que $H(a_i) = b_i$ pour
$i = 1, 2, 3$. Alors $G - H$ est une fonction polynôme de degré au plus $2$ qui s'annule en trois
réels distincts $a_1$, $a_2$, $a_3$. D'après le résultat admis (avec $n = 3$), tous ses
coefficients sont nuls, donc $G - H$ est la fonction nulle et $H = G$.

**2. f)** Un triplet $(x, y, z)$ est solution du système exactement quand la fonction polynôme
$P : s \mapsto x + ys + zs^2$ vérifie $P(a_1) = b_1$, $P(a_2) = b_2$, $P(a_3) = b_3$.

*Existence.* En développant $G$, on écrit $G(s) = x_0 + y_0 s + z_0 s^2$ ; le triplet
$(x_0, y_0, z_0)$ est solution.

*Unicité.* Si $(x, y, z)$ est solution, la fonction $P$ ci-dessus convient, donc $P = G$ d'après la
question e. La fonction $s \mapsto (x - x_0) + (y - y_0)s + (z - z_0)s^2$ est donc nulle : elle
s'annule en particulier en trois réels distincts, et le résultat admis donne $x = x_0$,
$y = y_0$, $z = z_0$.

*Calcul.* Comme $(s - a_2)(s - a_3) = s^2 - (a_2 + a_3)s + a_2 a_3$, et de même pour les autres,
on lit les coefficients de $G$ :
$$z = \frac{b_1}{(a_1 - a_2)(a_1 - a_3)} + \frac{b_2}{(a_2 - a_1)(a_2 - a_3)} + \frac{b_3}{(a_3 - a_1)(a_3 - a_2)},$$
$$y = -\frac{(a_2 + a_3)\,b_1}{(a_1 - a_2)(a_1 - a_3)} - \frac{(a_1 + a_3)\,b_2}{(a_2 - a_1)(a_2 - a_3)} - \frac{(a_1 + a_2)\,b_3}{(a_3 - a_1)(a_3 - a_2)},$$
$$x = \frac{a_2 a_3\,b_1}{(a_1 - a_2)(a_1 - a_3)} + \frac{a_1 a_3\,b_2}{(a_2 - a_1)(a_2 - a_3)} + \frac{a_1 a_2\,b_3}{(a_3 - a_1)(a_3 - a_2)}.$$

**3. a)** *Existence.* Pour chaque $i$ de $1$ à $n$, on pose
$$L_i(x) = b_i \prod_{j \neq i} \frac{x - a_j}{a_i - a_j},$$
c'est-à-dire le produit, pour tous les indices $j$ de $1$ à $n$ différents de $i$, des fractions
$\frac{x - a_j}{a_i - a_j}$, multiplié par $b_i$. Les dénominateurs sont non nuls car les
abscisses sont distinctes. C'est un produit de $n - 1$ facteurs du premier degré, donc une
fonction polynôme de degré au plus $n - 1$. (Pour $n = 1$, il n'y a aucun facteur et
$L_1(x) = b_1$.)

- En $x = a_i$, chaque fraction vaut $1$, donc $L_i(a_i) = b_i$.
- En $x = a_k$ avec $k \neq i$, la fraction d'indice $j = k$ est nulle, donc $L_i(a_k) = 0$.

La fonction $P = L_1 + L_2 + \cdots + L_n$ est une fonction polynôme de degré au plus $n - 1$, et
pour chaque $k$, $P(a_k) = 0 + \cdots + 0 + b_k + 0 + \cdots + 0 = b_k$. Sa courbe passe donc par
$M_1, \ldots, M_n$.

*Unicité.* Si $Q$ est une autre fonction polynôme de degré au plus $n - 1$ dont la courbe passe par
ces points, $P - Q$ est de degré au plus $n - 1$ et s'annule en $n$ réels distincts
$a_1, \ldots, a_n$. D'après le résultat admis, tous ses coefficients sont nuls, et $Q = P$.

**3. b)** Comme en 2 f, un quadruplet $(x, y, z, t)$ est solution exactement quand la fonction
$P : s \mapsto x + ys + zs^2 + ts^3$ vérifie $P(1) = P(2) = P(3) = 0$ et $P(4) = 1$, autrement
dit quand la courbe de $P$ passe par les points $(1, 0)$, $(2, 0)$, $(3, 0)$, $(4, 1)$.

D'après la question 3 a avec $n = 4$, il existe une unique fonction polynôme de degré au plus $3$
qui convient. Avec la construction de 3 a, seul le terme $L_4$ est non nul :
$$P(s) = \frac{(s - 1)(s - 2)(s - 3)}{(4 - 1)(4 - 2)(4 - 3)} \times 1 = \frac{(s-1)(s-2)(s-3)}{6}.$$
En développant, $(s - 1)(s - 2) = s^2 - 3s + 2$, puis
$(s^2 - 3s + 2)(s - 3) = s^3 - 6s^2 + 11s - 6$. Donc
$$P(s) = -1 + \frac{11}{6}\,s - s^2 + \frac{1}{6}\,s^3.$$
Si $(x, y, z, t)$ est solution, la fonction $s \mapsto x + ys + zs^2 + ts^3$ est égale à $P$ par
unicité, et comme en 2 f le résultat admis montre que ses coefficients sont ceux de $P$.

**Conclusion :** le système a une unique solution,
$x = -1$, $y = \frac{11}{6}$, $z = -1$, $t = \frac{1}{6}$.

Vérification dans la dernière équation : $-1 + \frac{44}{6} - 16 + \frac{64}{6} = -17 + 18 = 1$.

**Bilan.** Par $n$ points d'abscisses distinctes passe toujours une fonction polynôme de degré au
plus $n - 1$, et une seule. On l'écrit directement comme une somme de $n$ « polynômes de
Lagrange » $L_i$, chacun égal à $b_i$ en $a_i$ et nul aux autres abscisses. Cela permet de résoudre
sans calcul certains systèmes linéaires, dont les coefficients sont les puissances de nombres
distincts.

## Going further

- Démontrer le résultat admis pour $n = 2$ et $n = 3$. (Pour $n = 3$, si
  $\alpha + \beta x + \gamma x^2$ s'annule en trois réels distincts, que dire si $\gamma \neq 0$ ?)
- Trouver la fonction polynôme de degré au plus $2$ dont la courbe passe par $(0, 1)$, $(1, 3)$ et
  $(2, 7)$, de deux façons : avec les polynômes de Lagrange, puis en résolvant un système.
- Appliquer la construction de 2 e avec $b_1 = b_2 = b_3 = 1$. Quelle fonction obtient-on ? En
  déduire que, pour tout réel $s$,
  $$\frac{(s - a_2)(s - a_3)}{(a_1 - a_2)(a_1 - a_3)} + \frac{(s - a_1)(s - a_3)}{(a_2 - a_1)(a_2 - a_3)} + \frac{(s - a_1)(s - a_2)}{(a_3 - a_1)(a_3 - a_2)} = 1.$$
