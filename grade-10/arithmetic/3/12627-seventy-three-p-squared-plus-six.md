---
id: "12627"
title: "73p² + 6 = 9a² + 17b² + 17c²"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [equation-diophantienne, nombres-premiers, carres, restes, parite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 12 mai 2021"
  reference: "2021-12_Sujet-test-5-2021.pdf, exercice 2 (junior) ; corrigé 2021-05_Corrige-Web-Test-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-test-5-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Sujet-test-5-2021.pdf"
---

## Statement

Trouver tous les quadruplets $(a, b, c, p)$ d'entiers relatifs tels que $p$ soit un nombre premier et
$$73p^2 + 6 = 9a^2 + 17b^2 + 17c^2.$$

## Hints

1. L'équation contient beaucoup de carrés. Quels sont les restes possibles d'un carré dans la division par 8 ?
2. Si $p$ est un nombre premier impair, quel est le reste de $73p^2 + 6$ dans la division par 8 ? Quels restes peut avoir le membre de droite ?
3. Il reste le cas $p = 2$. Combien de valeurs de $a$ sont possibles ? Pour chacune, le nombre $298 - 9a^2$ doit être un multiple de 17.

## Solution

On utilise la règle habituelle : le reste d'une somme ou d'un produit dans la division par 8 ne dépend que des restes des termes.

**Les carrés dans la division par 8.** Si $n = 2m$ est pair, alors $n^2 = 4m^2$ a pour reste 0 (si $m$ est pair) ou 4 (si $m$ est impair). Si $n = 2m + 1$ est impair, alors $n^2 = 4m(m + 1) + 1$. Le produit $m(m + 1)$ de deux entiers consécutifs est pair, donc $4m(m+1)$ est un multiple de 8, et $n^2$ a pour reste 1.

Un carré a donc pour reste 0, 1 ou 4 dans la division par 8. Un carré impair a toujours pour reste 1.

**Le nombre premier $p$ vaut 2.** Supposons $p$ impair. Alors $p^2$ a pour reste 1. Comme $73 = 9 \times 8 + 1$, le nombre $73p^2$ a pour reste 1, et $73p^2 + 6$ a pour reste 7.

À droite, $9 = 8 + 1$ et $17 = 2 \times 8 + 1$ ont pour reste 1. Le membre de droite a donc le même reste que $a^2 + b^2 + c^2$. En additionnant trois restes pris parmi 0, 1 et 4, on obtient
$$0,\ 1,\ 2,\ 3,\ 4,\ 5,\ 6,\ 8,\ 9 \ \text{ou}\ 12,$$
c'est-à-dire les restes 0, 1, 2, 3, 4, 5, 6, 0, 1 ou 4. Le reste 7 n'apparaît jamais. C'est une contradiction, donc $p$ n'est pas impair. Le seul nombre premier pair est 2, donc $p = 2$.

**Le cas $p = 2$.** L'équation devient
$$9a^2 + 17b^2 + 17c^2 = 73 \times 4 + 6 = 298.$$
Changer le signe de $a$, de $b$ ou de $c$ ne change rien. On cherche donc d'abord les solutions avec $a$, $b$, $c$ positifs ou nuls.

Comme $9a^2 \leqslant 298$, on a $a^2 \leqslant 33$, donc $a \leqslant 5$. Pour chaque valeur de $a$, le nombre $17(b^2 + c^2) = 298 - 9a^2$ doit être un multiple de 17 :

| $a$ | 0 | 1 | 2 | 3 | 4 | 5 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| $298 - 9a^2$ | 298 | 289 | 262 | 217 | 154 | 73 |
| reste dans la division par 17 | 9 | 0 | 7 | 13 | 1 | 5 |

Seul $a = 1$ convient, et alors $b^2 + c^2 = 289 / 17 = 17$. Comme $b^2 \leqslant 17$, on a $b \leqslant 4$, et $17 - b^2$ vaut $17$, $16$, $13$, $8$ ou $1$ pour $b = 0, 1, 2, 3, 4$. Ce doit être un carré, donc $b = 1$ et $c = 4$, ou bien $b = 4$ et $c = 1$.

**Vérification.** $9 \times 1 + 17 \times 1 + 17 \times 16 = 9 + 17 + 272 = 298 = 73 \times 4 + 6$.

**Conclusion.** Les solutions sont les seize quadruplets
$$(a, b, c, p) = (\pm 1, \pm 1, \pm 4, 2) \quad \text{et} \quad (\pm 1, \pm 4, \pm 1, 2),$$
où chaque signe $\pm$ peut être choisi indépendamment des autres.

## Going further

- Pourquoi 8 et pas 4 ? Dans la division par 4, les carrés ont pour reste 0 ou 1, et les deux membres peuvent avoir le reste 3 : on n'apprend rien. Dans la division par 8, les carrés n'ont que trois restes possibles, 0, 1 et 4. C'est très peu, et c'est ce qui rend 8 si utile dans les équations avec des carrés.
- Le même calcul montre un résultat classique : un nombre de la forme $8k + 7$ n'est jamais la somme de trois carrés.
- Le tableau peut être remplacé par un raisonnement plus rapide. Comme $298 = 17 \times 17 + 9$, il faut que $9a^2 - 9 = 9(a - 1)(a + 1)$ soit un multiple de 17. Le nombre premier 17 doit alors diviser $a - 1$ ou $a + 1$, ce qui impose $a = 1$ quand $0 \leqslant a \leqslant 5$.
