---
id: "1021"
title: "La serrure à deux boutons"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, optimalite, minoration, construction, mots]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, De Bruijn Sequences"
  reference: "Handout-4991-5371.pdf, problèmes 2 à 5 (réponses dans Handout-4992-5371.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4991-5371.pdf"
---

## Statement

Une serrure électronique n'a que deux boutons, $0$ et $1$. Son code secret est une suite de trois chiffres, chacun valant $0$ ou $1$.

La serrure n'a pas de touche « valider » et ne remet jamais rien à zéro : elle s'ouvre dès que **les trois derniers chiffres tapés** forment le code, quoi qu'on ait tapé avant. Par exemple, si le code est $110$, taper $0\,1\,1\,0$ ouvre la serrure au quatrième appui.

Vous ne connaissez pas le code et voulez être **certain** d'ouvrir la serrure.

1. Combien y a-t-il de codes possibles ?
2. Montrer qu'il faut au moins $10$ appuis.
3. Trouver une suite de $10$ appuis qui ouvre la serrure à coup sûr.

*Échauffement conseillé : traiter d'abord le même problème avec un code de **deux** chiffres.*

## Hints

1. Faites l'échauffement. Avec un code à deux chiffres, il y a $4$ codes possibles. Combien d'appuis vous faut-il ? Essayez de faire mieux que $8$.
2. Quand vous avez tapé une suite de $n$ chiffres, combien de « fenêtres » de trois chiffres consécutifs cette suite contient-elle ?
3. Chaque fenêtre teste un seul code. Combien de codes faut-il tester ?
4. Pour construire la suite, essayez de faire en sorte que chaque nouvel appui produise une fenêtre encore jamais vue. Commencez par $0\,0\,0$ et avancez chiffre par chiffre, en tenant la liste de ce que vous avez déjà testé.
5. Quand vous êtes bloqué, revenez en arrière et changez un choix. Il y a plusieurs solutions.

## Solution

### L'échauffement : un code à deux chiffres

Les codes possibles sont $00$, $01$, $10$, $11$ : il y en a $4$.

Taper les quatre codes à la file ferait $8$ appuis, mais c'est du gaspillage : chaque appui, à partir du deuxième, crée une nouvelle fenêtre de deux chiffres. Une suite de $n$ appuis contient $n-1$ fenêtres de deux chiffres consécutifs. Il faut donc $n - 1 \geqslant 4$, soit $n \geqslant 5$.

Et $5$ suffit : la suite
$$0\;0\;1\;1\;0$$
contient les fenêtres $00$, $01$, $11$, $10$, soit les quatre codes. Cinq appuis au lieu de huit.

### Question 1 : le nombre de codes

Chacun des trois chiffres vaut $0$ ou $1$, indépendamment des autres, donc il y a
$$2 \times 2 \times 2 = 2^{3} = 8$$
codes possibles :
$$000,\ 001,\ 010,\ 011,\ 100,\ 101,\ 110,\ 111.$$

### Question 2 : il faut au moins $10$ appuis

Supposons que l'on tape une suite de $n$ chiffres. Les « fenêtres » de trois chiffres consécutifs de cette suite sont celles qui commencent en position $1$, $2$, …, $n-2$ : il y en a donc exactement $n - 2$ (et aucune si $n < 3$).

Or la serrure ne s'ouvre que si l'une de ces fenêtres est le code. Pour être **certain** d'ouvrir, quel que soit le code, il faut que les $8$ codes apparaissent tous parmi les fenêtres. Cela exige au moins $8$ fenêtres :
$$n - 2 \geqslant 8, \qquad \text{donc} \qquad n \geqslant 10.$$

Neuf appuis ne peuvent donc jamais suffire : ils ne produisent que $7$ fenêtres, et au moins un code reste non testé.

### Question 3 : une suite de $10$ appuis

La suite
$$0\;0\;0\;1\;0\;1\;1\;1\;0\;0$$
convient. Voici ses huit fenêtres, dans l'ordre :

| position | 1–3 | 2–4 | 3–5 | 4–6 | 5–7 | 6–8 | 7–9 | 8–10 |
|---|---|---|---|---|---|---|---|---|
| fenêtre | $000$ | $001$ | $010$ | $101$ | $011$ | $111$ | $110$ | $100$ |

Les huit codes y figurent, chacun exactement une fois. La serrure s'ouvre donc au plus tard au dixième appui.

**Comment on la trouve.** On part de $000$, puis à chaque étape on ajoute le chiffre qui crée une fenêtre pas encore obtenue ; quand les deux chiffres conviennent, on en prend un et on revient en arrière si l'on se bloque. Il y a $16$ suites de longueur $10$ qui conviennent, dont
$$0001011100, \quad 0001110100, \quad 0010111000, \quad 0011101000, \ldots$$

**Conclusion.** Il y a $8$ codes, il faut au moins $10$ appuis, et $10$ appuis suffisent. On ne peut pas faire mieux.

**Une remarque.** Le compte est serré à l'extrême : $10 = 8 + 2$, c'est-à-dire « une fenêtre par code, plus les deux chiffres de mise en route », et aucune fenêtre n'est gaspillée. De telles suites s'appellent des **suites de De Bruijn**. Pour un code de $k$ chiffres binaires, on peut toujours en construire une, de longueur $2^{k} + k - 1$.

## Going further

1. Un code de **quatre** chiffres binaires : combien d'appuis au minimum ? Construire une suite qui convient.
2. Un code de trois chiffres, mais avec un clavier à trois touches $0$, $1$, $2$ : combien de codes, et combien d'appuis au minimum ?
3. Dans la suite $0001011100$, quels sont les trois premiers chiffres et les trois derniers ? Si l'on écrivait la suite en rond, combien d'appuis faudrait-il ?
4. Vérifier sur les seize suites de longueur $10$ que les **deux premiers** chiffres sont toujours identiques aux **deux derniers**. Expliquer pourquoi, en pensant à la version « en rond » de la question 3.
