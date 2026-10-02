---
id: "11865"
title: "Des pommes et des poires qui changent de bol"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [invariant, parite, algorithme, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Juniors, exercice 9 ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf. Le corrigé affirme que la somme alternée des nombres de fruits varie de ±2 à chaque opération et raisonne modulo 4 ; elle varie en fait de ±4, et l'argument ne marche que modulo 8. La solution ci-dessous utilise un autre invariant, qui évite ce calcul."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Soient $a \geqslant 1$ et $b \geqslant 1$ deux entiers. On dispose de $a + b$ bols alignés, numérotés de $1$ à $a + b$ de gauche à droite. Au départ, chacun des $a$ premiers bols contient une pomme et chacun des $b$ derniers bols contient une poire.

Une opération consiste à choisir deux numéros $i$ et $j$ de **même parité** (éventuellement égaux), puis à déplacer une pomme du bol $i$ vers le bol $i + 1$ **et** une poire du bol $j$ vers le bol $j - 1$. Un bol peut contenir plusieurs fruits.

On veut arriver à la situation où chacun des $b$ premiers bols contient une poire et chacun des $a$ derniers bols contient une pomme. Montrer que c'est possible si et seulement si le produit $ab$ est pair.

## Hints

1. Essayer avec $a = b = 1$, puis avec $a = 1$ et $b = 2$.
2. Pour montrer l'impossibilité, chercher une quantité qui ne change jamais. Regarder les fruits qui sont dans les bols de numéro impair : comment changent le nombre de pommes et le nombre de poires dans ces bols au cours d'une opération ?
3. Pour la construction quand $b$ est pair : trouver deux opérations qui font passer une pomme par-dessus deux poires qui la suivent.
4. Et quand $a$ est pair ? Regarder la rangée dans un miroir.

## Solution

**Partie 1 : une quantité qui ne change pas.** Appelons *bols impairs* les bols de numéro impair. À tout moment, notons $\alpha$ le nombre de pommes dans les bols impairs, $\beta$ le nombre de poires dans les bols impairs, et $\Delta = \alpha - \beta$.

Regardons une opération, avec $i$ et $j$ de même parité.

- Si $i$ et $j$ sont impairs, la pomme quitte le bol impair $i$ pour le bol pair $i + 1$, donc $\alpha$ baisse de $1$. La poire quitte le bol impair $j$ pour le bol pair $j - 1$, donc $\beta$ baisse de $1$.
- Si $i$ et $j$ sont pairs, la pomme arrive dans le bol impair $i + 1$ et la poire dans le bol impair $j - 1$ : $\alpha$ et $\beta$ augmentent chacun de $1$.

Dans les deux cas, $\Delta = \alpha - \beta$ ne change pas.

**Partie 2 : si $a$ et $b$ sont impairs, c'est impossible.** Calculons $\Delta$ au départ et à l'arrivée.

- *Au départ*, les pommes sont dans les bols $1$ à $a$. Comme $a$ est impair, il y a $\frac{a+1}{2}$ bols impairs parmi eux. Les poires sont dans les bols $a + 1$ à $a + b$ : le premier, $a + 1$, est pair, et ce sont $b$ bols consécutifs avec $b$ impair, donc $\frac{b-1}{2}$ d'entre eux sont impairs. Ainsi
$$\Delta_{\text{départ}} = \frac{a+1}{2} - \frac{b-1}{2} = \frac{a - b}{2} + 1.$$
- *À l'arrivée*, les poires sont dans les bols $1$ à $b$, dont $\frac{b+1}{2}$ sont impairs. Les pommes sont dans les bols $b + 1$ à $a + b$, qui commencent par un bol pair, donc $\frac{a-1}{2}$ d'entre eux sont impairs. Ainsi
$$\Delta_{\text{arrivée}} = \frac{a-1}{2} - \frac{b+1}{2} = \frac{a - b}{2} - 1.$$

Ces deux valeurs sont différentes. Comme $\Delta$ ne change jamais, on ne peut pas passer de la situation de départ à la situation d'arrivée.

**Partie 3 : si $b$ est pair, c'est possible.**

*Le mouvement de base.* Supposons qu'à un moment, le bol $k$ contienne une pomme et les bols $k + 1$ et $k + 2$ contiennent chacun une poire (et peut-être d'autres fruits ailleurs). On fait deux opérations :

1. $i = k$ et $j = k + 2$ (même parité) : la pomme passe du bol $k$ au bol $k + 1$, la poire du bol $k + 2$ au bol $k + 1$. Le bol $k + 1$ contient maintenant une pomme et deux poires.
2. $i = j = k + 1$ : la pomme passe du bol $k + 1$ au bol $k + 2$, une poire du bol $k + 1$ au bol $k$.

Résultat : le bol $k$ contient une poire, le bol $k + 1$ une poire et le bol $k + 2$ une pomme. La pomme a sauté par-dessus les deux poires, rien d'autre n'a bougé.

*La construction.* Prenons les deux premières poires, dans les bols $a + 1$ et $a + 2$. On fait sauter par-dessus elles la pomme du bol $a$, puis celle du bol $a - 1$ (les deux poires sont alors juste après elle, dans les bols $a$ et $a + 1$), et ainsi de suite jusqu'à la pomme du bol $1$. On obtient : deux poires dans les bols $1$ et $2$, les $a$ pommes dans les bols $3$ à $a + 2$, et les autres poires toujours à leur place.

On recommence avec les deux poires suivantes, dans les bols $a + 3$ et $a + 4$ : on fait sauter par-dessus elles toutes les pommes, de la plus à droite à la plus à gauche. Les pommes se retrouvent dans les bols $5$ à $a + 4$, et quatre poires dans les bols $1$ à $4$. Comme $b$ est pair, les poires se rangent ainsi deux par deux, et après $\frac{b}{2}$ étapes on a les $b$ poires dans les bols $1$ à $b$ et les $a$ pommes dans les bols $b + 1$ à $a + b$.

**Partie 4 : si $a$ est pair, c'est possible.** Regardons la rangée dans un miroir, c'est-à-dire numérotons les bols de droite à gauche, et échangeons les mots « pomme » et « poire ». Une pomme qui avance vers la droite devient une « poire » qui avance vers la gauche, et inversement. Deux numéros de même parité restent de même parité (le bol $k$ devient le bol $a + b + 1 - k$, et la différence de deux numéros change seulement de signe). Le problème devient exactement le même, avec $b$ « pommes » au départ à gauche et $a$ « poires » à droite. Comme $a$ est pair, la partie 3 s'applique à ce nouveau problème, et donne une suite d'opérations qui convient pour le problème de départ.

**Conclusion.** **On peut atteindre la situation voulue si et seulement si $ab$ est pair.**
