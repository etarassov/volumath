---
id: "11208"
title: "Les nombres intéressants"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, permutations, chiffres, principe-multiplicatif]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 2 (combinatoire)"
  reference: "2017-10_ofm-2013-2014-envoi-2.pdf, Exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2013-2014-envoi-2-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-2.pdf"
---

## Statement

On considère les nombres de $9$ chiffres dans lesquels chacun des chiffres $1, 2, \ldots, 9$
apparaît exactement une fois.

Un tel nombre est dit **intéressant** si, en le lisant de gauche à droite :

- on rencontre les chiffres $1, 2, 3, 4, 5$ dans cet ordre (pas forcément côte à côte) ;
- mais on ne rencontre **pas** les chiffres $1, 2, 3, 4, 5, 6$ dans cet ordre.

Par exemple, $189\,236\,457$ est intéressant : on lit bien $1$, puis $2$, puis $3$, puis $4$,
puis $5$, mais le $6$ arrive avant le $5$.

Combien y a-t-il de nombres intéressants ?

## Hints

1. Une fois que $1, 2, 3, 4, 5$ sont dans l'ordre, que veut dire « $1, 2, \ldots, 6$ ne sont pas
   dans l'ordre » ? Où le $6$ a-t-il le droit d'être ?
2. Construis le nombre petit à petit : écris d'abord $1\,2\,3\,4\,5$, puis glisse le $6$ quelque
   part, puis le $7$, puis le $8$, puis le $9$.
3. Quand on a déjà écrit $k$ chiffres, combien y a-t-il de places pour glisser le chiffre
   suivant ?

## Solution

**Ce que dit la condition sur le $6$.**

Dans un nombre intéressant, les chiffres $1, 2, 3, 4, 5$ sont dans l'ordre. Les chiffres
$1, 2, \ldots, 6$ seraient alors dans l'ordre exactement si le $6$ était après le $5$. Un nombre
est donc intéressant lorsque $1, 2, 3, 4, 5$ sont dans l'ordre **et que le $6$ est avant le $5$**.

**Construire le nombre en glissant les chiffres un par un.**

On part de $1\,2\,3\,4\,5$, puis on glisse les chiffres $6$, $7$, $8$ et $9$ un par un. Chaque
nombre intéressant s'obtient d'une seule façon : il suffit d'effacer $9$, puis $8$, puis $7$, puis
$6$ pour retrouver les étapes.

- **Le $6$.** Autour de $1\,2\,3\,4\,5$, il y a $6$ places : avant le $1$, entre deux chiffres
  voisins, ou après le $5$. La dernière est interdite. Il reste $5$ places.
- **Le $7$.** Il y a maintenant $6$ chiffres, donc $7$ places, toutes permises.
- **Le $8$.** Il y a $7$ chiffres, donc $8$ places.
- **Le $9$.** Il y a $8$ chiffres, donc $9$ places.

Glisser les chiffres $7$, $8$ et $9$ ne change ni l'ordre de $1, 2, 3, 4, 5$, ni la place du $6$
par rapport au $5$.

**Le compte.**

Les choix se multiplient :
$$5 \times 7 \times 8 \times 9 = 2\,520 .$$

**Conclusion : il y a $2\,520$ nombres intéressants.**

## Going further

On peut aussi compter par différence. Parmi les $9!$ nombres formés des chiffres $1$ à $9$,
l'ordre de $1, 2, 3, 4, 5$ est l'un des $5! = 120$ ordres possibles de ces cinq chiffres, et
chaque ordre arrive aussi souvent que les autres. Il y a donc $\frac{9!}{5!} = 3\,024$ nombres où
$1, 2, 3, 4, 5$ sont dans l'ordre. De même, il y en a $\frac{9!}{6!} = 504$ où
$1, 2, \ldots, 6$ sont dans l'ordre. On retrouve
$$3\,024 - 504 = 2\,520 .$$
