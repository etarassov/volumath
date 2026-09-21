---
id: "8527"
title: "Trente-quatre caméléons"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [invariant, congruences, modulo-trois, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Invariants » (Xavier) du Groupe A, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Trente-quatre caméléons vivent sur une île : au départ, $7$ sont jaunes, $10$ sont rouges et
$17$ sont verts.

Quand deux caméléons de couleurs différentes se rencontrent, ils prennent tous les deux la
troisième couleur. Par exemple, si un rouge rencontre un vert, ils deviennent tous les deux
jaunes.

Un jour, un naturaliste débarque sur l'île et constate que tous les caméléons ont désormais
la même couleur. Laquelle ?

## Hints

1. Commence par chercher une suite de rencontres qui amène tout le monde à une même couleur. Essaie de rendre deux des trois effectifs égaux.
2. Pour montrer que les deux autres couleurs sont impossibles, cherche une quantité qui ne change pas, ou qui change toujours de la même façon.
3. Note $J$, $R$, $V$ les effectifs. Que devient la différence $R - J$ après une rencontre ? Traite les trois types de rencontre.
4. Tu devrais trouver que $R - J$ varie toujours de $0$, de $+3$ ou de $-3$. Que reste-t-il alors inchangé ?

## Solution

### La couleur est le vert : une suite de rencontres

Au départ : $7$ jaunes, $10$ rouges, $17$ verts.

**Première rencontre.** Un rouge et un vert se rencontrent : tous deux deviennent jaunes. Il
reste alors

$$9 \text{ jaunes}, \quad 9 \text{ rouges}, \quad 16 \text{ verts} .$$

**Neuf rencontres ensuite.** Faisons maintenant se rencontrer un jaune et un rouge, neuf fois
de suite : à chaque fois, deux caméléons deviennent verts. Au bout de neuf rencontres, il ne
reste plus ni jaune ni rouge, et les $34$ caméléons sont verts.

Le vert est donc possible.

### Les deux autres couleurs sont impossibles

**Un invariant.** Notons $J$, $R$, $V$ les effectifs des trois couleurs, et regardons la
différence $R - J$. Il y a trois types de rencontre.

- Un rouge et un vert se rencontrent, et deviennent jaunes : $R$ diminue de $1$, $J$ augmente
  de $2$. Donc $R - J$ diminue de $3$.
- Un jaune et un vert se rencontrent, et deviennent rouges : $J$ diminue de $1$, $R$ augmente
  de $2$. Donc $R - J$ augmente de $3$.
- Un jaune et un rouge se rencontrent, et deviennent verts : $J$ et $R$ diminuent chacun de
  $1$. Donc $R - J$ ne change pas.

Dans tous les cas, $R - J$ varie de $-3$, de $0$ ou de $+3$. **Le reste de $R - J$ dans la
division par $3$ ne change donc jamais.**

Au départ, $R - J = 10 - 7 = 3$, dont le reste dans la division par $3$ est $0$.

**Si tous étaient rouges,** on aurait $R = 34$ et $J = 0$, donc $R - J = 34$. Or
$34 = 3 \times 11 + 1$ : le reste vaut $1$, pas $0$. Impossible.

**Si tous étaient jaunes,** on aurait $R - J = -34$, dont le reste dans la division par $3$
vaut $2$. Impossible.

### Conclusion

Les caméléons sont tous **verts**.

## Going further

L'invariant fonctionne aussi bien avec $V - J$ ou $V - R$. Au départ, $V - J = 10$ et
$V - R = 7$, qui ont tous les deux pour reste $1$ dans la division par $3$ : c'est cohérent,
puisque $34$ a lui aussi pour reste $1$.
