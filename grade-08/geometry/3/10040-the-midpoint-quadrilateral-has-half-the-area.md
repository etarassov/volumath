---
id: "10040"
title: "Le quadrilatère des milieux a une aire moitié"
grade: 8
theme: geometry
difficulty: 3
duration_min: 20
tags: [aire, milieu, mediane, quadrilatere, decoupage]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 2 (géométrie)"
  reference: "2017-10_ofm-2014-2015-envoi-2.pdf, Exercices du groupe B, exercice 4 ; corrigé 2017-10_ofm-2014-2015-envoi-2-solutions.pdf (même découpage que le corrigé ; les aires des coins sont obtenues ici avec des médianes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-2.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère convexe. On note $P$, $Q$, $R$ et $S$ les milieux des côtés $[AB]$, $[BC]$, $[CD]$ et $[DA]$.

![Le quadrilatère ABCD et, en gris, le quadrilatère PQRS dont les sommets sont les milieux des côtés](10040-figure-1.svg)

Montrer que l'aire de $PQRS$ est égale à la moitié de l'aire de $ABCD$.

## Hints

1. Le quadrilatère $ABCD$ est formé de $PQRS$ et de quatre triangles dans les coins. Il suffit de montrer que les quatre coins font ensemble la moitié de l'aire de $ABCD$.
2. Compare l'aire du triangle $APS$ avec celle du triangle $ABD$. Tu peux passer par le triangle $APD$.
3. Regroupe les coins deux par deux : $APS$ avec $CRQ$, puis $BQP$ avec $DSR$. Quelle diagonale de $ABCD$ utilises-tu pour chaque paire ?

## Solution

On note $\mathcal{A}(\ldots)$ l'aire d'une figure.

**Rappel : une médiane coupe un triangle en deux parties de même aire.** Si $M$ est le milieu du côté $[UV]$ d'un triangle $UVW$, les triangles $UMW$ et $MVW$ ont des bases égales, $UM = MV$, et la même hauteur issue de $W$. Ils ont donc la même aire, et chacun a pour aire la moitié de celle de $UVW$.

### Étape 1 : le coin en $A$

Le point $S$ est le milieu de $[AD]$, donc $[PS]$ est une médiane du triangle $APD$ et
$$\mathcal{A}(APS) = \frac{1}{2}\,\mathcal{A}(APD) .$$
Le point $P$ est le milieu de $[AB]$, donc $[DP]$ est une médiane du triangle $ABD$ et
$$\mathcal{A}(APD) = \frac{1}{2}\,\mathcal{A}(ABD) .$$
Ainsi
$$\mathcal{A}(APS) = \frac{1}{4}\,\mathcal{A}(ABD) .$$

### Étape 2 : les quatre coins

De la même façon :
$$\mathcal{A}(CRQ) = \frac{1}{4}\,\mathcal{A}(CDB), \qquad \mathcal{A}(BQP) = \frac{1}{4}\,\mathcal{A}(BCA), \qquad \mathcal{A}(DSR) = \frac{1}{4}\,\mathcal{A}(DAC) .$$

Le quadrilatère $ABCD$ est convexe, donc la diagonale $[BD]$ le coupe en deux triangles $ABD$ et $CDB$, et la diagonale $[AC]$ le coupe en deux triangles $BCA$ et $DAC$. En regroupant les coins deux par deux :
$$\mathcal{A}(APS) + \mathcal{A}(CRQ) = \frac{1}{4}\left(\mathcal{A}(ABD) + \mathcal{A}(CDB)\right) = \frac{1}{4}\,\mathcal{A}(ABCD) ,$$
$$\mathcal{A}(BQP) + \mathcal{A}(DSR) = \frac{1}{4}\left(\mathcal{A}(BCA) + \mathcal{A}(DAC)\right) = \frac{1}{4}\,\mathcal{A}(ABCD) .$$
Les quatre coins ont donc pour aire totale $\frac{1}{2}\,\mathcal{A}(ABCD)$.

### Étape 3 : conclusion

Comme $ABCD$ est convexe, il est découpé, sans chevauchement, en le quadrilatère $PQRS$ et les quatre triangles des coins. Donc
$$\mathcal{A}(PQRS) = \mathcal{A}(ABCD) - \frac{1}{2}\,\mathcal{A}(ABCD) = \frac{1}{2}\,\mathcal{A}(ABCD) .$$

**L'aire de $PQRS$ est bien la moitié de l'aire de $ABCD$.**

## Going further

- Le quadrilatère $PQRS$ est toujours un parallélogramme : d'après le théorème des milieux, $(PS)$ et $(QR)$ sont toutes les deux parallèles à $(BD)$, et $(PQ)$ et $(SR)$ sont parallèles à $(AC)$. On l'appelle le parallélogramme de Varignon.
- Quand est-ce que $PQRS$ est un rectangle ? Un losange ? Un carré ?
