---
id: "10221"
title: "Un tiers du côté et deux angles égaux"
grade: 8
theme: geometry
difficulty: 4
duration_min: 25
tags: [triangle-rectangle, milieu-de-l-hypotenuse, mediatrice, symetrie-axiale, theoreme-des-milieux, paralleles, angles-correspondants]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 1 (géométrie)"
  reference: "2020-10_Sujet-envoi-1.pdf, Exercices Seniors, exercice 11 ; corrigé 2020-11_corrige-envoi-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-10_Sujet-envoi-1.pdf"
---

## Statement

Soit $ABC$ un triangle rectangle en $C$, et soit $K$ le milieu de l'hypoténuse $[AB]$. Soit $M$ le point du segment $[BC]$ tel que $MB = 2\,MC$.

Montrer que $\widehat{MAB} = \widehat{MKC}$.

![Le triangle ABC rectangle en C, le milieu K de [AB], le point M au tiers de [BC] à partir de C, le segment [AM] en bleu et les segments [KM] et [KC] en rouge](10221-figure-1.svg)

## Hints

1. Le point $K$ est le milieu de l'hypoténuse. Que représente-t-il pour le triangle $ABC$ ? Que peut-on dire des longueurs $KB$ et $KC$ ?
2. La figure n'est pas symétrique. Ajoutez le point $M'$ de $[BC]$ tel que $M'B = MC$, puis cherchez une symétrie qui échange $M$ et $M'$.
3. Où est $M'$ sur le segment $[MB]$ ? Utilisez ensuite le théorème des milieux dans le triangle $ABM$.

## Solution

*Rappels.*

- Dans un triangle rectangle, le milieu de l'hypoténuse est le centre du cercle circonscrit : il est à la même distance des trois sommets.
- *Théorème des milieux.* Dans un triangle, la droite qui passe par les milieux de deux côtés est parallèle au troisième côté.

**Étape 1 : un point $M'$ pour rétablir la symétrie.** On note $M'$ le point du segment $[BC]$ tel que $M'B = MC$. Posons $BC = 3u$. Alors $MC = u$ et $MB = 2u$, et $M'B = u$. Les points sont donc rangés dans l'ordre $C$, $M$, $M'$, $B$, avec $CM = MM' = M'B = u$.

**Étape 2 : la médiatrice de $[BC]$.** D'après le premier rappel, $KB = KC$, donc $K$ est sur la médiatrice de $[BC]$. Notons $s$ la symétrie par rapport à cette médiatrice. Elle échange $B$ et $C$, et elle laisse fixe le point $K$.

Comme $CM = BM' = u$ et que $M$ et $M'$ sont sur $[BC]$, la symétrie $s$ échange aussi $M$ et $M'$. Elle envoie donc le triangle $CKM$ sur le triangle $BKM'$. Une symétrie conserve les angles, donc

$$\widehat{MKC} = \widehat{M'KB}.$$

**Étape 3 : une parallèle.** D'après l'étape 1, $MM' = M'B = u$ : le point $M'$ est le milieu de $[MB]$. Dans le triangle $ABM$, le point $K$ est le milieu de $[AB]$ et $M'$ est le milieu de $[MB]$. D'après le théorème des milieux,

$$(KM') \parallel (AM).$$

**Étape 4 : des angles correspondants.** Les droites $(KM')$ et $(AM)$ sont parallèles, et la droite $(AB)$ les coupe en $K$ et en $A$. Les demi-droites $[KB)$ et $[AB)$ vont dans le même sens, et $M'$ et $M$ sont du même côté de $(AB)$. Les angles $\widehat{M'KB}$ et $\widehat{MAB}$ sont donc des angles correspondants, et

$$\widehat{M'KB} = \widehat{MAB}.$$

**Conclusion.** Avec l'étape 2 :

$$\widehat{MAB} = \widehat{M'KB} = \widehat{MKC}.$$

![La médiatrice de [BC] en pointillés, qui passe par K et échange M et M′ ; le segment [KM′] est parallèle à [AM]](10221-figure-2.svg)

*Remarque.* Les correcteurs signalent un raisonnement faux dans plusieurs copies : « $M$ est au tiers de $[BC]$, donc la droite $(AM)$ coupe l'angle en $A$ au tiers ». Un rapport de longueurs ne donne pas, en général, le même rapport d'angles.

## Going further

1. Montrer de la même façon que les triangles $CKM$ et $AMB$ ont les mêmes angles. (Il faut aussi comparer $\widehat{KCM}$ et $\widehat{ABM}$.)
2. Le résultat reste-t-il vrai si $M$ est le point de $[BC]$ tel que $MB = 3\,MC$ ? Essayez sur une figure, et cherchez quelle étape de la preuve ne marche plus.
