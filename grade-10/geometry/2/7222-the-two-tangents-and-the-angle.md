---
id: "7222"
title: "Deux tangentes et l'angle qu'elles forment"
grade: 10
theme: geometry
difficulty: 2
duration_min: 15
tags: [tangente, cercle circonscrit, chasse aux angles]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », mardi 24 après-midi (Héloïse Gachet), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

$ABC$ est un triangle et $\Gamma$ est son cercle circonscrit. Les tangentes à $\Gamma$ en $B$ et
en $C$ se coupent en un point $D$, situé de l'autre côté de $(BC)$ par rapport à $A$.

On sait que $\widehat{ABC} = 62^\circ$ et $\widehat{ACB} = 43^\circ$.

Combien vaut l'angle $\widehat{BDC}$ ?

## Hints

1. Commence par calculer le troisième angle du triangle $ABC$.
2. Le **théorème de l'angle tangentiel** dit ceci : si $(d)$ est la tangente à $\Gamma$ en $B$,
   alors l'angle entre $(d)$ et la corde $[BC]$ est égal à l'angle inscrit $\widehat{BAC}$ qui
   intercepte cette corde de l'autre côté.
3. Applique-le en $B$, puis en $C$. Que devient alors le triangle $DBC$ ?

## Solution

**Le troisième angle du triangle.**

La somme des angles d'un triangle vaut $180^\circ$, donc
$$\widehat{BAC} = 180^\circ - 62^\circ - 43^\circ = 75^\circ .$$

**L'angle tangentiel en $B$.**

La droite $(BD)$ est tangente à $\Gamma$ en $B$. D'après le théorème de l'angle tangentiel,
l'angle entre cette tangente et la corde $[BC]$ vaut l'angle inscrit qui intercepte $[BC]$ de
l'autre côté, c'est-à-dire $\widehat{BAC}$ :
$$\widehat{DBC} = \widehat{BAC} = 75^\circ .$$

**L'angle tangentiel en $C$.**

De la même façon, $(CD)$ est tangente à $\Gamma$ en $C$, donc
$$\widehat{DCB} = \widehat{BAC} = 75^\circ .$$

**Le triangle $DBC$.**

Ses angles en $B$ et en $C$ valent tous les deux $75^\circ$ (il est donc isocèle en $D$). Le
troisième angle vaut
$$\widehat{BDC} = 180^\circ - 75^\circ - 75^\circ = 30^\circ .$$

**L'angle $\widehat{BDC}$ vaut $\boxed{30^\circ}$.**

## Going further

Remarquons que les valeurs $62^\circ$ et $43^\circ$ n'ont servi qu'à calculer $\widehat{BAC}$ : la
réponse ne dépend que de l'angle en $A$. Si on note $\alpha = \widehat{BAC}$, le même calcul donne
$$\widehat{BDC} = 180^\circ - 2\alpha .$$
En particulier, si $\alpha$ dépasse $90^\circ$, la formule n'a plus de sens telle quelle : c'est
que les deux tangentes se coupent alors du même côté que $A$, et il faut refaire la figure.
