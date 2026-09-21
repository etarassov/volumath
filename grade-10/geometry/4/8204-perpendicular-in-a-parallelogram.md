---
id: "8204"
title: "Deux droites perpendiculaires dans un parallélogramme"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [parallelogramme, milieux, triangle isocele, mediatrice, vecteurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, Coupe Animath de printemps 2019"
  reference: "PolycopieV1-1.pdf, chapitre II « Coupe Animath de printemps 2019 », énoncés destinés aux élèves de lycée, exercice 6"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

$ABCD$ est un parallélogramme et $P$ est un point situé à l'intérieur, choisi de sorte que

$$CP = CB .$$

On note $M$ le milieu de $[AP]$ et $N$ le milieu de $[CD]$.

![Le parallélogramme ABCD, le point P intérieur, et les milieux M de [AP] et N de [CD]](8204-figure-1.svg)

Montrer que les droites $(BP)$ et $(MN)$ sont perpendiculaires.

## Hints

1. L'hypothèse $CP = CB$ ne sert qu'à une chose : elle fait du triangle $BCP$ un triangle **isocèle** en $C$. Que sait-on alors de la position de $C$ par rapport au segment $[BP]$ ?
2. Un point à égale distance de $B$ et de $P$ est sur la médiatrice de $[BP]$, et cette médiatrice est perpendiculaire à $(BP)$. Il manque un deuxième point pour la tracer : le plus naturel est le **milieu de $[BP]$**. Appelle-le $Q$ et ajoute-le à la figure.
3. Tu as maintenant une droite $(CQ)$ dont tu sais qu'elle est perpendiculaire à $(BP)$. Il suffit donc de montrer que $(MN)$ lui est **parallèle**.
4. Regarde les deux points $Q$ et $M$ : ce sont les milieux de $[BP]$ et de $[AP]$. Que vaut le vecteur $\vec{QM}$ ?
5. Regarde maintenant $C$ et $N$ : $N$ est le milieu de $[CD]$, donc $\vec{CN} = \tfrac12 \vec{CD}$. Et dans un parallélogramme, à quel autre vecteur $\vec{CD}$ est-il égal ?
6. Si $\vec{QM} = \vec{CN}$, alors une même translation envoie $Q$ sur $M$ et $C$ sur $N$. Qu'en déduis-tu sur $\vec{MN}$ et $\vec{QC}$ ?

## Solution

**L'idée : faire apparaître le milieu de $[BP]$.**

Notons $Q$ le milieu du segment $[BP]$. C'est le seul point qu'on ajoute à la figure, et il va tout résoudre.

**Étape 1 : la droite $(CQ)$ est perpendiculaire à $(BP)$.**

Par hypothèse $CB = CP$, donc le triangle $BCP$ est isocèle en $C$. Le point $C$ est donc à égale distance de $B$ et de $P$ : il appartient à la médiatrice de $[BP]$.

Le point $Q$, milieu de $[BP]$, appartient lui aussi à cette médiatrice.

La droite $(CQ)$ est donc **la** médiatrice de $[BP]$ (deux points distincts déterminent une droite), et une médiatrice est perpendiculaire au segment dont elle est la médiatrice :

$$(CQ) \perp (BP) . \qquad (1)$$

Il ne reste plus qu'à montrer que $(MN)$ est parallèle à $(CQ)$.

**Étape 2 : calculer $\vec{QM}$.**

Les points $Q$ et $M$ sont les milieux de $[BP]$ et de $[AP]$. En passant par $P$ avec la relation de Chasles :

$$\vec{QM} = \vec{QP} + \vec{PM} = \frac{1}{2}\vec{BP} + \frac{1}{2}\vec{PA} = \frac{1}{2}\left(\vec{BP} + \vec{PA}\right) = \frac{1}{2}\,\vec{BA} .$$

*(C'est exactement le théorème de la droite des milieux dans le triangle $ABP$, écrit avec des vecteurs : $[QM]$ est parallèle à $[BA]$ et deux fois plus court.)*

**Étape 3 : calculer $\vec{CN}$.**

Le point $N$ est le milieu de $[CD]$, donc

$$\vec{CN} = \frac{1}{2}\,\vec{CD} .$$

Or $ABCD$ est un parallélogramme, donc $\vec{AB} = \vec{DC}$, et en changeant les deux sens, $\vec{BA} = \vec{CD}$. Par conséquent

$$\vec{CN} = \frac{1}{2}\,\vec{BA} .$$

**Étape 4 : conclure.**

Les deux étapes précédentes donnent

$$\vec{QM} = \vec{CN} = \frac{1}{2}\,\vec{BA} .$$

Autrement dit, **la même translation** (celle de vecteur $\tfrac12 \vec{BA}$) envoie $Q$ sur $M$ et $C$ sur $N$. Une translation conserve les vecteurs, donc elle envoie $\vec{QC}$ sur $\vec{MN}$ :

$$\vec{MN} = \vec{QC} .$$

On peut aussi le vérifier directement avec Chasles :

$$\vec{MN} = \vec{MQ} + \vec{QC} + \vec{CN} = -\vec{QM} + \vec{QC} + \vec{CN} = \vec{QC},$$

puisque $\vec{QM}$ et $\vec{CN}$ sont égaux et se simplifient.

Les droites $(MN)$ et $(QC)$ ont donc le même vecteur directeur : elles sont parallèles. Combiné avec $(1)$ :

$$\boxed{(MN) \perp (BP)} .$$

**Remarque.** L'hypothèse « $P$ est à l'intérieur du parallélogramme » n'a servi qu'à garantir que la figure a bien l'allure dessinée. Le calcul vectoriel, lui, est valable pour n'importe quelle position de $P$ telle que $CP = CB$ et $B \ne P$.

## Going further

Le point $P$ n'est pas unique : quand il décrit l'arc du cercle de centre $C$ et de rayon $CB$ situé à l'intérieur du parallélogramme, la droite $(MN)$ tourne. Quelle figure décrit alors le point $M$ ?
