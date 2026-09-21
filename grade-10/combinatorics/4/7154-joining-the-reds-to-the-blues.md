---
id: "7154"
title: "Relier les rouges aux bleus sans croisement"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [extremum, inegalite triangulaire, geometrie combinatoire, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2016"
  reference: "stage_junior_2016.pdf, « Avancés : combinatoire », l'après-midi (Pierre Bornsztein), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2016.pdf"
---

## Statement

On considère $2n$ points du plan, trois quelconques n'étant jamais alignés. On en colorie
$n$ en rouge et les $n$ autres en bleu.

Montrer qu'on peut tracer $n$ segments, deux à deux sans point commun, de sorte que chaque
point rouge soit relié à un point bleu et chaque point bleu à un point rouge.

## Hints

1. Il y a un nombre **fini** de façons d'apparier les $n$ points rouges avec les $n$ points
   bleus. Cela permet d'en choisir une qui soit extrême pour une certaine quantité.
2. Quelle quantité choisir ? Essaie la somme des longueurs des $n$ segments, et prends
   l'appariement qui la rend **minimale**.
3. Suppose que dans cet appariement deux segments se croisent. Dessine la figure : tu as
   quatre points et un point de croisement.
4. Échange les partenaires de ces deux segments et compare les longueurs, en utilisant
   l'inégalité triangulaire.

## Solution

**Un appariement le plus court possible.**

Il y a exactement $n!$ façons d'apparier les $n$ points rouges avec les $n$ points bleus : un
nombre fini. Parmi ces appariements, choisissons-en un pour lequel la **somme des longueurs**
des $n$ segments est la plus petite possible. Un tel appariement existe, puisqu'il n'y a
qu'un nombre fini de valeurs à comparer.

Montrons que dans cet appariement, deux segments ne se croisent jamais.

**Raisonnement par l'absurde.** Supposons que deux segments se croisent, disons $[R_1 B_1]$
et $[R_2 B_2]$, en un point $X$. Les quatre points $R_1$, $R_2$, $B_1$, $B_2$ sont distincts,
et $X$ est strictement à l'intérieur des deux segments.

Considérons alors le nouvel appariement obtenu en échangeant les partenaires : on remplace
les deux segments $[R_1 B_1]$ et $[R_2 B_2]$ par les deux segments $[R_1 B_2]$ et
$[R_2 B_1]$, sans toucher aux autres. C'est bien un appariement : chaque point rouge reste
relié à un point bleu et réciproquement.

**Comparons les longueurs.** D'après l'inégalité triangulaire appliquée au triangle
$R_1 X B_2$, puis au triangle $R_2 X B_1$ :

$$R_1B_2 \leqslant R_1X + XB_2 \qquad \text{et} \qquad R_2B_1 \leqslant R_2X + XB_1 .$$

Ces deux inégalités sont même **strictes** : il y aurait égalité seulement si $X$ était sur
le segment $[R_1B_2]$, ce qui alignerait trois des points donnés, exclu par l'hypothèse.

En additionnant :

$$R_1B_2 + R_2B_1 < (R_1X + XB_1) + (R_2X + XB_2) = R_1B_1 + R_2B_2 ,$$

où l'on a simplement regroupé les quatre morceaux autrement, en utilisant que $X$ est sur
$[R_1B_1]$ et sur $[R_2B_2]$.

Le nouvel appariement est donc **strictement plus court** que celui de départ, qui était
pourtant le plus court possible. C'est une contradiction.

**Conclusion.** Dans l'appariement de longueur totale minimale, deux segments ne se croisent
jamais. Ils n'ont pas non plus d'extrémité commune, puisque chaque point n'est relié qu'à un
seul autre, et aucun segment ne passe par un troisième point, faute de trois points alignés.

Les $n$ segments sont donc deux à deux sans point commun, ce qu'il fallait démontrer.

## Going further

La méthode s'appelle le **principe de l'extremum**, et elle est d'une efficacité redoutable.
On ne construit pas la configuration cherchée : on prend celle qui optimise une quantité bien
choisie, et on montre que le défaut qu'on redoute permettrait de faire mieux, ce qui est
impossible.

Le choix de la quantité est tout l'art. Ici la somme des longueurs marchait parce que
l'inégalité triangulaire relie précisément « croisement » et « longueur ».

Une question pour continuer : le résultat reste-t-il vrai si l'on autorise trois points
alignés ? Et si les points rouges et bleus ne sont pas en même nombre ?
