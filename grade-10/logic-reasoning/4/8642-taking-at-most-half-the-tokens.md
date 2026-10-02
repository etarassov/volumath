---
id: "8642"
title: "Prendre au plus la moitié des jetons"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 45
tags: [strategie-gagnante, positions-perdantes, recurrence, suites]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Jeux » (Théo & Augustin), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Sur une table se trouvent $2023$ jetons. Tour à tour, Adrien et Iris enlèvent des jetons : à chaque tour, le joueur doit enlever **au moins un** jeton et **au plus la moitié** des jetons présents sur la table au moment où il joue.

Le joueur qui laisse un unique jeton sur la table a perdu.

C'est Adrien qui commence. Lequel des deux joueurs a une stratégie gagnante, et laquelle ?

## Hints

1. Commence tout petit. Avec $2$ jetons, que peut faire le joueur qui doit jouer ? Et avec $3$ ? avec $4$ ? avec $5$ ?
2. Appelle **perdante** une position d'où le joueur qui doit jouer perd. Tu devrais trouver que $2$ et $5$ sont perdantes. Cherche la suivante.
3. Les positions perdantes sont $2$, $5$, $11$, $23$... Quelle est la règle qui passe de l'une à la suivante ?
4. Si $u$ est une position perdante, montre que depuis $2u + 1$ **tous** les coups mènent à une position entre $u+1$ et $2u$, donc jamais à $u$.
5. Et réciproquement, depuis une position strictement entre deux termes de la suite, montre qu'on peut toujours redescendre exactement sur le terme précédent.

## Solution

**Le vocabulaire.** Appelons **perdante** une position (un nombre de jetons au moment où c'est votre tour) d'où le joueur qui doit jouer perdra si son adversaire joue bien, et **gagnante** sinon. Depuis une position à $a$ jetons, les coups possibles mènent aux positions $a - b$ avec $1 \leqslant b \leqslant \left\lfloor \dfrac{a}{2} \right\rfloor$ ; attention, laisser exactement $1$ jeton est un coup légal, mais c'est une défaite immédiate.

**Les petites positions.**

- $a = 2$ : le seul coup autorisé est d'enlever $1$ jeton, ce qui laisse exactement $1$ jeton. Le joueur perd. **$2$ est perdante.**
- $a = 3$ : on peut enlever $1$ jeton et laisser $2$, qui est perdante pour l'adversaire. **$3$ est gagnante.**
- $a = 4$ : on peut enlever $2$ jetons et laisser $2$. **Gagnante.**
- $a = 5$ : on peut enlever $1$ ou $2$ jetons, ce qui laisse $4$ ou $3$, toutes deux gagnantes pour l'adversaire. **$5$ est perdante.**
- De $6$ à $10$ : on peut toujours redescendre exactement sur $5$, car il faut enlever entre $1$ et $5$ jetons et la moitié le permet. **Gagnantes.**
- $a = 11$ : les coups laissent entre $6$ et $10$ jetons, toutes gagnantes. **$11$ est perdante.**

**La suite.** Les positions perdantes trouvées sont $2, 5, 11, 23, \ldots$ et la règle saute aux yeux : on double et on ajoute $1$. Posons

$$u_1 = 2 \qquad \text{et} \qquad u_{k+1} = 2u_k + 1 .$$

*Affirmation : les positions perdantes sont exactement les termes de cette suite.*

**Démonstration.** Deux points à établir.

*D'abord, depuis $u_{k+1} = 2u_k + 1$ on ne peut pas atteindre $u_k$.* En effet on enlève au plus $\left\lfloor \dfrac{2u_k+1}{2} \right\rfloor = u_k$ jetons, donc il en reste au moins $2u_k + 1 - u_k = u_k + 1 > u_k$. Tous les coups laissent donc un nombre de jetons strictement compris entre $u_k$ et $u_{k+1}$.

*Ensuite, depuis toute position $a$ avec $u_k < a < u_{k+1}$, on peut atteindre $u_k$.* Il faut enlever $b = a - u_k$ jetons. C'est bien au moins $1$. Et c'est au plus la moitié : la condition $a - u_k \leqslant \dfrac{a}{2}$ équivaut à $a \leqslant 2u_k$, ce qui est vrai puisque $a < u_{k+1} = 2u_k + 1$.

En combinant les deux points par récurrence sur $k$ : les termes $u_k$ sont perdants (tous leurs coups mènent dans l'intervalle suivant, donc à des positions gagnantes), et toutes les positions intermédiaires sont gagnantes (on redescend sur le terme précédent). $\square$

**Les valeurs.** Calculons les premiers termes :

$$2, \; 5, \; 11, \; 23, \; 47, \; 95, \; 191, \; 383, \; 767, \; 1535, \; 3071, \ldots$$

*(On reconnaît $u_k = 3 \times 2^{\,k-1} - 1$.)*

**Conclusion.** Le nombre $2023$ n'est pas un terme de cette suite, puisque $1535 < 2023 < 3071$ : la position de départ est **gagnante**.

**Adrien, qui commence, a donc une stratégie gagnante.** Son premier coup : enlever $2023 - 1535 = 488$ jetons, ce qui est autorisé car $488 \leqslant \left\lfloor \dfrac{2023}{2} \right\rfloor = 1011$. Ensuite, chaque fois qu'Iris le laisse avec $a$ jetons vérifiant $u_k < a < u_{k+1}$, il redescend exactement sur $u_k$. Iris finit donc par se retrouver devant $2$ jetons et doit en laisser un seul.

## Going further

La formule $u_k = 3 \times 2^{\,k-1} - 1$ se vérifie immédiatement par récurrence : si $u_k = 3 \times 2^{\,k-1} - 1$, alors $u_{k+1} = 2u_k + 1 = 3 \times 2^{\,k} - 2 + 1 = 3 \times 2^{\,k} - 1$.

Cela donne un critère instantané : la position à $n$ jetons est perdante si et seulement si $n + 1$ est de la forme $3 \times 2^{\,k}$. Essaie avec $n = 6143$.
