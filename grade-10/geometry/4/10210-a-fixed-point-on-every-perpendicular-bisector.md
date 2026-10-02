---
id: "10210"
title: "Un point fixe sur toutes les médiatrices"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [cercles-secants, mediatrice, point-fixe, parallelogramme, coordonnees]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 1 (géométrie)"
  reference: "2019-10_sujet-envoi-1.pdf, Exercices Seniors, exercice 15 ; corrigé 2019-12_corrige-commentaire-envoi-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/sujet-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-10_sujet-envoi-1.pdf"
---

## Statement

Deux cercles $\Omega$ et $\Gamma$ se coupent en deux points. On note $A$ l'un de ces deux points.

Une droite $d$ passe par $A$. Elle recoupe le cercle $\Omega$ en un point $P$ et le cercle $\Gamma$ en un point $Q$.

Montrer qu'il existe un point, qui ne dépend pas du choix de la droite $d$, et qui est toujours sur la médiatrice du segment $[PQ]$.

## Hints

1. Faites deux ou trois figures soignées avec des droites $d$ différentes et tracez chaque fois la médiatrice de $[PQ]$. Où semble se trouver le point commun, par rapport à $A$ et aux centres $O_1$ de $\Omega$ et $O_2$ de $\Gamma$ ?
2. Le triangle $O_1AP$ est isocèle en $O_1$. Que peut-on dire du pied de la perpendiculaire menée de $O_1$ à la droite $d$ ?
3. Placez-vous dans un repère orthonormé d'origine $A$ dont l'axe des abscisses est la droite $d$. Exprimez les abscisses de $P$ et de $Q$ à l'aide des coordonnées de $O_1$ et de $O_2$.
4. Le point cherché est le quatrième sommet $B$ du parallélogramme $AO_1BO_2$.

## Solution

On note $O_1$ le centre de $\Omega$ et $O_2$ le centre de $\Gamma$.

**Le point candidat.** Soit $B$ le point tel que $AO_1BO_2$ soit un parallélogramme, autrement dit tel que

$$\overrightarrow{AB} = \overrightarrow{AO_1} + \overrightarrow{AO_2}.$$

Ce point ne dépend que de $A$, $O_1$ et $O_2$, pas de la droite $d$. On va montrer que $B$ est sur la médiatrice de $[PQ]$, quelle que soit la droite $d$.

![Les deux cercles, la droite d, le parallélogramme A O1 B O2, les pieds H1 et H2 des perpendiculaires, et le milieu N de [PQ]](10210-figure-1.svg)

**Étape 1 : un repère adapté à la droite $d$.** Fixons une droite $d$ et prenons un repère orthonormé d'origine $A$ dont l'axe des abscisses est la droite $d$. Notons

$$O_1(a_1\,;\,b_1) \qquad \text{et} \qquad O_2(a_2\,;\,b_2).$$

Comme $\overrightarrow{AB} = \overrightarrow{AO_1} + \overrightarrow{AO_2}$ et que $A$ est l'origine, le point $B$ a pour coordonnées $(a_1 + a_2\,;\,b_1 + b_2)$.

**Étape 2 : les abscisses de $P$ et de $Q$.** Les points $A$ et $P$ sont sur le cercle $\Omega$, donc $O_1A = O_1P$ : le triangle $O_1AP$ est isocèle en $O_1$. Dans un triangle isocèle, la hauteur issue du sommet principal tombe au milieu de la base. Le pied $H_1$ de la perpendiculaire menée de $O_1$ à $d$ est donc le milieu de $[AP]$.

Or $d$ est l'axe des abscisses, donc ce pied est $H_1(a_1\,;\,0)$. Comme $A$ est l'origine et $H_1$ le milieu de $[AP]$, on obtient

$$P(2a_1\,;\,0).$$

Cela reste vrai si $d$ est tangente à $\Omega$ en $A$, c'est-à-dire si $P = A$ : dans ce cas $(O_1A)$ est perpendiculaire à $d$, donc $a_1 = 0$.

Exactement de la même façon, avec le cercle $\Gamma$ :

$$Q(2a_2\,;\,0).$$

**Étape 3 : conclusion.** Le milieu $N$ de $[PQ]$ a pour coordonnées $(a_1 + a_2\,;\,0)$. La médiatrice de $[PQ]$ est la droite perpendiculaire à $d$ qui passe par $N$. Comme $d$ est l'axe des abscisses, c'est la droite formée des points d'abscisse $a_1 + a_2$.

Le point $B$ a justement pour abscisse $a_1 + a_2$. Il est donc sur la médiatrice de $[PQ]$, et cela pour n'importe quelle droite $d$.

**Conclusion.** Le quatrième sommet $B$ du parallélogramme $AO_1BO_2$, c'est-à-dire le symétrique de $A$ par rapport au milieu de $[O_1O_2]$, est sur la médiatrice de $[PQ]$ pour toute droite $d$ passant par $A$. On a toujours $BP = BQ$.

*Remarque.* Il y a une seule droite $d$ pour laquelle $P = Q$ : celle qui passe par le second point commun des deux cercles. Le segment $[PQ]$ est alors réduit à un point et n'a pas de médiatrice, mais le calcul montre encore que $(BP)$ est perpendiculaire à $d$.

## Going further

1. Le corrigé officiel évite le repère : il montre que les triangles $PO_1B$ et $BO_2Q$ ont les mêmes longueurs de côtés. Vérifier que $O_1P = O_2B$ et $O_1B = O_2Q$, puis montrer que $\widehat{PO_1B} = \widehat{BO_2Q}$ par une chasse aux angles. Pourquoi cette méthode demande-t-elle de distinguer plusieurs figures ?
2. Montrer qu'il n'y a qu'un seul point fixe : deux médiatrices obtenues avec deux droites $d$ différentes ne sont jamais parallèles.
