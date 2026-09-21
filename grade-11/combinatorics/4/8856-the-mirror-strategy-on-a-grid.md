---
id: "8856"
title: "La stratégie du miroir sur la grille"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [jeu, strategie gagnante, symetrie, grille, lignes et colonnes]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Jeux » (Oscar), exercice 3, p. 141"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Rémi et Oscar jouent sur une grille $2025 \times 2025$ dont toutes les cases contiennent $0$ au départ.

Chacun à son tour, en commençant par Rémi, ajoute $1$ au nombre écrit dans une case de son choix (une même case peut servir plusieurs fois). On joue ainsi exactement $2^{2025}$ coups au total, puis la partie s'arrête.

À la fin, on note $\ell_1, \dots, \ell_{2025}$ les sommes des nombres de chaque ligne et $c_1, \dots, c_{2025}$ les sommes des nombres de chaque colonne.

**Oscar gagne** si la liste des sommes de lignes et la liste des sommes de colonnes contiennent exactement les mêmes valeurs : pour tout $i$ il existe $j$ tel que $\ell_i = c_j$, et pour tout $j$ il existe $i$ tel que $c_j = \ell_i$. Sinon c'est Rémi qui gagne.

Lequel des deux joueurs a une stratégie gagnante ?

## Hints

1. Oscar a un objectif de symétrie. Quelle transformation de la grille échange les lignes et les colonnes ?
2. Si la grille est symétrique par rapport à sa diagonale principale, que peut-on dire de $\ell_i$ et $c_i$ ?
3. Oscar joue en second. Comment répondre au coup de Rémi pour rétablir la symétrie ?
4. Combien de coups y a-t-il en tout ? Est-ce Oscar qui joue le dernier ?

## Solution

### L'idée : rendre la grille symétrique

Numérotons les cases par des couples $(i, j)$, avec $i$ le numéro de ligne et $j$ le numéro de colonne. La **transposition** échange la case $(i,j)$ et la case $(j,i)$ : elle échange donc les lignes et les colonnes.

Si, à un instant donné, la grille est symétrique (c'est-à-dire que la case $(i,j)$ et la case $(j,i)$ contiennent toujours le même nombre), alors la $i$-ième ligne contient exactement les mêmes nombres que la $i$-ième colonne, et donc
$$\ell_i = c_i \qquad \text{pour tout } i .$$
Dans ce cas Oscar gagne largement : les deux listes sont identiques, valeur par valeur.

### La stratégie d'Oscar

> Quand Rémi ajoute $1$ à la case $(i, j)$, Oscar ajoute $1$ à la case $(j, i)$.

Si $i = j$, Rémi a joué sur la diagonale, et Oscar rejoue sur la même case $(i,i)$ : c'est autorisé, puisqu'une case peut servir plusieurs fois.

**Pourquoi cela marche.** Montrons qu'après chaque coup d'Oscar, la grille est symétrique.

C'est vrai au départ : toutes les cases valent $0$. Supposons-le vrai après un certain coup d'Oscar. Rémi ajoute $1$ en $(i,j)$, ce qui casse la symétrie uniquement pour la paire $\{(i,j), (j,i)\}$ ; Oscar ajoute alors $1$ en $(j,i)$, ce qui rétablit l'égalité pour cette paire. Toutes les autres paires n'ont pas bougé. La grille est de nouveau symétrique.

### Oscar joue bien le dernier coup

Il reste un point à vérifier : la stratégie ne fonctionne que si Oscar peut répondre à chaque coup de Rémi, c'est-à-dire si le nombre total de coups est **pair** et si Oscar joue en second.

Le nombre total de coups est $2^{2025}$, qui est pair. Rémi commence, Oscar répond, et ainsi de suite : les coups se regroupent en $2^{2024}$ paires (un coup de Rémi, un coup d'Oscar). Le dernier coup de la partie est donc celui d'Oscar, et la grille finale est symétrique.

### Conclusion

$$\boxed{\text{Oscar a une stratégie gagnante.}}$$

### Le point à ne pas manquer

Une stratégie de miroir ne vaut que si le joueur qui l'applique peut toujours répondre. Ici deux choses le garantissent : le coup miroir est **toujours légal** (on a le droit de rejouer sur une case déjà utilisée, ce qui règle le cas de la diagonale), et le nombre de coups est **pair**, ce qui assure qu'Oscar conclut la partie.

## Going further

Même jeu, mais avec $2^{2025} + 1$ coups au total, de sorte que Rémi joue le dernier. Qui gagne alors ?
