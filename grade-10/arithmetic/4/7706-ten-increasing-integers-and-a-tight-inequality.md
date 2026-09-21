---
id: "7706"
title: "Dix entiers croissants et une inégalité serrée"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [entiers, inegalite, somme des premiers entiers, cas d egalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, Coupe Animath du 3 juin 2014"
  reference: "stage_ete_2014.pdf, « Coupe Animath et évaluation initiale », énoncés lycée, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Trouver tous les entiers $x_1, x_2, \ldots, x_{10}$ qui vérifient à la fois

$$0 < x_1 < x_2 < \cdots < x_9 < x_{10}$$

et

$$x_9 \, x_{10} \leqslant 2 \left( x_1 + x_2 + \cdots + x_9 \right).$$

## Hints

1. Commence par essayer $x_1 = 1$, $x_2 = 2$, …, $x_{10} = 10$. Que valent les deux membres ?
2. Les neuf nombres $x_1, \ldots, x_9$ sont des entiers distincts, tous compris entre $1$ et $x_9$. Que peux-tu dire de leur somme, au maximum ?
3. Tu obtiens $x_1 + \cdots + x_9 \leqslant 1 + 2 + \cdots + x_9$. Remplace dans l'inégalité de l'énoncé : que devient-elle après simplification par $x_9$ ?
4. Tu trouves $x_{10} \leqslant x_9 + 1$. Mais on sait aussi $x_{10} > x_9$ : il n'y a plus qu'une possibilité.
5. Une fois $x_{10} = x_9 + 1$ connu, reviens en arrière : toutes les inégalités de la chaîne deviennent des égalités. Que cela impose-t-il aux neuf premiers nombres ?

## Solution

**La seule solution est $x_1 = 1, \; x_2 = 2, \; \ldots, \; x_{10} = 10$.**

**Vérification qu'elle convient.** Avec ces valeurs,

$$x_9 \, x_{10} = 9 \times 10 = 90 \qquad \text{et} \qquad 2(x_1 + \cdots + x_9) = 2 \times (1 + 2 + \cdots + 9) = 2 \times 45 = 90 .$$

L'inégalité $90 \leqslant 90$ est vraie, tout juste. C'est le signe qu'il n'y aura pas d'autre solution : la contrainte est tendue.

**Première étape : majorer la somme.** Les nombres $x_1 < x_2 < \cdots < x_9$ sont neuf entiers **distincts**, tous strictement positifs et tous inférieurs ou égaux à $x_9$. Ils font donc partie de la liste $1, 2, \ldots, x_9$, et comme tous les nombres de cette liste sont positifs,

$$x_1 + x_2 + \cdots + x_9 \; \leqslant \; 1 + 2 + \cdots + x_9 \; = \; \frac{x_9 (x_9 + 1)}{2} . \qquad (\star)$$

**Deuxième étape : en déduire $x_{10}$.** En reportant $(\star)$ dans l'hypothèse :

$$x_9 \, x_{10} \; \leqslant \; 2 \left( x_1 + \cdots + x_9 \right) \; \leqslant \; 2 \times \frac{x_9(x_9+1)}{2} \; = \; x_9 (x_9 + 1) .$$

Comme $x_9 > 0$, on peut diviser par $x_9$ :

$$x_{10} \leqslant x_9 + 1 .$$

Or l'énoncé dit $x_{10} > x_9$, et ce sont des entiers, donc $x_{10} \geqslant x_9 + 1$. Les deux ensemble donnent

$$x_{10} = x_9 + 1 .$$

**Troisième étape : exploiter l'égalité.** Avec $x_{10} = x_9 + 1$, le membre de gauche de la chaîne d'inégalités ci-dessus vaut $x_9(x_9+1)$, c'est-à-dire exactement le membre de droite. Toutes les inégalités de la chaîne sont donc en réalité des égalités. En particulier $(\star)$ est une égalité :

$$x_1 + x_2 + \cdots + x_9 = 1 + 2 + \cdots + x_9 .$$

Les neuf nombres $x_1, \ldots, x_9$ sont pris dans la liste $1, 2, \ldots, x_9$ et leur somme vaut la somme de **toute** la liste. Comme aucun des nombres oubliés ne pourrait être nul, c'est qu'on n'en oublie aucun : la liste $1, 2, \ldots, x_9$ compte donc exactement neuf nombres, ce qui donne $x_9 = 9$, et

$$\{x_1, x_2, \ldots, x_9\} = \{1, 2, \ldots, 9\} .$$

Comme les $x_k$ sont rangés dans l'ordre croissant, $x_k = k$ pour $k = 1, \ldots, 9$, et enfin $x_{10} = x_9 + 1 = 10$.

**Conclusion : l'unique solution est $x_k = k$ pour tout $k$ de $1$ à $10$.**
