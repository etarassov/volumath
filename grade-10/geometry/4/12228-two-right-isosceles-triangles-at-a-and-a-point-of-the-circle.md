---
id: "12228"
title: "Deux triangles rectangles isocèles en A et un point du cercle"
grade: 10
theme: geometry
difficulty: 4
duration_min: 50
tags: [cercle-circonscrit, diametre, geometrie-analytique, colinearite, determinant, triangle-rectangle-isocele]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2015, jour 2"
  reference: "2017-10_ofm-2014-2015-test-mai-2.pdf, test final du 13 mai 2015, exercices pour les candidats à la JBMO, exercice 4 (pas de corrigé publié)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-mai-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-mai-2.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, et tel que $AB < AC < BC$. On note $\Gamma$ son cercle circonscrit. Soient $D$ et $E$ les points de $\Gamma$ diamétralement opposés à $B$ et à $C$.

Le cercle de centre $A$ et de rayon $AE$ coupe le segment $[AC]$ au point $K$. Le cercle de centre $A$ et de rayon $AD$ coupe la droite $(AB)$ au point $L$ tel que $A$ soit entre $B$ et $L$.

Montrer que les droites $(EK)$ et $(DL)$ se coupent en un point de $\Gamma$.

![Le triangle ABC, son cercle circonscrit, les diamètres [BD] et [CE], et les droites (EK) et (DL)](12228-figure-1.svg)

## Hints

1. Que vaut l'angle $\widehat{EAC}$ ? Quelle est la nature du triangle $EAK$ ? Et celle du triangle $DAL$ ?
2. Sur une figure précise, où semble se trouver le point d'intersection des deux droites ? Compare sa position avec la droite $(OA)$.
3. Prends un repère orthonormé d'origine $O$, avec $A(0\,;1)$ et un rayon égal à $1$. Exprime les coordonnées de $K$ à l'aide de celles de $E$.
4. Montre que si $M(x\,;y)$ est sur $\Gamma$, alors les points $M$, $M'(1 - y\,;1 + x)$ et $P(1\,;0)$ sont alignés.

## Solution

**Une remarque pour deviner la réponse.** L'angle $\widehat{EAC}$ est inscrit dans un demi-cercle, puisque $[EC]$ est un diamètre : c'est un angle droit. Comme $AK = AE$ et que $K$ est sur $[AC]$, le triangle $EAK$ est rectangle isocèle en $A$. De même, $\widehat{BAD} = 90°$, et le triangle $DAL$ est rectangle isocèle en $A$. Sur une figure soignée, le point commun aux deux droites semble être le point $P$ de $\Gamma$ tel que $(OP)$ soit perpendiculaire à $(OA)$, du côté de $C$. On va le démontrer avec des coordonnées.

**Le repère.** On prend un repère orthonormé d'origine $O$, avec le rayon de $\Gamma$ comme unité, tel que $A(0\,;1)$, et tel que $C$ ait une abscisse positive. Le cercle $\Gamma$ est l'ensemble des points $(x\,;y)$ tels que $x^2 + y^2 = 1$. On note $B(b_1\,;b_2)$ et $C(c_1\,;c_2)$, avec $c_1 > 0$.

Comme les trois angles du triangle sont aigus, le centre $O$ du cercle circonscrit est à l'intérieur du triangle. La droite $(AO)$, qui est l'axe des ordonnées, coupe donc le côté $[BC]$ en un point situé strictement entre $B$ et $C$ : les points $B$ et $C$ sont de part et d'autre de cet axe, donc $b_1 < 0$. Comme $b_1 \neq 0$ et $c_1 \neq 0$, les points $B$ et $C$ ne sont ni en $(0\,;1)$ ni en $(0\,;-1)$, donc $-1 < b_2 < 1$ et $-1 < c_2 < 1$.

Les points diamétralement opposés sont les symétriques par rapport à $O$ : $E(-c_1\,;-c_2)$ et $D(-b_1\,;-b_2)$.

**Étape 1. Le point $K$ a pour coordonnées $(1 + c_2\,;1 - c_1)$.**

Soit $K_0(1 + c_2\,;1 - c_1)$. On a $\overrightarrow{AK_0}\,(1 + c_2\,;-c_1)$ et $\overrightarrow{AC}\,(c_1\,;c_2 - 1)$. Leur déterminant vaut

$$(1 + c_2)(c_2 - 1) - (-c_1)\,c_1 = c_2^2 - 1 + c_1^2 = 0,$$

donc ces deux vecteurs sont colinéaires : $\overrightarrow{AK_0} = \lambda\,\overrightarrow{AC}$ pour un réel $\lambda$. Les premières coordonnées donnent $1 + c_2 = \lambda\,c_1$, avec $1 + c_2 > 0$ et $c_1 > 0$, donc $\lambda > 0$ : le point $K_0$ est sur la demi-droite $[AC)$. De plus

$$AK_0^2 = (1 + c_2)^2 + c_1^2 = 2 + 2c_2 \qquad \text{et} \qquad AE^2 = c_1^2 + (1 + c_2)^2 = 2 + 2c_2.$$

Donc $AK_0 = AE$. Or il n'y a qu'un seul point de la demi-droite $[AC)$ à la distance $AE$ de $A$, et c'est $K$. Donc $K = K_0$.

**Étape 2. Le point $L$ a pour coordonnées $(1 + b_2\,;1 - b_1)$.**

Soit $L_0(1 + b_2\,;1 - b_1)$. On a $\overrightarrow{AL_0}\,(1 + b_2\,;-b_1)$ et $\overrightarrow{BA}\,(-b_1\,;1 - b_2)$. Leur déterminant vaut

$$(1 + b_2)(1 - b_2) - (-b_1)(-b_1) = 1 - b_2^2 - b_1^2 = 0.$$

Donc $\overrightarrow{AL_0} = \lambda\,\overrightarrow{BA}$ pour un réel $\lambda$, et les premières coordonnées donnent $1 + b_2 = \lambda\,(-b_1)$, avec $1 + b_2 > 0$ et $-b_1 > 0$, donc $\lambda > 0$. Le point $L_0$ est donc sur la droite $(AB)$, du côté de $A$ opposé à $B$. Comme à l'étape 1, $AL_0^2 = 2 + 2b_2 = AD^2$. Donc $L_0 = L$.

**Étape 3. Une propriété des points de $\Gamma$.**

Écrivons les résultats des étapes 1 et 2 à l'aide des coordonnées de $E$ et de $D$. Si $E(x\,;y)$, c'est-à-dire $x = -c_1$ et $y = -c_2$, alors $K(1 - y\,;1 + x)$. De même, si $D(x\,;y)$, alors $L(1 - y\,;1 + x)$.

Soit $M(x\,;y)$ un point de $\Gamma$ et $M'(1 - y\,;1 + x)$. Montrons que $M$, $M'$ et $P(1\,;0)$ sont alignés. On a $\overrightarrow{MM'}\,(1 - x - y\,;1 + x - y)$ et $\overrightarrow{MP}\,(1 - x\,;-y)$, dont le déterminant vaut

$$(1 - x - y)(-y) - (1 + x - y)(1 - x) = \left(-y + xy + y^2\right) - \left(1 - x^2 - y + xy\right) = x^2 + y^2 - 1 = 0.$$

Donc $M$, $M'$ et $P$ sont alignés.

Avec $M = E$, on obtient que $P$ est sur la droite $(EK)$. Avec $M = D$, on obtient que $P$ est sur la droite $(DL)$. Ces droites existent bien, car $E \neq K$ et $D \neq L$ : en effet $M' = M$ demande $x = 1 - y$ et $y = 1 + x$, donc $M = A$, alors que $E$ et $D$ sont différents de $A$ (leurs abscisses $-c_1$ et $-b_1$ ne sont pas nulles).

**Étape 4. Les droites $(EK)$ et $(DL)$ ne sont pas parallèles.**

Posons $u = 1 + c_2 > 0$ et $v = 1 + b_2 > 0$. Alors $\overrightarrow{EK}\,(u + c_1\,;u - c_1)$ et $\overrightarrow{DL}\,(v + b_1\,;v - b_1)$, et leur déterminant vaut

$$(u + c_1)(v - b_1) - (u - c_1)(v + b_1) = 2\,(c_1 v - b_1 u).$$

Comme $c_1 > 0$, $v > 0$, $-b_1 > 0$ et $u > 0$, ce nombre est strictement positif. Les deux droites ne sont donc pas parallèles : elles ont un seul point commun.

**Conclusion.** Ce point commun est $P(1\,;0)$, d'après l'étape 3. Comme $1^2 + 0^2 = 1$, le point $P$ est sur $\Gamma$ : les droites $(EK)$ et $(DL)$ se coupent en un point de $\Gamma$. C'est le point $P$ du cercle tel que l'angle $\widehat{AOP}$ soit droit, du côté de $C$.

## Going further

L'application $M(x\,;y) \mapsto M'(1 - y\,;1 + x)$ de l'étape 3 est la rotation de centre $A$ et d'angle $90°$ : elle envoie $E$ sur $K$ et $D$ sur $L$. L'exercice montre donc que, pour tout point $M$ du cercle, la droite $(MM')$ passe par le même point $P$ du cercle.

On peut aussi faire une preuve sans coordonnées. Les triangles $EAK$ et $DAL$ sont rectangles isocèles, donc $\widehat{AEK} = \widehat{ADL} = 45°$. Si $P$ est le point commun des deux droites, l'égalité de ces angles permet de montrer que $A$, $E$, $D$ et $P$ sont sur un même cercle, qui est $\Gamma$. La difficulté est alors de vérifier les positions des points sur la figure, et c'est précisément ce que la méthode des coordonnées évite.

Enfin, l'hypothèse $AB < AC < BC$ ne sert qu'à garantir que $K$ est sur le segment $[AC]$ et pas au-delà de $C$. Peux-tu le démontrer ? On pourra utiliser $AE^2 + AC^2 = EC^2$ et montrer que l'angle $\widehat{ABC}$ dépasse $45°$.
