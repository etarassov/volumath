---
id: "0910"
title: "Trente degrés dans un triangle isocèle"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle-isocele, chasse-aux-angles, somme-des-angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Géométrie »"
  reference: "Geometry.pdf, P 13 (USA, 1956), d'après M. Aassila, « Objectif Olympiades de Mathématiques — Géométrie 1 »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometry.pdf"
---

## Statement

$ABC$ est un triangle isocèle en $A$, c'est-à-dire $AB = AC$, dont l'angle au sommet
$\widehat{BAC}$ dépasse $30^\circ$.

Le point $D$ du côté $[BC]$ est tel que $\widehat{BAD} = 30^\circ$, et le point $E$ du côté
$[AC]$ est tel que $AD = AE$.

![Le triangle isocèle ABC, le point D sur [BC] et le point E sur [AC]](0910-figure-1.svg)

Calculer la mesure de l'angle $\widehat{CDE}$.

## Hints

1. Aucune longueur n'est donnée et la forme du triangle n'est pas fixée : appelle $a$ la
   mesure de l'angle $\widehat{BAC}$ et exprime tout en fonction de $a$. Si la réponse est la
   même pour tous les triangles, le $a$ disparaîtra à la fin.
2. Commence par les angles à la base : $\widehat{ABC} = \widehat{ACB} = 90^\circ - \dfrac{a}{2}$.
3. Dans le triangle $ABD$, tu connais deux angles. Calcule $\widehat{ADB}$, puis
   $\widehat{ADC}$.
4. Le triangle $ADE$ est isocèle en $A$ et son angle au sommet vaut $a - 30^\circ$. Calcule
   $\widehat{ADE}$.
5. Enfin, $\widehat{CDE} = \widehat{ADC} - \widehat{ADE}$.

## Solution

**L'idée : tout exprimer en fonction de l'angle au sommet $a$, et constater qu'il s'en va.**

Posons $a = \widehat{BAC}$.

**Étape 1. Les angles à la base.** Le triangle $ABC$ est isocèle en $A$, donc

$$\widehat{ABC} = \widehat{ACB} = \frac{180^\circ - a}{2} = 90^\circ - \frac{a}{2}.$$

**Étape 2. L'angle $\widehat{ADC}$.** Dans le triangle $ABD$, la somme des angles vaut
$180^\circ$ :

$$\widehat{ADB} = 180^\circ - \widehat{BAD} - \widehat{ABD} = 180^\circ - 30^\circ - \left(90^\circ - \frac{a}{2}\right) = 60^\circ + \frac{a}{2}.$$

Les points $B$, $D$, $C$ sont alignés, donc les angles $\widehat{ADB}$ et $\widehat{ADC}$ sont
supplémentaires :

$$\widehat{ADC} = 180^\circ - \left(60^\circ + \frac{a}{2}\right) = 120^\circ - \frac{a}{2}.$$

**Étape 3. L'angle $\widehat{ADE}$.** Le triangle $ADE$ est isocèle en $A$, car $AD = AE$. Son
angle au sommet est

$$\widehat{DAE} = \widehat{BAC} - \widehat{BAD} = a - 30^\circ,$$

donc ses angles à la base valent

$$\widehat{ADE} = \widehat{AED} = \frac{180^\circ - (a - 30^\circ)}{2} = 105^\circ - \frac{a}{2}.$$

**Étape 4. La soustraction.** Le point $E$ est strictement à l'intérieur du segment $[AC]$
(voir la remarque ci-dessous), donc la demi-droite $[DE)$ est à l'intérieur de l'angle
$\widehat{ADC}$ et

$$\widehat{CDE} = \widehat{ADC} - \widehat{ADE} = \left(120^\circ - \frac{a}{2}\right) - \left(105^\circ - \frac{a}{2}\right) = 15^\circ.$$

**Conclusion.** L'angle $\widehat{CDE}$ mesure $15^\circ$, et cette mesure ne dépend ni de la
forme du triangle, ni de la position exacte de $D$ : seul l'angle de $30^\circ$ compte.

**Pourquoi $E$ est-il entre $A$ et $C$ ?** Le point $D$ est strictement entre $B$ et $C$. Dans
le triangle $ADC$, l'angle $\widehat{ADC} = 120^\circ - \dfrac{a}{2}$ est plus grand que
l'angle $\widehat{ACD} = 90^\circ - \dfrac{a}{2}$, et dans un triangle le plus grand côté est
opposé au plus grand angle : donc $AC > AD = AE$, et $E$ est bien un point intérieur au côté
$[AC]$.

## Going further

Que devient la réponse si l'on remplace $30^\circ$ par une mesure $t$ quelconque (avec
$t < a$) ? Montrer que $\widehat{CDE} = \dfrac{t}{2}$.
