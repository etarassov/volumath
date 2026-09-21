---
id: "8833"
title: "Un disque qui attrape un tiers des points"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [principe des tiroirs, distance, disjonction de cas, recouvrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe des tiroirs » (Emilhan), exercice 11, p. 111"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On considère $1000$ points distincts du plan, tels que **parmi quatre points quelconques, il y en ait toujours deux à distance inférieure ou égale à $1$**.

Montrer qu'il existe un disque de rayon $1$ contenant au moins $334$ de ces points.

## Hints

1. Récris l'hypothèse autrement : il n'existe pas quatre points deux à deux à distance strictement plus grande que $1$.
2. Suppose qu'il existe trois points $A$, $B$, $C$ deux à deux à distance $> 1$. Que peut-on dire alors de n'importe quel autre point de l'ensemble ?
3. Dans ce cas, tous les autres points se répartissent dans trois disques. Le principe des tiroirs donne le résultat, à condition de ne pas oublier de compter le centre lui-même.
4. Il reste à traiter le cas où trois tels points n'existent pas. Il s'y cache deux sous-cas, et ils donnent des bornes encore meilleures.

## Solution

Notons $E$ l'ensemble des $1000$ points. L'hypothèse se récrit :

> il n'existe pas quatre points de $E$ deux à deux à distance strictement plus grande que $1$.

### Cas 1 : il existe trois points deux à deux éloignés

Supposons qu'il existe $A$, $B$, $C$ dans $E$, deux à deux à distance $> 1$.

Soit $P$ un autre point de $E$. Si $P$ était à distance $> 1$ de chacun de $A$, $B$, $C$, alors $A$, $B$, $C$, $P$ seraient quatre points deux à deux à distance $> 1$, ce qui est exclu. Donc
$$PA \leqslant 1 \quad \text{ou} \quad PB \leqslant 1 \quad \text{ou} \quad PC \leqslant 1 .$$

Autrement dit, chacun des $1000 - 3 = 997$ points autres que $A$, $B$, $C$ appartient au disque de rayon $1$ centré en $A$, ou à celui centré en $B$, ou à celui centré en $C$.

Par le principe des tiroirs ($997$ chaussettes, $3$ tiroirs), l'un de ces trois disques contient au moins
$$\left\lceil \frac{997}{3} \right\rceil = 333$$
de ces points. Et ce disque contient aussi son propre centre, qui est l'un des points de $E$. Cela fait au total
$$333 + 1 = 334$$
points de $E$ dans un disque de rayon $1$.

### Cas 2 : il n'existe pas trois tels points

**Sous-cas 2a : il n'existe même pas deux points à distance $> 1$.** Alors tous les points sont à distance $\leqslant 1$ les uns des autres. En particulier, le disque de rayon $1$ centré en n'importe lequel d'entre eux les contient tous : il en contient $1000 \geqslant 334$.

**Sous-cas 2b : il existe deux points $A$ et $B$ à distance $> 1$, mais pas trois.** Soit $P$ un autre point. Si $P$ était à distance $> 1$ de $A$ et de $B$, les trois points $A$, $B$, $P$ seraient deux à deux éloignés, ce qui est exclu dans ce cas. Donc chacun des $998$ autres points est dans le disque de rayon $1$ centré en $A$ ou dans celui centré en $B$. L'un des deux en contient au moins
$$\left\lceil \frac{998}{2} \right\rceil = 499 ,$$
plus son centre, soit $500 \geqslant 334$ points.

### Conclusion

Dans tous les cas, il existe un disque de rayon $1$ contenant au moins $334$ des $1000$ points.

### Où est la vraie difficulté

Le mécanisme (« si trois points sont éloignés, tous les autres sont proches de l'un d'eux ») est simple. Ce qui coûte, c'est la discipline : il faut traiter le cas où ces trois points n'existent pas, et il faut penser à compter les centres des disques, sans quoi on n'obtient que $333$ et la borne demandée échappe de justesse.

## Going further

Reprendre l'exercice avec $n$ points au lieu de $1000$, sous la même hypothèse. Quelle borne obtient-on ? Et si l'hypothèse porte sur cinq points quelconques au lieu de quatre ?
