---
id: "8864"
title: "Une sous-suite monotone est toujours là"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [principe-des-tiroirs, suites, sous-suite, monotonie, couples]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe B, « Combinatoire : Révisions » (Maryam), d'après les stages de Valbonne 2018 et 2023"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Combinatoire : Révisions », exercice 5 (théorème d'Erdős–Szekeres), p. 226 et 229"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On écrit $n^2 + 1$ nombres réels à la suite les uns des autres :
$$a_1, \; a_2, \; \dots, \; a_{n^2+1} .$$

Une **sous-suite** consiste à garder certains de ces nombres sans changer leur ordre : on choisit des indices $i_1 < i_2 < \dots < i_k$ et on regarde $a_{i_1}, a_{i_2}, \dots, a_{i_k}$. Elle est dite **croissante** si $a_{i_1} \leqslant a_{i_2} \leqslant \dots \leqslant a_{i_k}$, **décroissante** si $a_{i_1} \geqslant a_{i_2} \geqslant \dots \geqslant a_{i_k}$, et **monotone** si elle est l'une des deux.

Montrer qu'il existe toujours une sous-suite monotone de longueur $n+1$.

Par exemple pour $n = 2$ : parmi cinq nombres quelconques, on peut toujours en extraire trois qui sont croissants ou trois qui sont décroissants.

## Hints

1. Fais d'abord le cas $n = 2$ à la main sur quelques exemples de cinq nombres, pour sentir que l'énoncé résiste.
2. Raisonne par l'absurde : suppose que toute sous-suite monotone a une longueur au plus $n$.
3. À chaque terme $a_i$, associe deux entiers : la longueur $\ell_i$ de la plus longue sous-suite **croissante qui se termine** en $a_i$, et la longueur $d_i$ de la plus longue sous-suite **décroissante qui se termine** en $a_i$. Le terme $a_i$ compte dans ces longueurs, donc $\ell_i \geqslant 1$ et $d_i \geqslant 1$.
4. Combien de couples $(\ell_i, d_i)$ sont possibles sous l'hypothèse absurde ? Combien de termes as-tu ?
5. Prends deux termes $a_i$ et $a_j$ avec $i < j$ et le même couple. Compare $a_i$ et $a_j$ : dans les deux cas tu vas allonger une sous-suite d'un cran.

## Solution

Raisonnons par l'absurde et supposons que **toute** sous-suite monotone a une longueur au plus $n$.

### Deux étiquettes par terme

Pour chaque indice $i$ entre $1$ et $n^2+1$, posons

- $\ell_i$ = la longueur de la plus longue sous-suite croissante **qui se termine par $a_i$** ;
- $d_i$ = la longueur de la plus longue sous-suite décroissante **qui se termine par $a_i$**.

Le terme $a_i$ tout seul est une sous-suite croissante de longueur $1$ et une sous-suite décroissante de longueur $1$, donc $\ell_i \geqslant 1$ et $d_i \geqslant 1$. Et par hypothèse absurde,
$$1 \leqslant \ell_i \leqslant n \qquad \text{et} \qquad 1 \leqslant d_i \leqslant n .$$

### Les tiroirs

Le couple $(\ell_i, d_i)$ ne peut donc prendre que $n \times n = n^2$ valeurs. Or il y a $n^2 + 1$ indices. Par le principe des tiroirs, deux indices différents portent le même couple : il existe $i < j$ avec
$$\ell_i = \ell_j \qquad \text{et} \qquad d_i = d_j .$$

### La contradiction

Comme $a_i$ et $a_j$ sont deux nombres réels, on a forcément $a_j \geqslant a_i$ ou $a_j \leqslant a_i$ (et peut-être les deux, s'ils sont égaux).

**Premier cas : $a_j \geqslant a_i$.** Prenons une sous-suite croissante de longueur $\ell_i$ qui se termine par $a_i$, et ajoutons-lui $a_j$ à la fin. C'est licite, car $i < j$ respecte l'ordre des indices, et $a_j \geqslant a_i$ maintient la croissance. On obtient une sous-suite croissante de longueur $\ell_i + 1$ terminant en $a_j$, donc
$$\ell_j \geqslant \ell_i + 1 > \ell_i ,$$
ce qui contredit $\ell_j = \ell_i$.

**Second cas : $a_j \leqslant a_i$.** Le même raisonnement avec les sous-suites décroissantes donne $d_j \geqslant d_i + 1 > d_i$, ce qui contredit $d_j = d_i$.

Dans les deux cas, contradiction. L'hypothèse absurde tombe.

### Conclusion

Parmi $n^2+1$ réels quelconques, il existe toujours une sous-suite monotone de longueur $n+1$.

### Le résultat est optimal

Avec seulement $n^2$ termes, la conclusion peut être fausse. Prenons les $n^2$ nombres rangés en $n$ blocs décroissants dont les blocs, eux, montent :
$$\underbrace{n, \; n-1, \; \dots, \; 1}_{\text{bloc } 1}, \quad \underbrace{2n, \; 2n-1, \; \dots, \; n+1}_{\text{bloc } 2}, \quad \dots, \quad \underbrace{n^2, \; \dots, \; n^2-n+1}_{\text{bloc } n} .$$

Une sous-suite croissante prend au plus un terme par bloc, donc a une longueur au plus $n$. Une sous-suite décroissante reste à l'intérieur d'un bloc, car tout terme d'un bloc est plus petit que tout terme d'un bloc suivant, donc a elle aussi une longueur au plus $n$. Il n'y a donc aucune sous-suite monotone de longueur $n+1$ : le nombre $n^2+1$ de l'énoncé ne peut pas être abaissé.

## Going further

1. Traiter le cas $n = 2$ entièrement à la main : parmi cinq nombres, trouver systématiquement trois croissants ou trois décroissants, sans passer par les couples $(\ell_i, d_i)$.
2. On suppose maintenant que les $n^2+1$ nombres sont **deux à deux distincts**. Où la démonstration se simplifie-t-elle ?
3. Combien faut-il de nombres pour garantir une sous-suite croissante de longueur $p+1$ **ou** une sous-suite décroissante de longueur $q+1$, où $p$ et $q$ peuvent être différents ?
