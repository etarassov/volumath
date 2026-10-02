---
id: "13409"
title: "Le produit des sommes de chiffres"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [chiffres, puissances, encadrement, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2021"
  reference: "2021-10_Sujet.pdf, épreuve lycée, exercice 13 ; corrigé 2021-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2021-10_Sujet.pdf"
---

## Statement

Anna écrit au tableau un nombre $N$ de $100$ chiffres, dont le premier chiffre n'est pas $0$.

Elle choisit ensuite deux positions différentes parmi les $100$, dans un ordre donné : il y a $100 \times 99$ façons de le faire. Pour chacun de ces $100 \times 99$ choix, elle calcule la somme des deux chiffres placés à ces positions. Enfin, elle multiplie entre elles les $100 \times 99$ sommes obtenues.

Le produit obtenu peut-il être égal au nombre $N$ ?

## Hints

1. Essaie avec un nombre de $3$ chiffres, par exemple $N = 205$ : écris les $3 \times 2 = 6$ sommes et leur produit. Le produit est-il grand ou petit par rapport à $N$ ?
2. Entre quelles puissances de $10$ se trouve un nombre de $100$ chiffres ?
3. Que se passe-t-il si $N$ a au moins deux chiffres égaux à $0$ ?
4. Sinon, la plupart des sommes valent au moins $2$. Combien y en a-t-il au moins ? Compare ensuite une puissance de $2$ à $10^{100}$, en utilisant $2^{10} = 1024$.

## Solution

Notons $P$ le produit calculé par Anna. Nous allons montrer que **$P$ ne peut jamais être égal à $N$**.

**La taille de $N$.** Un nombre de $100$ chiffres est strictement plus petit que $10^{100}$, qui en a $101$. Et comme son premier chiffre n'est pas nul, $N \geqslant 10^{99} > 0$.

**Premier cas : $N$ a au moins deux chiffres nuls.** Les deux positions de ces zéros donnent une somme $0 + 0 = 0$. Un des facteurs du produit est nul, donc $P = 0$. Comme $N > 0$, on a $P \neq N$.

**Second cas : $N$ a au plus un chiffre nul.** Il y a alors au moins $99$ positions où le chiffre n'est pas nul. Si l'on choisit deux de ces positions, dans un ordre donné, la somme des deux chiffres vaut au moins $1 + 1 = 2$. Il y a au moins $99 \times 98 = 9702$ tels choix. Les autres sommes valent au moins $1$, car elles contiennent au plus un zéro. Donc

$$P \geqslant 2^{9702}.$$

Comparons à $10^{100}$. Comme $2^{10} = 1024 > 1000 = 10^3$,

$$2^{9702} > 2^{9700} = \left(2^{10}\right)^{970} > \left(10^3\right)^{970} = 10^{2910} > 10^{100} > N.$$

Donc $P > N$, et en particulier $P \neq N$.

**Conclusion.** Dans tous les cas, le produit est différent de $N$ : ce n'est pas possible.

*Attention au comptage.* Avec un seul zéro, les choix qui contiennent la position du zéro donnent des sommes qui peuvent valoir $1$ seulement. Il ne faut donc compter que les choix de deux positions sans le zéro : $99$ possibilités pour la première, puis $98$ pour la seconde.

## Going further

Un nombre $N$ de $2$ chiffres peut-il être égal au produit des $2 \times 1 = 2$ sommes, c'est-à-dire au carré de la somme de ses chiffres ? Trouver tous ces nombres.
