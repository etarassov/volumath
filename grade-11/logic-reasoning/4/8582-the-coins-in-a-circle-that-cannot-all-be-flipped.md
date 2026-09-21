---
id: "8582"
title: "Les pièces en cercle qu'on ne peut pas toutes retourner"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [invariant, signes-alternes, cercle, raisonnement-par-labsurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Invariants » (Xavier) du Groupe A, exercice 11"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

On dispose $2n$ pièces en cercle. Chaque pièce a une face blanche et une face noire. Au
départ, elles sont toutes posées côté blanc, sauf une qui est posée côté noir.

Une opération consiste à faire l'une des deux manipulations suivantes :

- choisir deux pièces **voisines de même couleur** et les retourner toutes les deux ;
- choisir deux pièces **séparées par exactement une pièce** et **de couleurs différentes**,
  et les retourner toutes les deux.

Peut-on, après un certain nombre d'opérations, arriver à la situation où chaque pièce montre
la face opposée à celle du départ ?

## Hints

1. La réponse est non : il faut donc trouver une quantité qui ne change jamais.
2. Numérote les pièces de $1$ à $2n$ en tournant, et attribue à chaque pièce le nombre $+1$ si elle est blanche et $-1$ si elle est noire.
3. Additionne ces nombres, mais en alternant les signes : $+$ pour les pièces de numéro impair, $-$ pour celles de numéro pair. Comme $2n$ est pair, cette alternance est cohérente tout autour du cercle.
4. Vérifie que chacune des deux opérations laisse cette somme inchangée. Puis compare sa valeur au départ et à l'arrivée.

## Solution

**La réponse est non.**

### La quantité invariante

Numérotons les pièces de $1$ à $2n$ en tournant autour du cercle, en donnant le numéro $2n$ à
la pièce noire du départ. Pour chaque pièce $i$, posons

$$c_i = +1 \text{ si elle est blanche}, \qquad c_i = -1 \text{ si elle est noire} ,$$

et considérons la somme à signes alternés

$$S = c_1 - c_2 + c_3 - c_4 + \cdots + c_{2n-1} - c_{2n} .$$

Autrement dit, la pièce numéro $i$ est comptée avec le signe $+$ si $i$ est impair, et avec
le signe $-$ si $i$ est pair.

Comme le nombre de pièces, $2n$, est pair, cette alternance est bien cohérente sur tout le
cercle : deux pièces voisines portent toujours des signes opposés, y compris la paire formée
par la pièce $2n$ et la pièce $1$.

### Les deux opérations ne changent pas $S$

**Première opération : deux pièces voisines de même couleur.** Elles portent des signes
opposés, disons $+$ et $-$, et la même valeur $c$. Leur contribution à $S$ vaut

$$(+1)\,c + (-1)\,c = 0 .$$

Après retournement, les deux valent $-c$, et leur contribution vaut

$$(+1)(-c) + (-1)(-c) = 0 .$$

La contribution reste nulle, et rien d'autre ne bouge : $S$ est inchangée.

**Deuxième opération : deux pièces séparées par une pièce, de couleurs différentes.** Leurs
numéros diffèrent de $2$, donc elles portent **le même** signe, disons $\varepsilon$
(qui vaut $+1$ ou $-1$). Leurs couleurs étant différentes, leurs valeurs sont $c$ et $-c$.
Leur contribution vaut

$$\varepsilon\, c + \varepsilon\,(-c) = 0 .$$

Après retournement, les valeurs sont $-c$ et $c$, et la contribution vaut encore $0$.
Là aussi, $S$ est inchangée.

$S$ est donc bien un **invariant**.

### La valeur au départ

Au départ, toutes les pièces de numéro $1$ à $2n-1$ sont blanches, donc $c_i = +1$, et la
pièce $2n$ est noire, donc $c_{2n} = -1$.

La somme des $2n-1$ premiers termes est

$$(+1) - (+1) + (+1) - \cdots + (+1) ,$$

une alternance de $2n-1$ termes commençant par $+1$ : les termes se compensent deux par deux
et il en reste un seul, donc cette somme vaut $1$.

Le dernier terme vaut $-c_{2n} = -(-1) = +1$.

Au total,

$$S = 1 + 1 = 2 .$$

### La valeur à l'arrivée

Dans la configuration visée, chaque pièce montre la face opposée : toutes les valeurs $c_i$
ont changé de signe. La somme $S$, qui est une combinaison de ces valeurs, change donc elle
aussi de signe :

$$S = -2 .$$

### Conclusion

On devrait avoir à la fois $S = 2$ et $S = -2$, ce qui est impossible.

La configuration où toutes les pièces sont retournées n'est donc pas atteignable.
