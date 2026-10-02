---
id: "12856"
title: "Jetons mauves et jetons bleus sur une grille"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [grille, jetons, maximum, construction, recurrence, permutations]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 27 mars 2024"
  reference: "2025-01_Enonce-Test-4.pdf, test junior, exercice 3 ; corrigé 2025-01_Corrige-Test-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-4.pdf"
---

## Statement

Soit $n \geq 2$ un entier. On dispose d'une grille de $n$ lignes et $n$ colonnes.

Morgane place d'abord $n$ jetons mauves sur des cases de la grille, de sorte que chaque ligne et chaque colonne contienne exactement un jeton mauve.

Bosphore place ensuite $k$ jetons bleus sur des cases restées libres, en respectant la règle suivante : lorsque deux jetons bleus sont sur une même ligne, ou sur une même colonne, il y a un jeton mauve entre les deux.

Déterminer, en fonction de $n$, la plus grande valeur de $k$ telle que Bosphore puisse placer $k$ jetons bleus, quelle que soit la disposition choisie par Morgane.

## Hints

1. Combien de jetons bleus Bosphore peut-il placer, au plus, sur une même ligne ? Et sur la ligne dont le jeton mauve est dans la première colonne ?
2. Le jeton mauve d'une ligne coupe cette ligne en deux morceaux, l'un à gauche et l'un à droite du jeton. Chaque morceau contient au plus un jeton bleu. Comptez les morceaux qui ne sont pas vides.
3. Pour montrer que la borne est atteinte, raisonnez par récurrence sur $n$ : retirez de la grille la dernière colonne et la ligne de son jeton mauve, placez les jetons bleus dans la grille restante, puis complétez.
4. Retirer la dernière ligne et la dernière colonne ne marche que si elles se croisent sur le jeton mauve. Dans le cas général, il faut parfois **déplacer** un jeton bleu déjà placé, d'une case vers le bas.

## Solution

La réponse est $k = 2n - 2$.

### Vocabulaire

Sur chaque ligne, le jeton mauve coupe la ligne en deux morceaux : la **demi-ligne gauche**, formée des cases à sa gauche, et la **demi-ligne droite**, formée des cases à sa droite. L'une des deux est vide quand le jeton mauve est dans la première ou dans la dernière colonne. On définit de même la **demi-colonne haute** et la **demi-colonne basse** de chaque colonne.

La règle de Bosphore dit exactement ceci : **chaque demi-ligne et chaque demi-colonne contient au plus un jeton bleu.** En effet, deux cases d'une même ligne sont séparées par le jeton mauve si et seulement si elles sont dans deux demi-lignes différentes.

### Étape 1 : au plus 2n − 2 jetons bleus

Comptons les demi-lignes qui ne sont pas vides. Chaque ligne en a deux, sauf la ligne dont le jeton mauve est dans la colonne $1$ et la ligne dont le jeton mauve est dans la colonne $n$, qui n'en ont qu'une. Ce sont deux lignes différentes, car $n \geq 2$. Il y a donc $2n - 2$ demi-lignes non vides.

Chaque jeton bleu est dans une demi-ligne non vide, et chacune en contient au plus un. Donc, quelle que soit la disposition de Morgane, **Bosphore place au plus $2n - 2$ jetons bleus.**

Retenons aussi une conséquence. Si Bosphore réussit à placer $2n - 2$ jetons bleus, alors toutes les demi-lignes non vides contiennent exactement un jeton bleu. Le même raisonnement sur les colonnes montre que, dans ce cas, **chaque demi-colonne non vide contient aussi exactement un jeton bleu.**

### Étape 2 : 2n − 2 jetons bleus, c'est toujours possible

Montrons que, pour **toute** disposition de Morgane, Bosphore peut placer $2n - 2$ jetons bleus. On le montre pour toute taille de grille $m \geq 1$, par récurrence : on vérifie le cas $m = 1$, puis on montre que si c'est possible pour toutes les grilles de taille $m - 1$, c'est possible pour toutes les grilles de taille $m$. Cela donne successivement les tailles $2$, $3$, $4$, et ainsi de suite.

Pour $m = 1$, il faut placer $0$ jeton bleu : il n'y a rien à faire.

Soit maintenant $m \geq 2$, et une disposition de Morgane sur une grille de taille $m$. On numérote les lignes de $1$ à $m$ de haut en bas, et les colonnes de $1$ à $m$ de gauche à droite. On note :

- $r$ la ligne du jeton mauve de la dernière colonne $m$ ;
- $\rho$ la ligne du jeton mauve de l'avant-dernière colonne $m - 1$.

On a $r \neq \rho$. On retire de la grille la ligne $r$ et la colonne $m$. Il reste une grille de taille $m - 1$, avec exactement un jeton mauve par ligne et par colonne. Par hypothèse de récurrence, Bosphore y place $2(m - 1) - 2 = 2m - 4$ jetons bleus en respectant la règle. D'après l'étape 1, chaque demi-ligne et chaque demi-colonne non vide de cette petite grille contient exactement un jeton bleu.

On remet ensuite la ligne $r$ et la colonne $m$. Les jetons bleus déjà placés respectent toujours la règle : la ligne $r$ et la colonne $m$ ne contiennent aucun jeton bleu, et remettre une ligne entre deux lignes ne change pas l'ordre des cases dans une colonne. Il reste à ajouter deux jetons bleus. On distingue trois cas.

**Cas A : $r = m$.** Le jeton mauve est dans le coin en bas à droite. Notons $c$ la colonne du jeton mauve de la ligne $m - 1$. On ajoute un jeton bleu sur la case (ligne $m$, colonne $c$) et un sur la case (ligne $\rho$, colonne $m$).

- Le premier est le seul jeton bleu de la ligne $m$. Dans la colonne $c$, le jeton mauve est sur la ligne $m - 1$, juste au-dessus : le jeton bleu est le seul de la demi-colonne basse, qui ne contient que cette case.
- Le second est seul dans la colonne $m$. Sur la ligne $\rho$, le jeton mauve est dans la colonne $m - 1$ : la demi-ligne droite ne contient que la case de la colonne $m$, et ce jeton y est seul.

**Cas B : $2 \leq r < \rho$.** Regardons la ligne $r - 1$, qui fait partie de la petite grille. Son jeton mauve n'est pas dans la colonne $m - 1$, car $r - 1 \neq \rho$. Sa demi-ligne droite dans la petite grille n'est donc pas vide, et elle contient exactement un jeton bleu, dans une colonne $j \leq m - 1$.

- On **descend** ce jeton bleu d'une case, de la ligne $r - 1$ à la ligne $r$, dans la même colonne $j$.
- On ajoute un jeton bleu sur la case (ligne $r - 1$, colonne $m$) et un sur la case (ligne $\rho$, colonne $m$).

Vérifions la règle.

- Le jeton descendu reste du même côté du jeton mauve de la colonne $j$, puisque ce jeton mauve n'est ni sur la ligne $r - 1$ (il y a déjà un jeton bleu) ni sur la ligne $r$ (son jeton mauve est dans la colonne $m$). Sur la ligne $r$, c'est le seul jeton bleu.
- Dans la colonne $m$, le jeton mauve est sur la ligne $r$. Le jeton de la ligne $r - 1$ est au-dessus, celui de la ligne $\rho > r$ est en dessous : ils sont séparés.
- Sur la ligne $r - 1$, la demi-ligne droite a perdu son jeton bleu, qui a été descendu, et vient d'en recevoir un dans la colonne $m$ : elle en contient toujours un seul.
- Sur la ligne $\rho$, le jeton mauve est dans la colonne $m - 1$ : la demi-ligne droite ne contient que la case de la colonne $m$, et ce jeton y est seul.

**Cas C : $r = 1$, ou $\rho < r \leq m - 1$.** On retourne la grille de haut en bas. La règle de Bosphore ne change pas, la ligne $r$ devient la ligne $m + 1 - r$ et la ligne $\rho$ devient la ligne $m + 1 - \rho$. Si $r = 1$, on se ramène au cas A. Si $\rho < r \leq m - 1$, on a $2 \leq m + 1 - r < m + 1 - \rho$, et on se ramène au cas B.

Les trois cas couvrent toutes les possibilités. Dans chacun, Bosphore place $2m - 4 + 2 = 2m - 2$ jetons bleus en respectant la règle, ce qui termine la récurrence.

### Un exemple

Voici ce que donne cette méthode pour une grille de taille $5$ ($M$ désigne un jeton mauve, $B$ un jeton bleu).

| | 1 | 2 | 3 | 4 | 5 |
|---|---|---|---|---|---|
| 1 | $B$ | | $M$ | | $B$ |
| 2 | | | | $B$ | $M$ |
| 3 | $M$ | $B$ | | | |
| 4 | | | $B$ | $M$ | $B$ |
| 5 | $B$ | $M$ | | $B$ | |

Il y a bien $2 \times 5 - 2 = 8$ jetons bleus.

### Conclusion

Bosphore ne peut jamais placer plus de $2n - 2$ jetons bleus, et il peut toujours en placer $2n - 2$, quelle que soit la disposition de Morgane. **La plus grande valeur de $k$ est $2n - 2$.**

## Going further

1. Pour $n = 3$, trouvez toutes les dispositions de Morgane, et pour chacune toutes les façons de placer $4$ jetons bleus.
2. Retrouvez, en suivant la méthode de l'étape 2 pas à pas, la grille de l'exemple. Par quels cas passe-t-on ?
