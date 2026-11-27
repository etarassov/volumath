---
id: "40846"
title: "Un carré de centre O sur la courbe d'un polynôme de degré 3"
grade: 11
theme: algebra
difficulty: 4
duration_min: 60
tags: [polynome, carre, coordonnees, rotation, fonction-impaire, identification-des-coefficients, degre, courbe-representative]
adapted_from: null
see_also: ["40845", "40847", "40848"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2023, mathématiques"
  reference: "cg-2023-s-sujet.pdf, exercice 3 « Polynômes et polygones réguliers », préambule et partie B « Carrés de centre O », questions 3 à 5"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2023-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé d'origine $O$.

Pour tout entier $d \geqslant 0$, une fonction $P$ est un *polynôme de degré $d$* s'il existe des réels $a_0, \ldots, a_d$, avec $a_d \neq 0$, tels que $P(x) = a_d x^d + \cdots + a_1 x + a_0$ pour tout réel $x$. La fonction $x \mapsto 0$ est le *polynôme nul*. On note $\mathcal{C}_P$ la courbe représentative de $P$. On admet que, pour un polynôme de degré $d$, l'équation $P(x) = 0$ a au plus $d$ solutions réelles. Il en découle que deux polynômes égaux en tout réel ont les mêmes coefficients.

Quatre points $A$, $B$, $C$, $D$ sont les sommets d'un *carré $ABCD$ de centre $O$* s'ils sont deux à deux distincts, s'ils apparaissent dans cet ordre dans le sens trigonométrique (sens inverse des aiguilles d'une montre) sur un même cercle de centre $O$, et si $AB = BC = CD = DA$.

Dans les questions 1 et 2, on considère un polynôme $P$ et un carré $ABCD$ de centre $O$ dont les quatre sommets appartiennent à $\mathcal{C}_P$. On note $(x, y)$ les coordonnées de $A$.

1. a) Exprimer les coordonnées de $B$, $C$ et $D$ en fonction de $x$ et $y$. Démontrer que les abscisses de $A$, $B$, $C$ et $D$ sont deux à deux distinctes et non nulles.

   b) Démontrer que $P$ n'est pas le polynôme nul et que son degré vaut au moins $3$.

2. On suppose dans cette question qu'il existe des réels $a$, $b$ et $c$ tels que $P(t) = t^3 + at^2 + bt + c$ pour tout réel $t$.

   a) Démontrer que $a = 0$ et $c = 0$.

   b) Démontrer que les abscisses de $A$, $B$, $C$ et $D$ sont solutions de l'équation $P(P(t)) + t = 0$.

   c) Démontrer que le polynôme $Q : X \mapsto X^4 + 3bX^3 + 3b^2X^2 + b(b^2 + 1)X + b^2 + 1$ admet au moins deux racines positives distinctes.

   d) Démontrer que $b < 0$.

   e) On suppose qu'il existe deux réels $\alpha$ et $\beta$ tels que $0 < \alpha < \beta$ et $Q(X) = (X - \alpha)^2(X - \beta)^2$ pour tout réel $X$. Démontrer qu'alors $b = -\sqrt{8}$, puis déterminer $\alpha$ et $\beta$.

3. a) Démontrer qu'il existe un polynôme $P$ de degré $3$ et un carré $ABCD$ de centre $O$ dont les sommets appartiennent à $\mathcal{C}_P$.

   b) Pour quels entiers $d$ existe-t-il un polynôme de degré $d$ dont la courbe représentative contient les points $A$, $B$, $C$ et $D$ obtenus à la question 3 a) ?

## Hints

1. **Question 1 a).** Les quatre sommets sont sur un cercle de centre $O$ et de rayon $\rho$, et on passe de chacun au suivant par un quart de tour autour de $O$. Écrire $A(\rho\cos u, \rho\sin u)$.
2. **Question 1 a).** Deux points distincts de la courbe d'une fonction peuvent-ils avoir la même abscisse ?
3. **Question 1 b).** Supposer $P(t) = mt^2 + nt + p$ (cela couvre les degrés $0$, $1$ et $2$) et calculer $P(x) + P(-x)$ et $P(y) + P(-y)$.
4. **Question 2 b).** Pour le point $A$ : que vaut $P(x)$, puis $P(y)$ ? Faire de même pour les trois autres sommets.
5. **Question 2 c).** Développer $P(P(t)) + t$ avec $P(t) = t^3 + bt$ et mettre $t$ en facteur. On pourra poser $X = t^2$.
6. **Question 2 d).** Si $b \geqslant 0$, quel est le signe de $Q(X)$ pour $X \geqslant 0$ ?
7. **Question 2 e).** Développer $(X^2 - sX + p)^2$, où $s = \alpha + \beta$ et $p = \alpha\beta$, et identifier les coefficients avec ceux de $Q$.
8. **Question 3 a).** Prendre $b = -\sqrt{8}$ et choisir comme abscisse de $A$ le nombre $\sqrt{\alpha}$.

## Solution

**1. a)** Les quatre sommets sont sur un cercle de centre $O$, de rayon $\rho > 0$. Les triangles $OAB$, $OBC$, $OCD$ et $ODA$ ont leurs trois côtés de mêmes longueurs, donc les angles $\widehat{AOB}$, $\widehat{BOC}$, $\widehat{COD}$, $\widehat{DOA}$ sont égaux ; comme on fait un tour complet en allant de $A$ à $B$, $C$, $D$ puis $A$, chacun vaut un quart de tour, $\frac{\pi}{2}$. Écrivons $A(\rho\cos u, \rho\sin u)$, de sorte que $x = \rho\cos u$ et $y = \rho\sin u$. Dans le sens trigonométrique,
$$B\left(\rho\cos\left(u + \frac{\pi}{2}\right), \rho\sin\left(u + \frac{\pi}{2}\right)\right) = (-\rho\sin u, \rho\cos u) = (-y, x).$$
En tournant encore d'un quart de tour, $C(-x, -y)$ et $D(y, -x)$.

Les quatre points sont distincts et sur la courbe de la fonction $P$. Deux points de cette courbe qui ont la même abscisse $t$ sont tous deux égaux à $(t, P(t))$ ; donc les abscisses $x$, $-y$, $-x$ et $y$ sont deux à deux distinctes. En particulier $x \neq -x$ et $y \neq -y$, donc $x \neq 0$ et $y \neq 0$ : les quatre abscisses sont non nulles.

**b)** Les quatre sommets sont sur $\mathcal{C}_P$, donc
$$P(x) = y, \qquad P(-y) = x, \qquad P(-x) = -y, \qquad P(y) = -x.$$
Si $P$ était le polynôme nul, on aurait $y = P(x) = 0$, ce qui est faux.

Supposons que $P$ soit de degré au plus $2$ : $P(t) = mt^2 + nt + p$. Alors $P(t) + P(-t) = 2(mt^2 + p)$, et
$$P(x) + P(-x) = y - y = 0, \qquad P(y) + P(-y) = -x + x = 0.$$
Donc $mx^2 + p = 0$ et $my^2 + p = 0$, d'où $m(x^2 - y^2) = 0$. Or $x^2 - y^2 = (x - y)(x + y) \neq 0$, car $x \neq y$ et $x \neq -y$. Donc $m = 0$, puis $p = 0$, et $P(t) = nt$. Alors $y = nx$ et $x = P(-y) = -ny = -n^2 x$, donc $(1 + n^2)x = 0$ et $x = 0$ : c'est impossible. Donc $P$ est de degré au moins $3$.

**2. a)** Comme en 1 b), $P(t) + P(-t) = 2(at^2 + c)$ s'annule en $t = x$ et en $t = y$, donc $a(x^2 - y^2) = 0$, d'où $a = 0$, puis $c = 0$.

**b)** Maintenant $P(t) = t^3 + bt$. On utilise les quatre égalités de 1 b).

- Pour $A$ : $P(x) = y$ et $P(y) = -x$, donc $P(P(x)) + x = 0$.
- Pour $B$, d'abscisse $-y$ : $P(-y) = x$ et $P(x) = y$, donc $P(P(-y)) + (-y) = y - y = 0$.
- Pour $C$, d'abscisse $-x$ : $P(-x) = -y$ et $P(-y) = x$, donc $P(P(-x)) + (-x) = 0$.
- Pour $D$, d'abscisse $y$ : $P(y) = -x$ et $P(-x) = -y$, donc $P(P(y)) + y = 0$.

**c)** On a $P(t) = t(t^2 + b)$, donc $P(t)^3 = t^3(t^2 + b)^3$ et
$$P(P(t)) + t = t^3(t^2 + b)^3 + bt(t^2 + b) + t = t\left[t^2(t^2 + b)^3 + bt^2 + b^2 + 1\right].$$
Posons $X = t^2$. En développant $(X + b)^3 = X^3 + 3bX^2 + 3b^2X + b^3$,
$$X(X + b)^3 + bX + b^2 + 1 = X^4 + 3bX^3 + 3b^2X^2 + (b^3 + b)X + b^2 + 1 = Q(X).$$
Ainsi $P(P(t)) + t = t\,Q(t^2)$ pour tout réel $t$.

Les nombres $x$ et $y$ sont non nuls et vérifient $P(P(t)) + t = 0$ (question 2 b), donc $Q(x^2) = 0$ et $Q(y^2) = 0$. Les nombres $x^2$ et $y^2$ sont strictement positifs, et distincts car $x \neq \pm y$. Donc $Q$ a au moins deux racines positives distinctes.

**d)** Si $b \geqslant 0$, alors pour $X \geqslant 0$, tous les termes $X^4$, $3bX^3$, $3b^2X^2$, $b(b^2 + 1)X$ sont positifs ou nuls, et $b^2 + 1 > 0$, donc $Q(X) > 0$. Alors $Q$ n'aurait aucune racine positive, ce qui contredit 2 c). Donc $b < 0$.

**e)** Posons $s = \alpha + \beta$ et $p = \alpha\beta$. Alors $(X - \alpha)(X - \beta) = X^2 - sX + p$, et
$$(X^2 - sX + p)^2 = X^4 - 2sX^3 + (s^2 + 2p)X^2 - 2spX + p^2.$$
Deux polynômes égaux en tout réel ont les mêmes coefficients, donc :
$$3b = -2s, \qquad 3b^2 = s^2 + 2p, \qquad b(b^2 + 1) = -2sp, \qquad b^2 + 1 = p^2.$$
La première égalité donne $s = -\frac{3b}{2}$. La deuxième donne alors $2p = 3b^2 - \frac{9b^2}{4} = \frac{3b^2}{4}$, soit $p = \frac{3b^2}{8}$. La troisième devient
$$b(b^2 + 1) = 3b \times \frac{3b^2}{8} = \frac{9b^3}{8}.$$
Comme $b \neq 0$, on divise par $b$ : $b^2 + 1 = \frac{9b^2}{8}$, soit $b^2 = 8$. Comme $b < 0$, $b = -\sqrt{8} = -2\sqrt{2}$. (La quatrième égalité est bien vérifiée : $p = 3$ et $p^2 = 9 = b^2 + 1$.)

Alors $s = 3\sqrt{2}$ et $p = 3$ : $\alpha$ et $\beta$ sont les racines de $X^2 - 3\sqrt{2}\,X + 3$, dont le discriminant vaut $18 - 12 = 6$. Donc
$$\alpha = \frac{3\sqrt{2} - \sqrt{6}}{2} \qquad \text{et} \qquad \beta = \frac{3\sqrt{2} + \sqrt{6}}{2}.$$

**3. a)** Prenons $P(t) = t^3 - 2\sqrt{2}\,t$, c'est-à-dire $b = -2\sqrt{2}$. Le calcul de 2 c) vaut pour tout $b$, donc $P(P(t)) + t = t\,Q(t^2)$. De plus, avec $b = -2\sqrt{2}$, $s = 3\sqrt{2}$ et $p = 3$, les quatre égalités de 2 e) sont vraies, donc $Q(X) = (X - \alpha)^2(X - \beta)^2$ avec les valeurs de $\alpha$ et $\beta$ trouvées en 2 e).

Posons $x = \sqrt{\alpha} > 0$ et $y = P(x)$. Comme $Q(x^2) = Q(\alpha) = 0$, on a $P(y) = P(P(x)) = -x$. Le polynôme $P$ est impair : $P(-t) = -P(t)$. Considérons les points
$$A(x, y), \qquad B(-y, x), \qquad C(-x, -y), \qquad D(y, -x).$$

- Ils sont sur $\mathcal{C}_P$ : $P(x) = y$, $P(-y) = -P(y) = x$, $P(-x) = -y$ et $P(y) = -x$.
- Ils forment un carré de centre $O$ dans le sens trigonométrique : $A \neq O$ car $x \neq 0$, et chacun des points $B$, $C$, $D$ s'obtient à partir du précédent par un quart de tour de centre $O$ dans le sens direct (le calcul de 1 a) lu à l'envers). Ils sont donc distincts, sur le cercle de centre $O$ et de rayon $OA$, dans le sens trigonométrique, et $AB^2 = (x + y)^2 + (y - x)^2 = 2(x^2 + y^2)$, et de même pour $BC$, $CD$ et $DA$.

Numériquement, $x \approx \text{0,947}$ et $y \approx -\text{1,829}$.

**b)** D'après 1 b), il faut $d \geqslant 3$. Réciproquement, tout $d \geqslant 3$ convient.

Pour $d = 3$, le polynôme $P$ convient. Pour $d \geqslant 4$, il faut d'abord connaître les quatre abscisses $x$, $-y$, $-x$ et $y$. On a $x^2 = \alpha$. Par la question 2 c) appliquée à ce carré, $Q(y^2) = 0$ et $y^2 \neq x^2$, donc $y^2 = \beta$. Les quatre abscisses sont donc $\pm\sqrt{\alpha}$ et $\pm\sqrt{\beta}$. Posons
$$P_d(t) = P(t) + t^{d-4}(t^2 - \alpha)(t^2 - \beta).$$
Le second terme est de degré $d$ et de coefficient dominant $1$, et $P$ est de degré $3 < d$, donc $P_d$ est de degré $d$. Le second terme s'annule en $\pm\sqrt{\alpha}$ et $\pm\sqrt{\beta}$, donc $P_d$ prend les mêmes valeurs que $P$ aux quatre abscisses, et sa courbe passe par $A$, $B$, $C$ et $D$.

**Réponse :** exactement les entiers $d \geqslant 3$.

**Bilan.** Un carré de centre $O$ ne peut pas avoir ses quatre sommets sur la courbe d'un polynôme de degré au plus $2$. Pour un polynôme unitaire de degré $3$, le polynôme est forcément impair, $P(t) = t^3 + bt$ avec $b < 0$, et l'on obtient un exemple avec $b = -2\sqrt{2}$. Les degrés possibles pour ce carré sont donc exactement les entiers $d \geqslant 3$.

## Going further

- Avec $b = -2\sqrt{2}$, la courbe de $t^3 - 2\sqrt{2}\,t$ porte un carré de centre $O$. Existe-t-il d'autres valeurs de $b < 0$ pour lesquelles la courbe de $t^3 + bt$ porte un tel carré ? Le raisonnement de 3 a) montre qu'il suffit que $Q$ ait une racine strictement positive. Tracer $Q$ à la calculatrice pour $b = -2$, $b = -3$ et $b = -4$. (À la calculatrice, on observe que cela arrive exactement quand $b \leqslant -2\sqrt{2}$ ; ce n'est pas démontré ici.)
- La suite du sujet (exercices 40847 et 40848) montre que, pour un polygone régulier à $k$ sommets de centre $O$, le plus petit degré d'un polynôme dont la courbe passe par tous les sommets est exactement $k - 1$ (quand les abscisses sont distinctes). Pour le carré, $k - 1 = 3$.
