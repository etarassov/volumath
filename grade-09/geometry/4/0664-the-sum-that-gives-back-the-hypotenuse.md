---
id: "0664"
title: "La somme qui redonne l'hypoténuse"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [bissectrice, triangle-isocele, symetrie-axiale, triangle-rectangle]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Angles et droites du triangle »"
  reference: "Angles.2.pdf, 6 octobre 2023, exercice 29, d'après l'Olympiade nationale de Roumanie 2013"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Angles.2.pdf"
---

## Statement

Soit le triangle $ABC$ avec $AB = AC$ et $\widehat{BAC} = 90°$. Soit $D$ le point de $[BC]$ tel que $(AD) \perp (BC)$. La bissectrice intérieure de $\widehat{ABC}$ coupe la droite $(AD)$ au point $I$.

Démontrez que $BA + AI = BC$.

![Le triangle rectangle isocèle ABC, la hauteur [AD] et le point I](0664-figure-1.svg)

## Hints

1. Commence par les angles faciles : combien mesurent $\widehat{ABC}$ et $\widehat{ACB}$ ? Et $\widehat{BAD}$ ?
2. La droite $(AD)$ est un axe de symétrie du triangle $ABC$. Qu'est-ce que la symétrie par rapport à cet axe fait au point $I$, et à la bissectrice issue de $B$ ?
3. Pour comparer $BA + AI$ avec $BC$, reporte la longueur $BA$ sur le segment $[BC]$ : place le point $K$ de $[BC]$ tel que $BK = BA$. Il reste à démontrer que $KC = AI$.
4. La symétrie par rapport à la droite $(BI)$ envoie la demi-droite $[BA)$ sur $[BC)$. Où envoie-t-elle $A$ ? Et $I$ ?

## Solution

**Les angles du départ.** Le triangle $ABC$ est rectangle et isocèle en $A$, donc

$$\widehat{ABC} = \widehat{ACB} = \frac{180° - 90°}{2} = 45°.$$

Comme $AB = AC$, la hauteur $[AD]$ issue de $A$ est aussi la médiatrice de $[BC]$ et la bissectrice de $\widehat{BAC}$ : la droite $(AD)$ est l'axe de symétrie du triangle. En particulier

$$\widehat{BAD} = \frac{90°}{2} = 45°.$$

La bissectrice issue de $B$ est intérieure au triangle, donc elle coupe $[AD]$ en un point intérieur : $I$ est sur le segment $[AD]$, et la demi-droite $[AI)$ est la demi-droite $[AD)$. Donc

$$\widehat{BAI} = \widehat{BAD} = 45°.$$

**L'angle $\widehat{ICB}$.** La symétrie d'axe $(AD)$ échange $B$ et $C$ et laisse $I$ en place (car $I$ est sur l'axe). Elle envoie donc la demi-droite $[BI)$ sur la demi-droite $[CI)$, et comme elle conserve les angles, $[CI)$ est la bissectrice de $\widehat{ACB}$. Donc

$$\widehat{ICB} = \frac{45°}{2} = \text{22,5°.}$$

*(Autrement dit, $I$ est le centre du cercle inscrit du triangle.)*

**On reporte $BA$ sur $[BC]$.** Soit $K$ le point du segment $[BC]$ tel que $BK = BA$. Un tel point existe sur le segment, car $BA < BC$ ($[BC]$ est l'hypoténuse). Il s'agit maintenant de montrer que

$$KC = AI,$$

ce qui donnera bien $BC = BK + KC = BA + AI$.

**La symétrie d'axe $(BI)$.** La droite $(BI)$ est la bissectrice de $\widehat{ABC}$ : la symétrie d'axe $(BI)$ envoie donc la demi-droite $[BA)$ sur la demi-droite $[BC)$. Comme elle conserve les longueurs et que $BK = BA$, elle envoie le point $A$ sur le point $K$. Elle laisse $I$ en place, puisque $I$ est sur l'axe. Par conséquent

$$IK = IA \qquad \text{et} \qquad \widehat{BKI} = \widehat{BAI} = 45°.$$

**Le triangle $IKC$.** Les points $B$, $K$, $C$ sont alignés dans cet ordre, donc $\widehat{IKC}$ et $\widehat{IKB}$ sont supplémentaires :

$$\widehat{IKC} = 180° - 45° = 135°.$$

Dans le triangle $IKC$, on connaît deux angles :

$$\widehat{KIC} = 180° - \widehat{IKC} - \widehat{ICK} = 180° - 135° - \text{22,5°} = \text{22,5°.}$$

Les angles $\widehat{KIC}$ et $\widehat{KCI}$ sont donc égaux : le triangle $IKC$ est isocèle de sommet principal $K$, d'où

$$KC = KI.$$

**Conclusion.** En rassemblant :

$$BC = BK + KC = BA + KI = BA + AI.$$

**On a bien $BA + AI = BC$.**

## Going further

Une vérification chiffrée. Prenons $AB = AC = 1$ ; alors $BC = \sqrt{2} \approx \text{1,4142}$ et $BD = AD = \frac{\sqrt 2}{2} \approx \text{0,7071}$. Dans le triangle $BDI$, rectangle en $D$, on a $DI = BD \times \tan(\text{22,5°}) \approx \text{0,7071} \times \text{0,4142} \approx \text{0,2929}$, donc

$$AI = AD - DI \approx \text{0,7071} - \text{0,2929} = \text{0,4142},$$

et $BA + AI \approx 1 + \text{0,4142} = \text{1,4142} \approx BC$. La démonstration par symétrie évite tous ces calculs approchés.
