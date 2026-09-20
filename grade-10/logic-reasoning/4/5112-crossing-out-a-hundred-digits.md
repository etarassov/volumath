---
id: "5112"
title: "Barrer cent chiffres"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 45
tags: [chiffres, maximum, minimum, strategie-gloutonne, comptage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 1, « X'ing digits »"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

On écrit à la suite tous les entiers de $1$ à $60$ :

$$N = 123456789101112\ldots585960$$

Ce nombre a $111$ chiffres.

On en barre $100$, et on lit de gauche à droite les $11$ chiffres qui restent, sans changer leur ordre : ils forment un nombre.

1. Quel est le plus grand nombre que l'on puisse obtenir ainsi ?
2. Quel est le plus petit ? (Les zéros de tête ne comptent pas : si les chiffres restants sont $00000123450$, le nombre obtenu est $123450$.)

## Hints

1. Commence par vérifier le compte : pourquoi $N$ a-t-il bien $111$ chiffres, et donc pourquoi en reste-t-il $11$ ?
2. Pour obtenir le plus grand nombre : les onze chiffres restants forment tous un nombre à onze chiffres (ou moins). Le plus important est donc le chiffre de gauche, puis le suivant, etc. Choisis-les l'un après l'autre.
3. Attention : en choisissant un chiffre très à droite, tu t'interdis d'en trouver assez après lui. À chaque étape, il faut pouvoir compléter.
4. Combien de chiffres $9$ y a-t-il dans $N$, et où sont-ils ?
5. Pour le plus petit nombre : ici les zéros de tête sont une aubaine, car ils raccourcissent le nombre obtenu. Combien de zéros $N$ contient-il, et peut-on tous les mettre en tête ?

## Solution

**Le décompte de départ.**

Les entiers de $1$ à $9$ donnent $9$ chiffres ; ceux de $10$ à $60$, au nombre de $51$, en donnent $2$ chacun, soit $102$. Au total

$$9 + 102 = 111 \text{ chiffres}$$

En en barrant $100$, il en reste $11$.

Il sera commode de repérer les positions. Le chiffre des unités de l'entier $n$ (pour $10 \leqslant n \leqslant 60$) occupe la position $2n - 9$, et son chiffre des dizaines la position $2n - 10$. Par exemple les deux chiffres de $19$ occupent les positions $28$ et $29$, et ceux de $60$ les positions $110$ et $111$.

### Question 1 : le plus grand nombre

Les onze chiffres gardés forment un nombre d'au plus onze chiffres. Pour le rendre le plus grand possible, on choisit d'abord le chiffre de gauche le plus grand possible, puis le suivant, et ainsi de suite : à chaque étape, un gain sur un chiffre de gauche l'emporte sur tout ce qui peut arriver à droite.

*Les $9$ disponibles.* Le chiffre $9$ apparaît dans $9$, $19$, $29$, $39$, $49$, $59$, aux positions

$$9, \quad 29, \quad 49, \quad 69, \quad 89, \quad 109$$

*On prend les $9$ tant qu'on peut.* Après avoir pris le $9$ de la position $89$, il reste les positions $90$ à $111$, soit $22$ chiffres : largement de quoi en choisir encore $6$. On peut donc prendre cinq $9$, ceux des positions $9$, $29$, $49$, $69$, $89$.

Peut-on en prendre un sixième, celui de la position $109$ ? Non : après la position $109$ il ne reste que deux chiffres, alors qu'il en faudrait cinq pour compléter. Le premier chiffre du nombre ne peut donc pas être suivi de cinq autres $9$.

Les cinq premiers chiffres sont donc $99999$, et il faut choisir les six derniers parmi les positions $90$ à $111$, qui portent

$$5\,0\,5\,1\,5\,2\,5\,3\,5\,4\,5\,5\,5\,6\,5\,7\,5\,8\,5\,9\,6\,0$$

(ce sont les chiffres de $50$, $51$, …, $60$).

*Le sixième chiffre.* Il doit être suivi de cinq autres, donc se trouver au plus à la position $111 - 5 = 106$. Parmi les positions $90$ à $106$, le plus grand chiffre est le $7$ de $57$, en position $105$. On le prend.

*Les cinq derniers.* Il reste les positions $106$ à $111$, qui portent $5$, $8$, $5$, $9$, $6$, $0$. Il faut en garder cinq sur six, donc en supprimer un seul : pour obtenir le plus grand nombre, on supprime le premier, et il reste $85960$.

**Conclusion. Le plus grand nombre possible est**

$$99\,999\,785\,960$$

### Question 2 : le plus petit nombre

*Les zéros.* Le chiffre $0$ apparaît dans $10$, $20$, $30$, $40$, $50$, $60$, aux positions

$$11, \quad 31, \quad 51, \quad 71, \quad 91, \quad 111$$

soit six zéros en tout.

*Combien de zéros en tête ?* Un zéro placé en tête ne compte pas : chaque zéro de tête fait perdre un chiffre au nombre obtenu, ce qui est toujours avantageux. On voudrait donc en mettre le plus possible au début.

On ne peut pas en mettre six : le sixième zéro est en position $111$, la toute dernière, et il faudrait encore cinq chiffres après lui. On garde donc les cinq zéros des positions $11$, $31$, $51$, $71$, $91$, ce qui laisse un nombre de six chiffres à construire à partir des positions $92$ à $111$, qui portent

$$5\,1\,5\,2\,5\,3\,5\,4\,5\,5\,5\,6\,5\,7\,5\,8\,5\,9\,6\,0$$

(les chiffres de $51$, $52$, …, $60$).

*Les six chiffres restants.* On choisit maintenant le plus petit possible à chaque étape, en gardant assez de chiffres après.

- Le plus petit chiffre disponible qui laisse encore cinq chiffres après lui est le $1$ de $51$, en position $93$.
- Ensuite, le $2$ de $52$, en position $95$.
- Puis le $3$ de $53$, en position $97$, puis le $4$ de $54$, en position $99$.
- Il reste deux chiffres à prendre parmi les positions $100$ à $111$, qui portent les chiffres de $55$, $56$, …, $60$, c'est-à-dire $5\,5\,5\,6\,5\,7\,5\,8\,5\,9\,6\,0$. Le plus petit choix de deux chiffres est $5$ puis $0$, en prenant le $5$ de $55$ et le $0$ final de $60$.

Les onze chiffres gardés sont donc $00000\,123450$, et le nombre obtenu est $123450$.

*Pourquoi ne pas faire mieux avec moins de zéros ?* Avec cinq zéros de tête, le nombre obtenu a six chiffres. Avec quatre zéros de tête, il en aurait sept, donc serait plus grand. Cinq zéros est bien le bon choix.

**Conclusion. Le plus petit nombre possible est**

$$123\,450$$

## Going further

La méthode employée ici porte un nom : c'est un **algorithme glouton**. On construit la réponse chiffre après chiffre en prenant à chaque étape le meilleur choix immédiat, la seule précaution étant de garder assez de matière pour finir.

Ce n'est pas toujours une bonne idée : pour beaucoup de problèmes d'optimisation, le meilleur choix immédiat conduit à une impasse. Ici, cela marche parce qu'un nombre se compare d'abord sur son chiffre de gauche : améliorer un chiffre de gauche rapporte toujours plus que tout ce qu'on peut perdre à droite.
