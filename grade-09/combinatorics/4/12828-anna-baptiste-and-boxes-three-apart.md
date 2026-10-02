---
id: "12828"
title: "Anna, Baptiste et les cases à distance 3"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [jeu, strategie, parite, restes, coloriage]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2023"
  reference: "2023-09_Enonce-Test-5.pdf, test junior, exercice 2 ; corrigé 2023-09_Corrige-Test-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-5.pdf"
---

## Statement

Anna et Baptiste ont devant eux $2022$ cases blanches, numérotées de $1$ à $2022$. Chacun son tour, en commençant par Anna, un joueur choisit une case encore blanche et la colorie, au choix, en rouge ou en bleu. La partie s'arrête quand la dernière case blanche est coloriée, c'est-à-dire après $2022$ coups.

Le score d'Anna est alors le nombre d'entiers $a \leq 2019$ tels que les cases numéros $a$ et $a + 3$ sont de la même couleur.

Anna veut un score aussi grand que possible, Baptiste veut qu'il soit aussi petit que possible. Quel est le plus grand score qu'Anna peut être sûre d'obtenir, quelle que soit la façon de jouer de Baptiste ?

## Hints

1. Regroupez les cases selon le reste de leur numéro dans la division par $3$. Combien de paires $(a, a+3)$ y a-t-il en tout ?
2. Une stratégie simple pour Anna : si une case blanche est à distance $3$ d'une case déjà coloriée, la colorier de la même couleur. Combien de fois au plus Anna ne peut-elle pas appliquer cette règle ?
3. Pour Baptiste, essayez la règle inverse : colorier une case blanche à distance $3$ d'une case coloriée, mais de l'autre couleur. Pour montrer qu'il peut toujours le faire, comptez les cases déjà coloriées avant chacun de ses coups.

## Solution

La réponse : **Anna peut s'assurer un score de $1008$, et pas plus.**

### Vocabulaire

Pour $1 \leq a \leq 2019$, on appelle **paire** le couple de cases $(a, a+3)$ ; il y a $2019$ paires. À la fin de la partie, une paire est **bonne** si ses deux cases ont la même couleur, **mauvaise** sinon. Le score d'Anna est le nombre de paires bonnes, et

$$\text{(paires bonnes)} + \text{(paires mauvaises)} = 2019.$$

Une paire devient bonne ou mauvaise au moment précis où la seconde de ses deux cases est coloriée, et elle le reste jusqu'à la fin, car on ne recolorie jamais une case.

Répartissons les cases en trois **chaînes** selon le reste de leur numéro dans la division par $3$ :

$$1, 4, 7, \ldots, 2020 \qquad 2, 5, 8, \ldots, 2021 \qquad 3, 6, 9, \ldots, 2022.$$

Chaque chaîne compte $674$ cases, car $2022 = 3 \times 674$. Les deux cases d'une paire sont toujours deux cases voisines d'une même chaîne.

**Remarque clé.** Si aucune case blanche n'est à distance $3$ d'une case coloriée, alors chaque chaîne est soit entièrement blanche, soit entièrement coloriée. En effet, une chaîne qui contiendrait à la fois des cases blanches et des cases coloriées aurait forcément, quelque part, une case blanche voisine d'une case coloriée.

### Anna peut obtenir au moins 1008

Anna suit la règle suivante.

- **Cas 1.** S'il existe une case blanche à distance $3$ d'une case coloriée, Anna colorie une telle case blanche de la même couleur que sa voisine coloriée. La paire formée par ces deux cases devient bonne à ce coup-là.
- **Cas 2.** Sinon, elle colorie n'importe quelle case blanche.

Dans le cas 2, d'après la remarque clé, chaque chaîne est entièrement blanche ou entièrement coloriée. La case qu'Anna colorie est donc dans une chaîne jusque-là entièrement blanche. Une chaîne ne redevient jamais entièrement blanche, et il n'y a que trois chaînes : **le cas 2 se produit au plus $3$ fois.**

Anna joue $1011$ coups (les coups numéros $1, 3, 5, \ldots, 2021$). Au moins $1011 - 3 = 1008$ d'entre eux relèvent du cas 1, et chacun rend bonne une paire différente. Anna termine donc avec **au moins $1008$ paires bonnes**, quoi que fasse Baptiste.

### Baptiste peut l'empêcher de dépasser 1008

Baptiste suit la règle suivante : il choisit une case blanche à distance $3$ d'une case coloriée, et la colorie de **l'autre couleur**. La paire formée par ces deux cases devient alors mauvaise.

Montrons qu'il peut toujours appliquer cette règle. Supposons qu'à un moment où c'est à lui de jouer, aucune case blanche ne soit à distance $3$ d'une case coloriée. D'après la remarque clé, chaque chaîne est alors entièrement blanche ou entièrement coloriée, donc le nombre de cases coloriées est un multiple de $674$ : c'est un nombre pair. Mais juste avant un coup de Baptiste, Anna a joué un coup de plus que lui, donc le nombre de cases coloriées est impair. C'est une contradiction.

Baptiste joue $1011$ coups (les coups numéros $2, 4, \ldots, 2022$), et chacun rend mauvaise une paire différente. À la fin, il y a donc au moins $1011$ paires mauvaises, et le score d'Anna vaut au plus

$$2019 - 1011 = 1008.$$

### Conclusion

Anna peut s'assurer un score de $1008$, et Baptiste peut l'empêcher de faire mieux. **Le score cherché est $1008$.**

## Going further

1. On garde les $2022$ cases, mais le score d'Anna est maintenant le nombre d'entiers $a \leq 2021$ tels que les cases $a$ et $a + 1$ sont de la même couleur. Quel score Anna peut-elle s'assurer ?
2. Pourquoi est-il important, dans la stratégie de Baptiste, que chaque chaîne compte un nombre **pair** de cases ?
