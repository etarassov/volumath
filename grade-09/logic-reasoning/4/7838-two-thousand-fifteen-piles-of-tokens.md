---
id: "7838"
title: "2015 piles de jetons et les nombres premiers"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [invariant, parite, nombres-premiers, comptage-de-coups]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, première période, groupe A « stratégies de base », mardi 18 matin (Arsène Pierrot), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

On dispose $2015$ piles de jetons sur une table. La $i$-ième pile contient $p_i$ jetons, où
$p_i$ est le $i$-ième nombre premier : la première pile contient $2$ jetons, la deuxième $3$,
la troisième $5$, la quatrième $7$, et ainsi de suite.

On s'autorise deux opérations, réalisables autant de fois qu'on veut :

- **couper** une pile en deux piles (pas forcément de même taille), puis ajouter un jeton à
  l'une des deux piles ainsi formées ;
- **fusionner** deux piles en une seule, puis ajouter un jeton à la pile ainsi formée.

Peut-on arriver à $2015$ piles contenant chacune $2015$ jetons ?

## Hints

1. Ne cherche pas à suivre les piles une par une : elles sont trop nombreuses. Regarde
   seulement deux nombres globaux, le **nombre de piles** et le **nombre total de jetons**.
2. Que fait chaque opération au nombre de piles ? Et au nombre total de jetons ?
3. On part de $2015$ piles et on veut arriver à $2015$ piles. Que peut-on en déduire sur le
   nombre de coupes comparé au nombre de fusions ? Et donc sur la **parité** du nombre total de
   coups ?
4. Calcule maintenant la parité du nombre de jetons au départ et à l'arrivée. Attention : $2$
   est le seul nombre premier pair.

## Solution

**Étape 1 : l'effet de chaque opération.**

| opération | nombre de piles | nombre total de jetons |
|---|---|---|
| couper puis ajouter un jeton | $+1$ | $+1$ |
| fusionner puis ajouter un jeton | $-1$ | $+1$ |

Deux faits en sortent :

- **chaque coup ajoute exactement un jeton**, quel qu'il soit ;
- une coupe augmente le nombre de piles de $1$, une fusion le diminue de $1$.

**Étape 2 : le nombre total de coups est pair.**

On part de $2015$ piles et on veut finir avec $2015$ piles. Le nombre de piles revient donc à sa
valeur de départ : les $+1$ et les $-1$ se compensent exactement, c'est-à-dire qu'il y a eu
**autant de coupes que de fusions**.

Si $c$ désigne ce nombre commun, le nombre total de coups vaut $2c$ : il est **pair**.

D'après l'étape 1, le nombre de jetons ajoutés en tout vaut aussi $2c$ : il est **pair**.

**Étape 3 : le nombre de jetons ajoutés devrait être impair.**

*Au départ.* Le total vaut
$$2 + 3 + 5 + 7 + 11 + \cdots + p_{2015} .$$
Le premier terme est $2$, pair. Tous les autres sont des nombres premiers impairs, et il y en a
$2014$, c'est-à-dire un nombre **pair** de termes impairs : leur somme est paire. Donc le total
de départ est pair (pair $+$ pair).

*À l'arrivée.* Le total vaudrait $2015 \times 2015$, produit de deux nombres impairs, donc
**impair**.

*Ce qu'il a fallu ajouter :*
$$\text{impair} - \text{pair} = \text{impair}.$$

**Étape 4 : la contradiction.**

Le nombre de jetons ajoutés devrait être à la fois pair (étape 2) et impair (étape 3). C'est
impossible.

**Conclusion.** Non, on ne peut pas arriver à $2015$ piles de $2015$ jetons.

*Remarque.* Le fait que les tailles de départ soient les nombres premiers ne sert qu'à une
chose : garantir qu'exactement une pile est paire, donc que la somme de départ est paire. Avec
$2015$ piles de tailles toutes impaires, la somme serait impaire et l'argument tomberait.
