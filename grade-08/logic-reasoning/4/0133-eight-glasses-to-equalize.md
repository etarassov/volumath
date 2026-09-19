---
id: "0133"
title: "Huit verres à égaliser"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [strategie, moyenne, demonstration, puissances-de-deux]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 11, задача 8"
  url: "https://mmmf.msu.ru/for_schools/Ast2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

Sur une table, huit verres contiennent chacun une certaine quantité d'eau. Ces quantités ne sont pas forcément les mêmes, et on ne les connaît pas.

On a le droit de répéter autant de fois qu'on veut l'opération suivante : choisir deux verres et **égaliser** leur contenu, c'est-à-dire verser de l'eau de l'un dans l'autre jusqu'à ce que les deux verres contiennent exactement la même quantité.

Montrer qu'avec cette seule opération, on peut toujours arriver à ce que les huit verres contiennent tous la même quantité d'eau.

Les verres sont assez grands pour qu'il n'y ait jamais de débordement.

## Hints

1. Si deux verres contiennent $x$ et $y$ et qu'on les égalise, combien chacun contient-il ensuite ?
2. Le nombre $8$ n'est pas là par hasard : $8 = 2 \times 2 \times 2$. Essaie d'abord le problème avec deux verres, puis avec quatre verres.
3. Avec quatre verres : égalise d'abord le premier avec le deuxième, puis le troisième avec le quatrième. Tu obtiens des contenus $a$, $a$, $b$, $b$. Comment finir en deux opérations ?
4. Avec huit verres : après un premier tour tu as quatre paires de verres égaux ; après un deuxième tour, deux groupes de quatre verres égaux. Que reste-t-il à faire ?

## Solution

**La remarque de départ.** Quand on égalise deux verres contenant $x$ et $y$, l'eau des deux verres est partagée en deux parts égales : chacun contient ensuite

$$\frac{x+y}{2}.$$

Conséquence importante : **deux paires de verres qui contiennent la même chose au départ contiennent encore la même chose après avoir été égalisées.**

**L'idée : doubler à chaque tour la taille des groupes de verres égaux.** Comme $8 = 2 \times 2 \times 2$, trois tours suffisent.

**Tour 1 : former quatre paires.**

On égalise le verre 1 avec le verre 2, le verre 3 avec le verre 4, le verre 5 avec le verre 6, le verre 7 avec le verre 8 (quatre opérations).

Les contenus sont maintenant, en les notant dans l'ordre :

$$a \quad a \quad b \quad b \quad c \quad c \quad d \quad d$$

**Tour 2 : passer à des groupes de quatre.**

On égalise un verre contenant $a$ avec un verre contenant $b$ : tous les deux contiennent alors $\dfrac{a+b}{2}$.

On égalise ensuite l'**autre** verre contenant $a$ avec l'**autre** verre contenant $b$ : ces deux-là contiennent aussi $\dfrac{a+b}{2}$, puisqu'on est parti des mêmes quantités.

Les quatre premiers verres contiennent donc tous la même chose. On fait exactement pareil avec les quatre derniers, en croisant les $c$ et les $d$ (quatre opérations en tout pour ce tour). Notons

$$p = \frac{a+b}{2} \qquad \text{et} \qquad q = \frac{c+d}{2}.$$

Les contenus sont maintenant :

$$p \quad p \quad p \quad p \quad q \quad q \quad q \quad q$$

**Tour 3 : tout égaliser.**

On forme quatre paires en prenant à chaque fois un verre du premier groupe et un verre du second, et on égalise ces quatre paires (quatre opérations).

Chacune de ces paires contient $p$ et $q$ : après l'opération, les deux verres de la paire contiennent $\dfrac{p+q}{2}$. Et comme les quatre paires étaient identiques, elles donnent toutes le même résultat.

Les huit verres contiennent donc tous la même quantité

$$m = \frac{p+q}{2}.$$

**Conclusion.**

En $4 + 4 + 4 = 12$ opérations, on a rendu les huit verres identiques. C'est donc toujours possible.

On peut même dire combien il y a d'eau dans chaque verre à la fin : une égalisation ne fait que déplacer de l'eau, donc la quantité totale ne change jamais. À la fin, cette quantité totale est partagée en huit parts égales : chaque verre contient le huitième de l'eau du départ, c'est-à-dire la moyenne des huit quantités initiales.

## Going further

1. Reprends la méthode avec $16$ verres. Combien d'opérations faut-il ?
2. Et avec $6$ verres, l'égalisation totale est-elle toujours possible ? Essaie avec un verre contenant $1$ litre et cinq verres vides, et regarde quels nombres peuvent apparaître.
3. Avec quatre verres, sauras-tu tout égaliser en moins de quatre opérations ?
