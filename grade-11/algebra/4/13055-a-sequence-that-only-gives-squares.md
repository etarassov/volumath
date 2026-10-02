---
id: "13055"
title: "Une suite qui ne donne que des carrés"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [suites, recurrence, carres parfaits, relation lineaire]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, test de rentrée (Coupe Animath d'automne) du 7 octobre 2015"
  reference: "2017-09_coupe_automne_2015.pdf, exercices lycée, exercice 8 ; corrigé 2017-09_coupe_automne_2015_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015.pdf"
---

## Statement

On considère une suite de nombres réels $a_1, a_2, a_3, \ldots$ telle que $a_1 = 1$, $a_2 = 7$ et
$$a_{n+2} = \frac{a_{n+1}^2 - 1}{a_n} \qquad \text{pour tout } n \geqslant 1 .$$
Par exemple, $a_3 = \dfrac{7^2 - 1}{1} = 48$.

Montrer que, pour tout entier $n \geqslant 1$, le nombre $9\,a_n a_{n+1} + 1$ est le carré d'un nombre entier.

## Hints

1. Calcule $a_3$, $a_4$ et $a_5$, puis $9\,a_n a_{n+1} + 1$ pour $n = 1$ et $n = 2$. De quels nombres obtiens-tu les carrés ?
2. Écris la définition sous la forme $a_n a_{n+2} = a_{n+1}^2 - 1$. Écris ensuite la même égalité en remplaçant $n$ par $n + 1$, et fais la différence des deux.
3. Tu dois trouver que le quotient $\dfrac{a_{n+2} + a_n}{a_{n+1}}$ ne dépend pas de $n$. Que vaut-il ? Quelle relation plus simple entre trois termes consécutifs en découle ?
4. Les carrés trouvés grâce à l'indication 1 sont ceux de $a_n + a_{n+1}$. Développe $(a_n + a_{n+1})^2$ et compare avec $9\,a_n a_{n+1} + 1$.

## Solution

**Premiers termes.** On trouve
$$a_3 = 48, \qquad a_4 = \frac{48^2 - 1}{7} = \frac{2303}{7} = 329, \qquad a_5 = \frac{329^2 - 1}{48} = \frac{108240}{48} = 2255 .$$
Et $9 \times 1 \times 7 + 1 = 64 = 8^2$, $9 \times 7 \times 48 + 1 = 3025 = 55^2$. Or $8 = 1 + 7$ et $55 = 7 + 48$ : il semble que $9\,a_n a_{n+1} + 1 = (a_n + a_{n+1})^2$.

Remarquons que tous les termes $a_n$ sont non nuls, puisque la définition de $a_{n+2}$ demande de diviser par $a_n$.

**Une relation plus simple.** La définition s'écrit, pour tout $n \geqslant 1$,
$$a_n\,a_{n+2} = a_{n+1}^2 - 1 . \qquad (1)$$
En remplaçant $n$ par $n + 1$, on a aussi
$$a_{n+1}\,a_{n+3} = a_{n+2}^2 - 1 . \qquad (2)$$
Faisons la différence $(2) - (1)$ :
$$a_{n+1}\,a_{n+3} - a_n\,a_{n+2} = a_{n+2}^2 - a_{n+1}^2,$$
ce qui se regroupe en
$$a_{n+1}\left(a_{n+3} + a_{n+1}\right) = a_{n+2}\left(a_{n+2} + a_n\right).$$
En divisant par $a_{n+1}\,a_{n+2}$, qui n'est pas nul :
$$\frac{a_{n+3} + a_{n+1}}{a_{n+2}} = \frac{a_{n+2} + a_n}{a_{n+1}} .$$
Notons $x_n = \dfrac{a_{n+2} + a_n}{a_{n+1}}$. L'égalité précédente dit que $x_{n+1} = x_n$ pour tout $n$ : la suite $(x_n)$ est constante. Or
$$x_1 = \frac{a_3 + a_1}{a_2} = \frac{48 + 1}{7} = 7 .$$
Donc $x_n = 7$ pour tout $n$, c'est-à-dire
$$a_{n+2} = 7\,a_{n+1} - a_n \qquad \text{pour tout } n \geqslant 1 . \qquad (3)$$
On vérifie : $7 \times 48 - 7 = 329$ et $7 \times 329 - 48 = 2255$.

**Tous les termes sont entiers.** Les termes $a_1 = 1$ et $a_2 = 7$ sont entiers. D'après $(3)$, si deux termes consécutifs sont entiers, le suivant l'est aussi. De proche en proche, tous les termes $a_n$ sont des entiers.

**Le carré.** En multipliant $(3)$ par $a_n$, puis en utilisant $(1)$ :
$$7\,a_n\,a_{n+1} = a_n\,a_{n+2} + a_n^2 = a_{n+1}^2 - 1 + a_n^2 .$$
Donc
$$9\,a_n\,a_{n+1} + 1 = 7\,a_n\,a_{n+1} + 2\,a_n\,a_{n+1} + 1 = a_n^2 + 2\,a_n\,a_{n+1} + a_{n+1}^2 = \left(a_n + a_{n+1}\right)^2 .$$

**Conclusion.** Pour tout $n \geqslant 1$, on a $9\,a_n a_{n+1} + 1 = \left(a_n + a_{n+1}\right)^2$, et $a_n + a_{n+1}$ est un entier. Le nombre $9\,a_n a_{n+1} + 1$ est donc bien le carré d'un nombre entier.

## Going further

1. Les nombres $a_n + a_{n+1}$ valent $8$, $55$, $377$, ... Calculer les termes de la suite de Fibonacci $1, 1, 2, 3, 5, 8, 13, \ldots$ (chaque terme est la somme des deux précédents) et comparer.
2. Reprendre l'exercice avec $a_1 = 1$, $a_2 = 3$ et la même relation. Quelle relation simple entre trois termes consécutifs obtient-on ? Quel nombre $c$ rend $c\,a_n a_{n+1} + 1$ toujours égal à un carré ?
