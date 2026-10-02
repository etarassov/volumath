---
id: "12625"
title: "Des disques disjoints et une somme de distances"
grade: 12
theme: geometry
difficulty: 5
duration_min: 60
tags: [inegalite-geometrique, disques, al-kashi, principe-des-tiroirs, recurrence, inegalite-triangulaire]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 31 mars 2021"
  reference: "2021-12_Enonce-Test-4.pdf, exercice 7 (senior) ; corrigé 2021-04_Corrige-Test-4-Web.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Énoncé-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Test-4.pdf"
---

## Statement

Soit $n \geqslant 6$ un entier. Dans le plan, on a placé $n$ disques $D_1, D_2, \ldots, D_n$, deux à deux disjoints (deux d'entre eux n'ont jamais de point commun), de rayons
$$r_1 \geqslant r_2 \geqslant \cdots \geqslant r_n.$$
Pour chaque $i$, on choisit un point $P_i$ dans le disque $D_i$. Enfin, soit $A$ un point quelconque du plan.

Démontrer que
$$AP_1 + AP_2 + \cdots + AP_n \geqslant r_6 + r_7 + \cdots + r_n.$$

## Hints

1. Commence par le cas $n = 6$. Il s'agit de montrer que l'un des six points $P_i$ est à une distance au moins $r_6$ de $A$.
2. Note $O_i$ le centre du disque $D_i$. Que peux-tu dire de la distance $O_iO_j$ quand $i \neq j$ ? Et quel lien y a-t-il entre $AP_i$ et $AO_i$ ?
3. Les six demi-droites $[AO_1), \ldots, [AO_6)$ découpent le tour complet autour de $A$ en six angles. L'un d'eux mesure au plus $60^\circ$. Utilise le théorème d'Al-Kashi dans le triangle correspondant.
4. Pour $n \geqslant 7$, raisonne par récurrence : parmi les six plus grands disques, trouve-en un que l'on peut enlever.

## Solution

On note $O_i$ le centre du disque $D_i$.

**Deux remarques.**

- *Deux disques disjoints sont loin l'un de l'autre :* pour $i \neq j$, on a $O_iO_j \geqslant r_i + r_j$. En effet, si l'on avait $d = O_iO_j < r_i + r_j$, on placerait sur le segment $[O_iO_j]$ le point $N$ tel que
$$O_iN = \frac{r_i}{r_i + r_j} \times d < r_i, \qquad \text{et donc} \qquad NO_j = d - O_iN = \frac{r_j}{r_i + r_j} \times d < r_j.$$
Ce point serait dans les deux disques, qui ne seraient pas disjoints.
- *Un point du disque n'est pas beaucoup plus près de $A$ que le centre :* par l'inégalité triangulaire, $AO_i \leqslant AP_i + P_iO_i \leqslant AP_i + r_i$, donc
$$AP_i \geqslant AO_i - r_i.$$

**Le lemme.** *On considère six disques deux à deux disjoints, avec un point dans chacun. Soit $\rho$ le plus petit des six rayons. Alors, pour tout point $A$, l'un des six points est à une distance au moins $\rho$ de $A$.*

Numérotons ces six disques de 1 à 6, comme dans l'énoncé.

*Premier cas : $A$ est le centre de l'un des disques*, disons $A = O_k$. Prenons un autre disque, $D_j$ avec $j \neq k$. Alors $AO_j = O_kO_j \geqslant r_k + r_j$, donc $AP_j \geqslant AO_j - r_j \geqslant r_k \geqslant \rho$.

*Second cas : $A$ n'est aucun des centres.* Les six demi-droites $[AO_1), \ldots, [AO_6)$, rangées dans l'ordre où on les rencontre en tournant autour de $A$, découpent le tour complet en six angles, dont la somme vaut $360^\circ$. Certains peuvent être nuls, si deux centres sont dans la même direction. Ces six angles ne peuvent pas mesurer tous plus de $60^\circ$, sinon leur somme dépasserait $360^\circ$. Il existe donc deux centres $O_i$ et $O_j$, avec $i \neq j$, tels que l'angle $\theta = \widehat{O_iAO_j}$ mesure au plus $60^\circ$. Quitte à échanger leurs noms, on suppose $AO_i \geqslant AO_j$.

Le théorème d'Al-Kashi dans le triangle $AO_iO_j$ donne
$$O_iO_j^2 = AO_i^2 + AO_j^2 - 2\, AO_i \cdot AO_j \cos\theta.$$
Cette formule reste vraie si $\theta = 0$, c'est-à-dire si $O_i$ et $O_j$ sont sur une même demi-droite issue de $A$ : elle donne alors $O_iO_j = AO_i - AO_j$. Comme $0 \leqslant \theta \leqslant 60^\circ$, on a $\cos\theta \geqslant \cos 60^\circ = \frac{1}{2}$, donc
$$O_iO_j^2 \leqslant AO_i^2 + AO_j^2 - AO_i \cdot AO_j = AO_i^2 - AO_j\,(AO_i - AO_j) \leqslant AO_i^2,$$
car $AO_j \geqslant 0$ et $AO_i - AO_j \geqslant 0$. Ainsi $O_iO_j \leqslant AO_i$. Avec les deux remarques, on obtient
$$r_i + r_j \leqslant O_iO_j \leqslant AO_i \leqslant AP_i + r_i,$$
donc $AP_i \geqslant r_j \geqslant \rho$. Le lemme est démontré.

**La récurrence.** Pour tout entier $n \geqslant 6$, on note $\mathcal{P}(n)$ la propriété : *pour tous $n$ disques deux à deux disjoints, numérotés de sorte que $r_1 \geqslant \cdots \geqslant r_n$, tout choix des points $P_i$ et tout point $A$, on a $AP_1 + \cdots + AP_n \geqslant r_6 + \cdots + r_n$.*

*Initialisation, $n = 6$.* Le plus petit des six rayons est $r_6$. D'après le lemme, l'un des $AP_i$ vaut au moins $r_6$. Les autres sont positifs, donc la somme vaut au moins $r_6$.

*Hérédité.* Soit $n \geqslant 7$, et supposons $\mathcal{P}(n - 1)$ vraie. On applique le lemme aux six disques $D_1, \ldots, D_6$, dont le plus petit rayon est $r_6$ : il existe $i \leqslant 6$ tel que $AP_i \geqslant r_6$.

On enlève le disque $D_i$. Il reste $n - 1 \geqslant 6$ disques, toujours deux à deux disjoints. Rangeons-les par rayons décroissants : en tête viennent les cinq disques $D_k$ avec $k \leqslant 6$ et $k \neq i$, puis $D_7, D_8, \ldots, D_n$, qui occupent les places $6, 7, \ldots, n - 1$. Dans cette nouvelle numérotation, la somme des rayons à partir de la sixième place vaut donc $r_7 + \cdots + r_n$. La propriété $\mathcal{P}(n-1)$ donne
$$\sum_{k \neq i} AP_k \geqslant r_7 + r_8 + \cdots + r_n.$$
En ajoutant $AP_i \geqslant r_6$, on obtient $AP_1 + \cdots + AP_n \geqslant r_6 + r_7 + \cdots + r_n$ : la propriété $\mathcal{P}(n)$ est vraie.

**Conclusion.** Par récurrence, l'inégalité $AP_1 + AP_2 + \cdots + AP_n \geqslant r_6 + r_7 + \cdots + r_n$ est vraie pour tout $n \geqslant 6$.

## Going further

- Le lemme est presque optimal. Prends six disques de rayon 1, dont les centres forment un hexagone régulier de centre $A$, à une distance de $A$ un peu plus grande que 2. Les disques sont disjoints, et si $P_i$ est le point de $D_i$ le plus proche de $A$, chaque distance $AP_i$ est à peine plus grande que 1.
- Le lemme est faux avec cinq disques. Prends cinq disques de rayon 1, dont les centres forment un pentagone régulier de centre $A$, à la distance $\text{1,71}$ de $A$. Deux centres voisins sont à une distance $2 \times \text{1,71} \times \sin 36^\circ$, un peu plus que 2, donc les disques sont disjoints. Mais le point de chaque disque le plus proche de $A$ est à la distance $\text{0,71}$, moins que le rayon.
- On pourrait espérer un lemme plus simple : « il existe toujours un disque avec $AP_i \geqslant r_i$ ». C'est faux. Place, sur une demi-droite issue de $A$, les centres à des distances $5, 25, 125, \ldots$ de $A$, avec des rayons $3, 15, 75, \ldots$ : le disque de centre à la distance $5^k$ a pour rayon $3 \times 5^{k-1}$. Deux disques voisins sont disjoints, car $4 \times 5^k = 20 \times 5^{k-1}$ dépasse $3 \times 5^{k-1} + 3 \times 5^k = 18 \times 5^{k-1}$. Si l'on prend pour $P_i$ le point du disque le plus proche de $A$, on trouve $AP_i = 5^k - 3 \times 5^{k-1} = 2 \times 5^{k-1}$, plus petit que le rayon. Avant de chercher à démontrer un lemme, il vaut toujours la peine de chercher un contre-exemple simple.
