---
id: "11227"
title: "2015 droites et moins de 8000 régions"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 50
tags: [droites, regions, minoration, disjonction-de-cas, second-degre]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 5 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-5.pdf, Exercices communs, exercice 4 ; corrigé 2017-10_ofm-2014-2015-envoi-5-solutions.pdf (le corrigé note g le nombre de régions dans la deuxième minoration au lieu de f, et écrit (2q) au lieu de 2q ; dans le dernier cas, il utilise les 1000 premières droites, on se contente ici des 10 premières)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-5.pdf"
---

## Statement

On trace dans le plan $2015$ droites, toutes différentes. Elles découpent le plan en régions (une
région peut s'étendre à l'infini). On suppose qu'il y a **moins de $8000$ régions**.

Montrer que le nombre de régions est égal à $2016$, $4030$, $6042$ ou $6043$, et donner un exemple
de figure pour chacun de ces quatre nombres.

## Hints

1. On ajoute une droite à une figure. Si elle coupe les droites déjà tracées en $k$ points
   différents, combien de régions nouvelles crée-t-elle ?
2. Appelle $p$ le plus grand nombre de droites de la figure qui sont toutes parallèles entre elles.
   Trace-les en premier, puis les autres. Montre qu'il y a au moins $(p + 1)(2016 - p)$ régions.
3. Fais de même avec $q$, le plus grand nombre de droites de la figure qui passent par un même
   point.
4. Si $p$ et $q$ sont tous les deux petits, chaque nouvelle droite coupe beaucoup des droites
   précédentes, en beaucoup de points différents.

## Solution

Notons $f$ le nombre de régions.

**Étape 1. Ce qu'ajoute une droite.**

Supposons que des droites soient déjà tracées, et ajoutons une nouvelle droite $d$, qui coupe les
anciennes droites en exactement $k$ points différents. Ces $k$ points découpent $d$ en $k + 1$
morceaux : deux demi-droites et $k - 1$ segments. Chaque morceau ne rencontre aucune ancienne droite
(sauf à ses extrémités), donc il est dans une seule ancienne région, qu'il traverse d'un bord à
l'autre et qu'il coupe en deux. Deux morceaux différents sont dans des régions différentes, car pour
passer de l'un à l'autre il faut traverser une ancienne droite. Ainsi :

> **Règle.** Une nouvelle droite qui coupe les droites déjà tracées en $k$ points différents
> ajoute exactement $k + 1$ régions.

**Étape 2. Deux minorations.**

Notons $p$ le plus grand nombre de droites de la figure qui sont toutes parallèles entre elles, et
$q$ le plus grand nombre de droites de la figure qui passent par un même point.

*Avec $p$.* Prenons $p$ droites parallèles entre elles. Seules, elles forment $p + 1$ régions
(des bandes). Une autre droite $d$ n'est parallèle à aucune d'elles : si elle l'était à l'une, elle
le serait à toutes, et on aurait $p + 1$ droites parallèles. Donc $d$ coupe ces $p$ droites, en $p$
points différents puisque des droites parallèles n'ont aucun point commun. D'après la règle, en
ajoutant les $2015 - p$ autres droites une par une, chacune ajoute au moins $p + 1$ régions. Donc
$$f \geqslant (p + 1) + (2015 - p)(p + 1) = (p + 1)(2016 - p) .$$

*Avec $q$.* Prenons $q$ droites passant par un même point $O$. Seules, elles forment $2q$ régions.
Une autre droite $d$ ne passe pas par $O$, sinon $q + 1$ droites passeraient par $O$. Elle est
parallèle à au plus une de ces $q$ droites, car deux d'entre elles se coupent en $O$, donc ne sont
pas parallèles. Elle coupe donc au moins $q - 1$ d'entre elles, et en des points différents, car
deux de ces droites n'ont que $O$ en commun. En ajoutant les $2015 - q$ autres droites une par une,
chacune ajoute au moins $q$ régions. Donc
$$f \geqslant 2q + (2015 - q)q = q(2017 - q) .$$

**Étape 3. $p$ et $q$ sont très petits ou très grands.**

Pour un entier $t$ compris entre $0$ et $2009$, on a
$$(4 + t)(2013 - t) = 8052 + 2009t - t^2 = 8052 + t(2009 - t) \geqslant 8052 .$$

- Si $3 \leqslant p \leqslant 2012$, écrivons $p = 3 + t$ avec $0 \leqslant t \leqslant 2009$.
  Alors $f \geqslant (p + 1)(2016 - p) = (4 + t)(2013 - t) \geqslant 8052$. C'est impossible, donc
  $p$ vaut $1$, $2$, $2013$, $2014$ ou $2015$.
- Si $4 \leqslant q \leqslant 2013$, écrivons $q = 4 + t$ avec $0 \leqslant t \leqslant 2009$.
  Alors $f \geqslant q(2017 - q) = (4 + t)(2013 - t) \geqslant 8052$. C'est impossible, donc $q$
  vaut $1$, $2$, $3$, $2014$ ou $2015$.

**Étape 4. Les cas où $p$ est grand.**

- *$p = 2015$.* Toutes les droites sont parallèles : $f = 2016$.
- *$p = 2014$.* On trace d'abord les $2014$ parallèles, qui font $2015$ régions. La dernière droite
  les coupe en $2014$ points différents et ajoute $2015$ régions : $f = 4030$.
- *$p = 2013$.* Les $2013$ parallèles font $2014$ régions. Les deux autres droites $d$ et $d'$ ne
  sont pas parallèles aux premières. La droite $d$ coupe les $2013$ parallèles et ajoute $2014$
  régions. La droite $d'$ coupe les $2013$ parallèles en $2013$ points différents.
  - Si $d'$ est parallèle à $d$, ou si $d'$ coupe $d$ en un point situé sur l'une des $2013$
    parallèles, $d'$ a $2013$ points de rencontre différents et ajoute $2014$ régions :
    $f = 3 \times 2014 = 6042$.
  - Sinon, $d'$ a $2014$ points de rencontre différents et ajoute $2015$ régions : $f = 6043$.

**Étape 5. Les cas où $p \leqslant 2$.**

D'après l'étape 3, il reste $q = 2015$, $q = 2014$ ou $q \leqslant 3$.

- *$q = 2015$.* Toutes les droites passent par un même point : $f = 2 \times 2015 = 4030$.
- *$q = 2014$.* Les $2014$ droites qui passent par un même point $O$ font $4028$ régions. La
  dernière droite ne passe pas par $O$, et coupe les $2014$ autres en $2014$ points différents, ou
  en $2013$ si elle est parallèle à l'une d'elles. Elle ajoute $2015$ ou $2014$ régions : $f = 6043$
  ou $f = 6042$.
- *$q \leqslant 3$.* Numérotons les droites $D_1, D_2, \ldots, D_{2015}$, et traçons-les dans cet
  ordre. Prenons une droite $D$ parmi $D_{11}, \ldots, D_{2015}$. Comme $p \leqslant 2$, au plus une
  des droites $D_1, \ldots, D_{10}$ est parallèle à $D$, donc $D$ coupe au moins $9$ d'entre elles.
  Comme $q \leqslant 3$, un point de $D$ est sur au plus $2$ des droites $D_1, \ldots, D_{10}$. Ces
  $9$ rencontres (au moins) se font donc en au moins $5$ points différents, et $D$ ajoute au moins
  $6$ régions. Avec les $2005$ droites $D_{11}, \ldots, D_{2015}$, on obtient
  $f \geqslant 2005 \times 6 = 12030$, ce qui est impossible.

**Conclusion.** Le nombre de régions vaut $2016$, $4030$, $6042$ ou $6043$. Voici un exemple pour
chaque valeur :

- $2016$ : les $2015$ droites sont parallèles ;
- $4030$ : $2014$ droites parallèles et une droite qui les coupe ;
- $6042$ : $2013$ droites parallèles, et deux autres droites parallèles entre elles, qui coupent les
  premières ;
- $6043$ : $2013$ droites parallèles, et deux autres droites qui coupent les premières et qui se
  coupent en un point situé en dehors des $2013$ premières.

## Going further

Le même raisonnement marche pour $n$ droites, dès que $n$ est assez grand ($n \geqslant 26$
suffit) : s'il y a moins de $4(n - 2)$ régions, le nombre de régions vaut $n + 1$, $2n$, $3n - 3$
ou $3n - 2$. Ici $4(n - 2) = 8052$, ce qui explique le nombre $8000$ de l'énoncé.
