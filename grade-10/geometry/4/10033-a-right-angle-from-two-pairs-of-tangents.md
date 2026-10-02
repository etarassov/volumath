---
id: "10033"
title: "Un angle droit né de deux paires de tangentes"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [cercle, tangente, pythagore, repere, reciproque-de-pythagore, triangle-rectangle]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 5 (géométrie)"
  reference: "2017-10_ofm-2013-2014-envoi-5.pdf, Exercices communs, exercice 6 (précision ajoutée à l'énoncé : P n'est pas sur la droite (OA), sinon (UV) est parallèle à (MM') et Q n'existe pas) ; corrigé 2017-10_ofm-2013-2014-envoi-5-solutions.pdf (le corrigé utilise l'axe radical d'un cercle et d'un point ; ici cette droite est obtenue avec un repère)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-5.pdf"
---

## Statement

Soit $\Gamma$ un cercle de centre $O$ et de rayon $r$, et $A$ un point extérieur à $\Gamma$. On mène de $A$ les deux tangentes à $\Gamma$, qui touchent le cercle en $T$ et $T'$. Soient $M$ et $M'$ les milieux de $[AT]$ et $[AT']$.

Soit $P$ un point de la droite $(MM')$ qui n'est pas sur la droite $(OA)$. On note $U$ et $V$ les points de contact des deux tangentes à $\Gamma$ issues de $P$. La droite $(UV)$ coupe la droite $(MM')$ en $Q$.

![Le cercle Γ, les tangentes [AT] et [AT'] avec leurs milieux M et M', un point P de la droite (MM'), les tangentes issues de P qui touchent le cercle en U et V, et le point Q où (UV) coupe (MM')](10033-figure-1.svg)

Montrer que le triangle $PAQ$ est rectangle en $A$.

## Hints

1. La tangente en $T$ est perpendiculaire au rayon $[OT]$. Montre que $MO^2 - r^2 = MA^2$.
2. Dans un repère où $O$ est l'origine et $A$ le point $(a\,;\,0)$, quel est l'ensemble des points $X$ tels que $XO^2 - XA^2 = r^2$ ? Que vaut alors $PO^2 - r^2$ ? Et $QO^2 - r^2$ ?
3. Soit $H$ le milieu de $[UV]$. Exprime $PA^2 + QA^2$ avec des longueurs qui partent de $H$, et compare avec $PQ^2$.

## Solution

### Étape 1 : une propriété des points $M$ et $M'$

La tangente en $T$ est perpendiculaire au rayon $[OT]$, donc le triangle $OTM$ est rectangle en $T$. D'après le théorème de Pythagore, $MO^2 = OT^2 + MT^2 = r^2 + MT^2$. Comme $M$ est le milieu de $[AT]$, on a $MT = MA$, donc
$$MO^2 - MA^2 = r^2 .$$
De même, $M'O^2 - M'A^2 = r^2$.

### Étape 2 : la droite $(MM')$

On se place dans un repère orthonormé d'origine $O$, où le point $A$ a pour coordonnées $(a\,;\,0)$ avec $a > r$. Pour un point $X(x\,;\,y)$,
$$XO^2 - XA^2 = x^2 + y^2 - (x - a)^2 - y^2 = 2ax - a^2 .$$
Donc $XO^2 - XA^2 = r^2$ si et seulement si $x = \dfrac{a^2 + r^2}{2a}$. L'ensemble de ces points est une droite $d$, perpendiculaire à $(OA)$.

D'après l'étape 1, les points $M$ et $M'$ sont sur $d$. Ils sont distincts, car $T \neq T'$. Donc la droite $(MM')$ est la droite $d$, et tout point $X$ de $(MM')$ vérifie
$$XO^2 - r^2 = XA^2 . \qquad (\star)$$
Le point $A$ n'est pas sur $d$, car $a \neq \dfrac{a^2 + r^2}{2a}$ (sinon on aurait $a^2 = r^2$). Donc $XA > 0$ pour tout point $X$ de $(MM')$.

### Étape 3 : les tangentes issues de $P$

D'après $(\star)$, $PO^2 = r^2 + PA^2 > r^2$, donc $P$ est bien à l'extérieur de $\Gamma$. Le triangle $OUP$ est rectangle en $U$, donc
$$PU^2 = PO^2 - r^2 = PA^2 .$$
On a aussi $PU = PV$ (même calcul avec $V$) et $OU = OV$. Les points $P$ et $O$ sont donc sur la médiatrice de $[UV]$ : la droite $(OP)$ est perpendiculaire à $(UV)$ et passe par le milieu $H$ de $[UV]$.

La droite $(UV)$ est perpendiculaire à $(OP)$, et la droite $(MM')$ est perpendiculaire à $(OA)$. Comme $P$ n'est pas sur $(OA)$, ces deux droites ne sont pas parallèles, et le point $Q$ existe bien.

### Étape 4 : le calcul

Le point $Q$ est sur $(MM')$, donc d'après $(\star)$, $QA^2 = QO^2 - r^2$.

Les points $O$, $H$, $P$ sont sur une droite perpendiculaire à $(UV)$ en $H$, et les points $U$ et $Q$ sont sur $(UV)$. Le théorème de Pythagore, dans des triangles rectangles en $H$, donne
$$QO^2 = OH^2 + HQ^2, \qquad r^2 = OU^2 = OH^2 + HU^2 ,$$
$$PU^2 = PH^2 + HU^2, \qquad PQ^2 = PH^2 + HQ^2 .$$
(Si $Q = H$, ces égalités restent vraies avec $HQ = 0$.) Donc
$$QA^2 = QO^2 - r^2 = HQ^2 - HU^2 ,$$
et
$$PA^2 + QA^2 = PU^2 + HQ^2 - HU^2 = PH^2 + HU^2 + HQ^2 - HU^2 = PH^2 + HQ^2 = PQ^2 .$$

### Conclusion

Les points $P$ et $Q$ sont différents de $A$, et $PA^2 + QA^2 = PQ^2$. D'après la réciproque du théorème de Pythagore, **le triangle $PAQ$ est rectangle en $A$**.

## Going further

- La droite $d$ de l'étape 2 s'appelle l'axe radical du cercle $\Gamma$ et du point $A$, vu comme un cercle de rayon nul. C'est l'idée du corrigé, qui écrit aussi $QA^2 = QU \times QV$.
- On a montré au passage que $PA = PU = PV$ : le cercle de centre $P$ passant par $A$ coupe $\Gamma$ à angle droit en $U$ et en $V$.
