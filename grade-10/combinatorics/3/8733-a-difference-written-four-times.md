---
id: "8733"
title: "Une différence écrite quatre fois"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [principe-des-tiroirs, denombrement, differences, paires]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Principe des tiroirs » (Antoine), exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Sur un tableau sont écrits $20$ entiers, tous différents, tous compris entre $1$ et $64$.

Sur un second tableau, on écrit la différence de chaque paire de ces nombres, en retranchant toujours le plus petit du plus grand. Il y a donc une différence par paire.

Montrer qu'un même nombre est écrit au moins **quatre** fois sur le second tableau.

## Hints

1. Il y a deux choses à compter : combien de différences sont écrites, et combien de valeurs différentes elles peuvent prendre.
2. Combien de paires peut-on former avec $20$ nombres ? Attention à ne pas compter deux fois la même paire.
3. Entre quelles bornes une différence peut-elle se trouver ? La plus petite possible, la plus grande possible ?
4. Compare le nombre de différences écrites à trois fois le nombre de valeurs possibles. L'écart est tout petit : fais le calcul soigneusement.

## Solution

**Deux comptages, puis le principe des tiroirs.**

### Combien de différences sont écrites ?

Une différence correspond à une paire de nombres du premier tableau. Pour former une paire, on choisit deux nombres parmi $20$, sans tenir compte de l'ordre. Il y a donc

$$\binom{20}{2} = \frac{20 \times 19}{2} = 190$$

paires, donc **$190$ différences écrites** sur le second tableau.

(Ces différences ne sont pas forcément distinctes : c'est justement tout le sujet.)

### Combien de valeurs ces différences peuvent-elles prendre ?

Les nombres du premier tableau sont deux à deux distincts et compris entre $1$ et $64$.

- La plus petite différence possible est $1$, puisque deux nombres distincts diffèrent d'au moins $1$.
- La plus grande possible est $64 - 1 = 63$.

Chaque différence écrite est donc un entier de l'ensemble

$$\{1, 2, 3, \ldots, 63\} ,$$

qui contient $63$ valeurs.

### Le principe des tiroirs

Fabriquons $63$ tiroirs, un par valeur possible, et rangeons chacune des $190$ différences dans le tiroir correspondant à sa valeur.

Supposons par l'absurde que **chaque valeur apparaisse au plus trois fois**. Alors chaque tiroir contiendrait au plus $3$ différences, donc le nombre total de différences serait au plus

$$3 \times 63 = 189 .$$

Or il y en a $190$. Contradiction, à une unité près.

### Conclusion

Un tiroir contient donc au moins quatre différences : une même valeur est écrite au moins quatre fois sur le second tableau.

$$\boxed{\text{Un même nombre apparaît au moins quatre fois parmi les différences.}}$$

*Ce qu'il faut retenir.* Le principe des tiroirs ne demande jamais d'idée compliquée, mais il demande un comptage **exact**. Ici $190$ et $189$ ne diffèrent que de $1$ : une erreur de comptage, par exemple compter $20 \times 19 = 380$ paires en oubliant de diviser par $2$, ou compter $64$ valeurs possibles au lieu de $63$, et l'argument s'effondre ou devient faux.

## Going further

1. Peut-on améliorer le résultat ? Avec $21$ nombres au lieu de $20$, combien de fois une même différence apparaît-elle au minimum ? Et avec $30$ nombres ?

2. La conclusion « quatre fois » est-elle la meilleure possible pour $20$ nombres entre $1$ et $64$ ? Essaie de construire $20$ nombres pour lesquels aucune différence n'apparaît cinq fois. *Indication : pense aux nombres en progression arithmétique, puis à leurs défauts.*

3. Montre que parmi $20$ nombres distincts entre $1$ et $64$, il y en a toujours deux dont la différence est inférieure ou égale à $3$. *Indication : range les nombres dans l'ordre croissant et raisonne sur les écarts successifs.*
