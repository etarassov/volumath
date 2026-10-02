---
id: "7269"
title: "La tangente qui fabrique la bissectrice"
grade: 11
theme: geometry
difficulty: 4
duration_min: 35
tags: [tangente, angle-tangentiel, bissectrice, triangle-isocele, angle-exterieur]
adapted_from: null
see_also: ["8449"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Chéron 2024"
  reference: "Poly_StCheron_2024.pdf, groupe A, « Puissance d'un point », exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_StCheron_2024.pdf"
---

## Statement

Soit $ABC$ un triangle non isocèle en $A$, et soit $\Omega$ son cercle circonscrit.

La tangente à $\Omega$ au point $A$ coupe la droite $(BC)$ en un point $P$.

Soit $D$ le point du segment $[BC]$ tel que $PA = PD$.

Montrer que
$$\widehat{BAD} = \widehat{DAC} ,$$
autrement dit que $(AD)$ est la bissectrice de l'angle $\widehat{BAC}$.

## Hints

1. Fais une figure. Le triangle non isocèle en $A$ garantit que la tangente en $A$ n'est pas
   parallèle à $(BC)$, donc que $P$ existe.
2. $PA = PD$ : que peux-tu dire du triangle $PAD$ ?
3. L'angle entre la tangente $(PA)$ et la corde $[AB]$ : c'est un angle tangentiel. À quel angle
   inscrit est-il égal ?
4. L'angle $\widehat{ADB}$ est un angle extérieur du triangle $ADC$ en $D$. Écris-le comme une somme
   de deux angles.

## Solution

Plaçons-nous dans la configuration où $AB < AC$ : le point $P$ est alors du côté de $B$, et les
quatre points se succèdent sur la droite $(BC)$ dans l'ordre $P$, $B$, $D$, $C$. (Le cas
$AB > AC$ est symétrique, il suffit d'échanger les rôles de $B$ et de $C$.)

Notons $\gamma = \widehat{ACB}$.

**L'angle tangentiel.**

La droite $(PA)$ est tangente à $\Omega$ en $A$, et $[AB]$ est une corde de $\Omega$. D'après le
théorème de l'angle tangentiel, l'angle entre la tangente et la corde est égal à l'angle inscrit
qui intercepte cette corde depuis l'autre arc :
$$\widehat{PAB} = \widehat{ACB} = \gamma .$$

**Le triangle $PAD$ est isocèle.**

Par hypothèse $PA = PD$, donc le triangle $PAD$ est isocèle en $P$ et ses angles à la base sont
égaux :
$$\widehat{PAD} = \widehat{PDA} .$$

**Calculons ces deux angles.**

*Le membre de gauche.* Dans notre configuration, la demi-droite $[AB)$ est à l'intérieur de l'angle
$\widehat{PAD}$, donc
$$\widehat{PAD} = \widehat{PAB} + \widehat{BAD} = \gamma + \widehat{BAD} .$$

*Le membre de droite.* Comme $B$ est entre $P$ et $D$, la demi-droite $[DP)$ est la demi-droite
$[DB)$, donc $\widehat{PDA} = \widehat{BDA}$.

Or $\widehat{BDA}$ est l'angle extérieur en $D$ du triangle $ADC$ : les points $B$, $D$, $C$ sont
alignés dans cet ordre, donc $\widehat{BDA}$ et $\widehat{ADC}$ sont supplémentaires. Un angle
extérieur d'un triangle est égal à la somme des deux angles intérieurs qui ne lui sont pas
adjacents :
$$\widehat{PDA} = \widehat{BDA} = \widehat{DAC} + \widehat{DCA} = \widehat{DAC} + \gamma ,$$
puisque $D$ est sur le segment $[BC]$, donc $\widehat{DCA} = \widehat{BCA} = \gamma$.

**Conclusion.**

En égalant les deux expressions :
$$\gamma + \widehat{BAD} = \widehat{DAC} + \gamma ,$$
et en simplifiant par $\gamma$ :
$$\widehat{BAD} = \widehat{DAC} .$$

**La droite $(AD)$ est donc bien la bissectrice de l'angle $\widehat{BAC}$.**

## Going further

L'hypothèse « non isocèle en $A$ » sert uniquement à assurer l'existence de $P$ : si $AB = AC$, la
tangente en $A$ est parallèle à $(BC)$ et ne la coupe pas. La conclusion resterait d'ailleurs vraie,
mais pour une raison triviale, la bissectrice issue de $A$ étant alors l'axe de symétrie du
triangle.

Ce résultat fournit une construction à la règle et au compas de la bissectrice issue de $A$ qui
n'utilise jamais le rapporteur : on trace la tangente en $A$, on marque $P$, puis on reporte la
longueur $PA$ sur la droite $(BC)$.

On peut aussi le relire à l'envers. Comme $PA^2 = PB \times PC$ (puissance du point $P$ par rapport
à $\Omega$, la droite $(PA)$ étant tangente), l'égalité $PA = PD$ signifie $PD^2 = PB \times PC$ :
le point $D$ est celui qui réalise la moyenne géométrique de $PB$ et $PC$ sur la droite $(BC)$.
