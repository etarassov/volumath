---
id: "12226"
title: "Le milieu de [DX] et la parallèle à (AD) par O"
grade: 10
theme: geometry
difficulty: 4
duration_min: 50
tags: [cercle circonscrit, bissectrice, hauteur, symetrie axiale, vecteurs, angle inscrit]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2015, jour 1"
  reference: "2017-10_ofm-2014-2015-test-mai-1.pdf, test final du 12 mai 2015, exercice 2 (pas de corrigé publié ; l'énoncé appelle L le milieu de [DX] puis parle de l'angle BAM : L et M sont le même point)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-mai-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-mai-1.pdf"
---

## Statement

Soit $ABC$ un triangle tel que $AB \neq AC$, et soit $O$ le centre de son cercle circonscrit. On note $A'$ le pied de la hauteur issue de $A$, et on choisit un point $X$ de la demi-droite $[AA')$, différent de $A$.

La bissectrice de l'angle $\widehat{BAC}$ recoupe le cercle circonscrit en $D$. Soit $M$ le milieu de $[DX]$. La droite passant par $O$ et parallèle à $(AD)$ coupe la droite $(DX)$ en $N$.

Montrer que $\widehat{BAM} = \widehat{CAN}$.

![Le triangle ABC, son cercle circonscrit de centre O, la hauteur issue de A, la bissectrice (AD), le milieu M de [DX] et le point N](12226-figure-1.svg)

## Hints

1. Montre que $DB = DC$, puis que la droite $(OD)$ est parallèle à la hauteur $(AX)$.
2. Le triangle $OAD$ est isocèle. Compare les angles $\widehat{XAD}$ et $\widehat{DAO}$ : que fait la symétrie d'axe $(AD)$ à la demi-droite $[AX)$ ?
3. Appelle $M'$ le symétrique de $M$ par rapport à $(AD)$. Il suffit de montrer que $N$ est sur la demi-droite $[AM')$.
4. Travaille avec des vecteurs : écris $\overrightarrow{AM'}$ et $\overrightarrow{AN}$ à l'aide de $\overrightarrow{AD}$ et d'un vecteur unitaire $\vec u$ qui dirige $[AX)$.

## Solution

On note $R$ le rayon du cercle circonscrit $\Gamma$, $x = AX > 0$, et $\vec u$ le vecteur de longueur $1$ qui a la direction et le sens de $\overrightarrow{AX}$. Ainsi $\overrightarrow{AX} = x\,\vec u$, et $\vec u$ est perpendiculaire à $(BC)$. On pose enfin $\vec d = \overrightarrow{AD}$.

**Étape 1. $\overrightarrow{OD} = R\,\vec u$.**

Les angles inscrits $\widehat{BAD}$ et $\widehat{DAC}$ sont égaux, donc les cordes $[DB]$ et $[DC]$ sont égales (théorème de l'angle inscrit). Comme aussi $OB = OC$, les points $O$ et $D$ sont tous deux sur la médiatrice de $[BC]$. La droite $(OD)$ est donc perpendiculaire à $(BC)$, c'est-à-dire parallèle à $(AX)$.

Quel est le sens de $\overrightarrow{OD}$ ? La bissectrice issue de $A$ traverse le segment $[BC]$ avant de recouper le cercle, donc $D$ est de l'autre côté de $(BC)$ que $A$. La médiatrice de $[BC]$ coupe $\Gamma$ en $D$ et en un second point $D_1$, situé du même côté que $A$, et $O$ est le milieu de $[DD_1]$. Le vecteur $\overrightarrow{D_1 D}$ va du côté de $A$ vers l'autre côté, perpendiculairement à $(BC)$ : il a donc le sens de $\vec u$, et il en est de même pour $\overrightarrow{OD} = \frac{1}{2}\overrightarrow{D_1 D}$. Comme $OD = R$, on obtient $\overrightarrow{OD} = R\,\vec u$, et donc

$$\overrightarrow{AO} = \overrightarrow{AD} + \overrightarrow{DO} = \vec d - R\,\vec u.$$

**Étape 2. La symétrie d'axe $(AD)$ envoie $[AX)$ sur $[AO)$.**

Les vecteurs $\overrightarrow{DO} = -R\,\vec u$ et $\overrightarrow{DA} = -\vec d$ ont les mêmes directions que $\vec u$ et $\vec d$, avec des sens opposés. L'angle qu'ils forment est donc égal à celui de $\vec u$ et $\vec d$ : $\widehat{ODA} = \widehat{XAD}$. Le triangle $OAD$ est isocèle en $O$, car $OA = OD = R$, donc $\widehat{OAD} = \widehat{ODA}$. Ainsi

$$\widehat{XAD} = \widehat{DAO}.$$

Les demi-droites $[AX)$ et $[AO)$ font donc le même angle avec $[AD)$. Elles ne sont pas confondues : sinon $O$ serait sur la hauteur issue de $A$, qui serait alors la médiatrice de $[BC]$, et l'on aurait $AB = AC$. Elles sont donc symétriques l'une de l'autre par rapport à $(AD)$.

Soit $X'$ le symétrique de $X$ par rapport à $(AD)$. Il est sur $[AO)$ et $AX' = AX = x$. Comme $AO = R$,

$$\overrightarrow{AX'} = \frac{x}{R}\,\overrightarrow{AO} = \frac{x}{R}\,\vec d - x\,\vec u.$$

**Étape 3. Le symétrique $M'$ de $M$.**

La symétrie d'axe $(AD)$ laisse $D$ fixe et envoie $X$ sur $X'$. Elle envoie donc le milieu $M$ de $[DX]$ sur le milieu $M'$ de $[DX']$, et

$$\overrightarrow{AM'} = \frac{1}{2}\left(\overrightarrow{AD} + \overrightarrow{AX'}\right) = \frac{1}{2}\left(\left(1 + \frac{x}{R}\right)\vec d - x\,\vec u\right).$$

Cette symétrie envoie aussi la demi-droite $[AB)$ sur $[AC)$, puisque $(AD)$ est la bissectrice de $\widehat{BAC}$. Elle conserve les angles, donc $\widehat{BAM} = \widehat{CAM'}$.

**Étape 4. Le point $N$.**

Les vecteurs $\vec d$ et $\vec u$ ne sont pas colinéaires, car la bissectrice et la hauteur issues de $A$ sont deux droites distinctes quand $AB \neq AC$. On peut donc identifier les coefficients sur $\vec d$ et $\vec u$.

Le point $N$ est sur $(DX)$ : il existe un réel $\lambda$ tel que

$$\overrightarrow{AN} = \overrightarrow{AD} + \lambda\,\overrightarrow{DX} = \vec d + \lambda\left(x\,\vec u - \vec d\right) = (1 - \lambda)\,\vec d + \lambda x\,\vec u.$$

Le point $N$ est aussi sur la parallèle à $(AD)$ passant par $O$ : il existe un réel $\mu$ tel que

$$\overrightarrow{AN} = \overrightarrow{AO} + \mu\,\vec d = (1 + \mu)\,\vec d - R\,\vec u.$$

En identifiant les coefficients de $\vec u$, on trouve $\lambda x = -R$, donc $\lambda = -\dfrac{R}{x}$. Les coefficients de $\vec d$ donnent alors $1 + \mu = 1 - \lambda = 1 + \dfrac{R}{x}$. Ainsi

$$\overrightarrow{AN} = \left(1 + \frac{R}{x}\right)\vec d - R\,\vec u = \frac{R}{x}\left(\left(1 + \frac{x}{R}\right)\vec d - x\,\vec u\right) = \frac{2R}{x}\,\overrightarrow{AM'}.$$

**Conclusion.** Le coefficient $\dfrac{2R}{x}$ est strictement positif, donc $N$ est sur la demi-droite $[AM')$, et $\widehat{CAN} = \widehat{CAM'}$. Avec l'étape 3,

$$\widehat{BAM} = \widehat{CAM'} = \widehat{CAN}.$$

## Going further

Le calcul montre aussi que $\overrightarrow{AN} = \dfrac{R}{x}\left(\overrightarrow{AD} + \overrightarrow{AX'}\right)$. Si $Q$ est le point tel que $ADQX'$ soit un parallélogramme, on a donc $\overrightarrow{AN} = \dfrac{R}{x}\,\overrightarrow{AQ}$. Quand $X$ s'éloigne de $A$, le point $N$ se rapproche de $O$.

L'étape 2 contient un résultat classique à retenir : la hauteur issue de $A$ et la droite $(AO)$ sont symétriques par rapport à la bissectrice de l'angle $\widehat{BAC}$. Peux-tu le démontrer directement, en montrant que $\widehat{BAA'}$ et $\widehat{OAC}$ valent tous deux $90° - \widehat{ABC}$ quand les angles du triangle sont aigus ?
