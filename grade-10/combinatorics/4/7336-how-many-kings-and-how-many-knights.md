---
id: "7336"
title: "Combien de rois, combien de cavaliers"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [echiquier, principe-des-tiroirs, maximum, decoupage, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la seconde mi-temps », en TD, combinatoire, exercice 79"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

On travaille sur un échiquier $8 \times 8$, avec au plus une pièce par case.

1. Quel est le nombre maximal de **rois** que l'on peut poser de sorte que deux d'entre eux ne se menacent jamais ? *(Un roi menace les $8$ cases qui touchent la sienne, par un côté ou par un coin.)*
2. Même question pour les **cavaliers**. *(Un cavalier menace les cases atteintes en avançant de deux cases dans une direction, puis d'une case perpendiculairement.)*

Dans chaque cas, il faut **deux choses** : une disposition qui atteint le nombre annoncé, et une preuve qu'on ne peut pas faire mieux.

## Hints

1. Pour la borne supérieure, la méthode est toujours la même : découper l'échiquier en morceaux tels que deux pièces dans le même morceau se menacent forcément. Le principe des tiroirs fait le reste.
2. **Rois.** Quel est le plus petit morceau dans lequel deux rois se menacent à coup sûr ? En combien de tels morceaux l'échiquier se découpe-t-il ?
3. **Rois, construction.** Pose un roi une case sur deux, dans les deux directions.
4. **Cavaliers, construction.** Regarde la couleur des cases : où atterrit un cavalier parti d'une case blanche ?
5. **Cavaliers, borne supérieure.** Un carré $2 \times 2$ ne sert à rien ici, puisque deux cavaliers voisins ne se menacent pas. Essaie plutôt des rectangles $2 \times 4$ et cherche à l'intérieur des **paires** de cases qui se menacent.

## Solution

### 1. Les rois : le maximum est 16

**On ne peut pas dépasser $16$.** Découpons l'échiquier en $16$ carrés $2 \times 2$ (quatre rangées de quatre carrés). Deux cases d'un même carré $2 \times 2$ se touchent, par un côté ou par un coin : deux rois qui s'y trouvent se menacent donc.

Si l'on posait $17$ rois, le principe des tiroirs donnerait deux rois dans un même carré $2 \times 2$, donc deux rois qui se menacent. C'est interdit, donc il y a au plus $16$ rois.

**On atteint $16$.** Plaçons un roi sur chaque case dont la ligne et la colonne sont toutes les deux impaires : lignes $1, 3, 5, 7$ et colonnes $1, 3, 5, 7$. Cela fait $4 \times 4 = 16$ rois, et deux d'entre eux sont toujours séparés par au moins une ligne ou une colonne vide : ils ne se touchent pas.

$$\boxed{\text{Au plus } 16 \text{ rois.}}$$

### 2. Les cavaliers : le maximum est 32

**On atteint $32$.** Un cavalier posé sur une case blanche ne menace que des cases noires : son déplacement, deux cases puis une, change toujours la couleur de la case.

Posons donc un cavalier sur **chacune des $32$ cases blanches**. Aucun ne menace un autre, puisque toutes les cases menacées sont noires et qu'elles sont vides. Cela fait $32$ cavaliers.

**On ne peut pas dépasser $32$.** Ici, découper en carrés $2 \times 2$ ne sert à rien : deux cavaliers dans un même carré $2 \times 2$ ne se menacent pas. Prenons des morceaux plus grands.

Découpons l'échiquier en $8$ rectangles $2 \times 4$ (c'est possible : $8 \times 8 = 8 \times (2 \times 4)$). À l'intérieur d'un tel rectangle, numérotons les $8$ cases ainsi :

| $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|
| $3$ | $4$ | $1$ | $2$ |

Les deux cases portant le même numéro se menacent. Vérifions-le pour le numéro $1$ : la case du haut est en ligne $1$, colonne $1$ ; celle du bas est en ligne $2$, colonne $3$. On passe de l'une à l'autre en avançant de deux colonnes et d'une ligne : c'est bien un saut de cavalier. Les trois autres paires se vérifient de la même façon.

Chaque rectangle $2 \times 4$ est donc formé de **$4$ paires de cases qui se menacent**.

Supposons maintenant que l'on pose $33$ cavaliers. Par le principe des tiroirs, l'un des $8$ rectangles en contient au moins
$$\left\lceil \frac{33}{8} \right\rceil = 5 .$$
Ces $5$ cavaliers se répartissent dans les $4$ paires du rectangle : de nouveau par le principe des tiroirs, deux d'entre eux tombent dans la même paire, donc se menacent.

Il est donc impossible de dépasser $32$ cavaliers.

$$\boxed{\text{Au plus } 32 \text{ cavaliers.}}$$

### Ce qu'il faut retenir

Les deux questions se résolvent avec la même recette : **découper le plateau en morceaux où deux pièces se gênent forcément**, puis compter. Toute la difficulté est de trouver le bon découpage, et il change avec la pièce : $2 \times 2$ pour le roi, $2 \times 4$ pour le cavalier.

## Going further

1. Pour les cavaliers, la solution à $32$ n'est pas unique : les $32$ cases noires marchent aussi. Y en a-t-il d'autres ?
2. Même question pour les **tours** : combien au maximum sur un $8 \times 8$ ? Et pour les **fous** ?
3. Reprends les rois sur un échiquier $n \times n$. Le maximum vaut-il toujours $\left\lceil n/2 \right\rceil^2$ ?
4. Reprends les cavaliers sur un échiquier $4 \times 4$ : le découpage en rectangles $2 \times 4$ marche-t-il encore, et quel est le maximum ? Puis cherche le maximum sur un échiquier $3 \times 3$ — la réponse y est surprenante.
