---
id: "13216"
title: "Quinze chiffres, et chacun de 1, 2, 3 au moins une fois"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 15
tags: [denombrement, inclusion-exclusion, puissances, complementaire]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices lycéens, exercice 17 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Combien y a-t-il de nombres de $15$ chiffres qui ne s'écrivent qu'avec des $1$, des $2$ et des $3$, et qui contiennent au moins un $1$, au moins un $2$ et au moins un $3$ ?

## Hints

1. Sans la condition « au moins un de chaque », combien y a-t-il de nombres de $15$ chiffres écrits avec $1$, $2$, $3$ ?
2. Compte ceux à retirer : combien n'ont aucun $1$ ? aucun $2$ ? aucun $3$ ?
3. Attention, un nombre comme $222\ldots2$ n'a ni $1$ ni $3$ : tu l'as retiré deux fois.

## Solution

**Tous les nombres.** Chacun des $15$ chiffres peut valoir $1$, $2$ ou $3$, soit $3$ choix par chiffre : il y a $3^{15}$ nombres.

**Ceux à qui il manque un chiffre.** Les nombres sans aucun $1$ s'écrivent avec $2$ et $3$ seulement : il y en a $2^{15}$. De même, $2^{15}$ nombres n'ont aucun $2$ et $2^{15}$ n'ont aucun $3$.

**Ceux qu'on a retirés deux fois.** Si on retire $3 \times 2^{15}$, un nombre écrit avec un seul chiffre, comme $222\ldots2$, est retiré deux fois : il n'a pas de $1$ et il n'a pas de $3$. Il y a trois tels nombres ($111\ldots1$, $222\ldots2$, $333\ldots3$), qu'il faut rajouter une fois chacun. Un nombre qui utilise exactement deux chiffres différents, lui, n'est retiré qu'une fois. Et aucun nombre ne manque des trois chiffres.

**Le calcul.**

$$3^{15} - 3 \times 2^{15} + 3 = 14\,348\,907 - 98\,304 + 3 = 14\,250\,606.$$

**Conclusion.** Il y a $14\,250\,606$ tels nombres.
