---
id: "7223"
title: "L'angle entre un côté et le rayon"
grade: 10
theme: geometry
difficulty: 2
duration_min: 15
tags: [angle-au-centre, angle-inscrit, triangle-isocele, cercle-circonscrit]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », mardi 24 après-midi (Héloïse Gachet), exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

$ABC$ est un triangle et $O$ est le centre de son cercle circonscrit, c'est-à-dire du cercle qui
passe par les trois sommets.

On sait que $\widehat{ABC} = 45^\circ$ et $\widehat{ACB} = 62^\circ$.

Combien vaut l'angle $\widehat{BAO}$ ?

## Hints

1. Quel angle au centre correspond à l'angle inscrit $\widehat{ACB}$ ?
2. Le **théorème de l'angle au centre** dit que l'angle au centre vaut le double de l'angle
   inscrit qui intercepte le même arc.
3. Que peux-tu dire du triangle $AOB$ ? Pense aux longueurs $OA$ et $OB$.

## Solution

**L'angle au centre.**

L'angle inscrit $\widehat{ACB}$ et l'angle au centre $\widehat{AOB}$ interceptent le même arc
$AB$, celui qui ne contient pas $C$. D'après le théorème de l'angle au centre,
$$\widehat{AOB} = 2 \times \widehat{ACB} = 2 \times 62^\circ = 124^\circ .$$

**Le triangle $AOB$ est isocèle.**

Le point $O$ est le centre du cercle circonscrit, donc $OA$ et $OB$ sont deux rayons de ce
cercle :
$$OA = OB .$$
Le triangle $AOB$ est donc isocèle en $O$, et ses deux angles à la base sont égaux :
$$\widehat{BAO} = \widehat{ABO} .$$

**Le calcul.**

La somme des angles du triangle $AOB$ vaut $180^\circ$, donc
$$\widehat{BAO} + \widehat{ABO} + \widehat{AOB} = 180^\circ ,$$
c'est-à-dire
$$2 \times \widehat{BAO} = 180^\circ - 124^\circ = 56^\circ ,$$
puis
$$\widehat{BAO} = 28^\circ .$$

**L'angle $\widehat{BAO}$ vaut $\boxed{28^\circ}$.**

## Going further

La donnée $\widehat{ABC} = 45^\circ$ n'a servi à rien ! Seul l'angle en $C$ compte, et la formule
générale est
$$\widehat{BAO} = 90^\circ - \widehat{ACB} .$$

On retrouve ainsi un résultat connu : si $\widehat{ACB} = 90^\circ$, alors $\widehat{BAO} = 0$,
c'est-à-dire que $O$ est sur la droite $(AB)$. C'est le fait que le centre du cercle circonscrit à
un triangle rectangle est le milieu de l'hypoténuse.
