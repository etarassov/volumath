---
id: "11445"
title: "Les routes fragiles"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [recurrence-forte, partage, routes, villes, demonstration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 4 (combinatoire)"
  reference: "2023-02_Sujet-envoi-4.pdf, Exercices Seniors, exercice 14 ; corrigé 2023-03_corrige-envoi-4.pdf ; le graphe et ses « culs-de-sac » deviennent des villes et des routes « fragiles »"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/02/Sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-02_Sujet-envoi-4.pdf"
---

## Statement

Un pays compte $n$ villes, avec $n \geqslant 1$. Des routes relient certaines paires de villes ;
chaque route relie deux villes différentes.

On dit qu'une route $r$ est **fragile** s'il est possible de partager les villes en deux groupes
$A$ et $B$ de sorte que :

- au plus $2023$ routes relient une ville de $A$ à une ville de $B$ ;
- la route $r$ est l'une d'elles : elle relie une ville de $A$ à une ville de $B$.

Montrer que le pays compte au plus $2023\,(n - 1)$ routes fragiles.

## Hints

1. Commence par remplacer $2023$ par $1$. Une route est alors fragile quand on peut couper le pays
   en deux de façon qu'elle soit la seule route entre les deux morceaux. Essaie de montrer qu'il y a
   au plus $n - 1$ routes de ce genre.
2. Raisonne par récurrence forte sur le nombre de villes. Prends une route fragile, et le partage en
   deux groupes $A$ et $B$ qui la rend fragile.
3. Une route fragile dont les deux villes sont dans $A$ reste-t-elle fragile si l'on ne garde que les
   villes de $A$ et les routes qui relient deux villes de $A$ ?

## Solution

Pour un groupe $X$ de villes, appelons **pays réduit à $X$** le pays obtenu en ne gardant que les
villes de $X$ et les routes qui relient deux villes de $X$.

Montrons par récurrence forte sur $n$ la propriété suivante : *tout pays à $n$ villes compte au plus
$2023\,(n - 1)$ routes fragiles.*

**Initialisation.** Un pays à une seule ville n'a aucune route, donc aucune route fragile, et
$2023 \times 0 = 0$.

**Hérédité.** Soit $n \geqslant 2$. On suppose la propriété vraie pour tous les pays qui ont moins de
$n$ villes, et l'on prend un pays à $n$ villes.

S'il n'a aucune route fragile, il n'y a rien à montrer. Sinon, prenons une route fragile, et un
partage des villes en deux groupes $A$ et $B$ qui la rend fragile. Ces deux groupes ne sont pas
vides, puisque cette route relie une ville de $A$ à une ville de $B$. Ils ont donc chacun moins de
$n$ villes, et $|A| + |B| = n$, où $|A|$ désigne le nombre de villes de $A$.

Les routes fragiles du pays sont de trois sortes.

- *Celles qui relient une ville de $A$ à une ville de $B$.* Par le choix de $A$ et $B$, il y a au plus
  $2023$ routes de cette sorte, fragiles ou non.
- *Celles qui relient deux villes de $A$.* Montrons qu'une telle route $r$ est encore fragile dans le
  pays réduit à $A$. Comme $r$ est fragile dans le pays entier, il existe un partage de toutes les
  villes en deux groupes $A'$ et $B'$, avec au plus $2023$ routes entre $A'$ et $B'$, dont $r$.
  Partageons alors les villes de $A$ en deux groupes : celles qui sont dans $A'$, et celles qui sont
  dans $B'$. La route $r$ relie un groupe à l'autre, puisque ses deux villes sont dans $A$, l'une dans
  $A'$ et l'autre dans $B'$. Et toute route du pays réduit à $A$ qui relie les deux groupes est une
  route du pays entier qui relie $A'$ à $B'$ : il y en a au plus $2023$. Donc $r$ est fragile dans le
  pays réduit à $A$.

  Ce pays réduit a $|A| < n$ villes. D'après l'hypothèse de récurrence, il a au plus
  $2023\,(|A| - 1)$ routes fragiles. Il y a donc au plus $2023\,(|A| - 1)$ routes de cette sorte.
- *Celles qui relient deux villes de $B$.* De la même façon, il y en a au plus $2023\,(|B| - 1)$.

Au total, le pays compte au plus

$$2023 + 2023\,(|A| - 1) + 2023\,(|B| - 1) = 2023\,(|A| + |B| - 1) = 2023\,(n - 1)$$

routes fragiles, ce qui achève la récurrence.

**Conclusion.** Un pays à $n$ villes compte toujours au plus $2023\,(n - 1)$ routes fragiles.

## Going further

La borne ne peut pas être améliorée si l'on autorise plusieurs routes entre deux mêmes villes.
Plaçons les $n$ villes en ligne, et relions chaque ville à la suivante par exactement $2023$ routes.
En coupant la ligne entre deux villes voisines, on obtient deux groupes reliés par $2023$ routes
seulement : toutes les routes sont fragiles, et il y en a $2023\,(n - 1)$.

Avec $1$ à la place de $2023$, une route est fragile exactement quand sa fermeture empêcherait
d'aller d'une de ses deux villes à l'autre. Un pays d'un seul tenant dont les routes ne forment aucun
circuit (on dit que c'est un « arbre ») a $n - 1$ routes, et elles sont toutes fragiles : là encore,
la borne est atteinte.
