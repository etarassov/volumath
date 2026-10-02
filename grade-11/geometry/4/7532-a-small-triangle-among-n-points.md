---
id: "7532"
title: "Un petit triangle parmi n points"
grade: 11
theme: geometry
difficulty: 4
duration_min: 35
tags: [aire, polygone, triangulation, tiroirs, carre-unite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 90 (solution p. 257, résolue par Nathanaël Courant)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On place $n$ points dans un carré de côté $1$, avec $n \geqslant 3$.

Montrer qu'il existe trois de ces points formant un triangle d'aire inférieure ou égale à $\dfrac{1}{n-2}$.

## Hints

1. Il s'agit de trouver un « petit » objet parmi beaucoup : c'est typiquement le principe des tiroirs appliqué aux aires. Si $k$ triangles sans recouvrement tiennent dans une surface d'aire $S$, que peut-on dire du plus petit ?
2. Il faut donc découper une surface en beaucoup de triangles dont les sommets sont parmi les $n$ points. Combien en faudrait-il, et de quelle aire totale ?
3. Le nombre $n-2$ doit te faire penser à quelque chose : c'est le nombre de triangles d'une triangulation d'un polygone à $n$ sommets.
4. Construis donc un polygone **non croisé** dont les sommets sont exactement les $n$ points, puis découpe-le en triangles.
5. Où se trouve ce polygone ? Quelle majoration en déduis-tu pour son aire ?

## Solution

**Étape 1. Le cas des points alignés.**

Si les $n$ points sont tous sur une même droite, n'importe quel triangle formé de trois d'entre eux est aplati, donc d'aire $0$, et le résultat est acquis. On suppose désormais qu'ils ne sont pas tous alignés.

**Étape 2. On construit un polygone non croisé.**

Il existe toujours un polygone **simple** (c'est-à-dire dont les côtés ne se coupent pas) dont les sommets sont exactement les $n$ points donnés.

On peut le construire ainsi : on choisit le point $O$ le plus bas (et, en cas d'égalité, le plus à gauche), puis on range tous les autres points par angle croissant vu depuis $O$, en départageant les points de même direction par la distance à $O$. En parcourant les points dans cet ordre et en revenant à $O$, on obtient un polygone qui ne se recoupe pas : c'est le même tri que celui utilisé pour construire une enveloppe convexe.

Appelons $\mathcal{P}$ ce polygone. Il a $n$ sommets.

**Étape 3. On le découpe en triangles.**

Tout polygone simple à $n$ sommets se découpe en $n-2$ triangles dont les sommets sont des sommets du polygone : il suffit de tracer $n-3$ diagonales intérieures qui ne se coupent pas.

(On le voit par récurrence : un polygone simple possède toujours au moins une diagonale intérieure ; elle le coupe en deux polygones simples ayant $i+1$ et $n-i+1$ sommets, avec $i+1 < n$, et l'hypothèse de récurrence donne $(i-1) + (n-i-1) = n-2$ triangles.)

Notons $T_1, T_2, \ldots, T_{n-2}$ ces triangles. Leurs sommets sont parmi les $n$ points donnés, et ils ne se chevauchent pas.

**Étape 4. On majore l'aire totale.**

Les $n$ points sont dans le carré de côté $1$, qui est convexe. Le polygone $\mathcal{P}$, dont tous les sommets sont dans le carré, est donc entièrement contenu dans le carré. Son aire vérifie

$$\text{aire}(\mathcal{P}) \;\leqslant\; 1.$$

Or les $n-2$ triangles pavent $\mathcal{P}$ sans se chevaucher, donc

$$\text{aire}(T_1) + \text{aire}(T_2) + \cdots + \text{aire}(T_{n-2}) \;=\; \text{aire}(\mathcal{P}) \;\leqslant\; 1.$$

**Étape 5. Le principe des tiroirs.**

Si les $n-2$ aires étaient toutes strictement supérieures à $\dfrac{1}{n-2}$, leur somme dépasserait strictement $(n-2) \times \dfrac{1}{n-2} = 1$, ce qui contredit l'étape 4.

Donc l'un au moins des triangles $T_i$ a une aire inférieure ou égale à $\dfrac{1}{n-2}$.

**Conclusion.** Ce triangle a ses trois sommets parmi les $n$ points, et son aire ne dépasse pas $\dfrac{1}{n-2}$.

## Going further

La démonstration donne en fait un peu mieux : elle fournit un triangle petit **et** elle en fournit $n-2$ dont la somme des aires ne dépasse pas $1$.

La borne $\dfrac{1}{n-2}$ est-elle la meilleure possible ? Non, loin de là. Le meilleur résultat connu est nettement plus fin : on peut toujours trouver un triangle d'aire au plus de l'ordre de $\dfrac{c}{n^2}$ pour une constante $c$, ce qui est bien plus petit. Déterminer la meilleure constante est un problème ouvert, connu sous le nom de **problème de Heilbronn**.

L'ingrédient de l'étape 3, « un polygone simple à $n$ sommets se découpe en $n-2$ triangles », vaut d'être retenu : c'est aussi ce qui explique que la somme des angles d'un polygone à $n$ côtés vaut $(n-2) \times 180°$.
