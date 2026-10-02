---
id: "13445"
title: "Cent nombres autour d'un cercle"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, cercle, maximum, raisonnement-par-l-absurde, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2024"
  reference: "2024-10_Sujet-coupe-Animath-Automne-2024.pdf, épreuve lycée, exercice 14 ; corrigé 2024-10_Corrige-commente-Coupe-Animath-Automne-2024.pdf. La construction donnée ici n'est pas celle du corrigé, elle a été vérifiée par ordinateur"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/10/Sujet-coupe-Animath-Automne-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2024-10_Sujet-coupe-Animath-Automne-2024.pdf"
---

## Statement

Cent nombres réels sont placés autour d'un cercle. Chacun d'eux est strictement plus grand que la somme des deux nombres qui le suivent dans le sens des aiguilles d'une montre.

Combien de ces cent nombres, au maximum, peuvent être strictement positifs ?

## Hints

1. Les cent nombres peuvent-ils être tous strictement positifs ? Regarde le plus grand d'entre eux et le nombre qui le précède.
2. Si deux nombres voisins sont strictement positifs, que peux-tu dire du nombre placé juste avant eux ?
3. Tu dois trouver qu'il y a au plus $50$ nombres strictement positifs. S'il y en a exactement $50$, comment sont-ils placés ? Regarde alors le plus grand des nombres négatifs ou nuls.
4. Pour construire un exemple, place le nombre $1$ une case sur deux, $49$ fois, et des nombres négatifs bien choisis ailleurs.

## Solution

On numérote les nombres $a_1, a_2, \ldots, a_{100}$ dans le sens des aiguilles d'une montre, et on convient que $a_{101} = a_1$, $a_{102} = a_2$, et que $a_0 = a_{100}$ : on tourne autour du cercle. L'hypothèse s'écrit

$$a_i > a_{i+1} + a_{i+2} \qquad \text{pour tout } i.$$

On va montrer que **la réponse est $49$** : d'abord qu'il ne peut pas y avoir plus de $49$ nombres strictement positifs, ensuite qu'on peut en avoir $49$.

### Au plus $49$ nombres strictement positifs

**Étape 1 : les nombres ne sont pas tous strictement positifs.** Supposons le contraire, et soit $a_j$ le plus grand des cent nombres. L'hypothèse appliquée au nombre $a_{j-1}$ donne $a_{j-1} > a_j + a_{j+1}$. Comme $a_{j+1} > 0$, on obtient $a_{j-1} > a_j$, ce qui contredit le fait que $a_j$ est le plus grand. Donc au moins un nombre est négatif ou nul.

**Étape 2 : deux voisins ne sont jamais tous les deux strictement positifs.** Supposons que $a_i > 0$ et $a_{i+1} > 0$ pour un certain $i$. Alors $a_{i-1} > a_i + a_{i+1} > 0$. Les deux voisins $a_{i-1}$ et $a_i$ sont donc eux aussi strictement positifs. En recommençant avec eux, on trouve $a_{i-2} > 0$, puis $a_{i-3} > 0$, et ainsi de suite en faisant tout le tour du cercle : tous les nombres seraient strictement positifs, ce qui est impossible d'après l'étape 1.

**Étape 3 : au plus $50$.** On regroupe les cent nombres en $50$ paires de voisins : $(a_1, a_2)$, $(a_3, a_4)$, $\ldots$, $(a_{99}, a_{100})$. D'après l'étape 2, chaque paire contient au plus un nombre strictement positif. Il y a donc au plus $50$ nombres strictement positifs.

**Étape 4 : pas exactement $50$.** Supposons qu'il y en ait exactement $50$. Alors chacune des $50$ paires contient exactement un nombre strictement positif, et comme deux voisins ne sont jamais tous les deux positifs, les nombres strictement positifs et les autres **alternent** autour du cercle.

Soit $a_j$ le plus grand des nombres négatifs ou nuls. À cause de l'alternance, son voisin $a_{j-1}$ est strictement positif, et le nombre d'avant, $a_{j-2}$, est négatif ou nul. L'hypothèse appliquée à $a_{j-2}$ donne

$$a_{j-2} > a_{j-1} + a_j > a_j,$$

car $a_{j-1} > 0$. Le nombre $a_{j-2}$ est négatif ou nul et plus grand que $a_j$ : c'est impossible, puisque $a_j$ est le plus grand de ces nombres.

Il y a donc au plus $49$ nombres strictement positifs.

### Un exemple avec $49$ nombres strictement positifs

On choisit :

- aux $49$ places paires $2, 4, \ldots, 98$ : le nombre $1$ ;
- aux places impaires : $a_1 = -101$, $a_3 = -103$, $a_5 = -105$, et ainsi de suite jusqu'à $a_{99} = -199$. Autrement dit, $a_{2k+1} = -101 - 2k$ ;
- à la place $100$ : $a_{100} = -99$.

Vérifions l'hypothèse pour chaque nombre.

- **Un nombre $1$ à une place paire $i \leqslant 96$.** Les deux suivants sont un nombre négatif puis $1$. Leur somme est plus petite que $1$.
- **Le nombre $a_{98} = 1$.** Les deux suivants sont $-199$ et $-99$, de somme $-298 < 1$.
- **Un nombre $a_{2k+1} = -101 - 2k$ avec $2k + 1 \leqslant 97$.** Les deux suivants sont $1$ et $-103 - 2k$, de somme $-102 - 2k$, et on a bien $-101 - 2k > -102 - 2k$.
- **Le nombre $a_{99} = -199$.** Les deux suivants sont $a_{100} = -99$ et $a_1 = -101$, de somme $-200 < -199$.
- **Le nombre $a_{100} = -99$.** Les deux suivants sont $a_1 = -101$ et $a_2 = 1$, de somme $-100 < -99$.

Cette disposition contient bien $49$ nombres strictement positifs.

**Conclusion.** Le nombre maximal de réels strictement positifs sur le cercle est $49$.

## Going further

On place maintenant $6$ nombres réels autour d'un cercle, avec la même règle. Montrer qu'au plus $2$ d'entre eux sont strictement positifs, et trouver une disposition qui en contient $2$.
