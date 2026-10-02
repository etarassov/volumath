---
id: "12042"
title: "Tangentes communes et angles droits"
grade: 9
theme: geometry
difficulty: 3
duration_min: 30
tags: [cercle, tangente, symetrie-axiale, bissectrice, perpendicularite, pythagore]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 15 janvier 2014"
  reference: "2017-10_ofm-2013-2014-test-janvier.pdf, exercice 1 (groupe B) ; corrigé 2017-10_ofm-2013-2014-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-janvier.pdf"
---

## Statement

Soient $\mathcal{C}$ et $\mathcal{C}'$ deux cercles de centres $O$ et $O'$, extérieurs l'un à l'autre : ils n'ont aucun point commun, et aucun des deux n'est à l'intérieur de l'autre.

Une droite tangente aux deux cercles est appelée **tangente commune**. Elle est **extérieure** si les deux cercles sont du même côté de cette droite, et **intérieure** s'ils sont de part et d'autre.

Une tangente commune extérieure coupe les deux tangentes communes intérieures aux points $M$ et $N$.

![Les deux cercles, une tangente commune extérieure et les deux tangentes communes intérieures, qui la coupent en M et N](12042-figure-1.svg)

Montrer que les droites $(OM)$ et $(O'M)$ sont perpendiculaires, et que les droites $(ON)$ et $(O'N)$ sont perpendiculaires.

## Hints

1. Par le point $M$ passent deux droites tangentes au cercle $\mathcal{C}$. Lesquelles ? Notez $P$ et $P'$ leurs points de contact avec $\mathcal{C}$, et comparez $MP$ et $MP'$.
2. Montrez que la symétrie d'axe $(OM)$ échange ces deux tangentes. Que peut-on dire de la droite $(OM)$ par rapport à l'angle qu'elles forment ?
3. Faites de même avec le cercle $\mathcal{C}'$ et la droite $(O'M)$. Combien de bissectrices ont deux droites sécantes, et quel angle font-elles entre elles ?

## Solution

On note $r$ le rayon de $\mathcal{C}$ et $r'$ celui de $\mathcal{C}'$. On rappelle qu'une droite tangente à un cercle est perpendiculaire au rayon qui aboutit au point de contact.

Notons $T$ la tangente commune extérieure de l'énoncé, et $T'$ la tangente commune intérieure qui passe par $M$. Les droites $T$ et $T'$ sont distinctes, car l'une est extérieure et l'autre intérieure, et elles se coupent en $M$.

**Étape 1 : $(OM)$ est un axe de symétrie qui échange $T$ et $T'$.** Les droites $T$ et $T'$ sont toutes deux tangentes au cercle $\mathcal{C}$ et passent par $M$. Notons $P$ et $P'$ leurs points de contact avec $\mathcal{C}$. Ces deux points sont distincts : en un point du cercle, il n'y a qu'une seule tangente, et $T \neq T'$.

Les triangles $OPM$ et $OP'M$ sont rectangles en $P$ et en $P'$. D'après le théorème de Pythagore,

$$MP^2 = OM^2 - r^2 = MP'^2 ,$$

donc $MP = MP'$. En particulier $M \neq P$, sinon on aurait $MP' = MP = 0$, donc $P' = M = P$.

Le point $M$ est donc à égale distance de $P$ et de $P'$, et le point $O$ aussi, puisque $OP = OP' = r$. Ainsi $M$ et $O$ sont sur la médiatrice du segment $[PP']$. Ce sont deux points distincts, car $OM^2 = r^2 + MP^2 > 0$. Donc la droite $(OM)$ **est** la médiatrice de $[PP']$.

La symétrie d'axe $(OM)$ échange donc $P$ et $P'$, et laisse $M$ fixe. Elle envoie la droite $T = (MP)$ sur la droite $(MP') = T'$, et $T'$ sur $T$.

**Étape 2 : $(O'M)$ aussi.** On refait exactement le même raisonnement avec le cercle $\mathcal{C}'$, auquel $T$ et $T'$ sont aussi tangentes : la symétrie d'axe $(O'M)$ échange elle aussi $T$ et $T'$.

**Étape 3 : les deux axes sont perpendiculaires, ou confondus.** Deux droites sécantes en $M$ ont exactement deux axes de symétrie qui les échangent : les deux bissectrices des angles qu'elles forment. Ces deux bissectrices sont perpendiculaires. En effet, deux angles voisins formés par les deux droites ont une somme de $180^\circ$, donc leurs moitiés ont une somme de $90^\circ$.

Les droites $(OM)$ et $(O'M)$ sont donc chacune l'une de ces deux bissectrices. Soit elles sont perpendiculaires, soit elles sont confondues.

**Étape 4 : elles ne sont pas confondues.** Supposons que $(OM)$ et $(O'M)$ soient la même droite. Alors $M$ est sur la droite $(OO')$, et la symétrie d'axe $(OO')$ échange $T$ et $T'$ d'après l'étape 1.

Mais cette symétrie envoie chaque cercle sur lui-même, puisque son axe passe par les deux centres. Elle envoie donc une tangente commune sur une tangente commune. De plus, si les deux cercles sont du même côté de $T$, leurs images, c'est-à-dire les deux cercles eux-mêmes, sont du même côté de l'image de $T$. L'image de $T$ est donc une tangente commune **extérieure**. Or cette image est $T'$, qui est intérieure. C'est une contradiction.

Donc $(OM)$ et $(O'M)$ sont perpendiculaires.

**Étape 5 : le point $N$.** Le point $N$ est l'intersection de $T$ avec l'autre tangente commune intérieure. Le même raisonnement, en remplaçant $T'$ par cette autre tangente intérieure, montre que $(ON)$ et $(O'N)$ sont perpendiculaires.

**Conclusion.** Les droites $(OM)$ et $(O'M)$ sont perpendiculaires, et les droites $(ON)$ et $(O'N)$ aussi.

## Going further

1. En déduire que $M$ et $N$ sont tous les deux sur le cercle de diamètre $[OO']$.
2. Notez $P$ et $Q$ les points de contact de $T$ avec $\mathcal{C}$ et $\mathcal{C}'$. Montrer que les triangles $OPM$ et $MQO'$ sont semblables, puis que $PM \times MQ = r \times r'$.
