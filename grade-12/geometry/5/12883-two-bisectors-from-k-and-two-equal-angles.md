---
id: "12883"
title: "Deux bissectrices issues de K et deux angles égaux"
grade: 12
theme: geometry
difficulty: 5
duration_min: 120
tags: [cercle-inscrit, cercle-circonscrit, bissectrice, puissance-d-un-point, pole-sud, cocyclicite, symetrie-axiale, mediatrice]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2025"
  reference: "2025-10_Sujet-Test-3-2024-2025.pdf, test senior, exercice 7 ; corrigé 2025-10_Corrige-Test-3-2024-2025.pdf (on suit la première solution ; la fin est rédigée avec la symétrie par rapport à la bissectrice de l'angle KAI, ce qui évite de dépendre de l'ordre des points sur la figure)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-3-2024-2025.pdf"
---

## Statement

Soit $ABC$ un triangle et $I$ le centre de son cercle inscrit. On note $\Omega$ le cercle circonscrit au triangle $BIC$. Soit $K$ un point du segment $[BC]$, distinct de $B$ et de $C$, tel que $\widehat{BAK} < \widehat{KAC}$.

La bissectrice de l'angle $\widehat{BKA}$ coupe $\Omega$ en deux points $W$ et $X$, où $W$ est du même côté que $A$ par rapport à la droite $(BC)$. La bissectrice de l'angle $\widehat{CKA}$ coupe $\Omega$ en deux points $Y$ et $Z$, où $Y$ est du même côté que $A$ par rapport à la droite $(BC)$.

![Le triangle ABC, le point I, le cercle Ω passant par B, I et C, le point K sur [BC], les deux bissectrices issues de K qui coupent Ω en W, X et en Y, Z, et les segments qui joignent A à ces quatre points](12883-figure-1.svg)

Montrer que $\widehat{WAY} = \widehat{ZAX}$.

## Hints

1. Où est le centre du cercle $\Omega$ ? Pensez au point $S$ où la droite $(AI)$ recoupe le cercle circonscrit au triangle $ABC$.
2. Soit $P$ le second point d'intersection de la droite $(AK)$ avec le cercle circonscrit au triangle $ABC$. Comparez $KA \times KP$, $KB \times KC$ et $KY \times KZ$. Que peut-on dire des points $A$, $Y$, $Z$ et $P$ ?
3. Il suffit de montrer que la bissectrice de l'angle $\widehat{KAI}$ est aussi la bissectrice de l'angle $\widehat{YAZ}$, et aussi celle de l'angle $\widehat{WAX}$.
4. Soit $Q$ le point du cercle circonscrit à $ABC$ tel que $(PQ)$ soit parallèle à $(BC)$, et $J$ le centre du cercle inscrit dans le triangle $APQ$. Montrez que $(PJ)$ est parallèle à $(YZ)$ et que $SP = SJ$.

## Solution

On note $\Gamma$ le cercle circonscrit au triangle $ABC$, et $S$ le second point d'intersection de la droite $(AI)$ avec $\Gamma$.

### Deux rappels

**Rappel 1 (puissance d'un point).** Soit $\mathcal{C}$ un cercle de centre $O$ et de rayon $\rho$, et $K$ un point intérieur à $\mathcal{C}$. Pour toute corde $[UV]$ de $\mathcal{C}$ qui passe par $K$,

$$KU \times KV = \rho^2 - OK^2.$$

*Preuve.* Soit $M$ le milieu de $[UV]$. La droite $(OM)$ est perpendiculaire à $(UV)$, ou bien $M = O$. Comme $K$ est sur le segment $[UV]$, l'une des longueurs $KU$, $KV$ vaut $MU + MK$ et l'autre vaut $MU - MK$. Donc $KU \times KV = MU^2 - MK^2$. Par le théorème de Pythagore dans les triangles $OMU$ et $OMK$, on a $MU^2 = \rho^2 - OM^2$ et $MK^2 = OK^2 - OM^2$. Donc $KU \times KV = \rho^2 - OK^2$, qui ne dépend pas de la corde choisie.

**Rappel 2 (le milieu de l'arc).** Soit $U$, $A$, $V$ trois points d'un cercle, et $N$ le milieu de l'arc $UV$ qui ne contient pas $A$. Comme les cordes $[NU]$ et $[NV]$ ont même longueur, le théorème de l'angle inscrit donne $\widehat{UAN} = \widehat{NAV}$ : **la droite $(AN)$ est la bissectrice de l'angle $\widehat{UAV}$.** De plus, si $J$ est le centre du cercle inscrit du triangle $AUV$, et $J'$ le point de la droite $(AJ)$ où se coupent les bissectrices extérieures en $U$ et en $V$ (le centre du cercle exinscrit dans l'angle $\widehat{A}$), alors

$$NU = NV = NJ = NJ'.$$

*Preuve.* Notons $\alpha = \widehat{UAV}$ et $\mu = \widehat{AUV}$. Par l'angle inscrit, $\widehat{NUV} = \widehat{NAV} = \alpha/2$, donc $\widehat{NUJ} = \widehat{NUV} + \widehat{VUJ} = \alpha/2 + \mu/2$. D'autre part, $\widehat{NJU}$ est un angle extérieur du triangle $AJU$, donc $\widehat{NJU} = \widehat{JAU} + \widehat{AUJ} = \alpha/2 + \mu/2$. Le triangle $NUJ$ est isocèle en $N$, donc $NU = NJ$, et de même $NV = NJ$. Enfin, la bissectrice intérieure $(UJ)$ et la bissectrice extérieure $(UJ')$ sont perpendiculaires. Dans le triangle $JUJ'$, rectangle en $U$, on a donc $\widehat{NUJ'} = 90^\circ - \widehat{NUJ} = 90^\circ - \widehat{NJU} = \widehat{NJ'U}$, et $NU = NJ'$.

**Application.** Dans le triangle $ABC$, la bissectrice $(AI)$ recoupe $\Gamma$ en $S$, qui est donc le milieu de l'arc $BC$ qui ne contient pas $A$, et $SB = SC = SI$. **Le point $S$ est le centre du cercle $\Omega$.**

### Étape 1 : un point P et deux cercles qui passent par P

Soit $P$ le second point d'intersection de la droite $(AK)$ avec $\Gamma$. Le point $K$ est sur la corde $[BC]$, donc à l'intérieur de $\Gamma$ et de $\Omega$, et il est entre $A$ et $P$. Par le rappel 1 dans $\Gamma$, puis dans $\Omega$ (qui contient $B$, $C$, $Y$ et $Z$),

$$KA \times KP = KB \times KC = KY \times KZ.$$

Soit $\omega_1$ le cercle qui passe par $A$, $Y$ et $Z$ (ces points ne sont pas alignés, car $A$ n'est pas sur la droite $(YZ)$). Le point $K$ est sur la corde $[YZ]$, donc à l'intérieur de $\omega_1$, et la droite $(AK)$ recoupe $\omega_1$ en un point $P_1$ tel que $K$ soit entre $A$ et $P_1$. Par le rappel 1 dans $\omega_1$, $KA \times KP_1 = KY \times KZ = KA \times KP$. Donc $KP_1 = KP$, et comme $P_1$ et $P$ sont sur la même demi-droite issue de $K$, $P_1 = P$. **Le point $P$ est sur $\omega_1$.**

De même, $KA \times KP = KB \times KC = KW \times KX$, et **le point $P$ est sur le cercle $\omega_2$ qui passe par $A$, $W$ et $X$.**

### Étape 2 : un point Q et le triangle APQ

Soit $\Delta$ la médiatrice de $[BC]$. Elle passe par le centre de $\Gamma$ et par $S$, puisque $SB = SC$. La symétrie par rapport à $\Delta$ conserve $\Gamma$. Soit $Q$ l'image de $P$ par cette symétrie : $Q$ est sur $\Gamma$, la droite $(PQ)$ est perpendiculaire à $\Delta$, donc parallèle à $(BC)$, et $SP = SQ$.

Comme $\widehat{BAP} = \widehat{BAK} < \widehat{BAS}$, le point $P$ est sur l'arc $BS$ qui ne contient pas $A$, distinct de $S$. Il est donc du même côté de $\Delta$ que $B$, et $Q$ est du côté de $C$. Ainsi $Q \neq P$, **le vecteur $\overrightarrow{PQ}$ a le même sens que $\overrightarrow{KC}$**, et $S$ est le milieu de l'arc $PQ$ qui ne contient pas $A$.

Soit $J$ le centre du cercle inscrit du triangle $APQ$, et $J'$ le centre de son cercle exinscrit dans l'angle $\widehat{A}$. Par le rappel 2 dans le triangle $APQ$, les points $J$ et $J'$ sont sur la droite $(AS)$, qui est la droite $(AI)$, et

$$SP = SJ = SJ'.$$

Les points $J$, $I$ et $J'$ sont sur la demi-droite $[AS)$ et $P$ est sur la demi-droite $[AK)$. Donc **l'angle $\widehat{PAJ}$ et l'angle $\widehat{PAJ'}$ sont tous les deux l'angle $\widehat{KAI}$.**

### Étape 3 : deux paires de droites parallèles

Le point $K$ est entre $A$ et $P$, donc $\overrightarrow{PA}$ a le même sens que $\overrightarrow{KA}$, et on a vu que $\overrightarrow{PQ}$ a le même sens que $\overrightarrow{KC}$. La translation de vecteur $\overrightarrow{KP}$ envoie donc l'angle $\widehat{CKA}$ sur l'angle $\widehat{QPA}$, et la bissectrice de l'un sur la bissectrice de l'autre :

$$(PJ) \parallel (YZ).$$

Deux angles adjacents dont la somme vaut $180^\circ$ ont des bissectrices perpendiculaires. Donc la bissectrice $(WX)$ de $\widehat{BKA}$ est perpendiculaire à $(YZ)$, et la bissectrice extérieure $(PJ')$ en $P$ est perpendiculaire à $(PJ)$. Par conséquent

$$(PJ') \parallel (WX).$$

### Étape 4 : J est sur ω1 et J' est sur ω2

Le point $S$ est le centre de $\Omega$, donc il est sur la médiatrice de $[YZ]$. Comme $SP = SJ$, il est aussi sur la médiatrice de $[PJ]$. Ces deux médiatrices passent par $S$ et sont perpendiculaires aux deux droites parallèles $(YZ)$ et $(PJ)$ : **elles sont confondues.** On note $d$ cette droite.

Le centre de $\omega_1$ est sur la médiatrice de sa corde $[YZ]$, c'est-à-dire sur $d$. La symétrie par rapport à $d$ conserve donc $\omega_1$ (même centre, même rayon). Elle envoie $P$, qui est sur $\omega_1$, sur $J$. **Donc $J$ est sur $\omega_1$.**

De la même façon, les médiatrices de $[WX]$ et de $[PJ']$ passent par $S$ et sont perpendiculaires aux droites parallèles $(WX)$ et $(PJ')$, donc elles sont confondues, et **$J'$ est sur $\omega_2$.**

### Étape 5 : une seule bissectrice pour deux angles

Dans le cercle $\omega_1$, les cordes $[YZ]$ et $[PJ]$ sont parallèles et ont la même médiatrice $d$.

Le segment $[AP]$ coupe la droite $(YZ)$ en $K$, donc $A$ et $P$ sont de part et d'autre de $(YZ)$. Le point $J$ est du même côté que $P$, puisque $(PJ)$ est parallèle à $(YZ)$. La droite $(YZ)$ sépare donc le point $A$ de la droite $(PJ)$.

Soit $N$ le point d'intersection de $d$ et de $\omega_1$ situé de l'autre côté de $(PJ)$ par rapport à $A$. D'après ce qui précède, il est aussi de l'autre côté de $(YZ)$ par rapport à $A$.

- $N$ est sur $\omega_1$, sur la médiatrice de $[PJ]$, du côté de $(PJ)$ qui ne contient pas $A$ : c'est le milieu de l'arc $PJ$ qui ne contient pas $A$. Par le rappel 2, $(AN)$ est la bissectrice de l'angle $\widehat{PAJ}$, c'est-à-dire de $\widehat{KAI}$.
- Pour la même raison, $N$ est le milieu de l'arc $YZ$ qui ne contient pas $A$, et $(AN)$ est la bissectrice de l'angle $\widehat{YAZ}$.

Notons $\ell$ la bissectrice de l'angle $\widehat{KAI}$. **La droite $\ell$ est aussi la bissectrice de l'angle $\widehat{YAZ}$.**

On refait le même raisonnement dans $\omega_2$, avec les cordes parallèles $[WX]$ et $[PJ']$ : le segment $[AP]$ coupe $(WX)$ en $K$, et $\widehat{PAJ'} = \widehat{KAI}$. **La droite $\ell$ est aussi la bissectrice de l'angle $\widehat{WAX}$.**

### Conclusion

Soit $s$ la symétrie par rapport à la droite $\ell$. Comme $\ell$ est la bissectrice de $\widehat{YAZ}$, la symétrie $s$ échange les demi-droites $[AY)$ et $[AZ)$. Comme $\ell$ est la bissectrice de $\widehat{WAX}$, elle échange les demi-droites $[AW)$ et $[AX)$. Elle envoie donc l'angle $\widehat{WAY}$ sur l'angle $\widehat{XAZ}$. Une symétrie conserve les angles, donc

$$\widehat{WAY} = \widehat{ZAX}.$$

## Going further

1. Que devient la figure quand $(AK)$ est la bissectrice de l'angle $\widehat{BAC}$ ? Montrez directement que, dans ce cas, $(AI)$ est la bissectrice de l'angle $\widehat{YAZ}$. (Ici $P = S$, et $SY = SZ$.)
2. La démonstration montre plus que l'énoncé : elle montre que $\widehat{WAZ} = \widehat{YAX}$, et que les deux angles $\widehat{WAX}$ et $\widehat{YAZ}$ ont la même bissectrice. Vérifiez-le sur la figure.
