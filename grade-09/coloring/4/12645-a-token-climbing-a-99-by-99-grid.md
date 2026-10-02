---
id: "12645"
title: "Un jeton qui monte sur une grille 99 × 99"
grade: 9
theme: coloring
difficulty: 4
duration_min: 30
tags: [jeu, strategie, grille, parite, coloriage, adjacence]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 23 et du 24 février 2022"
  reference: "2022-08_Enonce-Web-Test-3.pdf, exercice 3 (junior) ; corrigé 2022-03_Corrige-Web-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/08/Énoncé-Web-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-08_Enonce-Web-Test-3.pdf"
---

## Statement

Maena et Théodore jouent sur une grille carrée de $99 \times 99$ cases. Deux cases sont dites **adjacentes** si elles ont un côté ou un sommet en commun.

D'abord, Maena numérote les cases de la grille de $1$ à $99^2$, dans l'ordre qu'elle veut, chaque numéro étant utilisé une fois. Ensuite, Théodore pose un jeton sur la case de son choix. Puis il déplace le jeton, autant de fois qu'il le peut, en respectant la règle suivante : il peut faire passer le jeton d'une case à une autre seulement si les deux cases sont adjacentes et si la nouvelle case porte un numéro strictement plus grand que l'ancienne.

Quel est le plus grand nombre de mouvements que Théodore peut être sûr de faire, quelle que soit la façon dont Maena a numéroté la grille ?

## Hints

1. Il y a deux choses à démontrer : une stratégie pour Théodore qui lui garantit un certain nombre de mouvements, et une numérotation pour Maena qui l'empêche d'en faire davantage.
2. Pour Théodore : regarde un carré de $2 \times 2$ cases. Que peut-on dire de ses quatre cases deux à deux ?
3. Pour Maena : essaie de répartir les cases en quelques groupes, de sorte que deux cases d'un même groupe ne soient jamais adjacentes. Pense à la parité du numéro de ligne et du numéro de colonne.
4. Si Maena range les petits numéros dans le premier groupe, les suivants dans le deuxième, et ainsi de suite, que fait le numéro du groupe à chaque mouvement ?

## Solution

On va montrer que **la réponse est $3$** : Théodore peut toujours faire au moins $3$ mouvements, et Maena peut numéroter la grille de sorte qu'il ne puisse jamais en faire $4$.

**Théodore peut toujours faire $3$ mouvements.** Quelle que soit la numérotation, Théodore choisit un carré de $2 \times 2$ cases dans la grille, par exemple celui du coin en haut à gauche. Deux quelconques de ces quatre cases ont un côté ou un sommet en commun : elles sont toutes adjacentes deux à deux.

Théodore range les quatre numéros de ces cases dans l'ordre croissant, $n_1 < n_2 < n_3 < n_4$. Il pose son jeton sur la case de numéro $n_1$, puis va sur celle de numéro $n_2$, puis $n_3$, puis $n_4$. Chaque mouvement va vers une case adjacente de numéro plus grand, donc il est permis. Théodore fait ainsi $3$ mouvements.

**Maena peut empêcher un quatrième mouvement.** On numérote les lignes et les colonnes de $1$ à $99$. Maena répartit les cases en quatre catégories, selon la parité du numéro de ligne et du numéro de colonne :

| catégorie | ligne | colonne |
|---|---|---|
| 1 | impaire | impaire |
| 2 | impaire | paire |
| 3 | paire | impaire |
| 4 | paire | paire |

*Deux cases de la même catégorie ne sont jamais adjacentes.* Si deux cases distinctes sont adjacentes, leurs numéros de ligne diffèrent de $0$ ou $1$, et leurs numéros de colonne aussi. Les deux écarts ne sont pas nuls tous les deux, car les cases sont distinctes. L'un des écarts vaut donc $1$ : les numéros de ligne, ou les numéros de colonne, n'ont pas la même parité. Les deux cases ne sont pas de la même catégorie.

*La numérotation de Maena.* Maena écrit les plus petits numéros dans les cases de catégorie 1, dans n'importe quel ordre. Elle continue avec les cases de catégorie 2, puis de catégorie 3, et finit par celles de catégorie 4. Ainsi, tout numéro d'une case de catégorie 1 est plus petit que tout numéro d'une case de catégorie 2, et ainsi de suite.

*Chaque mouvement fait monter la catégorie.* Lors d'un mouvement, le jeton va sur une case adjacente, donc d'une autre catégorie. Il va aussi vers un numéro plus grand, donc il ne peut pas descendre de catégorie. La catégorie de la case du jeton augmente donc d'au moins $1$ à chaque mouvement. Elle part au moins de $1$ et ne peut pas dépasser $4$ : il y a au plus $3$ mouvements.

**Conclusion.** **Théodore peut toujours garantir $3$ mouvements, et pas davantage.**

## Going further

- Le corrigé insiste sur un point. Montrer que Théodore peut faire $3$ mouvements **quand Maena utilise la numérotation ci-dessus** ne prouve rien : Maena a $(99^2)!$ numérotations possibles, et il faut que la stratégie de Théodore marche pour chacune d'elles. C'est pourquoi on a choisi une stratégie, le carré $2 \times 2$, qui ne dépend pas de la numérotation.
- Que devient la réponse si deux cases sont adjacentes seulement lorsqu'elles ont un **côté** en commun ? Indication : un coloriage en damier, avec deux couleurs, remplace les quatre catégories.
- La taille $99 \times 99$ ne joue aucun rôle. La réponse est la même pour toute grille d'au moins $2 \times 2$ cases.
