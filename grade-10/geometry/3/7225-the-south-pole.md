---
id: "7225"
title: "Le milieu de l'arc et la bissectrice"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [angle-inscrit, bissectrice, triangle-isocele, cercle-circonscrit, pole-sud]
adapted_from: null
see_also: ["7438"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », mardi 24 après-midi (Héloïse Gachet), exercice 5 ; le même énoncé sert de test initial du stage, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

$ABC$ est un triangle et $\Gamma$ est son cercle circonscrit. Soit $M$ le milieu de l'arc $BC$ de
$\Gamma$ qui ne contient pas $A$.

1. Montrer que le triangle $MBC$ est isocèle en $M$.
2. Montrer que $(AM)$ est la bissectrice de l'angle $\widehat{BAC}$.

## Hints

1. « $M$ est le milieu de l'arc $BC$ » veut dire que les deux arcs $BM$ et $MC$ ont la même
   longueur. Que peux-tu dire des cordes $MB$ et $MC$ ?
2. Pour la deuxième question, appelle $\alpha = \widehat{BAC}$ et calcule $\widehat{BMC}$ à l'aide
   du quadrilatère inscrit $ABMC$.
3. Le triangle $MBC$ est isocèle : que valent ses angles à la base ?
4. L'angle $\widehat{MBC}$ et l'angle $\widehat{MAC}$ interceptent le même arc.

## Solution

**1. Le triangle $MBC$ est isocèle.**

Par définition de $M$, les arcs $BM$ et $MC$ ont la même longueur. Or dans un même cercle, deux
arcs de même longueur sont sous-tendus par deux cordes de même longueur. Donc
$$MB = MC ,$$
et le triangle $MBC$ est isocèle en $M$.

**2. La droite $(AM)$ est la bissectrice de $\widehat{BAC}$.**

Posons $\alpha = \widehat{BAC}$.

*L'angle en $M$.* Les points $A$, $B$, $M$, $C$ sont sur $\Gamma$, et $M$ est sur l'arc $BC$ ne
contenant pas $A$ : le quadrilatère $ABMC$ est donc inscrit dans $\Gamma$, avec $A$ et $M$
opposés. Ses angles opposés sont supplémentaires :
$$\widehat{BMC} = 180^\circ - \widehat{BAC} = 180^\circ - \alpha .$$

*Les angles à la base.* Le triangle $MBC$ est isocèle en $M$, donc ses deux angles à la base sont
égaux et
$$\widehat{MBC} = \widehat{MCB} = \frac{180^\circ - \widehat{BMC}}{2}
= \frac{180^\circ - (180^\circ - \alpha)}{2} = \frac{\alpha}{2} .$$

*Le retour vers $A$.* Les angles inscrits $\widehat{MBC}$ et $\widehat{MAC}$ interceptent le même
arc $MC$, et $A$ et $B$ sont du même côté de la corde $[MC]$. Donc
$$\widehat{MAC} = \widehat{MBC} = \frac{\alpha}{2} .$$

De la même manière, $\widehat{MAB} = \widehat{MCB} = \dfrac{\alpha}{2}$.

**Conclusion.** On a
$$\widehat{BAM} = \widehat{MAC} = \frac{\alpha}{2} = \frac{\widehat{BAC}}{2} ,$$
donc la demi-droite $[AM)$ partage l'angle $\widehat{BAC}$ en deux angles égaux : c'est bien la
bissectrice.

## Going further

Le point $M$ porte un nom dans le folklore des olympiades : on l'appelle le **pôle Sud** issu de
$A$ dans le triangle $ABC$ (parce qu'il est « tout en bas » du cercle quand on place $A$ en
haut).

On vient de montrer qu'il est à la fois sur la bissectrice issue de $A$ et sur la médiatrice de
$[BC]$ : ces deux droites se coupent donc sur le cercle circonscrit, ce qui n'a rien d'évident au
premier coup d'œil.

Le pôle Sud a une autre propriété remarquable, qui en fait un outil précieux : si $I$ est le
centre du cercle inscrit de $ABC$, alors $MB = MC = MI$.
