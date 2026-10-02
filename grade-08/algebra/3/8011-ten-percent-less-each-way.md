---
id: "8011"
title: "10 % de moins dans les deux sens"
grade: 8
theme: algebra
difficulty: 3
duration_min: 15
tags: [pourcentages, coefficient-multiplicateur, calcul-litteral]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires collégiens, exercice 11 (repris en éliminatoires lycéens, exercice 3)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Bob possède $10\ \%$ d'argent de moins qu'Alice.

Alice achète un objet. Après cet achat, c'est elle qui possède $10\ \%$ d'argent de moins que
Bob.

Quel pourcentage de son argent Alice a-t-elle dépensé ?

## Hints

1. Bob n'achète rien : sa somme ne change pas de tout le problème.
2. Donne un nom à la somme d'Alice au départ, ou bien choisis-lui une valeur commode, par
   exemple $100$ euros.
3. Enlever $10\ \%$ revient à multiplier par $0,9$. Combien de fois faut-il le faire ici ?

## Solution

**On donne un nom à la somme de départ.** Notons $a$ la somme d'argent d'Alice au début.

**L'argent de Bob.** Bob possède $10\ \%$ de moins qu'Alice, c'est-à-dire $a$ diminué de
$10\ \%$ de $a$ :

$$\text{Bob} = a - \text{0,1}\,a = \text{0,9}\,a.$$

Bob n'achète rien : il gardera cette somme tout au long du problème.

**L'argent d'Alice après l'achat.** Après son achat, Alice possède $10\ \%$ de moins que Bob,
donc

$$\text{Alice après l'achat} = \text{0,9} \times \text{Bob} = \text{0,9} \times \text{0,9}\,a = \text{0,81}\,a.$$

**Ce qu'elle a dépensé.** Elle avait $a$, il lui reste $\text{0,81}\,a$, donc elle a dépensé

$$a - \text{0,81}\,a = \text{0,19}\,a,$$

c'est-à-dire $19\ \%$ de la somme qu'elle avait au départ.

**Alice a dépensé $19\ \%$ de son argent.**

## Going further

On peut refaire le calcul avec des nombres pour se rassurer : si Alice a $100$ euros, Bob en a
$90$. Après son achat, Alice a $10\ \%$ de moins que Bob, c'est-à-dire $81$ euros. Elle a donc
dépensé $19$ euros sur $100$.

Attention au piège classique : baisser de $10\ \%$ puis baisser de nouveau de $10\ \%$ ne fait
pas une baisse de $20\ \%$, mais de $19\ \%$, parce que la seconde baisse porte sur une somme
déjà réduite.
