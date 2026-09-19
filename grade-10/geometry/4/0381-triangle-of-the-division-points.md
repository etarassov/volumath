---
id: "0381"
title: "Le triangle des points de partage"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [aire, triangle, rapport, partage, proportionnalite]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (А. А. Аксёнов, А. А. Севастьянов)"
  reference: "AU2.pdf, листок 7 «Равные площади», задача 4 б) et les problèmes préliminaires du listok"
  url: "https://mmmf.msu.ru/for_schools/AU2.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

On note $\mathcal{A}(ABC)$ l'aire du triangle $ABC$.

**Première partie.** $ABC$ est un triangle, $M$ est un point du segment $[AB]$ et $N$ un point du segment $[AC]$. Montrer que

$$\frac{\mathcal{A}(AMN)}{\mathcal{A}(ABC)} = \frac{AM}{AB} \times \frac{AN}{AC}.$$

**Seconde partie.** Les trois côtés d'un triangle d'aire $1$ sont partagés dans le rapport $3 : 1$, toujours dans le même sens quand on tourne autour du triangle. On obtient ainsi trois points $K$, $L$ et $M$, qui sont les sommets du triangle gris de la figure.

![Le triangle ABC dont chaque côté est partagé dans le rapport 3 : 1, et le triangle gris KLM dont les sommets sont les trois points de partage](0381-figure-1.svg)

Quelle est l'aire du triangle gris ?

## Hints

1. Première partie : compare d'abord les triangles $AMC$ et $ABC$. Ils ont le même sommet $C$, et leurs bases sont sur la même droite. Que peux-tu dire de leurs hauteurs issues de $C$ ?
2. Première partie : compare ensuite $AMN$ et $AMC$, cette fois en partant du sommet $M$. Puis multiplie les deux égalités obtenues.
3. Seconde partie : le triangle gris, c'est ce qui reste du grand triangle quand on lui enlève trois triangles « de coin ». Nomme ces trois triangles.
4. Seconde partie : pour chaque coin, applique la formule de la première partie. Attention à ne pas intervertir les deux rapports : à chaque sommet, l'un des côtés est coupé tout près de ce sommet, l'autre loin.

## Solution

**Première partie. Deux comparaisons que l'on enchaîne.**

L'outil de base est le suivant : *deux triangles qui ont la même hauteur ont des aires proportionnelles à leurs bases.*

*Étape 1.* Comparons les triangles $AMC$ et $ABC$. Ils ont le même sommet $C$, et leurs bases $[AM]$ et $[AB]$ sont portées par la même droite $(AB)$. La hauteur issue de $C$ est donc la même pour les deux triangles, et

$$\frac{\mathcal{A}(AMC)}{\mathcal{A}(ABC)} = \frac{AM}{AB}.$$

*Étape 2.* Comparons maintenant les triangles $AMN$ et $AMC$. Ils ont le même sommet $M$, et leurs bases $[AN]$ et $[AC]$ sont portées par la même droite $(AC)$. La hauteur issue de $M$ est la même pour les deux, et

$$\frac{\mathcal{A}(AMN)}{\mathcal{A}(AMC)} = \frac{AN}{AC}.$$

*Étape 3.* Multiplions membre à membre ces deux égalités :

$$\frac{\mathcal{A}(AMC)}{\mathcal{A}(ABC)} \times \frac{\mathcal{A}(AMN)}{\mathcal{A}(AMC)} = \frac{AM}{AB} \times \frac{AN}{AC}.$$

À gauche, $\mathcal{A}(AMC)$ se simplifie et il reste $\dfrac{\mathcal{A}(AMN)}{\mathcal{A}(ABC)}$. C'est bien la formule annoncée.

**Seconde partie. On enlève les trois coins.**

Notons $ABC$ le triangle de départ, d'aire $1$, et plaçons les points comme sur la figure : $K$ sur $[AB]$, $L$ sur $[BC]$, $M$ sur $[CA]$, avec

$$AK : KB = BL : LC = CM : MA = 3 : 1 .$$

Chaque côté est donc coupé en quatre parts égales, et le point de partage est placé après trois d'entre elles :

$$AK = \tfrac34 AB, \quad BL = \tfrac34 BC, \quad CM = \tfrac34 CA,$$
$$KB = \tfrac14 AB, \quad LC = \tfrac14 BC, \quad MA = \tfrac14 CA .$$

Le triangle gris $KLM$ est ce qui reste du triangle $ABC$ quand on enlève les trois triangles des coins : $AKM$, $BLK$ et $CML$.

*Le coin $A$.* Le triangle $AKM$ a son sommet $K$ sur $[AB]$ et son sommet $M$ sur $[AC]$, avec

$$\frac{AK}{AB} = \frac34 \qquad \text{et} \qquad \frac{AM}{AC} = \frac14 .$$

D'après la première partie,

$$\mathcal{A}(AKM) = \frac34 \times \frac14 \times \mathcal{A}(ABC) = \frac{3}{16}.$$

*Le coin $B$.* Le triangle $BLK$ a $L$ sur $[BC]$ et $K$ sur $[BA]$, avec $\dfrac{BL}{BC} = \dfrac34$ et $\dfrac{BK}{BA} = \dfrac14$. La même formule donne $\mathcal{A}(BLK) = \dfrac{3}{16}$.

*Le coin $C$.* De même, $\dfrac{CM}{CA} = \dfrac34$ et $\dfrac{CL}{CB} = \dfrac14$, donc $\mathcal{A}(CML) = \dfrac{3}{16}$.

*On assemble.* Les trois triangles des coins ne se chevauchent pas, et avec le triangle $KLM$ ils recouvrent exactement le triangle $ABC$. Donc

$$\mathcal{A}(KLM) = 1 - 3 \times \frac{3}{16} = 1 - \frac{9}{16} = \frac{7}{16}.$$

**Conclusion.** Le triangle gris a pour aire $\dfrac{7}{16}$, un peu moins de la moitié de l'aire du triangle de départ.

## Going further

1. Que devient la réponse si les côtés sont partagés en leur milieu, c'est-à-dire dans le rapport $1 : 1$ ?
2. Les côtés sont maintenant partagés dans le rapport $p : q$, toujours dans le même sens. Montrer que l'aire du triangle gris vaut
   $$1 - \frac{3pq}{(p+q)^2}.$$
   Vérifier que l'on retrouve $\dfrac{7}{16}$ pour $p : q = 3 : 1$.
3. Pour quel rapport de partage le triangle gris a-t-il une aire égale à la moitié de celle du triangle de départ ?
