---
id: "8838"
title: "Quelqu'un reste au sec"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe-de-lextremum, recurrence-forte, distance, plus-proche-voisin]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe de l'extremum » (Théo et Noam), exercice 7, p. 116"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Un nombre **impair** de personnes se tiennent dans un champ, chacune munie d'un pistolet à eau. Elles sont placées de telle façon que **deux distances entre personnes ne sont jamais égales** : toutes les distances deux à deux sont différentes.

Au signal, chacune arrose la personne la plus proche d'elle.

Montrer qu'au moins une personne n'est pas arrosée.

## Hints

1. Toutes les distances sont différentes : il y a donc une **unique** paire de personnes les plus proches l'une de l'autre. Que font ces deux-là ?
2. Ces deux personnes s'arrosent mutuellement. Pose-toi la question : est-ce que quelqu'un d'autre les arrose ?
3. Si oui, compte les jets d'eau disponibles pour les personnes restantes : il en manque.
4. Si non, les autres personnes forment un groupe autonome, dont le nombre est encore impair. C'est le moment de faire une récurrence.

## Solution

On raisonne par récurrence (forte) sur le nombre impair $2k+1$ de personnes.

### Initialisation

Avec $1$ personne, il n'y a personne pour l'arroser : elle reste au sec.

*(Avec $3$ personnes on peut aussi vérifier à la main : la paire la plus proche s'arrose mutuellement, et la troisième arrose l'un des deux sans recevoir de jet.)*

### Hérédité

Supposons le résultat acquis pour tout nombre impair de personnes strictement inférieur à $2k+1$, avec $k \geqslant 1$, et plaçons-nous avec $2k+1$ personnes.

Comme toutes les distances sont distinctes, il existe une unique paire de personnes réalisant la plus petite distance ; appelons-les $P$ et $Q$. Pour $P$, la personne la plus proche est $Q$ (sinon il y aurait une distance plus petite), et réciproquement : **$P$ et $Q$ s'arrosent mutuellement.**

Il reste $2k-1$ autres personnes. Deux cas.

**Cas 1 : au moins une des $2k-1$ autres arrose $P$ ou $Q$.**

Chacune des $2k-1$ autres personnes envoie exactement un jet. Au moins un de ces jets part vers $P$ ou $Q$ ; il en reste donc au plus $2k-2$ pour arroser les $2k-1$ autres personnes. Et $P$ et $Q$ n'en envoient aucun de ce côté, puisqu'ils s'arrosent entre eux.

Au plus $2k-2$ jets pour $2k-1$ personnes : l'une d'elles au moins n'est pas arrosée.

**Cas 2 : aucune des $2k-1$ autres n'arrose $P$ ni $Q$.**

Alors chacune de ces $2k-1$ personnes a son plus proche voisin parmi les $2k-1$. Si on efface $P$ et $Q$ du champ, chacune arrose donc exactement la même personne qu'avant : la situation restreinte à ces $2k-1$ personnes est **exactement** un tir de plus proche voisin, avec des distances toujours toutes distinctes.

Comme $2k-1$ est impair et strictement plus petit que $2k+1$, l'hypothèse de récurrence donne une personne non arrosée dans ce groupe. Et elle n'est pas arrosée non plus par $P$ ou $Q$, qui s'arrosent entre eux.

Dans les deux cas, quelqu'un reste au sec. La récurrence est établie.

### Pourquoi le nombre doit être impair

Avec un nombre **pair** de personnes, le résultat tombe. Par exemple, avec $4$ personnes placées en deux paires très serrées et très éloignées l'une de l'autre, chaque paire s'arrose mutuellement et tout le monde est mouillé.

## Going further

Avec $n$ personnes (distances toutes distinctes), montrer que personne n'est arrosé par plus de $5$ autres. (Indication : si $X$ arrose $A$ et $Y$ arrose $A$, montrer que l'angle $\widehat{XAY}$ est strictement plus grand que $60^\circ$.)
