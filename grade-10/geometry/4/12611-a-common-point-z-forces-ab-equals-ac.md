---
id: "12611"
title: "Un point Z commun à deux cercles force AB = AC"
grade: 10
theme: geometry
difficulty: 4
duration_min: 45
tags: [cercle, angle-droit, hauteur, symetrie-axiale, triangle-isocele]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 14 et 21 février 2021"
  reference: "2021-12_Enonce-Test-3-2020.pdf, exercice 2 (junior) ; corrigé 2021-03_Corrige-Test-3-Web.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Enoncé-Test-3-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Test-3-2020.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus. On note :

- $D$ le pied de la hauteur issue de $A$ ;
- $E$ le milieu du segment $[AD]$ ;
- $\omega$ le cercle de diamètre $[AD]$.

Soit $X$ le point d'intersection de $\omega$ et de la droite $(BE)$ tel que $B$ et $X$ soient de
part et d'autre de la droite $(AD)$. De même, soit $Y$ le point d'intersection de $\omega$ et de
la droite $(CE)$ tel que $C$ et $Y$ soient de part et d'autre de la droite $(AD)$.

On suppose qu'il existe un point $Z$, différent de $D$, qui appartient à la droite $(AD)$, au
cercle circonscrit au triangle $BDX$ et au cercle circonscrit au triangle $CDY$.

Démontrer que $AB = AC$.

## Hints

1. Fais d'abord une figure avec un triangle qui n'est pas isocèle, en oubliant le point $Z$ :
   tu verras que les deux cercles ne recoupent pas $(AD)$ au même point. Cela t'évitera de
   croire des choses seulement parce qu'elles se voient sur une figure trop belle.
2. Le point $Z$ est sur $(AD)$, qui est perpendiculaire à $(BC)$. Que vaut l'angle
   $\widehat{BDZ}$ ? Qu'en déduis-tu pour le segment $[BZ]$, dans le cercle qui passe par $B$,
   $D$, $X$ et $Z$ ?
3. Déduis-en l'angle $\widehat{BXZ}$, puis l'angle $\widehat{EXZ}$. Sur quel cercle, autre que
   $\omega$, se trouve le point $X$ ? Et le point $Y$ ?
4. Les points $X$ et $Y$ sont sur deux cercles à la fois, et ces deux cercles ont leur centre sur
   la droite $(AD)$. Pense à la symétrie d'axe $(AD)$.
5. Cette symétrie échange $X$ et $Y$. Que fait-elle des droites $(EX)$ et $(EY)$ ? Et de la
   droite $(BC)$ ?

## Solution

On utilise deux résultats du collège sur le cercle :

- si $[PQ]$ est un diamètre d'un cercle et $M$ un autre point de ce cercle, alors l'angle
  $\widehat{PMQ}$ est droit ;
- réciproquement, si l'angle $\widehat{PMQ}$ est droit, alors $M$ est sur le cercle de diamètre
  $[PQ]$.

**Quelques positions.** Les angles du triangle sont aigus, donc $D$ est strictement entre $B$ et
$C$. Ainsi $B$ et $C$ sont de part et d'autre de la droite $(AD)$. Comme $X$ est du côté opposé à
$B$, et $Y$ du côté opposé à $C$, les points $X$ et $Y$ sont eux aussi de part et d'autre de
$(AD)$. En particulier $X \neq Y$, et aucun des deux n'est sur $(AD)$.

Le point $E$ est le centre de $\omega$, donc $E \neq X$. Enfin la droite $(BX)$ coupe $(AD)$ en
$E$, et $E$ est entre $B$ et $X$, puisque $B$ et $X$ sont de part et d'autre de $(AD)$.

**Étape 1 : $[BZ]$ est un diamètre.** Le point $Z$ est sur $(AD)$ et différent de $D$, et $B$
est sur $(BC)$ et différent de $D$. Comme $(AD) \perp (BC)$, l'angle $\widehat{BDZ}$ est droit.
Le cercle circonscrit à $BDX$ passe par $B$, $D$ et $Z$ : c'est donc le cercle circonscrit au
triangle rectangle $BDZ$, qui a pour diamètre l'hypoténuse $[BZ]$.

**Étape 2 : $X$ est sur le cercle de diamètre $[EZ]$.** Le point $X$ est sur ce cercle de
diamètre $[BZ]$. Il est différent de $B$ (ils sont de part et d'autre de $(AD)$) et de $Z$ (qui
est sur $(AD)$, contrairement à $X$). Donc $\widehat{BXZ} = 90°$.

Cela montre au passage que $Z$ n'est pas sur la droite $(BX)$, donc $Z \neq E$. Comme $E$ est sur
la demi-droite $[XB)$, on a $\widehat{EXZ} = \widehat{BXZ} = 90°$. Par la réciproque rappelée plus
haut, $X$ est sur le cercle $\omega'$ de diamètre $[EZ]$.

Exactement de la même façon, avec $C$ et $Y$ à la place de $B$ et $X$, le point $Y$ est sur le
cercle de diamètre $[EZ]$, c'est-à-dire sur le même cercle $\omega'$.

**Étape 3 : la symétrie d'axe $(AD)$.** Notons $s$ la symétrie d'axe $(AD)$.

- Le cercle $\omega$ a son centre $E$ sur $(AD)$, et le cercle $\omega'$ a son centre, le
  milieu de $[EZ]$, sur $(AD)$. Un cercle est symétrique par rapport à toute droite qui passe
  par son centre, donc $s$ envoie $\omega$ sur $\omega$ et $\omega'$ sur $\omega'$.
- Les cercles $\omega$ et $\omega'$ sont différents, car $\omega'$ passe par $E$, et $\omega$ non
  (c'est son centre). Deux cercles différents ont au plus deux points communs. Or $X$ et $Y$ sont
  deux points communs distincts : les points communs à $\omega$ et $\omega'$ sont donc exactement
  $X$ et $Y$.
- Le point $s(X)$ est sur $\omega$ et sur $\omega'$, donc c'est $X$ ou $Y$. Comme $X$ n'est pas
  sur l'axe $(AD)$, $s(X)$ est de l'autre côté de l'axe, donc $s(X) \neq X$. Ainsi $s(X) = Y$.

**Étape 4 : conclusion.** La symétrie $s$ laisse $E$ fixe et envoie $X$ sur $Y$ : elle envoie
donc la droite $(EX)$, c'est-à-dire $(BE)$, sur la droite $(EY)$, c'est-à-dire $(CE)$.

D'autre part, la droite $(BC)$ est perpendiculaire à l'axe $(AD)$, donc $s$ l'envoie sur elle-même.

Le point $B$ est l'intersection des droites $(BE)$ et $(BC)$. Son image $s(B)$ est donc
l'intersection des droites $(CE)$ et $(BC)$, qui est le point $C$ (ces deux droites ne sont pas
confondues, car $E$ n'est pas sur $(BC)$). Ainsi $s(B) = C$.

Enfin $A$ est sur l'axe, donc $s(A) = A$. Une symétrie conserve les longueurs, donc
$$AB = s(A)\,s(B) = AC .$$

Le triangle $ABC$ est isocèle en $A$.

![La figure, forcément isocèle puisque c'est ce qu'il fallait démontrer : le cercle ω de centre E en bleu, le cercle ω' de diamètre [EZ] en rouge, et en pointillés les cercles circonscrits à BDX et à CDY, de diamètres [BZ] et [CZ].](12611-figure-1.svg)

## Going further

Une autre solution utilise la **puissance d'un point** par rapport à un cercle, une notion qui
n'est pas au programme du lycée mais très utile en olympiade. Si une droite passant par un point
$P$ coupe un cercle en $M$ et $N$, le produit $PM \times PN$ ne dépend pas de la droite choisie.

Les deux cercles circonscrits à $BDX$ et à $CDY$ passent tous les deux par $D$ et par $Z$. Le point
$E$ est sur la droite $(DZ)$. En regardant le premier cercle avec les droites $(EB)$ et $(ED)$, puis
le second avec $(EC)$ et $(ED)$, on trouve
$$EX \times EB = ED \times EZ = EY \times EC .$$
Comme $EX = EY$ (deux rayons de $\omega$), on obtient $EB = EC$. Le point $E$ est donc sur la
médiatrice de $[BC]$, et cette médiatrice est la perpendiculaire à $(BC)$ qui passe par $E$,
c'est-à-dire $(AD)$. Le point $A$ est sur la médiatrice de $[BC]$, d'où $AB = AC$.
