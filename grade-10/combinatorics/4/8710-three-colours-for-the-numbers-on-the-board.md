---
id: "8710"
title: "Trois couleurs pour les nombres du tableau"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [inegalites, contre-exemple, construction, rangement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, Coupe Animath de printemps 2024, exercices collégiens, exercice 4 (repris comme exercice 11 chez les lycéens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Baptiste écrit au tableau $n$ nombres strictement positifs, pas forcément tous différents. Il remarque ensuite que **chacun de ces nombres est strictement plus petit que la somme des $n-1$ autres**.

Baptiste voudrait maintenant colorier chaque nombre en bleu, en vert ou en rouge de façon que, pour chaque couleur, la somme des nombres de cette couleur soit strictement plus petite que la somme de tous les autres nombres du tableau.

Baptiste est-il sûr d'y arriver :

1. si $n = 4$ ?
2. si $n = 5$ ?

*Attention : Baptiste ne choisit pas les nombres, ils sont déjà écrits. Il choisit seulement les couleurs, et il a le droit de ne pas utiliser les trois.*

## Hints

1. Pour la question 1, cherche un contre-exemple. Le plus simple possible : quatre nombres tous égaux.
2. Avec quatre nombres et trois couleurs, une couleur reçoit forcément au moins deux nombres. Pourquoi est-ce fatal quand les quatre nombres sont égaux ?
3. Pour la question 2, range d'abord les cinq nombres dans l'ordre croissant. Cela ne coûte rien et cela donne des inégalités gratuites.
4. Il faut répartir cinq nombres rangés $a_1 \leqslant a_2 \leqslant a_3 \leqslant a_4 \leqslant a_5$ en trois paquets. Le plus gros, $a_5$, doit rester seul : l'hypothèse de l'énoncé s'occupe de lui. Restent quatre nombres à couper en deux paquets de deux. Essaie de les **entrelacer** plutôt que de les couper en deux blocs.

## Solution

### Question 1 : avec $n = 4$, ce n'est pas toujours possible

Il suffit d'exhiber une situation où Baptiste échoue.

**Le contre-exemple.** Supposons que les quatre nombres écrits soient $1$, $1$, $1$, $1$.

Ces nombres vérifient bien l'hypothèse de l'énoncé : ils sont strictement positifs, et chacun vaut $1$, ce qui est strictement plus petit que $1+1+1 = 3$.

**Pourquoi Baptiste échoue.** Il a quatre nombres et trois couleurs. Une couleur reçoit donc au moins deux nombres : c'est le principe des tiroirs (si chaque couleur en recevait au plus un, il y aurait au plus trois nombres).

Appelons cette couleur $c$, et notons $k \geqslant 2$ le nombre de $1$ qu'elle porte. La somme des nombres de couleur $c$ vaut $k$, et la somme de tous les autres vaut $4-k$. Comme $k \geqslant 2$, on a $4-k \leqslant 2 \leqslant k$, donc

$$\text{somme de la couleur } c \;\geqslant\; \text{somme des autres.}$$

L'inégalité stricte demandée n'est donc pas réalisée. **Baptiste ne peut pas y arriver.**

### Question 2 : avec $n = 5$, c'est toujours possible

On va donner une répartition qui marche à tous les coups.

**Ranger d'abord.** Quitte à changer leur ordre d'écriture, notons les cinq nombres

$$a_1 \leqslant a_2 \leqslant a_3 \leqslant a_4 \leqslant a_5 .$$

Notons $S = a_1+a_2+a_3+a_4+a_5$ la somme totale. Dire qu'un paquet a une somme strictement plus petite que celle de tous les autres nombres, c'est dire que la somme de ce paquet est strictement plus petite que $S$ moins elle-même.

**La répartition.** Baptiste colorie ainsi :

$$\text{rouge : } \{a_5\}, \qquad \text{bleu : } \{a_1, a_3\}, \qquad \text{vert : } \{a_2, a_4\} .$$

Autrement dit, il isole le plus grand, puis il **entrelace** les quatre autres. Vérifions les trois conditions.

**Le paquet rouge.** Il faut $a_5 < a_1+a_2+a_3+a_4$. C'est exactement l'hypothèse de l'énoncé appliquée au nombre $a_5$.

**Le paquet bleu.** Il faut $a_1 + a_3 < a_2 + a_4 + a_5$.

Comme $a_1 \leqslant a_2$ et $a_3 \leqslant a_4$, on obtient en additionnant

$$a_1 + a_3 \leqslant a_2 + a_4 .$$

Et comme $a_5 > 0$, on peut l'ajouter à droite en rendant l'inégalité stricte :

$$a_1 + a_3 \leqslant a_2 + a_4 < a_2 + a_4 + a_5 .$$

**Le paquet vert.** Il faut $a_2 + a_4 < a_1 + a_3 + a_5$.

Cette fois on décale d'un cran dans l'autre sens : $a_2 \leqslant a_3$ et $a_4 \leqslant a_5$, donc

$$a_2 + a_4 \leqslant a_3 + a_5 .$$

Et comme $a_1 > 0$ :

$$a_2 + a_4 \leqslant a_3 + a_5 < a_1 + a_3 + a_5 .$$

Les trois conditions sont vérifiées. **Baptiste réussit toujours quand $n = 5$.**

### Conclusion

- $n = 4$ : non, pas toujours ($1,1,1,1$ est un contre-exemple).
- $n = 5$ : oui, toujours, avec la répartition $\{a_5\}$, $\{a_1,a_3\}$, $\{a_2,a_4\}$.

C'est l'entrelacement qui fait tout le travail à la question 2 : en séparant $a_1,a_3$ de $a_2,a_4$, on garantit que chaque paquet de deux est dominé par l'autre à un nombre positif près.

## Going further

1. **Le cas $n = 4$ de plus près.** Montre que $1,1,1,1$ n'est pas un hasard : si $a \leqslant b \leqslant c \leqslant d$ sont quatre nombres vérifiant l'hypothèse et ne sont **pas** tous égaux, alors la répartition $\{a,b\}$, $\{c\}$, $\{d\}$ convient. *Indication : les deux premières conditions sont l'hypothèse elle-même ; pour la troisième, compare $a+b$ et $c+d$ en utilisant $a \leqslant c$ et $b \leqslant d$, et regarde quand il y a égalité.* Autrement dit, le quadruplet de nombres tous égaux est le seul cas où Baptiste échoue.

2. Et pour $n \geqslant 6$ ? Trouve une répartition qui marche toujours. *Indication : l'entrelacement se généralise.*

3. Et avec **deux** couleurs seulement au lieu de trois, pour quelles valeurs de $n$ Baptiste réussit-il toujours ?
