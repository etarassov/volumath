---
id: "7603"
title: "Trois points alignés dans un losange"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [losange, chasse-aux-angles, mediatrice, cercle-circonscrit, alignement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de sélection"
  reference: "stage_ete_2013.pdf, chapitre XII « Test de sélection du 4 juin 2013 », exercice 3 (énoncé restreint ici au cas où K est sur le segment [CD])"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

$ABCD$ est un losange, c'est-à-dire un quadrilatère dont les quatre côtés ont la même longueur.

Sur le côté $[CD]$, on place un point $K$, différent de $C$ et de $D$, tel que

$$BK = AD .$$

Par ailleurs, la médiatrice du segment $[BC]$ coupe la diagonale $(BD)$ en un point $P$.

![Le losange ABCD, le point K sur le côté [CD] avec BK égal au côté, la médiatrice de [BC] et le point P](7603-figure-1.svg)

Démontrer que les points $A$, $K$ et $P$ sont alignés.

## Hints

1. Pour montrer que trois points $A$, $K$, $P$ sont alignés, il suffit de montrer que les demi-droites $[AK)$ et $[AP)$ font le même angle avec un même côté, par exemple avec $[AB)$. Autrement dit : calculez $\widehat{BAK}$ et $\widehat{BAP}$ et comparez-les.
2. Notez $\widehat{BAD} = \alpha$ et $\widehat{ABC} = \beta$. Comme la somme des angles d'un quadrilatère vaut $360°$ et que les angles opposés d'un losange sont égaux, on a $\alpha + \beta = 180°$.
3. La condition $BK = AD$ dit que $BK$ est égal au côté du losange, donc $BK = BC$ **et** $BK = BA$. Cela fabrique deux triangles isocèles de sommet $B$.
4. Pour $P$ : dans un losange les diagonales sont perpendiculaires et se coupent en leur milieu. Que dit cela de la droite $(BD)$ par rapport au segment $[AC]$ ? Et alors, que devient le point $P$ pour le triangle $ABC$ ?

## Solution

Notons $\alpha = \widehat{BAD}$ et $\beta = \widehat{ABC}$.

Dans un losange, les angles opposés sont égaux : $\widehat{DCB} = \alpha$ et $\widehat{CDA} = \beta$. Comme la somme des quatre angles d'un quadrilatère vaut $360°$, on obtient $2\alpha + 2\beta = 360°$, c'est-à-dire

$$(\star) \qquad \alpha + \beta = 180° .$$

Notons enfin $c$ la longueur commune des quatre côtés.

**Première partie : calcul de l'angle $\widehat{BAK}$.**

L'hypothèse est $BK = AD = c$. Or $BC = c$ aussi, donc le triangle $BCK$ est isocèle en $B$. Ses angles à la base sont donc égaux :

$$\widehat{BKC} = \widehat{BCK} .$$

Comme $K$ est sur le segment $[CD]$, l'angle $\widehat{BCK}$ est l'angle $\widehat{BCD}$ du losange, qui vaut $\alpha$. Donc $\widehat{BKC} = \alpha$, et l'angle au sommet du triangle isocèle vaut

$$\widehat{KBC} = 180° - 2\alpha .$$

On en tire l'angle $\widehat{ABK}$, obtenu en retirant $\widehat{KBC}$ de $\widehat{ABC} = \beta$ :

$$\widehat{ABK} = \beta - (180° - 2\alpha) = \beta - 180° + 2\alpha .$$

D'après $(\star)$, $\beta - 180° = -\alpha$, donc

$$\widehat{ABK} = -\alpha + 2\alpha = \alpha .$$

Maintenant, $BK = c$ et $BA = c$ : le triangle $ABK$ est lui aussi isocèle en $B$, d'angle au sommet $\alpha$. Ses deux angles à la base valent donc

$$\widehat{BAK} = \frac{180° - \alpha}{2} = \frac{\beta}{2},$$

où l'on a de nouveau utilisé $(\star)$ sous la forme $180° - \alpha = \beta$.

**Deuxième partie : calcul de l'angle $\widehat{BAP}$.**

Dans un losange, les diagonales sont perpendiculaires et se coupent en leur milieu. Donc la droite $(BD)$ est exactement la **médiatrice** du segment $[AC]$.

Le point $P$ est sur $(BD)$, donc sur la médiatrice de $[AC]$ : ainsi $PA = PC$. Et $P$ est sur la médiatrice de $[BC]$ : ainsi $PB = PC$. Au total

$$PA = PB = PC ,$$

autrement dit **$P$ est le centre du cercle circonscrit au triangle $ABC$**.

En particulier $PA = PB$, donc le triangle $ABP$ est isocèle en $P$, et ses angles à la base sont égaux :

$$\widehat{BAP} = \widehat{ABP} .$$

Reste à identifier $\widehat{ABP}$. Le point $P$ est sur la diagonale $(BD)$, et dans un losange chaque diagonale est bissectrice des angles qu'elle joint : $(BD)$ coupe donc l'angle $\widehat{ABC} = \beta$ en deux parts égales. Par conséquent

$$\widehat{ABP} = \frac{\beta}{2}, \qquad \text{donc} \qquad \widehat{BAP} = \frac{\beta}{2} .$$

**Conclusion.**

On a trouvé

$$\widehat{BAK} = \frac{\beta}{2} = \widehat{BAP} .$$

Les points $K$ et $P$ sont tous les deux du même côté de la droite $(AB)$ (celui de $C$ et $D$). Les demi-droites $[AK)$ et $[AP)$ partent donc de $A$, du même côté de $(AB)$, en faisant le même angle avec $[AB)$ : elles sont confondues.

Les points $A$, $K$ et $P$ sont donc bien alignés.

## Going further

L'énoncé d'origine ne demandait pas $K$ sur le segment $[CD]$, mais seulement sur la **droite** $(CD)$, privée de $C$ et de $D$. Il y a alors deux autres positions possibles : $K$ au-delà de $C$, ou $K$ au-delà de $D$. La démonstration est la même dans son idée, mais les angles se lisent différemment sur la figure et il faut refaire le calcul à chaque fois. C'est un piège classique des exercices de chasse aux angles : **une démonstration qui ne vaut que pour une figure n'est pas une démonstration complète.**

Il existe aussi une solution par le calcul : on place l'origine au centre du losange, avec les axes portés par les diagonales, de sorte que $A(-a\,;0)$, $B(0\,;b)$, $C(a\,;0)$ et $D(0\,;-b)$. On calcule alors les coordonnées de $K$ et de $P$, et on vérifie que les vecteurs $\vec{AK}$ et $\vec{AP}$ sont colinéaires. Les calculs sont un peu longs, mais ils traitent toutes les positions de $K$ d'un seul coup.
