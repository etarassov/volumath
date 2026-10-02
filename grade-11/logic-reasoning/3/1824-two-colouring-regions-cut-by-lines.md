---
id: "1824"
title: "Noir et blanc de part et d'autre de chaque droite"
grade: 11
theme: logic-reasoning
difficulty: 3
duration_min: 35
tags: [droites, parite, coloriage, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction and Geometry"
  reference: "Handout-1479-1436.pdf, exercice 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1479-1436.pdf"
---

## Statement

On trace $n$ droites dans le plan. Elles sont quelconques : certaines peuvent être parallèles, plusieurs peuvent passer par un même point. Ces droites découpent le plan en régions.

Démontrer qu'on peut colorier chaque région en noir ou en blanc de telle sorte que deux régions voisines ne soient jamais de la même couleur.

Deux régions sont dites **voisines** lorsqu'elles se touchent le long d'un morceau de droite de longueur non nulle. Deux régions qui ne se touchent qu'en un point isolé ne sont pas voisines.

## Hints

1. Fais d'abord le dessin pour $n = 1$, puis $n = 2$, puis $n = 3$. Trouve un coloriage à la main à chaque fois.
2. Avec $n = 2$ droites sécantes, on obtient quatre régions ; le coloriage ressemble à un damier. Essaie de comprendre **ce qui distingue** deux régions voisines.
3. Voici l'idée décisive. Choisis, pour chaque droite, un « bon côté » une fois pour toutes. Une région donnée est entièrement d'un seul côté de chaque droite : elle ne peut pas être à cheval, puisque les droites sont précisément les coupures.
4. Compte alors, pour chaque région, le nombre de droites dont elle est du bon côté. Colorie en fonction de la **parité** de ce nombre.
5. Il reste à vérifier : quand on passe d'une région à une région voisine, combien de ces comptes changent ?

## Solution

Notons $d_1, d_2, \ldots, d_n$ les droites tracées.

### Le coloriage

Pour chaque droite $d_i$, choisissons une fois pour toutes l'un de ses deux côtés, que nous appellerons son **côté positif**. (Le choix est arbitraire, n'importe lequel convient.)

Soit $R$ une région. Comme les droites sont exactement les lignes de découpe, la région $R$ ne rencontre aucune droite : elle est donc entièrement contenue dans l'un des deux côtés de $d_i$, pour chaque $i$. Posons

$$k(R) = \text{le nombre de droites } d_i \text{ dont } R \text{ est du côté positif}.$$

C'est un entier compris entre $0$ et $n$. Colorions maintenant :

$$R \text{ en noir si } k(R) \text{ est pair}, \qquad R \text{ en blanc si } k(R) \text{ est impair}.$$

### Pourquoi deux régions voisines ont des couleurs différentes

Soient $R$ et $R'$ deux régions voisines, qui se touchent le long d'un morceau de droite de longueur non nulle. Ce morceau est porté par l'une des droites, disons $d_j$.

**Elles sont de part et d'autre de $d_j$.** C'est clair : $R$ et $R'$ sont deux régions distinctes séparées par le morceau de $d_j$, l'une d'un côté, l'autre de l'autre.

**Elles sont du même côté de toutes les autres droites.** Prenons un point $M$ situé à l'intérieur du morceau commun, et non à une extrémité. Comme ce morceau borde deux régions, aucune autre droite ne le traverse en $M$ : le point $M$ n'appartient donc à aucune droite $d_i$ avec $i \neq j$. On peut alors tracer un petit disque autour de $M$ assez petit pour ne rencontrer aucune des droites $d_i$, $i \neq j$. Ce disque contient des points de $R$ et des points de $R'$, tous du même côté de $d_i$ que $M$. Donc $R$ et $R'$ sont du même côté de $d_i$, pour tout $i \neq j$.

**Conclusion du comptage.** En passant de $R$ à $R'$, un seul des $n$ comptes change : celui de la droite $d_j$. Donc

$$k(R') = k(R) + 1 \qquad \text{ou} \qquad k(R') = k(R) - 1.$$

Dans les deux cas, $k(R)$ et $k(R')$ n'ont pas la même parité, donc $R$ et $R'$ n'ont pas la même couleur.

Le coloriage construit convient donc, ce qui démontre le résultat.

### Une seconde démonstration, par récurrence

On peut aussi raisonner sur le nombre de droites.

*Initialisation.* Avec $0$ droite, le plan forme une seule région : on la colorie en noir, et il n'y a rien à vérifier.

*Hérédité.* Supposons le résultat vrai pour $n$ droites, et traçons-en $n+1$. Mettons de côté la dernière, $d$, et colorions correctement le plan découpé par les $n$ autres. Remettons maintenant $d$ en place : elle coupe certaines régions en deux. **Conservons les couleurs d'un côté de $d$, et échangeons-les toutes de l'autre côté.**

Vérifions que le nouveau coloriage convient. Soient $R$ et $R'$ voisines le long d'un morceau porté par une droite $\ell$.

- Si $\ell = d$ : alors $R$ et $R'$ proviennent d'une même ancienne région coupée en deux par $d$, donc elles avaient la même couleur. L'une a été échangée et l'autre non : elles diffèrent maintenant.
- Si $\ell \neq d$ : le morceau commun ne rencontre pas $d$, donc $R$ et $R'$ sont du même côté de $d$. Elles proviennent de deux anciennes régions voisines, de couleurs différentes, et elles ont subi le même traitement (toutes deux échangées, ou aucune des deux). Elles diffèrent donc encore.

Le résultat est donc vrai pour $n+1$ droites, ce qui achève la récurrence.

**Remarque.** La première démonstration a l'avantage de **donner directement** la couleur d'une région, sans avoir à construire le coloriage droite par droite.

## Going further

1. Reprends le problème avec $n$ cercles au lieu de $n$ droites. La même idée fonctionne-t-elle ? Quel est alors le « côté positif » d'un cercle ?
2. Et avec un mélange de droites et de cercles ?
3. Sur la figure obtenue avec $n$ droites en position générale (deux jamais parallèles, trois jamais concourantes), combien y a-t-il de régions noires et combien de blanches pour $n = 1, 2, 3$ ?
