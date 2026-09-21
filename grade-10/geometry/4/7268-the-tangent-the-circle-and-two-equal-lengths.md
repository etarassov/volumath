---
id: "7268"
title: "La tangente, le cercle et deux longueurs égales"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [tangente, angle inscrit, triangle isocele, demi-cercle, chasse aux angles]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Chéron 2024"
  reference: "Poly_StCheron_2024.pdf, groupe A, « Puissance d'un point », exercice 1 (test de sélection junior 2021-2022) ; le polycopié écrit « de rayon A » pour « de rayon BA »"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_StCheron_2024.pdf"
---

## Statement

Soit $\omega$ un cercle de diamètre $[BC]$.

Soit $A$ un point de la tangente à $\omega$ en $B$, distinct de $B$.

Le cercle de centre $B$ et de rayon $BA$ recoupe $\omega$ en un point $D$, choisi de sorte que $A$
et $D$ soient du même côté de la droite $(BC)$.

La droite $(AD)$ recoupe $\omega$ en un point $E$.

Montrer que $AE = BE$.

## Hints

1. Fais une figure. Deux longueurs sont égales par construction : lesquelles ?
2. Pour montrer que $EA = EB$, il suffit de montrer que le triangle $ABE$ a deux angles égaux.
3. Pose $\theta = \widehat{DBC}$ et exprime tous les angles de la figure en fonction de $\theta$.
   Commence par $\widehat{ABC}$ : que vaut-il ?
4. Le segment $[BC]$ est un diamètre : quel angle cela rend-il droit ? Et $\widehat{BED}$,
   pourquoi est-il égal à $\widehat{BCD}$ ?

## Solution

Travaillons dans la configuration de la figure : $D$ est entre $A$ et $E$, et les points $E$ et $C$
sont sur le même arc de $\omega$ délimité par la corde $[BD]$.

Posons
$$\theta = \widehat{DBC} .$$

**L'angle droit en $B$.**

La droite $(AB)$ est tangente à $\omega$ en $B$, donc elle est perpendiculaire au rayon issu de
$B$. Or $[BC]$ est un diamètre, donc le centre de $\omega$ est sur $[BC]$ : le rayon issu de $B$ est
porté par $(BC)$. Ainsi
$$\widehat{ABC} = 90^\circ .$$

Comme $A$ et $D$ sont du même côté de $(BC)$, la demi-droite $[BD)$ est à l'intérieur de l'angle
$\widehat{ABC}$, donc
$$\widehat{ABD} = 90^\circ - \theta .$$

**Le triangle $ABD$ est isocèle.**

Par construction $BD = BA$ (ce sont deux rayons du cercle de centre $B$). Le triangle $ABD$ est donc
isocèle en $B$, et ses deux angles à la base sont égaux :
$$\widehat{BAD} = \widehat{BDA} = \frac{180^\circ - (90^\circ - \theta)}{2} = 45^\circ +
\frac{\theta}{2} .$$

Comme $D$ est entre $A$ et $E$, la demi-droite $[AE)$ est la demi-droite $[AD)$, donc
$$\widehat{BAE} = 45^\circ + \frac{\theta}{2} .$$

**L'angle en $E$.**

Le segment $[BC]$ est un diamètre de $\omega$ et $D$ est sur $\omega$, donc
$\widehat{BDC} = 90^\circ$. Dans le triangle $BDC$, rectangle en $D$, les angles aigus sont
complémentaires :
$$\widehat{BCD} = 90^\circ - \theta .$$

Les points $B$, $D$, $C$, $E$ sont sur $\omega$, et $E$ et $C$ sont du même côté de la corde
$[BD]$ : les angles inscrits $\widehat{BED}$ et $\widehat{BCD}$ interceptent donc le même arc, d'où
$$\widehat{BED} = \widehat{BCD} = 90^\circ - \theta .$$

Comme $D$ est entre $A$ et $E$, la demi-droite $[ED)$ est la demi-droite $[EA)$, donc
$$\widehat{BEA} = 90^\circ - \theta .$$

**Conclusion.**

Dans le triangle $ABE$, la somme des angles vaut $180^\circ$, donc
$$\widehat{ABE} = 180^\circ - \widehat{BAE} - \widehat{BEA}
= 180^\circ - \left(45^\circ + \frac{\theta}{2}\right) - (90^\circ - \theta)
= 45^\circ + \frac{\theta}{2} .$$

Ainsi
$$\widehat{ABE} = \widehat{BAE} .$$

Le triangle $ABE$ a deux angles égaux, il est donc isocèle, et les côtés opposés à ces deux angles
sont égaux :

$$\boxed{EA = EB}$$

## Going further

On peut vérifier le résultat sur un cas facile. Si $A$ est choisi de telle sorte que $BA$ vaut le
rayon de $\omega$, alors le triangle formé par $B$, $D$ et le centre est équilatéral, et on trouve
$\theta = 60^\circ$ ; la figure se calcule alors entièrement à la main.

Le point $E$ est en fait le point du cercle $\omega$ qui est à égale distance de $A$ et de $B$ :
il est donc sur la médiatrice de $[AB]$. Cela fournit une autre construction de $E$, et une
seconde démonstration possible consiste à partir de cette médiatrice et à montrer qu'elle coupe
$\omega$ sur la droite $(AD)$.
