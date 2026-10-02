---
id: "10077"
title: "Le centre du cercle inscrit sur la droite (KL)"
grade: 12
theme: geometry
difficulty: 5
duration_min: 90
tags: [cercle inscrit, bissectrice, tangente, vecteurs, nombres complexes, alignement, maths-expertes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 1 (géométrie)"
  reference: "2018-10_envoi_1_2018-2019_v3.pdf, Exercices Seniors, exercice 8 ; corrigé 2018-11_corrige-envoi-1.pdf (l'énoncé place B et C « sur les droites (AE) et (AD) » : il faut lire (AD) et (AE), comme dans le corrigé et sur sa figure. « La tangente entre A et (BC) » est précisée ici en « la tangente la plus proche de A ». Le corrigé conclut avec le théorème de Pascal ; ici on le remplace par un calcul avec les nombres complexes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/10/envoi_1_2018-2019_v3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-10_envoi_1_2018-2019_v3.pdf"
---

## Statement

Soit $ADE$ un triangle isocèle en $A$, et $\omega$ le cercle tangent à la droite $(AD)$ en $D$ et à la droite $(AE)$ en $E$. Soit $B$ un point de la demi-droite $[AD)$ au-delà de $D$, et $C$ un point de la demi-droite $[AE)$ au-delà de $E$. On suppose que $BC > BD + CE$.

Soit $F$ et $G$ les points du segment $[BC]$ tels que $BF = BD$ et $CG = CE$. Les droites $(DG)$ et $(FE)$ se coupent en $K$. Parmi les deux tangentes à $\omega$ parallèles à $(BC)$, on prend celle qui est la plus proche de $A$ : elle touche $\omega$ en $L$.

![Le triangle ABC, le cercle ω qui touche [AB] en D et [AC] en E, les points F et G sur [BC], les droites (DG) et (FE) qui se coupent en K, la tangente à ω en L parallèle à (BC), et la droite (KL) en pointillés, qui passe par I](10077-figure-1.svg)

Montrer que le centre $I$ du cercle inscrit dans le triangle $ABC$ est sur la droite $(KL)$.

## Hints

1. Le point $I$ est sur les trois bissectrices du triangle $ABC$, et le triangle $BDF$ est isocèle en $B$. Montre que $I$ est le centre d'un cercle qui passe par $D$, $E$, $F$ et $G$.
2. Soit $O$ le centre de $\omega$ et $\rho$ son rayon. Écris $\overrightarrow{DL} = \overrightarrow{DO} + \overrightarrow{OL}$ avec des vecteurs unitaires perpendiculaires aux côtés du triangle. Montre que $(DL)$ est parallèle à $(BI)$, donc perpendiculaire à $(DF)$. De même, $(EL)$ est perpendiculaire à $(EG)$.
3. Prends les nombres complexes, avec $I$ pour origine et $ID$ pour unité de longueur : $D$, $E$, $F$, $G$ sont sur le cercle unité. Si $a$ et $b$ sont deux points distincts du cercle unité, montre que la droite qui les joint a pour équation $z + ab\,\bar z = a + b$, et que la perpendiculaire à cette droite passant par $a$ a pour équation $z - ab\,\bar z = a - b$.
4. Écris les deux équations vérifiées par l'affixe $k$ de $K$, puis les deux vérifiées par l'affixe $l$ de $L$, et soustrais-les. Compare $\bar k$ et $\bar l$.

## Solution

**Rappel.**

- *Nombres complexes.* Si $|z| = 1$, alors $\bar z = 1/z$. Un nombre complexe $w$ est réel exactement quand $\bar w = w$, et il est imaginaire pur ou nul exactement quand $\bar w = -w$.
- *Alignement et angle droit.* Soit $A$, $B$, $M$ trois points d'affixes $a$, $b$, $z$, avec $a \neq b$, et $w = (z - a)/(b - a)$. Le point $M$ est sur la droite $(AB)$ exactement quand $w$ est réel. On a $M = A$ ou $(AM) \perp (AB)$ exactement quand $w$ est imaginaire pur ou nul.

### Étape 1 : un cercle de centre $I$ passe par $D$, $E$, $F$, $G$

On a $BF + GC = BD + CE < BC$, donc les points $B$, $F$, $G$, $C$ sont dans cet ordre sur $[BC]$, et ils sont distincts. Le point $D$ est strictement entre $A$ et $B$, et $E$ strictement entre $A$ et $C$. Aucun des points $D$, $E$, $F$, $G$ n'est un sommet, et chaque côté en contient au plus deux, donc **ces quatre points sont distincts**.

Le triangle $BDF$ est isocèle en $B$. La bissectrice de son angle en $B$ est la bissectrice de l'angle $\widehat{ABC}$, qui passe par $I$, et c'est aussi la médiatrice de $[DF]$. Donc $ID = IF$, et $(BI) \perp (DF)$. De même, avec $CE = CG$, on a $IE = IG$ et $(CI) \perp (EG)$. Enfin $AD = AE$, donc la bissectrice issue de $A$ est la médiatrice de $[DE]$, et $ID = IE$.

Ainsi $ID = IE = IF = IG$ : **le cercle $\Sigma$ de centre $I$ et de rayon $ID$ passe par $D$, $E$, $F$ et $G$.**

### Étape 2 : les droites $(DL)$ et $(EL)$

Soit $O$ le centre de $\omega$ et $\rho$ son rayon. On note :

- $\vec n$ le vecteur unitaire perpendiculaire à $(BC)$, dirigé du côté de $A$ ;
- $\vec m$ le vecteur unitaire perpendiculaire à $(AB)$, dirigé du côté de $C$ ;
- $\vec p$ le vecteur unitaire perpendiculaire à $(AC)$, dirigé du côté de $B$.

*Le centre $O$.* Le cercle $\omega$ touche les demi-droites $[AB)$ et $[AC)$, donc son centre $O$ est à l'intérieur de l'angle $\widehat{BAC}$, sur sa bissectrice. Le rayon $[OD]$ est perpendiculaire à $(AB)$, et $O$ est du côté de $C$, donc $\overrightarrow{DO} = \rho\,\vec m$. De même, $\overrightarrow{EO} = \rho\,\vec p$.

*Le point $L$.* La tangente à $\omega$ en un point est parallèle à $(BC)$ quand le rayon qui aboutit en ce point est perpendiculaire à $(BC)$. Les deux points possibles sont $L_1$ et $L_2$, avec $\overrightarrow{OL_1} = \rho\,\vec n$ et $\overrightarrow{OL_2} = -\rho\,\vec n$. On pose $h = \overrightarrow{OA} \cdot \vec n$. Les distances de $A$ aux tangentes en $L_1$ et en $L_2$ valent $|h - \rho|$ et $|h + \rho|$.

Soit $\vec u$ et $\vec v$ les vecteurs unitaires de $[AB)$ et de $[AC)$. Le point $O$ est sur la bissectrice, donc $\overrightarrow{AO} = t\,(\vec u + \vec v)$ avec $t > 0$. Si $H$ est le pied de la hauteur issue de $A$, alors $\overrightarrow{AB} \cdot \vec n = \overrightarrow{AH} \cdot \vec n = -AH < 0$, donc $\vec u \cdot \vec n < 0$, et de même $\vec v \cdot \vec n < 0$. Donc $\overrightarrow{AO} \cdot \vec n < 0$, c'est-à-dire $h > 0$. Alors $|h - \rho| < h + \rho$ : la tangente la plus proche de $A$ est celle en $L_1$. Ainsi
$$\overrightarrow{OL} = \rho\,\vec n .$$

*La droite $(DL)$.* On a
$$\overrightarrow{DL} = \overrightarrow{DO} + \overrightarrow{OL} = \rho\,(\vec m + \vec n) .$$
Soit $s$ la symétrie d'axe $(BI)$, la bissectrice de l'angle $\widehat{ABC}$. Elle échange les droites $(BC)$ et $(BA)$, et elle envoie l'intérieur de l'angle $\widehat{ABC}$ sur lui-même. Elle envoie donc le côté de $(BC)$ qui contient $A$ sur le côté de $(BA)$ qui contient $C$, et inversement. Ainsi $s$ change $\vec n$ en $\vec m$ et $\vec m$ en $\vec n$, et elle ne change pas le vecteur $\vec m + \vec n$. Un vecteur que la symétrie ne change pas est parallèle à son axe. Ce vecteur n'est pas nul, car $(BC)$ et $(BA)$ ne sont pas parallèles. Donc $(DL) \parallel (BI)$, et avec l'étape 1,
$$(DL) \perp (DF) .$$
De la même façon, $\overrightarrow{EL} = \rho\,(\vec p + \vec n)$ est parallèle à $(CI)$, donc
$$(EL) \perp (EG) .$$

### Étape 3 : deux équations de droites

On prend les nombres complexes, avec $I$ pour origine et $ID$ pour unité de longueur. On note $d$, $e$, $f$, $g$, $k$, $l$ les affixes de $D$, $E$, $F$, $G$, $K$, $L$. D'après l'étape 1, $|d| = |e| = |f| = |g| = 1$.

Soit $a \neq b$ deux nombres de module $1$, et $w = (z - a)/(b - a)$. Comme $\bar a = 1/a$ et $\bar b = 1/b$, on a $\bar b - \bar a = (a - b)/(ab)$, donc
$$\bar w = \frac{\bar z - \bar a}{\bar b - \bar a} = \frac{ab\,\bar z - b}{a - b} .$$

- $w$ est réel quand $\bar w = w$, c'est-à-dire $ab\,\bar z - b = -(z - a)$. **Le point d'affixe $z$ est sur la droite qui joint $a$ et $b$ exactement quand**
$$(1) \qquad z + ab\,\bar z = a + b .$$
- $w$ est imaginaire pur ou nul quand $\bar w = -w$, c'est-à-dire $ab\,\bar z - b = z - a$. **Le point d'affixe $z$ est sur la perpendiculaire en $a$ à cette droite exactement quand**
$$(2) \qquad z - ab\,\bar z = a - b .$$

### Étape 4 : les points $I$, $K$, $L$ sont alignés

On pose $N = d + g - e - f$.

Le point $K$ est sur $(DG)$ et sur $(EF)$. D'après $(1)$,
$$k + dg\,\bar k = d + g \qquad \text{et} \qquad k + ef\,\bar k = e + f .$$
En soustrayant, $(dg - ef)\,\bar k = N$.

Le point $L$ est sur la perpendiculaire en $D$ à $(DF)$ et sur la perpendiculaire en $E$ à $(EG)$, d'après l'étape 2. D'après $(2)$,
$$l - df\,\bar l = d - f \qquad \text{et} \qquad l - eg\,\bar l = e - g .$$
En soustrayant, $(eg - df)\,\bar l = N$.

On a $dg \neq ef$. Sinon, les deux équations de $K$ auraient le même membre de gauche, donc $d + g = e + f$. Alors $d$ et $g$ seraient les deux racines de l'équation $X^2 - (d + g)X + dg = 0$, tout comme $e$ et $f$, et l'on aurait $\{d, g\} = \{e, f\}$, ce qui est faux, car les quatre points sont distincts.

- Si $N = 0$, alors $\bar k = 0$, donc $K = I$, et $I$ est bien sur la droite $(KL)$.
- Si $N \neq 0$, alors $eg - df \neq 0$ aussi, et
$$\bar k = \frac{N}{dg - ef}, \qquad \bar l = \frac{N}{eg - df}, \qquad \text{donc} \qquad \bar k = \lambda\,\bar l \quad \text{avec} \quad \lambda = \frac{eg - df}{dg - ef} .$$
Le nombre $\lambda$ est réel. En effet, avec $\bar d = 1/d$ et les autres, puis en multipliant en haut et en bas par $defg$,
$$\bar\lambda = \frac{\frac{1}{eg} - \frac{1}{df}}{\frac{1}{dg} - \frac{1}{ef}} = \frac{df - eg}{ef - dg} = \lambda .$$
En prenant le conjugué de $\bar k = \lambda\,\bar l$, on obtient $k = \lambda\,l$, c'est-à-dire $\overrightarrow{IK} = \lambda\,\overrightarrow{IL}$.

Les vecteurs $\overrightarrow{IK}$ et $\overrightarrow{IL}$ sont colinéaires : **le centre $I$ du cercle inscrit est sur la droite $(KL)$.**

## Going further

- Que se passe-t-il quand $BC = BD + CE$ ? Montre qu'alors $\omega$ est le cercle inscrit du triangle $ABC$, que $F = G = K$, et que $[KL]$ est un diamètre de $\omega$.
- Les étapes 3 et 4 n'utilisent que le cercle $\Sigma$. Soit $D$, $E$, $F$, $G$ quatre points distincts d'un cercle de centre $I$, $K$ le point d'intersection de $(DG)$ et $(EF)$, et $L$ le point tel que $(DL) \perp (DF)$ et $(EL) \perp (EG)$. Alors $I$, $K$, $L$ sont alignés. Vérifie-le sur une figure faite avec un logiciel, en déplaçant les quatre points.
