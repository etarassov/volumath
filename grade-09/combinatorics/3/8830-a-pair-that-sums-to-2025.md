---
id: "8830"
title: "Une paire qui fait 2025"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [principe des tiroirs, paires, somme, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe des tiroirs » (Emilhan), exercice 5, p. 110"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On choisit $1013$ nombres, tous différents, parmi $1, 2, 3, \dots, 2024$.

Montrer qu'il y en a forcément deux dont la somme vaut exactement $2025$.

## Hints

1. On veut deux nombres dont la somme est $2025$. Regroupe donc à l'avance les nombres de $1$ à $2024$ en paires dont la somme vaut $2025$.
2. Quelle est la première paire ? Et la dernière ? Combien y a-t-il de paires en tout ?
3. Les tiroirs seront ces paires, les chaussettes les nombres choisis.

## Solution

### Le regroupement

Appairons les nombres de $1$ à $2024$ de façon que chaque paire ait pour somme $2025$ :
$$\{1, 2024\}, \quad \{2, 2023\}, \quad \{3, 2022\}, \quad \dots, \quad \{1012, 1013\} .$$

Vérifions que c'est bien un découpage de tous les nombres. La paire générale est $\{k, \; 2025-k\}$ pour $k$ allant de $1$ à $1012$. Quand $k$ parcourt $1, \dots, 1012$, le nombre $2025-k$ parcourt $2024, \dots, 1013$. Les deux moitiés $\{1, \dots, 1012\}$ et $\{1013, \dots, 2024\}$ sont ainsi entièrement utilisées, et chaque nombre appartient à exactement une paire.

Il y a donc $1012$ paires, qui se partagent les $2024$ nombres.

### Le principe des tiroirs

Les **tiroirs** sont les $1012$ paires, les **chaussettes** sont les $1013$ nombres choisis. Comme
$$1013 > 1012 ,$$
deux des nombres choisis appartiennent à une même paire. Ces deux nombres sont différents (on a choisi des nombres tous différents) et leur somme vaut $2025$, par construction des paires.

**Conclusion.** Parmi $1013$ nombres distincts pris entre $1$ et $2024$, il y en a toujours deux de somme $2025$.

### Le nombre $1013$ est optimal

Avec $1012$ nombres seulement, ce n'est plus garanti : choisissons $1, 2, 3, \dots, 1012$. Deux d'entre eux ont pour somme au plus $1011 + 1012 = 2023 < 2025$. Aucune paire ne fait $2025$.

## Going further

1. Combien de nombres faut-il choisir parmi $1, \dots, 2024$ pour être sûr d'en avoir deux dont la **différence** vaut $1012$ ?
2. Parmi $1013$ nombres choisis entre $1$ et $2024$, est-on sûr d'en trouver deux dont la somme vaut $2026$ ? (Attention : la réponse n'est pas la même, regardez de près quels nombres se retrouvent sans partenaire.)
