---
id: "8669"
title: "Une puissance de 2 qui divise k à la puissance 2ⁿ, moins 1"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [recurrence, divisibilite, puissances de deux, identite remarquable]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Récurrence » (Elsa), exercice 15"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $k$ un entier naturel impair. Montrer que, pour tout entier $n \geqslant 1$,

$$2^{\,n+2} \quad \text{divise} \quad k^{\,2^{\,n}} - 1 .$$

*Par exemple, pour $n = 1$ l'énoncé affirme que $8$ divise $k^2 - 1$, et pour $n = 2$ que $16$ divise $k^4 - 1$.*

## Hints

1. Vérifie l'énoncé sur un exemple avant toute chose : prends $k = 3$ et calcule $3^2 - 1$, $3^4 - 1$, $3^8 - 1$. Regarde par quelle puissance de $2$ chacun est divisible.
2. Une récurrence sur $n$ s'impose. Commence par l'initialisation : pourquoi $8$ divise-t-il $k^2 - 1$ quand $k$ est impair ?
3. Écris $k = 2j+1$ et factorise $k^2 - 1 = (k-1)(k+1)$. Que valent $k-1$ et $k+1$ ?
4. Pour l'hérédité, remarque que l'exposant double à chaque étape : $2^{\,n+1} = 2 \times 2^{\,n}$. Pose $K = k^{\,2^{\,n}}$ et exprime $k^{\,2^{\,n+1}}$ en fonction de $K$.
5. Tu obtiens $K^2 - 1 = (K-1)(K+1)$. L'hypothèse de récurrence donne une information sur $K - 1$. Que peux-tu dire de $K+1$ ?

## Solution

Fixons un entier impair $k$ et montrons par récurrence sur $n \geqslant 1$ la propriété

> $P(n)$ : « $2^{\,n+2}$ divise $k^{\,2^{\,n}} - 1$ ».

### Initialisation ($n = 1$)

Il s'agit de montrer que $8$ divise $k^2 - 1$. Factorisons :

$$k^2 - 1 = (k-1)(k+1) .$$

Comme $k$ est impair, $k - 1$ et $k+1$ sont deux entiers pairs **consécutifs dans la suite des pairs** : ils s'écrivent $2j$ et $2j+2$ pour un entier $j$, et parmi deux entiers consécutifs $j$ et $j+1$, l'un est pair. Donc

$$k^2 - 1 = 2j \times (2j+2) = 4\,j(j+1) ,$$

et $j(j+1)$ est pair. Il y a donc au moins trois facteurs $2$ :

$$8 \ \big|\ k^2 - 1 .$$

$P(1)$ est vraie.

### Hérédité

Soit $n \geqslant 1$. Supposons $P(n)$ vraie, c'est-à-dire qu'il existe un entier $q$ tel que

$$k^{\,2^{\,n}} - 1 = 2^{\,n+2} \, q .$$

Posons $K = k^{\,2^{\,n}}$ pour alléger. Comme l'exposant double à chaque étape,

$$k^{\,2^{\,n+1}} = k^{\,2 \times 2^{\,n}} = \left(k^{\,2^{\,n}}\right)^{2} = K^2 ,$$

et donc

$$k^{\,2^{\,n+1}} - 1 = K^2 - 1 = (K - 1)(K + 1) .$$

Examinons les deux facteurs.

- $K - 1 = k^{\,2^{\,n}} - 1 = 2^{\,n+2} q$, par hypothèse de récurrence.
- $K = k^{\,2^{\,n}}$ est une puissance d'un nombre impair, donc $K$ est impair, donc **$K+1$ est pair** : écrivons $K + 1 = 2r$.

En multipliant :

$$k^{\,2^{\,n+1}} - 1 = 2^{\,n+2} q \times 2r = 2^{\,n+3} \, qr .$$

Donc $2^{\,n+3} = 2^{\,(n+1)+2}$ divise $k^{\,2^{\,n+1}} - 1$ : $P(n+1)$ est vraie.

### Conclusion

D'après le principe de récurrence, $P(n)$ est vraie pour tout $n \geqslant 1$ :

$$\boxed{2^{\,n+2} \ \big|\ k^{\,2^{\,n}} - 1 \quad \text{pour tout entier impair } k \text{ et tout } n \geqslant 1 .}$$

**Vérification sur un exemple.** Avec $k = 3$ : $3^2 - 1 = 8 = 2^3$ ; $3^4 - 1 = 80 = 2^4 \times 5$ ; $3^8 - 1 = 6560 = 2^5 \times 205$. À chaque étape, la puissance de $2$ gagne exactement un cran, comme annoncé.

## Going further

L'hérédité tient en une ligne d'idée : **doubler l'exposant, c'est élever au carré**, et $K^2 - 1$ se factorise. À chaque étape on gagne exactement un facteur $2$, celui apporté par $K + 1$.

L'exemple $k = 3$ montre que le résultat est **optimal** pour certains $k$ : la puissance de $2$ ne dépasse jamais $2^{\,n+2}$. Pour d'autres valeurs, en revanche, on fait bien mieux : avec $k = 7$, on a $7^2 - 1 = 48 = 2^4 \times 3$, et on gagne un cran d'avance dès le départ.

Cette question, « quelle est exactement la puissance de $2$ qui divise $k^m - 1$ ? », a une réponse complète, connue sous le nom de **lemme LTE** (*lifting the exponent*). Tu viens d'en démontrer le cas le plus utile à la main.
