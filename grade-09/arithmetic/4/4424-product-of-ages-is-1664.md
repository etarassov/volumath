---
id: "4424"
title: "Le produit des âges vaut 1664"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [decomposition, nombres-premiers, puissances, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Math Kangaroo"
  reference: "Handout-678-781.pdf, problème 16 (réponse dans Handout-679-781.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-678-781.pdf"
---

## Statement

Le produit des âges de mes enfants, comptés en années entières, vaut $1664$. Mon aîné a
exactement le double de l'âge de mon plus jeune enfant.

Combien ai-je d'enfants, et quels sont leurs âges ?

## Hints

1. Décompose $1664$ en produit de facteurs premiers. Un des facteurs premiers va tout décider.
2. Le facteur $13$ n'apparaît qu'une seule fois. Un seul enfant a donc un âge multiple de $13$ ;
   tous les autres ont un âge qui est une puissance de $2$.
3. Cet enfant-là peut-il être l'aîné ? Peut-il être le plus jeune ? Regarde ce que deviendrait
   alors l'autre.

## Solution

**La décomposition.**

$$1664 = 2 \times 832 = 2^2 \times 416 = \cdots = 2^7 \times 13.$$

Le nombre premier $13$ apparaît **une seule fois** dans cette décomposition.

**Un seul enfant « multiple de 13 ».** Comme $13$ divise le produit des âges et que $13$ est
premier, il divise l'âge d'au moins un enfant. Et comme $13$ n'apparaît qu'une fois dans la
décomposition, il divise l'âge d'exactement un enfant. Tous les autres âges sont des diviseurs
de $2^7$, donc des **puissances de $2$** : $1$, $2$, $4$, $8$, $16$, …

Appelons $T$ cet enfant unique dont l'âge est un multiple de $13$.

**Ni l'aîné, ni le plus jeune ne peut être $T$.** Notons $m$ l'âge du plus jeune ; l'aîné a donc
l'âge $2m$.

- Si $T$ était le plus jeune, son âge $m$ serait un multiple de $13$, donc $2m$ aussi : l'aîné
  serait un second enfant d'âge multiple de $13$. Impossible.
- Si $T$ était l'aîné, son âge $2m$ serait un multiple de $13$. Comme $13$ est premier et ne
  divise pas $2$, il diviserait $m$ : le plus jeune serait un second enfant d'âge multiple de
  $13$. Impossible.

Donc $T$ est un enfant du milieu, et il y a **au moins trois enfants**. En particulier, l'âge de
$T$ est compris entre $m$ et $2m$.

**On trouve $m$.** Le plus jeune et l'aîné ont des âges qui sont des puissances de $2$, et
l'aîné a le double de l'âge du plus jeune : écrivons $m = 2^a$ et $2m = 2^{a+1}$.

L'âge de $T$ s'écrit $13 \times 2^s$ et vérifie

$$2^a \leqslant 13 \times 2^s \leqslant 2^{a+1}.$$

Comme $2^3 = 8 < 13 < 16 = 2^4$, on a $2^{s+3} < 13 \times 2^s < 2^{s+4}$. Le seul intervalle
$[2^a ; 2^{a+1}]$ qui contienne ce nombre est celui avec $a = s + 3$. Donc

$$m = 2^{s+3} \qquad \text{et} \qquad 2m = 2^{s+4}.$$

**On utilise le produit.** Le produit de tous les âges contient au moins les trois facteurs
$m$, $13 \times 2^s$ et $2m$, soit

$$2^{s+3} \times 13 \times 2^{s} \times 2^{s+4} = 13 \times 2^{3s+7}.$$

Comme le produit total vaut $13 \times 2^7$, on doit avoir $3s + 7 \leqslant 7$, donc $s = 0$,
et il ne reste aucun facteur $2$ pour d'éventuels autres enfants : les autres enfants auraient
$1$ an. Mais alors le plus jeune aurait $1$ an, et l'aîné $2$ ans, ce qui est incompatible avec
la présence d'un enfant de $13$ ans au moins. Il n'y a donc pas d'autres enfants.

**Conclusion.** Avec $s = 0$ : le plus jeune a $2^3 = 8$ ans, l'enfant du milieu a $13$ ans,
l'aîné a $2^4 = 16$ ans.

**Vérification.** $8 \times 13 \times 16 = 1664$, et $16 = 2 \times 8$.

**J'ai trois enfants, de $8$, $13$ et $16$ ans.**
