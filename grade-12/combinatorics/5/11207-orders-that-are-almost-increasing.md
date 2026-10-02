---
id: "11207"
title: "Des ordres presque croissants"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [permutations, denombrement, coloriage, injection, algorithme-glouton, majoration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 2 (combinatoire)"
  reference: "2017-10_ofm-2012-2013-envoi2.pdf, Exercices Olympiques, exercice 9 (la borne est 5^1000 : pdftotext l'imprime « 51000 ») ; corrigé 2017-10_ofm-2012-2013-envoi2-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi2.pdf"
---

## Statement

On dispose de $500$ emplacements alignés, numérotés de $1$ à $500$ de gauche à droite, et de
$500$ billes numérotées de $1$ à $500$. On pose une bille dans chaque emplacement, dans un ordre
quelconque : le numéro d'une bille n'est pas forcément celui de son emplacement.

Si l'on choisit quelques billes et qu'on lit leurs numéros de gauche à droite, on obtient une
**suite extraite** (les billes choisies ne sont pas forcément voisines). On dit que l'ordre des
billes est **presque croissant** si aucune suite extraite décroissante n'a plus de $5$ billes.

Montrer qu'il y a au plus $5^{1000}$ ordres presque croissants.

## Hints

1. Essaie de répartir les billes en $5$ couleurs de sorte que, pour chaque couleur, les numéros
   des billes de cette couleur augmentent de gauche à droite.
2. Numérote les couleurs de $1$ à $5$. Colorie les billes une par une, de gauche à droite, en
   donnant à chaque bille la plus petite couleur possible. Si tu restes bloqué sur une bille,
   regarde la dernière bille de couleur $5$ : pourquoi n'a-t-elle pas reçu la couleur $4$ ?
3. Une fois les billes coloriées, colorie aussi chaque emplacement de la couleur de sa bille.
   Si l'on te donne la couleur de chaque bille et celle de chaque emplacement, peux-tu retrouver
   l'ordre des billes ?
4. Combien y a-t-il de façons de colorier $500$ objets avec $5$ couleurs ?

## Solution

**Étape 1. Colorier les billes en cinq familles croissantes.**

Prenons un ordre presque croissant. Numérotons cinq couleurs de $1$ à $5$, et colorions les
billes une par une, **de gauche à droite**, avec la règle suivante :

> on donne à la bille la plus petite couleur $c$ telle que, parmi les billes déjà coloriées,
> la dernière bille de couleur $c$ ait un numéro plus petit que la bille à colorier (ou bien
> qu'aucune bille n'ait encore la couleur $c$).

Avec cette règle, les numéros des billes d'une même couleur augmentent de gauche à droite.

Montrons qu'on n'est jamais bloqué. Supposons au contraire qu'on arrive à une bille $b$ pour
laquelle aucune couleur ne convient. Alors la dernière bille déjà coloriée en $5$, appelons-la
$b_5$, a un numéro plus grand que celui de $b$, et elle est à gauche de $b$.

Quand on a colorié $b_5$, on lui a donné la couleur $5$, donc la couleur $4$ ne convenait pas : la
dernière bille coloriée en $4$ à ce moment-là, appelons-la $b_4$, est à gauche de $b_5$ et a un
numéro plus grand que $b_5$. De même, quand on a colorié $b_4$, la couleur $3$ ne convenait pas,
ce qui donne une bille $b_3$ à gauche de $b_4$, de numéro plus grand. On continue ainsi jusqu'à
$b_1$.

Les six billes $b_1, b_2, b_3, b_4, b_5, b$ sont rangées de gauche à droite, et leurs numéros
diminuent : c'est une suite extraite décroissante de $6$ billes. C'est impossible dans un ordre
presque croissant. On n'est donc jamais bloqué, et toutes les billes reçoivent une couleur.

**Étape 2. Les couleurs permettent de retrouver l'ordre.**

Colorions maintenant chaque emplacement de la couleur de la bille qu'il contient. On obtient
deux coloriages :

- le coloriage des billes, qui dit pour chaque numéro de $1$ à $500$ la couleur de la bille qui
  porte ce numéro ;
- le coloriage des emplacements, qui dit pour chaque emplacement de $1$ à $500$ sa couleur.

Ces deux coloriages suffisent pour retrouver l'ordre. Prenons une couleur $c$. Les billes de
couleur $c$ sont exactement dans les emplacements de couleur $c$, et, d'après l'étape 1, elles y
sont rangées par numéros croissants de gauche à droite. On sait donc exactement où va chaque
bille de couleur $c$ : la plus petite dans l'emplacement de couleur $c$ le plus à gauche, la
suivante dans le suivant, et ainsi de suite.

Ainsi deux ordres presque croissants différents donnent forcément deux paires de coloriages
différentes : sinon, on retrouverait le même ordre à partir de la même paire.

**Étape 3. Compter.**

Pour colorier $500$ billes avec $5$ couleurs, on a $5$ choix pour chaque bille, donc $5^{500}$
coloriages possibles. De même, il y a $5^{500}$ coloriages des emplacements. Il y a donc
$$5^{500} \times 5^{500} = 5^{1000}$$
paires de coloriages possibles.

Chaque ordre presque croissant donne une paire, et deux ordres différents donnent deux paires
différentes.

**Conclusion : il y a au plus $5^{1000}$ ordres presque croissants.**

## Going further

C'est très peu par rapport au nombre total d'ordres, qui vaut
$500! = 1 \times 2 \times \cdots \times 500$. En effet, en ne gardant que les $400$ derniers
facteurs, tous au moins égaux à $101$ :
$$500! \geqslant 101^{400} = 10\,201^{200} > 3\,125^{200} = \left(5^5\right)^{200} = 5^{1000} .$$

Le même raisonnement montre que, pour $n$ billes, il y a au plus $k^{2n}$ ordres sans suite
extraite décroissante de plus de $k$ billes.
