---
id: "10053"
title: "Deux points symétriques sur le cercle inscrit"
grade: 11
theme: geometry
difficulty: 4
duration_min: 45
tags: [cercle-inscrit, tangente, repere, produit-scalaire, colinearite, perpendiculaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 2 (géométrie)"
  reference: "2017-10_ofm-2015-2016-envoi-2.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2015-2016-envoi-2-solutions.pdf (le corrigé utilise les polaires par rapport au cercle inscrit, puis, dans une autre solution, la trigonométrie ; ici tout est fait dans un repère. On a ajouté à l'énoncé l'hypothèse implicite AB ≠ AC : si AB = AC, les droites (GH) et (BC) sont parallèles et le point Q n'existe pas)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-2.pdf"
---

## Statement

Soit $ABC$ un triangle tel que $AB \neq AC$, et $I$ le centre de son cercle inscrit. Le cercle inscrit touche les côtés $[BC]$, $[CA]$ et $[AB]$ en $D$, $E$ et $F$. On note $M$ le milieu de $[BC]$.

Soient $G$ et $H$ les symétriques de $E$ et de $F$ par rapport au point $I$. On note $Q$ le point d'intersection des droites $(BC)$ et $(GH)$.

![Le triangle ABC, son cercle inscrit de centre I, les points de contact D, E, F, les points G et H diamétralement opposés à E et F, le milieu M de [BC], et la droite (GH) qui coupe (BC) en Q](10053-figure-1.svg)

Montrer que les droites $(IQ)$ et $(IM)$ sont perpendiculaires.

## Hints

1. Les points $F$ et $H$ sont diamétralement opposés. Montre que $(DH) \perp (DF)$, puis que la droite $(DH)$ est parallèle à $(IB)$.
2. Prends un repère orthonormé d'origine $I$ dans lequel la droite $(BC)$ a pour équation $y = -r$, où $r$ est le rayon du cercle inscrit. Avec $B(b\,;\,-r)$, cherche $H$ sur la droite qui passe par $D$ et qui est parallèle à $(IB)$. Fais de même pour $G$.
3. Écris $Q(q\,;\,-r)$ et traduis le fait que $Q$, $G$, $H$ sont alignés avec un déterminant. Tu dois trouver $q = -\frac{2r^2}{b + c}$.
4. Calcule enfin le produit scalaire $\overrightarrow{IQ} \cdot \overrightarrow{IM}$.

## Solution

On note $r$ le rayon du cercle inscrit.

**Rappel.** La tangente à un cercle en un point est perpendiculaire au rayon qui aboutit en ce point. Deux vecteurs $\vec u(x\,;\,y)$ et $\vec v(x'\,;\,y')$ sont colinéaires si et seulement si $xy' - x'y = 0$.

### Étape 1 : la droite $(DH)$ est parallèle à $(IB)$

Les triangles $IDB$ et $IFB$ sont rectangles en $D$ et en $F$, car $(BD)$ et $(BF)$ sont tangentes au cercle. D'après le théorème de Pythagore,
$$BD^2 = IB^2 - r^2 = BF^2 ,$$
donc $BD = BF$. Comme aussi $ID = IF = r$, la droite $(IB)$ est la médiatrice du segment $[DF]$, et $(DF) \perp (IB)$. Les points $D$ et $F$ sont bien distincts : sinon ce point serait à la fois sur $(BC)$ et sur $(AB)$, ce serait $B$, qui n'est pas sur le cercle inscrit.

Le segment $[FH]$ est un diamètre du cercle. Le point $D$ n'est pas $H$ : sinon $[FD]$ serait un diamètre, et les tangentes en $F$ et en $D$, c'est-à-dire $(AB)$ et $(BC)$, seraient toutes les deux perpendiculaires à ce diamètre, donc parallèles. Or elles se coupent en $B$. Le point $D$ est donc un point du cercle de diamètre $[FH]$, différent de $F$ et de $H$, et $\widehat{FDH} = 90°$. Ainsi $(DH) \perp (DF)$.

Les droites $(DH)$ et $(IB)$ sont toutes les deux perpendiculaires à $(DF)$, donc **$(DH)$ est parallèle à $(IB)$**. De la même façon, avec le point $C$ et les points $E$, $G$, la droite $(DG)$ est parallèle à $(IC)$.

### Étape 2 : un repère

Le point $D$ est le pied de la perpendiculaire à $(BC)$ issue de $I$, et $ID = r$. On choisit un repère orthonormé d'origine $I$, dont l'axe des abscisses est parallèle à $(BC)$, et tel que $D$ ait pour coordonnées $(0\,;\,-r)$. La droite $(BC)$ a alors pour équation $y = -r$, et on note
$$B(b\,;\,-r), \qquad C(c\,;\,-r), \qquad M\left(\frac{b + c}{2}\,;\,-r\right).$$
Les nombres $b$ et $c$ sont différents, car $B \neq C$.

**On a $b + c \neq 0$.** Sinon $DB = DC$. Les tangentes issues d'un même point ont la même longueur (étape 1), donc $BF = BD$, $CE = CD$ et $AF = AE$. On aurait alors
$$AB = AF + FB = AE + BD = AE + CD = AE + EC = AC ,$$
ce qui est exclu.

### Étape 3 : les coordonnées de $H$ et de $G$

Le vecteur $\overrightarrow{IB}$ a pour coordonnées $(b\,;\,-r)$. D'après l'étape 1, $H$ est sur la droite qui passe par $D$ et qui est dirigée par $\overrightarrow{IB}$. Ses points sont les points $N_t(tb\,;\,-r - tr)$, pour $t$ réel. Le point $N_t$ est sur le cercle inscrit si et seulement si
$$t^2b^2 + r^2(1 + t)^2 = r^2 ,$$
c'est-à-dire $t^2b^2 + 2tr^2 + t^2r^2 = 0$, ou encore $t\left((b^2 + r^2)\,t + 2r^2\right) = 0$.

La solution $t = 0$ donne le point $D$. L'autre solution est $t = -\lambda_B$, avec
$$\lambda_B = \frac{2r^2}{b^2 + r^2} .$$
Comme $H$ est sur cette droite et sur le cercle, et que $H \neq D$ (étape 1), on obtient $H = N_{-\lambda_B}$. De la même façon, avec la droite $(DG)$ dirigée par $\overrightarrow{IC}$, on pose
$$\lambda_C = \frac{2r^2}{c^2 + r^2} ,$$
et on obtient
$$H(-\lambda_B\, b\,;\,-r + \lambda_B\, r), \qquad G(-\lambda_C\, c\,;\,-r + \lambda_C\, r) .$$

### Étape 4 : le point $Q$ existe

Les points $G$ et $H$ sont distincts, car $E \neq F$ : sinon ce point serait sur $(AC)$ et sur $(AB)$, ce serait $A$, qui n'est pas sur le cercle inscrit.

La droite $(GH)$ est parallèle à $(BC)$ si et seulement si $G$ et $H$ ont la même ordonnée, c'est-à-dire $\lambda_B = \lambda_C$, ou encore $b^2 = c^2$. Comme $b \neq c$, cela voudrait dire $c = -b$, ce qui est exclu (étape 2). Donc les droites $(GH)$ et $(BC)$ se coupent en un point $Q$, et ce point a des coordonnées de la forme $(q\,;\,-r)$.

### Étape 5 : le calcul de $q$

Les vecteurs
$$\overrightarrow{QH}(-\lambda_B\, b - q\,;\,\lambda_B\, r) \qquad \text{et} \qquad \overrightarrow{QG}(-\lambda_C\, c - q\,;\,\lambda_C\, r)$$
sont colinéaires, donc
$$(-\lambda_B\, b - q)\,\lambda_C\, r - \lambda_B\, r\,(-\lambda_C\, c - q) = 0 ,$$
c'est-à-dire, en divisant par $r$,
$$\lambda_B\lambda_C\,(c - b) + q\,(\lambda_B - \lambda_C) = 0 .$$
On calcule les deux coefficients, avec $K = (b^2 + r^2)(c^2 + r^2)$ :
$$\lambda_B\lambda_C = \frac{4r^4}{K}, \qquad \lambda_B - \lambda_C = \frac{2r^2\left((c^2 + r^2) - (b^2 + r^2)\right)}{K} = \frac{2r^2\,(c - b)(c + b)}{K} .$$
L'égalité devient
$$\frac{2r^2\,(c - b)}{K}\left(2r^2 + q\,(b + c)\right) = 0 .$$
Comme $r \neq 0$ et $c \neq b$, on obtient $2r^2 + q\,(b + c) = 0$, et donc
$$q = -\frac{2r^2}{b + c} .$$

### Étape 6 : conclusion

Les vecteurs $\overrightarrow{IQ}(q\,;\,-r)$ et $\overrightarrow{IM}\left(\frac{b + c}{2}\,;\,-r\right)$ ne sont pas nuls, car leur ordonnée vaut $-r$. Leur produit scalaire vaut
$$\overrightarrow{IQ} \cdot \overrightarrow{IM} = q \times \frac{b + c}{2} + r^2 = -\frac{2r^2}{b + c} \times \frac{b + c}{2} + r^2 = -r^2 + r^2 = 0 .$$

**Les droites $(IQ)$ et $(IM)$ sont donc perpendiculaires.**

## Going further

- Le calcul montre que $DQ = |q|$ et $DM = \frac{1}{2}|b + c|$, donc $DQ \times DM = r^2 = ID^2$. Retrouve la conclusion à partir de cette égalité, sans repère : dans le triangle $IQM$, le point $D$ est le pied de la hauteur issue de $I$.
- Que se passe-t-il quand $AB = AC$ ? Dessine la figure : $M$ et $D$ sont confondus, et $(GH)$ est parallèle à $(BC)$.
