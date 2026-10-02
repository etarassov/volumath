---
id: "10075"
title: "Le cercle ADZ et le milieu de [AB]"
grade: 10
theme: geometry
difficulty: 4
duration_min: 50
tags: [bissectrice, bissectrice exterieure, milieu d'un arc, cercle circonscrit, repere, trigonometrie, triangle rectangle, points cocycliques]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 1 (géométrie)"
  reference: "2018-10_envoi_1_2018-2019_v3.pdf, Exercices communs, exercice 6 ; corrigé 2018-11_corrige-envoi-1.pdf (le corrigé fait une chasse aux angles avec le point où la droite des milieux coupe (DC), puis donne une seconde preuve par composition de similitudes ; ici on calcule dans un repère dont les axes sont les deux bissectrices en A. Dans la preuve 1 du corrigé, le paragraphe sur la médiatrice de [AC] écrit M_B, milieu de [AB], là où il faut M_C, milieu de [AC])"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/10/envoi_1_2018-2019_v3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-10_envoi_1_2018-2019_v3.pdf"
---

## Statement

Soit $ABC$ un triangle et $D$ le milieu de l'arc $BC$ de son cercle circonscrit qui ne contient pas $A$. Soit $Z$ le point de la bissectrice extérieure de l'angle $\widehat{BAC}$ tel que $ZA = ZC$.

![Le triangle ABC, son cercle circonscrit, le point D, la bissectrice extérieure en A, la médiatrice de [AC] en pointillés, le point Z, le milieu M de [AB] et le cercle qui passe par A, D et Z](10075-figure-1.svg)

Montrer que le cercle qui passe par $A$, $D$ et $Z$ passe aussi par le milieu $M$ du côté $[AB]$.

## Hints

1. Pourquoi la droite $(AD)$ est-elle la bissectrice de l'angle $\widehat{BAC}$ ? Prends un repère orthonormé d'origine $A$ dont les deux axes sont les bissectrices intérieure et extérieure de cet angle.
2. On note $\theta$ la moitié de l'angle $\widehat{BAC}$, $b = AB$ et $c = AC$. Écris les coordonnées de $B$ et de $C$ avec $\cos\theta$ et $\sin\theta$, puis trouve celles de $Z$.
3. Le cercle circonscrit au triangle $ABC$ passe par l'origine. Écris la condition pour qu'un point soit sur ce cercle, et calcule l'abscisse $d$ de $D$. Tu dois trouver $d\cos\theta = (b + c)/2$.
4. Le triangle $ADZ$ est rectangle en $A$. Où est le centre de son cercle circonscrit ?

## Solution

**Rappel.**

- *Milieu d'un arc.* Si $D$ est le milieu de l'arc $BC$ du cercle circonscrit qui ne contient pas $A$, alors $(AD)$ est la bissectrice de l'angle $\widehat{BAC}$. En effet, les angles inscrits $\widehat{BAD}$ et $\widehat{DAC}$ interceptent les arcs $BD$ et $DC$, qui sont égaux.
- *Les deux bissectrices.* La bissectrice intérieure et la bissectrice extérieure d'un angle sont perpendiculaires.
- *Triangle rectangle.* Le centre du cercle circonscrit à un triangle rectangle est le milieu de son hypoténuse.

### Étape 1 : le repère

On note $\alpha = \widehat{BAC}$, $\theta = \alpha/2$, $b = AB$ et $c = AC$. On pose
$$u = \cos\theta, \qquad v = \sin\theta .$$
Comme $0° < \theta < 90°$, on a $u > 0$ et $v > 0$, et aussi $u^2 + v^2 = 1$.

On prend un repère orthonormé d'origine $A$. L'axe des abscisses est la bissectrice intérieure, orientée vers l'intérieur de l'angle $\widehat{BAC}$. D'après le rappel, l'axe des ordonnées est alors la bissectrice extérieure. On l'oriente pour que $C$ soit au-dessus de l'axe des abscisses.

Les demi-droites $[AB)$ et $[AC)$ font chacune un angle $\theta$ avec la demi-droite des abscisses positives, $[AB)$ en dessous et $[AC)$ au-dessus. La trigonométrie dans le triangle rectangle donne donc
$$B(bu\,;\,-bv), \qquad C(cu\,;\,cv) .$$
D'après le rappel, $D$ est sur la bissectrice intérieure, donc $D(d\,;\,0)$, avec $d \neq 0$ puisque $D$ n'est pas $A$. Le point $Z$ est sur la bissectrice extérieure, donc $Z(0\,;\,z)$.

### Étape 2 : le point $Z$

On a $ZA^2 = z^2$ et
$$ZC^2 = c^2u^2 + (cv - z)^2 = c^2(u^2 + v^2) - 2cvz + z^2 = c^2 - 2cvz + z^2 .$$
Donc $ZA = ZC$ exactement quand $2cvz = c^2$, c'est-à-dire
$$z = \frac{c}{2v} .$$
Il y a bien un seul point $Z$, et $z \neq 0$.

### Étape 3 : le point $D$

Soit $W(m\,;\,k)$ le centre du cercle circonscrit au triangle $ABC$. Ce cercle passe par l'origine $A$, donc son rayon au carré vaut $WA^2 = m^2 + k^2$. Un point $(x\,;\,y)$ est sur ce cercle exactement quand
$$(x - m)^2 + (y - k)^2 = m^2 + k^2, \qquad \text{c'est-à-dire} \qquad x^2 + y^2 = 2mx + 2ky .$$

- Pour $B$ : $b^2(u^2 + v^2) = 2mbu - 2kbv$, donc $b^2 = 2mbu - 2kbv$, et en divisant par $b$, $b = 2mu - 2kv$.
- Pour $C$ : de la même façon, $c = 2mu + 2kv$.

En additionnant, $b + c = 4mu$.

Pour $D$ : $d^2 = 2md$, et comme $d \neq 0$, $d = 2m$. Donc $du = 2mu$, c'est-à-dire
$$(1) \qquad d\,u = \frac{b + c}{2} .$$

### Étape 4 : le cercle $ADZ$

Les droites $(AD)$ et $(AZ)$ sont les deux axes, donc $\widehat{DAZ} = 90°$. D'après le rappel, le centre du cercle qui passe par $A$, $D$, $Z$ est le milieu $S$ de l'hypoténuse $[DZ]$ :
$$S\left(\frac{d}{2}\,;\,\frac{z}{2}\right), \qquad SA^2 = \frac{d^2}{4} + \frac{z^2}{4} .$$
Un point $(x\,;\,y)$ est sur ce cercle exactement quand
$$\left(x - \frac{d}{2}\right)^2 + \left(y - \frac{z}{2}\right)^2 = \frac{d^2}{4} + \frac{z^2}{4}, \qquad \text{c'est-à-dire} \qquad x^2 + y^2 = dx + zy .$$

### Étape 5 : le milieu de $[AB]$

Le milieu de $[AB]$ est le point
$$M\left(\frac{bu}{2}\,;\,-\frac{bv}{2}\right) .$$
D'un côté,
$$x^2 + y^2 = \frac{b^2(u^2 + v^2)}{4} = \frac{b^2}{4} .$$
De l'autre, avec $z = c/(2v)$ et l'égalité $(1)$,
$$dx + zy = \frac{b}{2}\, d\,u - \frac{c}{2v} \times \frac{bv}{2} = \frac{b}{2} \times \frac{b + c}{2} - \frac{bc}{4} = \frac{b^2}{4} .$$
Les deux membres sont égaux. **Le cercle qui passe par $A$, $D$ et $Z$ passe donc par le milieu $M$ de $[AB]$.**

## Going further

- Soit $Z'$ le point de la bissectrice extérieure de l'angle $\widehat{BAC}$ tel que $Z'A = Z'B$. Montre que le cercle qui passe par $A$, $D$ et $Z'$ passe par le milieu de $[AC]$.
- L'égalité $(1)$ dit que le projeté orthogonal $P$ de $D$ sur la droite $(AB)$ vérifie $AP = (AB + AC)/2$. Démontre-le sans repère : avec $Q$ le projeté de $D$ sur $(AC)$, compare les triangles rectangles $DPB$ et $DQC$.
