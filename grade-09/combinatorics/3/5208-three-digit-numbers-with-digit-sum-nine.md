---
id: "5208"
title: "Les nombres à trois chiffres dont la somme des chiffres fait 9"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, chiffres, somme, classement-par-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Tulsa Math Teachers' Circle, Counting Problems"
  reference: "Count-Me-In-Problem-Set.pdf, problème 16"
  url: "https://mathcircles.org/activity/count-me-in/"
  original_language: "en"
  local_copy: "sources/originals/namc/Count-Me-In-Problem-Set.pdf"
---

## Statement

Combien y a-t-il de nombres à trois chiffres dont la somme des chiffres vaut $9$ ?

On rappelle qu'un nombre à trois chiffres ne commence pas par $0$ : les nombres cherchés vont de $100$ à $999$.

## Hints

1. N'essayez pas de tous les écrire : il y en a trop pour que ce soit sûr, mais pas assez pour que ce soit impossible, donc c'est le pire des cas. Organisez plutôt le compte.
2. Notons $\overline{abc}$ le nombre cherché, avec $a + b + c = 9$, $1 \leqslant a \leqslant 9$ et $0 \leqslant b, c \leqslant 9$.
3. Fixez d'abord le chiffre des centaines $a$. Combien reste-t-il de couples $(b\,;c)$ possibles ?
4. Si $b + c = s$ avec $0 \leqslant s \leqslant 9$, combien y a-t-il de choix pour $b$ ? Et une fois $b$ choisi, combien pour $c$ ?

## Solution

Notons $\overline{abc}$ le nombre cherché : $a$ est le chiffre des centaines, $b$ celui des dizaines, $c$ celui des unités. Les conditions sont

$$a + b + c = 9, \qquad 1 \leqslant a \leqslant 9, \qquad 0 \leqslant b \leqslant 9, \qquad 0 \leqslant c \leqslant 9 .$$

Fixons le chiffre des centaines $a$. Comme $a \geqslant 1$ et $a + b + c = 9$ avec $b, c \geqslant 0$, on a nécessairement $1 \leqslant a \leqslant 9$. Il reste à choisir $b$ et $c$ avec

$$b + c = 9 - a .$$

Posons $s = 9 - a$, donc $0 \leqslant s \leqslant 8$. Pour un tel $s$, le chiffre $b$ peut prendre n'importe quelle valeur de $0$ à $s$, et alors $c = s - b$ est déterminé, et c'est bien un chiffre puisque $0 \leqslant c \leqslant s \leqslant 8$. Il y a donc exactement $s + 1$ couples $(b\,;c)$.

En additionnant sur les valeurs de $a$ :

| $a$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|---|---|---|---|---|---|---|---|---|---|
| $s = 9 - a$ | 8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
| nombre de couples $(b\,;c)$ | 9 | 8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 |

Le total vaut

$$9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1 = \frac{9 \times 10}{2} = \boxed{45} .$$

Il y a donc $45$ nombres à trois chiffres dont la somme des chiffres vaut $9$.

*(Contrôle rapide sur les plus petits : $108$, $117$, $126$, $135$, $144$, $153$, $162$, $171$, $180$ commencent par $1$, et il y en a bien $9$.)*

## Going further

La contrainte $b \leqslant 9$ et $c \leqslant 9$ n'a jamais servi, parce que la somme demandée, $9$, est petite. Si l'on cherchait les nombres à trois chiffres dont la somme des chiffres vaut $20$, le même découpage marcherait encore, mais il faudrait cette fois écarter les couples où $b$ ou $c$ dépasserait $9$.
