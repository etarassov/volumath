---
id: "10074"
title: "Cinq points sur un cercle, autour de deux cercles sécants"
grade: 10
theme: geometry
difficulty: 4
duration_min: 60
tags: [cercles-secants, tangente-commune, angle-inscrit, tangente, triangle-isocele, alignement, cocyclicite, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 1 (géométrie)"
  reference: "2018-10_envoi_1_2018-2019_v3.pdf, Exercices communs, exercice 5 ; corrigé 2018-11_corrige-envoi-1.pdf (même démarche que le corrigé : on montre d'abord que H, P, B sont alignés, puis on compare des angles ; on précise sur la figure quels angles s'ajoutent)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/10/envoi_1_2018-2019_v3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-10_envoi_1_2018-2019_v3.pdf"
---

## Statement

Soit $\omega_1$ et $\omega_2$ deux cercles qui se coupent en deux points $P$ et $Q$. Ils ont deux tangentes communes. Celle qui est la plus proche de $P$ touche $\omega_1$ en $A$ et $\omega_2$ en $B$.

La tangente à $\omega_1$ en $P$ recoupe $\omega_2$ en un point $D$, et la tangente à $\omega_2$ en $P$ recoupe $\omega_1$ en un point $C$. Soit $H$ le point du segment $[AC]$ tel que $AH = AP$, et $K$ le point du segment $[BD]$ tel que $BK = BP$.

![Les cercles ω1 et ω2 qui se coupent en P et Q, leur tangente commune (AB), la tangente en P à ω1 qui recoupe ω2 en D, la tangente en P à ω2 qui recoupe ω1 en C, et les points H sur [AC] et K sur [BD] tels que AH = AP et BK = BP](10074-figure-1.svg)

Montrer que les cinq points $A$, $B$, $K$, $Q$ et $H$ sont sur un même cercle.

## Hints

1. Sur une figure soignée, les points $H$, $P$, $B$ semblent alignés, et de même $K$, $P$, $A$. Commence par le démontrer.
2. On note $x = \widehat{PAB}$, $y = \widehat{ABP}$ et $z = \widehat{CPD}$. Avec l'angle entre une tangente et une corde, trouve les angles que font les deux tangentes en $P$ avec $[PA]$ et avec $[PB]$. Déduis-en une relation entre $x$, $y$ et $z$.
3. Montre que $\widehat{CAP} = z$, puis calcule les angles du triangle isocèle $AHP$.
4. Calcule $\widehat{AQB}$, puis compare-le à $\widehat{AHB}$ et à $\widehat{AKB}$.

## Solution

**Rappel.**

- *Angle inscrit.* Si $X$, $Y$, $Z$, $T$ sont sur un même cercle, avec $Z$ et $T$ du même côté de la droite $(XY)$, alors $\widehat{XZY} = \widehat{XTY}$. Réciproquement, si $Z$ et $T$ sont du même côté de $(XY)$ et si $\widehat{XZY} = \widehat{XTY}$, alors $X$, $Y$, $Z$, $T$ sont sur un même cercle.
- *Angle entre une tangente et une corde.* Soit $X$, $Y$, $Z$ trois points d'un cercle et $\delta$ la tangente au cercle en $X$. L'angle entre $\delta$ et la corde $[XY]$, mesuré du côté de la droite $(XY)$ qui ne contient pas $Z$, est égal à l'angle inscrit $\widehat{XZY}$.

On raisonne sur la figure de l'énoncé. On note
$$x = \widehat{PAB}, \qquad y = \widehat{ABP}, \qquad z = \widehat{CPD} .$$
On note aussi $D'$ un point de la droite $(PD)$ tel que $P$ soit entre $D$ et $D'$, et $C'$ un point de la droite $(PC)$ tel que $P$ soit entre $C$ et $C'$. Les angles $\widehat{D'PC'}$ et $\widehat{CPD}$ sont opposés par le sommet, donc $\widehat{D'PC'} = z$.

### Étape 1 : une relation entre $x$, $y$ et $z$

- La droite $(AB)$ est tangente à $\omega_1$ en $A$. Le point $B$ est du côté de la droite $(AP)$ qui ne contient pas $Q$. D'après le rappel, $\widehat{PAB} = \widehat{AQP}$, donc $\widehat{AQP} = x$.
- La droite $(PD)$ est tangente à $\omega_1$ en $P$, et le point $D'$ est du côté de $(PA)$ qui ne contient pas $Q$. D'après le rappel, $\widehat{APD'} = \widehat{AQP} = x$.
- De la même façon, avec le cercle $\omega_2$ et ses tangentes $(AB)$ en $B$ et $(PC)$ en $P$ : $\widehat{BQP} = y$ et $\widehat{BPC'} = y$.

Sur la figure, les demi-droites $[PD')$ et $[PC')$ sont à l'intérieur de l'angle $\widehat{APB}$, dans l'ordre $[PA)$, $[PD')$, $[PC')$, $[PB)$. Donc
$$\widehat{APB} = \widehat{APD'} + \widehat{D'PC'} + \widehat{C'PB} = x + z + y .$$
La somme des angles du triangle $APB$ donne $x + y + (x + y + z) = 180°$, c'est-à-dire
$$x + y = 90° - \frac{z}{2} .$$

### Étape 2 : les points $H$, $P$, $B$ sont alignés

Les points $A$, $C$, $P$ sont sur $\omega_1$, et la droite $(PD)$ est tangente à $\omega_1$ en $P$. Le point $D$ est du côté de la droite $(PC)$ qui ne contient pas $A$. D'après le rappel, appliqué à la corde $[PC]$,
$$\widehat{CAP} = \widehat{CPD} = z .$$
Le point $H$ est sur $[AC]$, donc $\widehat{HAP} = z$. Le triangle $AHP$ est isocèle en $A$, car $AH = AP$. Ses deux angles à la base valent donc
$$\widehat{AHP} = \widehat{APH} = \frac{180° - z}{2} = 90° - \frac{z}{2} = x + y .$$

Sur la figure, $H$ et $B$ sont de part et d'autre de la droite $(AP)$. Donc
$$\widehat{HPA} + \widehat{APB} = (x + y) + (x + y + z) = 180° ,$$
ce qui veut dire que **les points $H$, $P$, $B$ sont alignés**, avec $P$ entre $H$ et $B$.

En échangeant les rôles des deux cercles, on montre de même que $\widehat{BKP} = x + y$ et que **les points $K$, $P$, $A$ sont alignés**, avec $P$ entre $K$ et $A$.

### Étape 3 : les cinq points sont sur un même cercle

Sur la figure, le point $P$ est à l'intérieur de l'angle $\widehat{AQB}$, donc, d'après l'étape 1,
$$\widehat{AQB} = \widehat{AQP} + \widehat{PQB} = x + y .$$
Comme $P$ est sur le segment $[HB]$, on a $\widehat{AHB} = \widehat{AHP} = x + y$. De même, $\widehat{AKB} = \widehat{BKP} = x + y$, car $P$ est sur le segment $[KA]$.

Les deux cercles sont d'un même côté de leur tangente commune $(AB)$. Les points $Q$, $C$, $D$ sont donc de ce côté, et aussi $H$, qui est sur $[AC]$ sans être $A$, et $K$, qui est sur $[BD]$ sans être $B$.

Ainsi $H$ et $Q$ sont du même côté de $(AB)$ et $\widehat{AHB} = \widehat{AQB}$ : d'après la réciproque du rappel, $H$ est sur le cercle qui passe par $A$, $B$ et $Q$. De même pour $K$. **Les cinq points $A$, $B$, $K$, $Q$, $H$ sont sur un même cercle.**

## Going further

- Montre que la droite $(PQ)$ coupe le segment $[AB]$ en son milieu.
- Montre que le symétrique de $P$ par rapport à la droite $(AB)$ est lui aussi sur le cercle qui passe par $A$, $B$ et $Q$.
