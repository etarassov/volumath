---
id: "13240"
title: "Un objet qui repasse par le même point"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [factorisation, identites-remarquables, systemes, somme-et-produit]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices lycéens, exercice 14 ; réponse (999) dans 2017-10_coupe_automne_2017_elim_lycee.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

À chaque instant $t$ (un nombre réel), un objet se trouve dans le plan au point de coordonnées

$$x(t) = t^2 - t \qquad \text{et} \qquad y(t) = 1000t - t^3.$$

Il se trouve que cet objet passe deux fois par le même point, à deux instants différents. Déterminer l'abscisse de ce point.

## Hints

1. Note $t$ et $s$ les deux instants, avec $t \neq s$. Écris les deux égalités $x(t) = x(s)$ et $y(t) = y(s)$.
2. Factorise $t^2 - s^2 - (t - s)$ et $t^3 - s^3$ par $t - s$.
3. Tu dois trouver $t + s = 1$ et $t^2 + ts + s^2 = 1000$. Déduis-en $ts$.
4. Écris l'abscisse $t^2 - t$ à l'aide de $t$ et de $s$.

## Solution

Soient $t$ et $s$ deux instants différents où l'objet est au même point.

**Les abscisses.** $x(t) = x(s)$ s'écrit $t^2 - t = s^2 - s$, soit $(t^2 - s^2) - (t - s) = 0$, c'est-à-dire

$$(t - s)(t + s - 1) = 0.$$

Comme $t - s \neq 0$, on a $t + s = 1$.

**Les ordonnées.** $y(t) = y(s)$ s'écrit $1000\,(t - s) = t^3 - s^3$. On vérifie en développant que $t^3 - s^3 = (t - s)(t^2 + ts + s^2)$. En divisant par $t - s$, qui n'est pas nul,

$$t^2 + ts + s^2 = 1000.$$

**Le produit $ts$.** On a $t^2 + ts + s^2 = (t + s)^2 - ts = 1 - ts$. Donc $1 - ts = 1000$, soit $ts = -999$.

**L'abscisse.** Comme $t - 1 = -s$, l'abscisse du point vaut

$$x(t) = t^2 - t = t\,(t - 1) = -ts = 999.$$

**Ce point existe bien.** Les nombres $t$ et $s$ ont pour somme $1$ et pour produit $-999$ : ce sont les solutions de $z^2 - z - 999 = 0$, dont le discriminant $1 + 4 \times 999 = 3997$ est positif. On a donc bien deux instants différents. En remontant les calculs, on vérifie que $x(t) = x(s)$ et $y(t) = y(s)$.

**Conclusion.** L'objet passe deux fois par un point d'abscisse $999$.
