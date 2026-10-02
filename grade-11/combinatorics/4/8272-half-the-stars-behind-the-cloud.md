---
id: "8272"
title: "La moitié des étoiles derrière le nuage"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [inegalite-triangulaire, double-comptage, distance, moyenne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, La Muraille"
  reference: "PolycopieV1-1.pdf, chapitre IX « La Muraille », exercice 29 (niveau 1, proposé par Elsa Lubek et Isaline Duperon). La Muraille ne publie pas de solutions."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Roussalka observe $50$ étoiles. Elle calcule la somme $S$ de toutes les distances entre deux
étoiles : il y a $\binom{50}{2} = 1225$ paires, et $S$ est la somme de ces $1225$ distances.

Soudain un nuage surgit et cache exactement $25$ de ces étoiles.

Montrer que la somme des distances mutuelles entre les $25$ étoiles encore visibles ne dépasse
pas $\dfrac{S}{2}$.

## Hints

1. Note $A$ l'ensemble des $25$ étoiles visibles et $B$ celui des $25$ étoiles cachées.
   Découpe $S$ en trois morceaux selon que les deux étoiles d'une paire sont toutes deux dans
   $A$, toutes deux dans $B$, ou une dans chaque.
2. Appelle $S_A$, $S_B$, $S_{AB}$ ces trois morceaux. Que faut-il démontrer exactement ?
3. Pour deux étoiles $a$ et $a'$ de $A$ et **n'importe quelle** étoile $b$ de $B$, l'inégalité
   triangulaire donne $aa' \le ab + ba'$. Que se passe-t-il si tu additionnes cette inégalité
   pour les $25$ choix de $b$ ?
4. Puis additionne sur toutes les paires $\{a, a'\}$ de $A$. Combien de fois chaque étoile de
   $A$ apparaît-elle ?

## Solution

**On découpe la somme totale.**

Notons $A$ l'ensemble des $25$ étoiles restées visibles et $B$ celui des $25$ étoiles cachées.
Chaque paire d'étoiles est d'un des trois types suivants : les deux dans $A$, les deux dans
$B$, ou une dans chaque. Posons

- $S_A$ : la somme des distances entre deux étoiles de $A$ ;
- $S_B$ : la somme des distances entre deux étoiles de $B$ ;
- $S_{AB}$ : la somme des distances entre une étoile de $A$ et une étoile de $B$.

Alors

$$S = S_A + S_B + S_{AB} .$$

Il s'agit de montrer que $S_A \le \dfrac{S}{2}$.

**L'inégalité triangulaire, additionnée sur $B$.**

Soient $a$ et $a'$ deux étoiles distinctes de $A$, et soit $b$ une étoile quelconque de $B$.
L'inégalité triangulaire donne

$$aa' \ \le \ ab + ba' .$$

Cette inégalité vaut pour chacune des $25$ étoiles $b$ de $B$. En les additionnant toutes :

$$25 \times aa' \ \le \ \sum_{b \in B} ab \ + \ \sum_{b \in B} a'b .$$

**On additionne maintenant sur toutes les paires de $A$.**

Pour une étoile $a$ de $A$, notons $f(a) = \sum_{b \in B} ab$ la somme de ses distances aux
étoiles cachées. L'inégalité ci-dessus s'écrit $25 \times aa' \le f(a) + f(a')$.

Additionnons-la sur les $\binom{25}{2} = 300$ paires $\{a, a'\}$ d'étoiles de $A$ :

- à gauche on obtient $25 \times S_A$ ;
- à droite, chaque étoile $a$ de $A$ apparaît dans exactement $24$ paires, donc on obtient
  $24 \times \sum_{a \in A} f(a) = 24 \times S_{AB}$.

D'où

$$25 \, S_A \ \le \ 24 \, S_{AB}, \qquad \text{c'est-à-dire} \qquad S_{AB} \ \ge \ \frac{25}{24}
\, S_A .$$

**On conclut.**

Comme $S_B \ge 0$ (c'est une somme de distances),

$$S = S_A + S_B + S_{AB} \ \ge \ S_A + \frac{25}{24}\, S_A = \frac{49}{24}\, S_A .$$

Or $\dfrac{49}{24} > 2$, donc

$$S \ \ge \ \frac{49}{24}\,S_A \ > \ 2\,S_A, \qquad \text{d'où} \qquad S_A \ < \ \frac{S}{2} .$$

La somme des distances entre les étoiles visibles est donc bien inférieure à $\dfrac{S}{2}$.

$$\blacksquare$$

**Remarque.** On a obtenu mieux que demandé : $S_A \le \dfrac{24}{49}\,S$, ce qui est un peu
plus fort que $\dfrac{S}{2}$.

## Going further

1. Où l'hypothèse « exactement la moitié des étoiles sont cachées » est-elle utilisée ?
   Reprendre le calcul si le nuage cachait seulement $10$ étoiles sur $50$ : que devient la
   majoration de $S_A$ ?
2. L'argument n'utilise que l'inégalité triangulaire. Resterait-il valable si les étoiles
   étaient dans l'espace plutôt que dans un plan ? Et sur une sphère, avec les distances
   mesurées le long de la sphère ?
3. Dans quel cas l'inégalité triangulaire $aa' \le ab + ba'$ est-elle une **égalité** ? En
   déduire pourquoi il est très difficile de rendre $25\,S_A \le 24\,S_{AB}$ presque serrée, et
   donc pourquoi la majoration finale est confortable.
