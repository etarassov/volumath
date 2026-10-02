---
id: "7346"
title: "Trois, quatre, cinq dans un triangle équilatéral"
grade: 11
theme: geometry
difficulty: 5
duration_min: 55
tags: [rotation, triangle-equilateral, pythagore, triplet-pythagoricien, distance]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la seconde mi-temps », en TD, géométrie, exercice 18"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

À l'intérieur d'un triangle équilatéral $ABC$, un point $P$ vérifie
$$PA = 3, \qquad PB = 4, \qquad PC = 5 .$$

**Calculer la longueur du côté du triangle.**

![Un triangle équilatéral ABC et un point P intérieur, relié à A par un segment de longueur 3, à B par 4 et à C par 5](7346-figure-1.svg)

## Hints

1. Les trois longueurs $3$, $4$, $5$ ne forment pas un triangle sur la figure : elles partent toutes de $P$. L'idée est de les **rassembler** en un seul triangle.
2. Le triangle est équilatéral : il existe donc une rotation de $60°$ qui envoie un sommet sur un autre. Applique-la au point $P$.
3. Fais tourner $P$ de $60°$ autour de $A$, de façon que $B$ aille sur $C$. Appelle $Q$ l'image de $P$. Que valent $AQ$ et $QC$ ?
4. Regarde le triangle $APQ$ : que peux-tu dire de lui ? En déduis $PQ$.
5. Tu obtiens un triangle $PQC$ dont tu connais les trois côtés. Reconnais-tu ces nombres ?
6. Il ne reste qu'à calculer $AC$. Place-toi dans un repère bien choisi, en utilisant l'angle droit que tu viens de trouver.

## Solution

### On rassemble les trois longueurs

Comme $ABC$ est équilatéral, la rotation $r$ de centre $A$ et d'angle $60°$ (dans le sens qui convient) envoie $B$ sur $C$.

Notons $Q = r(P)$. Une rotation conserve les longueurs, donc :

- $AQ = AP = 3$, puisque $A$ est le centre de la rotation ;
- $QC = PB = 4$, puisque $r$ envoie $P$ sur $Q$ et $B$ sur $C$ ;
- et bien sûr $PC = 5$ n'a pas bougé.

### Le triangle APQ est équilatéral

Par définition de la rotation, $AP = AQ = 3$ et $\widehat{PAQ} = 60°$.

Un triangle isocèle dont l'angle au sommet vaut $60°$ est équilatéral. Donc
$$PQ = 3 .$$

### Le triangle PQC est le triangle 3-4-5

Nous connaissons maintenant ses trois côtés :
$$PQ = 3, \qquad QC = 4, \qquad PC = 5 .$$

Et $3^2 + 4^2 = 9 + 16 = 25 = 5^2$. D'après la réciproque du théorème de Pythagore, le triangle $PQC$ est **rectangle en $Q$**.

### Le calcul final

Plaçons un repère orthonormé avec l'origine en $Q$, l'axe des abscisses le long de $(QC)$ et l'axe des ordonnées le long de $(QP)$ — c'est possible précisément parce que l'angle en $Q$ est droit. Alors
$$Q = (0, 0), \qquad C = (4, 0), \qquad P = (0, 3) .$$

Le point $A$ est le troisième sommet du triangle équilatéral $APQ$ de côté $3$. Il est donc sur la médiatrice de $[PQ]$, à l'ordonnée $\tfrac{3}{2}$, et à la distance $\tfrac{3\sqrt{3}}{2}$ de l'axe des ordonnées (c'est la hauteur d'un triangle équilatéral de côté $3$). Comme $A$ est du côté opposé à $C$ :
$$A = \left(-\frac{3\sqrt{3}}{2}, \; \frac{3}{2}\right) .$$

D'où
$$AC^2 = \left(4 + \frac{3\sqrt{3}}{2}\right)^2 + \left(\frac{3}{2}\right)^2 .$$

Développons le premier carré :
$$\left(4 + \frac{3\sqrt{3}}{2}\right)^2 = 16 + 2 \times 4 \times \frac{3\sqrt{3}}{2} + \frac{27}{4} = 16 + 12\sqrt{3} + \frac{27}{4} .$$

En ajoutant $\left(\tfrac{3}{2}\right)^2 = \tfrac{9}{4}$ :
$$AC^2 = 16 + 12\sqrt{3} + \frac{27}{4} + \frac{9}{4} = 16 + 12\sqrt{3} + 9 = 25 + 12\sqrt{3} .$$

### Conclusion

$$\boxed{\text{Le côté vaut } \sqrt{25 + 12\sqrt{3}} \approx \text{6,766}.}$$

Cette écriture ne se simplifie pas.

**Vérification de bon sens.** Le côté doit dépasser $5$, puisque $PC = 5$ et que $P$ est à l'intérieur : c'est bien le cas. Et il doit rester raisonnable : $\sqrt{25 + 12 \times \text{1,732}} = \sqrt{\text{45,78}} \approx \text{6,77}$. $\checkmark$

### Pourquoi la rotation est la bonne idée

Les trois données $PA$, $PB$, $PC$ sont éparpillées : elles ne forment aucune figure. La rotation de $60°$ autour de $A$ les **regroupe** dans un seul triangle $PQC$, parce qu'elle transporte $PB$ en $QC$ tout en fabriquant, gratuitement, le côté $PQ = PA$. C'est un réflexe à garder : devant un triangle équilatéral ou un carré, essayer la rotation qui échange deux sommets.

## Going further

1. Refais le calcul en faisant tourner $P$ autour de $B$, puis autour de $C$. Trouves-tu le même côté ?
2. Que se passe-t-il si l'on prend $PA = 3$, $PB = 4$, $PC = 7$ ? Calcule le côté, puis regarde si le point obtenu est vraiment **à l'intérieur** du triangle.
3. Avec $PA = a$, $PB = b$, $PC = c$ quelconques, la même méthode donne le côté en fonction de $a$, $b$, $c$ et de l'aire du triangle de côtés $a$, $b$, $c$. Écris la formule.
4. Montre que pour tout point $P$ intérieur au triangle, on a $PC < PA + PB$ : c'est l'inégalité triangulaire appliquée au triangle $PQC$ de la démonstration. En faisant tourner autour d'un autre sommet, obtiens les deux autres inégalités du même type.
