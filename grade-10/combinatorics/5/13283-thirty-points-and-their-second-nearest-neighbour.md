---
id: "13283"
title: "Trente points de trois couleurs et leur deuxième voisin"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [construction, distances, plus-proche-voisin, geometrie-combinatoire]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2020"
  reference: "2020-10_Sujet.pdf, exercices lycéens, exercice 17 ; corrigé 2020-10_sujetcommentairecorrige.pdf. La solution donne des écarts entiers explicites au lieu de l'argument de perturbation du corrigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2020-10_Sujet.pdf"
---

## Statement

Est-il possible de placer $10$ points bleus, $10$ points rouges et $10$ points verts dans le plan, de sorte que les distances entre deux de ces points soient toutes différentes, et que :

- pour chaque point bleu, le deuxième point le plus proche soit rouge ;
- pour chaque point rouge, le deuxième point le plus proche soit vert ;
- pour chaque point vert, le deuxième point le plus proche soit bleu ?

Le deuxième point le plus proche d'un point $P$ est, parmi les $29$ autres points, celui qui est à la deuxième plus petite distance de $P$.

## Hints

1. Rien n'interdit de placer tous les points sur une même droite.
2. Sur une droite, si les écarts entre deux points voisins diminuent lentement de gauche à droite, quel est le point le plus proche d'un point donné ? Et le deuxième ? Déduis-en dans quel ordre ranger les couleurs.
3. Les bouts de la rangée demandent de l'attention. Le bout gauche s'arrange tout seul. Au bout droit, essaie de changer le dernier écart et les deux dernières couleurs.
4. Pour que toutes les distances soient différentes, prends des écarts entiers proches de $1000$, et regarde les restes dans la division par $1000$.

## Solution

La réponse est **oui**. Voici une construction avec les $30$ points sur une droite.

**La construction.** On place les points $P_1, P_2, \ldots, P_{30}$ de gauche à droite sur une droite, et on note $d_i$ l'écart entre $P_i$ et $P_{i+1}$. On choisit

$$d_i = 1000 - i \quad \text{pour } 1 \leqslant i \leqslant 28, \qquad d_{29} = 1500.$$

Les écarts vont donc en diminuant, de $d_1 = 999$ à $d_{28} = 972$, sauf le dernier, plus grand.

Pour les couleurs, de $P_1$ à $P_{28}$ on répète le motif bleu, vert, rouge : $P_1$ bleu, $P_2$ vert, $P_3$ rouge, $P_4$ bleu, et ainsi de suite jusqu'à $P_{28}$, qui est bleu car $28 = 3 \times 9 + 1$. Puis $P_{29}$ est rouge et $P_{30}$ est vert. Les points $P_1$ à $P_{27}$ comptent $9$ points de chaque couleur, donc il y a bien $10$ points de chaque couleur.

**Une remarque utile.** Tous les écarts sont entre $972$ et $1500$. La distance entre deux points qui ne sont pas voisins est la somme d'au moins deux écarts, donc au moins $972 + 972 = 1944$, ce qui est plus grand que n'importe quel écart. Ainsi, pour un point qui a deux voisins, les deux points les plus proches sont ses deux voisins.

**Le deuxième point le plus proche de chaque point.**

- $P_1$ (bleu) n'a des points que d'un côté, de plus en plus loin. Le plus proche est $P_2$, le deuxième est $P_3$, qui est rouge.
- Pour $2 \leqslant i \leqslant 27$, les deux voisins de $P_i$ sont $P_{i+1}$ à distance $d_i$ et $P_{i-1}$ à distance $d_{i-1}$. Comme $d_i < d_{i-1}$, le plus proche est $P_{i+1}$ et le deuxième est $P_{i-1}$, le voisin de gauche. Dans le motif bleu, vert, rouge, le point juste à gauche d'un point bleu est rouge, celui juste à gauche d'un point rouge est vert, celui juste à gauche d'un point vert est bleu. C'est exactement ce qu'on veut.
- $P_{28}$ (bleu) a pour voisins $P_{29}$ à distance $d_{28} = 972$ et $P_{27}$ à distance $d_{27} = 973$. Le deuxième est $P_{27}$, qui est rouge.
- $P_{29}$ (rouge) a pour voisins $P_{28}$ à distance $972$ et $P_{30}$ à distance $1500$. Le deuxième est $P_{30}$, qui est vert.
- $P_{30}$ (vert) n'a des points que d'un côté : $P_{29}$ à distance $1500$, puis $P_{28}$ à distance $972 + 1500 = 2472$, puis les autres, plus loin. Le deuxième est $P_{28}$, qui est bleu.

**Toutes les distances sont différentes.** Pour $i < j$, la distance $P_i P_j$ est la somme des $L = j - i$ écarts $d_i, d_{i+1}, \ldots, d_{j-1}$.

- *Si cette somme n'utilise pas $d_{29}$* (c'est-à-dire $j \leqslant 29$), elle vaut $1000\,L - S$, où $S = i + (i + 1) + \cdots + (j - 1)$. Ce nombre $S$ est entre $1$ et $1 + 2 + \cdots + 28 = 406$. Dans la division par $1000$, la distance a donc pour quotient $L - 1$ et pour reste $1000 - S$, compris entre $594$ et $999$. Deux telles distances avec des valeurs de $L$ différentes ont des quotients différents. Avec la même valeur de $L$ et des débuts $i < i'$, la somme $S$ augmente de $L \times (i' - i)$, donc les distances sont différentes.
- *Si cette somme utilise $d_{29}$* (c'est-à-dire $j = 30$), elle vaut $1500 + (d_i + \cdots + d_{28}) = 1000\,L + 500 - S$, où $S = i + \cdots + 28$ est entre $0$ et $406$. Son reste dans la division par $1000$ est $500 - S$, compris entre $94$ et $500$. Elle ne peut donc pas être égale à une distance du premier type. Et deux distances de ce type sont différentes, car $P_i P_{30}$ diminue quand $i$ augmente.

**Conclusion.** Oui, c'est possible : la rangée de $30$ points ci-dessus convient.

## Going further

Avec un seul point de chaque couleur, c'est impossible. Notons $\ell_{BR}$, $\ell_{RV}$ et $\ell_{VB}$ les distances bleu-rouge, rouge-vert et vert-bleu. Pour le point bleu, le deuxième point le plus proche est le rouge, donc le vert est plus proche : $\ell_{VB} < \ell_{BR}$. De même, le point rouge donne $\ell_{BR} < \ell_{RV}$ et le point vert donne $\ell_{RV} < \ell_{VB}$. On obtient $\ell_{VB} < \ell_{BR} < \ell_{RV} < \ell_{VB}$, ce qui est absurde. Dès qu'il y a au moins deux points de chaque couleur, en revanche, c'est possible.
