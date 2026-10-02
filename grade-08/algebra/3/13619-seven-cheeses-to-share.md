---
id: "13619"
title: "Sept fromages à partager"
grade: 8
theme: algebra
difficulty: 3
duration_min: 20
tags: [partage, inegalite, rangement, poids]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2012 (test de sélection du stage olympique de Montpellier, 5 juin 2012)"
  reference: "2017-09_coupe_printemps_2012_3.pdf, épreuve collège, exercice 3 (aussi exercice 3 des épreuves de seconde et de première, 2017-09_coupe_printemps_2012_2.pdf et 2017-09_coupe_printemps_2012_1.pdf) ; corrigé 2017-09_coupe_printemps_2012_corrige.pdf, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2012_3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2012_3.pdf"
---

## Statement

Monsieur et Madame Martin se partagent un plateau de sept fromages. Chacun veut prendre trois fromages entiers. Le septième fromage sera coupé en deux morceaux, un pour chacun, de sorte qu'au total les deux reçoivent exactement le même poids de fromage.

Quels que soient les poids des sept fromages, est-il toujours possible de choisir les trois fromages de Monsieur, les trois fromages de Madame, et la façon de couper le septième, pour que leur souhait soit réalisé ?

## Hints

1. Range les fromages du plus léger au plus lourd.
2. Lequel des sept fromages vaut-il mieux garder pour le couper ? Pense à un plateau de six petits fromages de $100$ g et d'un gros fromage de $2$ kg.
3. Distribue les six autres fromages en alternant : le plus léger à l'un, le suivant à l'autre, et ainsi de suite.
4. Montre que la différence de poids entre les deux lots de trois fromages ne dépasse pas le poids du fromage qui reste.

## Solution

La réponse est **oui**, c'est toujours possible.

**Ranger les fromages.** On note $a_1, a_2, \ldots, a_7$ les poids des sept fromages, rangés du plus léger au plus lourd :

$$a_1 \le a_2 \le a_3 \le a_4 \le a_5 \le a_6 \le a_7 .$$

**Quel fromage couper ?** On garde le plus lourd, $a_7$, pour le couper. Ce n'est pas un détail : avec six fromages de $100$ g et un fromage de $2$ kg, si l'on coupait un petit fromage, l'un des deux recevrait le gros fromage entier, donc au moins $2$ kg, et l'autre au plus $600$ g. Le partage serait impossible.

**Distribuer les six autres en alternant.** Monsieur prend les fromages $a_1$, $a_3$ et $a_5$. Madame prend les fromages $a_2$, $a_4$ et $a_6$. On appelle $D$ l'avance de Madame :

$$D = (a_2 + a_4 + a_6) - (a_1 + a_3 + a_5) .$$

*Madame a au moins autant que Monsieur.* On regroupe les termes deux par deux :

$$D = (a_2 - a_1) + (a_4 - a_3) + (a_6 - a_5) .$$

Chaque parenthèse est positive ou nulle, car les poids sont rangés. Donc $D \ge 0$.

*Son avance est plus petite que le gros fromage.* On regroupe les termes autrement :

$$D = -a_1 + (a_2 - a_3) + (a_4 - a_5) + a_6 .$$

Ici, les deux parenthèses sont négatives ou nulles, et $a_1$ est positif. Donc $D \le a_6 \le a_7$.

**Couper le septième fromage.** Monsieur a $D$ grammes de moins que Madame. On coupe le fromage $a_7$ en deux morceaux : un morceau de poids $x$ pour Monsieur, et le reste, de poids $a_7 - x$, pour Madame. Ils ont le même total quand

$$(a_1 + a_3 + a_5) + x = (a_2 + a_4 + a_6) + (a_7 - x),$$

c'est-à-dire quand $2x = D + a_7$, donc

$$x = \frac{a_7 + D}{2} .$$

Il faut vérifier que ce morceau existe vraiment, c'est-à-dire que $x$ est entre $0$ et $a_7$. Comme $D \ge 0$, on a $x \ge \frac{a_7}{2} \ge 0$. Comme $D \le a_7$, on a $x \le \frac{a_7 + a_7}{2} = a_7$. C'est bon.

**Un exemple.** Avec des fromages de $200$, $250$, $300$, $400$, $500$, $600$ et $1000$ g : Monsieur prend $200 + 300 + 500 = 1000$ g, Madame prend $250 + 400 + 600 = 1250$ g, donc $D = 250$. On coupe le fromage de $1000$ g en un morceau de $\frac{1000 + 250}{2} = 625$ g pour Monsieur et un morceau de $375$ g pour Madame. Chacun a alors $1625$ g.

**Conclusion.** C'est toujours possible : on coupe le fromage le plus lourd, on distribue les six autres en alternant après les avoir rangés, et on donne à celui qui a le moins un morceau du gros fromage égal à la moitié de ce fromage plus la moitié de la différence.

## Going further

Et avec neuf fromages, quatre pour chacun et un à couper ? Avec $2n + 1$ fromages ?
