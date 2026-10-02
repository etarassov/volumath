---
id: "12870"
title: "Grilles régulières de taille paire"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 60
tags: [grille, divisibilite, parite, puissances-de-deux, recurrence, construction, somme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 20 novembre 2024"
  reference: "2025-10_Sujet-Test-1-2024-2025.pdf, test senior, exercice 4 ; corrigé 2025-10_Corrige-Test-1-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-1-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-1-2024-2025.pdf"
---

## Statement

On considère une grille carrée de taille $n \times n$, formée de $n^2$ cases. Pour tout diviseur positif $d$ de $n$, la **$d$-division** de la grille est son découpage en $(n/d)^2$ sous-grilles carrées de taille $d \times d$, de sorte que chaque case appartient à exactement une sous-grille.

On dit que l'entier $n$ est **régulier** si l'on peut écrire les entiers $1, 2, \ldots, n^2$ dans les cases de la grille, un par case, chacun exactement une fois, de sorte que la condition suivante soit vérifiée :

> pour tout diviseur $d$ de $n$ tel que $1 < d < n$, et pour toute sous-grille de la $d$-division, la somme des entiers écrits dans cette sous-grille n'est pas divisible par $d$.

Déterminer tous les entiers pairs réguliers.

## Hints

1. Pourquoi $2$ est-il régulier ? Montrez ensuite que $6$ ne l'est pas : dans la $2$-division, chacune des neuf sous-grilles a une somme impaire. Que dire de la somme de toute la grille ?
2. Écrivez $n = 2^k \beta$ avec $\beta$ impair, et supposez $\beta \geq 3$. Montrez par récurrence sur $i$ que la somme de chaque sous-grille de la $2^i$-division est égale à $2^{i-1}$ fois un nombre impair.
3. Comparez avec la somme $1 + 2 + \cdots + n^2$.
4. Pour construire une grille $2^{k+1} \times 2^{k+1}$, partez d'une grille $2^k \times 2^k$ qui convient, recopiez-la dans les quatre coins en ajoutant $0$, $4^k$, $2 \times 4^k$ et $3 \times 4^k$, puis échangez deux paires de nombres bien choisies.

## Solution

La réponse : **les entiers pairs réguliers sont les puissances de $2$** : $2, 4, 8, 16, \ldots$

Dans toute la solution, une **$d$-sous-grille** est une sous-grille de la $d$-division. On utilisera plusieurs fois ce fait : un multiple de $2^i$ qui n'est pas divisible par $2^{i+1}$ est égal à $2^i$ fois un nombre impair.

### Un entier pair qui n'est pas une puissance de 2 n'est pas régulier

Soit $n$ un entier pair régulier. On l'écrit $n = 2^k \beta$, avec $k \geq 1$ et $\beta$ impair, et on suppose que $\beta \geq 3$. Alors, pour $1 \leq i \leq k$, le nombre $2^i$ est un diviseur de $n$ tel que $1 < 2^i \leq 2^k < n$ : la condition de l'énoncé s'applique à $d = 2^i$. On remplit la grille comme le permet la régularité de $n$.

**Propriété $H_i$** (pour $1 \leq i \leq k$) : la somme des nombres de chaque $2^i$-sous-grille est égale à $2^{i-1}$ fois un nombre impair.

*Initialisation.* La somme d'une $2$-sous-grille n'est pas divisible par $2$ : elle est impaire, c'est-à-dire égale à $2^0$ fois un nombre impair. Donc $H_1$ est vraie.

*Hérédité.* Supposons $H_i$ vraie pour un $i < k$. Comme $2^{i+1}$ divise $n$, chaque $2^{i+1}$-sous-grille est formée de quatre $2^i$-sous-grilles. D'après $H_i$, sa somme vaut $2^{i-1}(m_1 + m_2 + m_3 + m_4)$, avec $m_1$, $m_2$, $m_3$, $m_4$ impairs. Une somme de quatre nombres impairs est paire, donc cette somme est un multiple de $2^i$. D'après l'énoncé, elle n'est pas divisible par $2^{i+1}$. Elle est donc égale à $2^i$ fois un nombre impair : $H_{i+1}$ est vraie.

*Conclusion de la récurrence.* La propriété $H_k$ est vraie : chaque $2^k$-sous-grille a une somme égale à $2^{k-1}$ fois un nombre impair.

**La somme de toute la grille.** La grille est formée de $(n/2^k)^2 = \beta^2$ sous-grilles de taille $2^k$, et $\beta^2$ est impair. La somme de toute la grille vaut donc $2^{k-1}$ fois une somme de $\beta^2$ nombres impairs, c'est-à-dire $2^{k-1}$ fois un nombre impair. Elle n'est pas divisible par $2^k$.

Or cette somme vaut aussi

$$1 + 2 + \cdots + n^2 = \frac{n^2(n^2 + 1)}{2} = \frac{2^{2k}\beta^2(n^2 + 1)}{2} = 2^{2k-1}\beta^2(n^2 + 1),$$

qui est divisible par $2^k$, puisque $2k - 1 \geq k$. C'est une contradiction. Donc $\beta = 1$ : **un entier pair régulier est une puissance de $2$.**

### Les puissances de 2 sont régulières

On montre par récurrence sur $k \geq 1$ la propriété $P_k$ : « $2^k$ est régulier ».

*Initialisation.* Il n'y a aucun diviseur $d$ de $2$ tel que $1 < d < 2$. N'importe quel remplissage de la grille $2 \times 2$ convient, donc $2$ est régulier.

*Hérédité.* Supposons $P_k$ vraie, et notons $m = 2^k$, $q = m^2 = 4^k$ et $s = 2^{k-1}$. On dispose d'un remplissage $G$ de la grille $m \times m$ par $1, \ldots, q$ qui vérifie la condition. On remplit une grille $2m \times 2m$ ainsi :

- le quart en haut à gauche reçoit $G$ ;
- le quart en haut à droite reçoit $G$, avec $q$ ajouté à chaque nombre ;
- le quart en bas à gauche reçoit $G$, avec $2q$ ajouté à chaque nombre ;
- le quart en bas à droite reçoit $G$, avec $3q$ ajouté à chaque nombre.

Les nombres $1, 2, \ldots, 4q$ sont alors écrits chacun une fois. Ensuite, **on échange les cases qui contiennent $q$ et $q + s$**, puis **celles qui contiennent $3q$ et $3q + s$**. Le nombre $q$ est le plus grand du quart en haut à gauche, et $q + s$ est dans le quart en haut à droite, puisque $1 \leq s \leq q$. De même, $3q$ est en bas à gauche et $3q + s$ en bas à droite. Chaque échange déplace donc deux nombres entre deux quarts, et chacun des quatre quarts voit un de ses nombres augmenter ou diminuer de $s$.

Les diviseurs $d$ de $2^{k+1}$ tels que $1 < d < 2^{k+1}$ sont les $2^i$ avec $1 \leq i \leq k$. Vérifions la condition pour chacun.

**Si $1 \leq i \leq k - 1$.** Une $2^i$-sous-grille est contenue dans l'un des quatre quarts. Avant les échanges, sa somme est celle de la sous-grille correspondante de $G$, plus $2^{2i}$ fois $0$, $q$, $2q$ ou $3q$ : on a ajouté un multiple de $q = 4^k$, donc un multiple de $2^i$. Les échanges modifient au plus un de ses nombres, de $\pm s = \pm 2^{k-1}$, qui est aussi un multiple de $2^i$ puisque $i \leq k - 1$. La somme est donc celle d'une $2^i$-sous-grille de $G$, plus un multiple de $2^i$. D'après $P_k$, elle n'est pas divisible par $2^i$.

**Si $i = k$.** Les $2^k$-sous-grilles sont les quatre quarts. Notons $\Sigma = 1 + 2 + \cdots + q = q(q + 1)/2 = 2^{2k-1}(q + 1)$, qui est un multiple de $2^k$ puisque $2k - 1 \geq k$. Les sommes des quatre quarts valent

$$\Sigma + s, \qquad \Sigma + q^2 - s, \qquad \Sigma + 2q^2 + s, \qquad \Sigma + 3q^2 - s.$$

Comme $\Sigma$ et $q^2$ sont des multiples de $2^k$, chacune de ces sommes est un multiple de $2^k$ plus ou moins $s = 2^{k-1}$ : aucune n'est divisible par $2^k$.

La grille $2^{k+1} \times 2^{k+1}$ vérifie donc la condition, et $P_{k+1}$ est vraie. **Toutes les puissances de $2$ sont régulières.**

Voici la grille $4 \times 4$ obtenue à partir de la grille $2 \times 2$ remplie par $1, 2$ en haut et $3, 4$ en bas : on a échangé $4$ et $5$, puis $12$ et $13$.

| 1 | 2 | 4 | 6 |
|---|---|---|---|
| 3 | 5 | 7 | 8 |
| 9 | 10 | 12 | 14 |
| 11 | 13 | 15 | 16 |

Les sommes des quatre carrés $2 \times 2$ valent $11$, $25$, $43$ et $57$ : elles sont impaires.

### Conclusion

**Les entiers pairs réguliers sont exactement les puissances de $2$ : $2, 4, 8, 16, \ldots$**

## Going further

1. Montrez que $9$ est régulier. (Il suffit que chacune des neuf sous-grilles $3 \times 3$ ait une somme qui n'est pas un multiple de $3$.)
2. Construisez une grille $8 \times 8$ régulière à partir de la grille $4 \times 4$ ci-dessus. Quels nombres faut-il échanger ?
