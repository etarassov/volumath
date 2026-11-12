---
id: "17834"
title: "Des juges qui ne sont pas d'accord"
grade: 8
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [double-comptage, inegalite, carre-positif]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », combinatoire, mercredi après-midi, « Double comptage » (Jean-Louis Tu), exercice 13, p.70 ; solution p.70 (par la forme canonique, remplacée ici par une identité vue en 4e). C'est une version un peu plus faible du problème 2 des Olympiades internationales de 1998."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Dans une compétition, il y a $a$ candidats et $b$ juges, avec $b \ge 2$. Chaque juge donne à chaque candidat la note « OK » ou la note « KO ».

Soit $k$ un entier tel que, pour deux juges quelconques, leurs notes sont les mêmes pour au plus $k$ candidats.

Montrer que

$$k \ge \frac{a}{2} \times \frac{b-2}{b-1} .$$

## Hints

1. Comptez de deux façons les triplets $(c, j, j')$ où $c$ est un candidat, et $j$, $j'$ sont deux juges différents qui ont donné la même note à $c$.
2. Combien y a-t-il de couples $(j, j')$ de juges différents, dans un certain ordre ? Déduisez-en une majoration du nombre de triplets.
3. Fixez un candidat, à qui $x$ juges ont donné « OK » et $y = b - x$ juges ont donné « KO ». Combien de couples $(j, j')$ de juges différents lui ont donné la même note ?
4. Pour minorer $x(x-1) + y(y-1)$, développez $(x+y)^2 + (x-y)^2$.

## Solution

Notons $N$ le nombre de triplets $(c, j, j')$ où $c$ est un candidat, $j$ et $j'$ sont deux juges différents, et $j$ et $j'$ ont donné la même note à $c$. L'ordre des deux juges compte : $(c, j, j')$ et $(c, j', j)$ sont deux triplets différents. On va encadrer $N$ de deux façons.

**Majoration, juges par juges.** Il y a $b$ choix pour $j$ et $b - 1$ pour $j'$, soit $b(b-1)$ couples de juges différents. Chaque couple est d'accord sur au plus $k$ candidats. Donc

$$N \le b(b-1)k .$$

**Minoration, candidat par candidat.** Fixons un candidat $c$. Supposons que $x$ juges lui ont donné « OK » et $y$ juges « KO », avec $x + y = b$. Deux juges sont d'accord sur $c$ quand ils ont tous les deux dit « OK », ce qui donne $x(x-1)$ couples, ou tous les deux « KO », ce qui donne $y(y-1)$ couples. Le candidat $c$ apporte donc

$$x(x-1) + y(y-1) = x^2 + y^2 - (x + y) = x^2 + y^2 - b$$

triplets.

**Un lemme.** Pour tous nombres $x$ et $y$, on a $x^2 + y^2 \ge \frac{(x+y)^2}{2}$. En effet, en développant,

$$(x+y)^2 + (x-y)^2 = (x^2 + 2xy + y^2) + (x^2 - 2xy + y^2) = 2(x^2 + y^2) .$$

Comme $(x-y)^2 \ge 0$, on obtient $2(x^2 + y^2) \ge (x+y)^2$.

Avec $x + y = b$, chaque candidat apporte donc au moins $\frac{b^2}{2} - b = \frac{b(b-2)}{2}$ triplets. Il y a $a$ candidats, donc

$$N \ge a \times \frac{b(b-2)}{2} .$$

**Conclusion.** En réunissant les deux inégalités,

$$b(b-1)k \ge \frac{a\,b\,(b-2)}{2} .$$

On divise les deux membres par le nombre positif $b(b-1)$, ce qui ne change pas le sens de l'inégalité :

$$k \ge \frac{a(b-2)}{2(b-1)} = \frac{a}{2} \times \frac{b-2}{b-1} .$$

## Going further

On n'a pas utilisé que $x$ est un nombre entier. Si $b$ est impair, $x$ et $y$ ne peuvent pas être égaux, et l'on a toujours $(x-y)^2 \ge 1$. Refaites le calcul pour montrer que chaque candidat apporte alors au moins $\frac{(b-1)^2}{2}$ triplets, puis que

$$\frac{k}{a} \ge \frac{b-1}{2b} .$$

C'est exactement le problème 2 des Olympiades internationales de mathématiques de 1998.
