---
id: "13034"
title: "Quand a² − 82a est un nombre premier"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [nombres premiers, factorisation, entiers relatifs, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaires collégiens et lycéens"
  reference: "2017-09_coupe_automne_2015_elim_college.pdf, exercice 8, et 2017-09_coupe_automne_2015_elim_lycee.pdf, exercice 7 (le même problème) ; corrigés 2017-09_coupe_automne_2015_elim_college_corrige.pdf et 2017-09_coupe_automne_2015_elim_lycee_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_college.pdf"
---

## Statement

Déterminer tous les entiers relatifs $a$ tels que le nombre $a^2 - 82a$ soit un nombre premier, puis calculer la somme de ces entiers $a$.

## Hints

1. Factorise $a^2 - 82a$.
2. Un nombre premier est positif, et ses seuls diviseurs positifs sont $1$ et lui-même. Si un produit de deux entiers positifs est premier, que vaut le plus petit des deux ?
3. Les deux facteurs ont le même signe. Traite le cas où ils sont tous les deux positifs, puis celui où ils sont tous les deux négatifs.

## Solution

**On factorise.** On a $a^2 - 82a = a\,(a - 82)$. Supposons que ce nombre soit un nombre premier $p$. Alors $p \geqslant 2$, donc le produit $a\,(a - 82)$ est strictement positif : les deux facteurs $a$ et $a - 82$ sont non nuls et de même signe.

**Cas 1 : les deux facteurs sont positifs.** Alors $a - 82 \geqslant 1$, et $a - 82$ est le plus petit des deux facteurs. Le nombre $p$ est le produit de deux entiers positifs, donc chacun d'eux est un diviseur de $p$, c'est-à-dire $1$ ou $p$. Les deux facteurs ne peuvent pas valoir $p$ tous les deux (leur produit serait $p^2$), donc le plus petit vaut $1$ :
$$a - 82 = 1, \qquad a = 83, \qquad a\,(a - 82) = 83 \times 1 = 83 .$$
Le nombre $83$ est bien premier : il n'est divisible ni par $2$, ni par $3$, ni par $5$, ni par $7$, et $11^2 = 121$ dépasse $83$.

**Cas 2 : les deux facteurs sont négatifs.** Écrivons $a = -c$ avec $c \geqslant 1$. Alors $a - 82 = -(c + 82)$ et
$$a\,(a - 82) = c\,(c + 82) .$$
Cette fois, $c$ est le plus petit des deux facteurs positifs $c$ et $c + 82$. Comme au cas 1, il vaut $1$, donc $c = 1$, $a = -1$, et $a\,(a - 82) = 1 \times 83 = 83$, qui est premier.

**Conclusion.** Les entiers cherchés sont $a = -1$ et $a = 83$ : dans les deux cas $a^2 - 82a = 83$. Leur somme vaut
$$-1 + 83 = 82 .$$

**Pourquoi la somme vaut-elle $82$ ?** Si l'on remplace $a$ par $82 - a$, le nombre ne change pas : $(82 - a)(82 - a - 82) = (82 - a)(-a) = a\,(a - 82)$. Les solutions vont donc par paires $a$ et $82 - a$, dont la somme vaut $82$.

## Going further

1. Déterminer tous les entiers relatifs $a$ tels que $a^2 - 2016a$ soit un nombre premier. (On admettra que $2017$ est premier.)
2. Existe-t-il un entier relatif $a$ tel que $a^2 - 81a$ soit un nombre premier ?
