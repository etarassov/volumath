---
id: "7670"
title: "Toujours près d'un nombre entier"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [principe des tiroirs, partie entiere, partie decimale, approximation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 52 (deux étoiles ; solution chapitre XI, résolue par Vincent Bouis). Le corrigé imprimé note les intervalles extrêmes A₁ et Aₙ là où il faut lire A₀ et Aₙ₋₁"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier et soit $a$ un nombre réel strictement positif.

Démontrer que l'un au moins des $n - 1$ nombres

$$a, \quad 2a, \quad 3a, \quad \ldots, \quad (n-1)a$$

est à une distance inférieure ou égale à $\dfrac{1}{n}$ d'un nombre entier.

*On note $\lfloor x \rfloor$ la partie entière de $x$ et $\{x\} = x - \lfloor x \rfloor$ sa partie décimale, qui appartient à $[0\,;1[$.*

## Hints

1. Dire que $x$ est à distance au plus $\frac1n$ d'un entier, c'est dire quelque chose de simple sur $\{x\}$. Quoi exactement ?
2. Découpez $[0\,;1[$ en $n$ intervalles de longueur $\frac1n$. Deux de ces intervalles règlent le problème tout seuls : lesquels ?
3. Si aucune des $n-1$ parties décimales ne tombe dans ces deux intervalles-là, combien d'intervalles reste-t-il pour les accueillir ?
4. Comptez : $n-1$ nombres, $n-2$ intervalles. Le principe des tiroirs s'applique.
5. Si $\{ua\}$ et $\{va\}$ sont proches, que dire de $\{(u-v)a\}$ ? Attention : il y a deux cas, selon laquelle des deux parties décimales est la plus grande.

## Solution

### Reformulation

Un réel $x$ est à distance au plus $\frac1n$ d'un entier si et seulement si

$$\{x\} \leqslant \frac1n \qquad \text{ou} \qquad \{x\} \geqslant 1 - \frac1n .$$

En effet, l'entier le plus proche de $x$ est $\lfloor x \rfloor$ (à distance $\{x\}$) ou $\lfloor x \rfloor + 1$ (à distance $1 - \{x\}$).

### Le découpage

Découpons $[0\,;1[$ en $n$ intervalles de longueur $\frac1n$ :

$$A_j = [\,\tfrac{j}{n} \,;\, \tfrac{j+1}{n}\,[ \qquad \text{pour } j = 0, 1, \ldots, n-1 .$$

Les deux intervalles des extrémités, $A_0 = [\,0\,;\tfrac1n\,[$ et $A_{n-1} = [\,\tfrac{n-1}{n}\,;1\,[$, sont ceux qui nous intéressent : si $\{x\}$ tombe dans l'un des deux, alors $x$ est à distance strictement inférieure à $\frac1n$ d'un entier.

### Premier cas : on a de la chance

Si l'une des $n-1$ parties décimales

$$\{a\}, \quad \{2a\}, \quad \ldots, \quad \{(n-1)a\}$$

appartient à $A_0$ ou à $A_{n-1}$, le nombre correspondant convient et la démonstration est terminée.

### Second cas : le principe des tiroirs

Supposons donc qu'aucune de ces $n-1$ parties décimales n'appartient à $A_0$ ni à $A_{n-1}$. Elles se répartissent alors dans les $n-2$ intervalles restants

$$A_1, \quad A_2, \quad \ldots, \quad A_{n-2} .$$

Nous avons $n-1$ nombres à placer dans $n-2$ tiroirs : par le principe des tiroirs, deux d'entre eux tombent dans le même intervalle. Autrement dit, il existe des indices $u > v$ dans $\{1, \ldots, n-1\}$ tels que $\{ua\}$ et $\{va\}$ appartiennent au même $A_i$.

Comme un intervalle $A_i$ est de longueur $\frac1n$,

$$\left|\,\{ua\} - \{va\}\,\right| < \frac{1}{n} .$$

### La différence fait l'affaire

Posons $k = u - v$. C'est un entier avec $1 \leqslant k \leqslant n - 2$, donc $ka$ figure bien dans notre liste.

Écrivons $ua = \lfloor ua \rfloor + \{ua\}$ et $va = \lfloor va \rfloor + \{va\}$, puis soustrayons :

$$ka = (\lfloor ua \rfloor - \lfloor va \rfloor) + (\{ua\} - \{va\}) .$$

Le premier terme est un entier. Notons $\delta = \{ua\} - \{va\}$, avec $|\delta| < \frac1n$. Deux cas se présentent.

- **Si $\delta \geqslant 0$**, alors $\delta \in [\,0\,;\tfrac1n\,[$, et $ka$ est à distance $\delta < \frac1n$ de l'entier $\lfloor ua \rfloor - \lfloor va \rfloor$.
- **Si $\delta < 0$**, alors $|\delta| < \frac1n$, et $ka$ est à distance $|\delta| < \frac1n$ de l'entier $\lfloor ua \rfloor - \lfloor va \rfloor$.

Dans les deux cas, $ka$ est à distance strictement inférieure à $\frac1n$ d'un entier.

### Conclusion

Dans tous les cas, l'un des nombres $a, 2a, \ldots, (n-1)a$ est à distance au plus $\frac1n$ d'un entier. $\blacksquare$

## Going further

**Le résultat porte un nom.** C'est le **théorème d'approximation de Dirichlet**, publié en 1842, et c'est l'acte de naissance de toute une branche des mathématiques, l'approximation diophantienne. Sous sa forme usuelle il s'énonce ainsi : pour tout réel $a$ et tout entier $n \geqslant 2$, il existe des entiers $p$ et $q$ avec $1 \leqslant q \leqslant n-1$ tels que

$$\left| a - \frac{p}{q} \right| \leqslant \frac{1}{qn} .$$

C'est exactement ce que nous avons démontré, en divisant par $q = k$ l'inégalité $|ka - p| \leqslant \frac1n$.

**Une conséquence spectaculaire.** Si $a$ est irrationnel, on peut faire tendre $n$ vers l'infini et obtenir une infinité de fractions $\frac{p}{q}$ distinctes telles que
$$\left| a - \frac{p}{q} \right| < \frac{1}{q^2} .$$
Autrement dit, un irrationnel est toujours très bien approché par des rationnels de dénominateur modeste. C'est ce qui explique que $\frac{22}{7}$ et $\frac{355}{113}$ approchent si bien $\pi$.

**Une question pour prolonger.** La borne $\frac1n$ est-elle optimale ? Essayez $a = \frac{1}{n}$ : les nombres de la liste sont $\frac1n, \frac2n, \ldots, \frac{n-1}{n}$, et le plus proche d'un entier est à distance exactement $\frac1n$. On ne peut donc pas remplacer $\frac1n$ par une valeur plus petite.
