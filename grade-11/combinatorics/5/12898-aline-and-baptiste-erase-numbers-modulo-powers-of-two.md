---
id: "12898"
title: "Aline et Baptiste effacent des nombres modulo 2ᵏ"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 75
tags: [jeu, strategie-gagnante, positions-gagnantes, puissances-de-2, parite, symetrie, plus-petit-contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 14 mai 2025"
  reference: "2025-10_Sujet-Test-5-2024-2025.pdf, test senior, exercice 6 ; corrigé 2025-10_Corrige-Test-5-2024-2025.pdf (même plan en trois lemmes, mais la réponse du corrigé est fausse : avec ℓ ⩾ 0, sa liste (2ℓ + 1)·2^(2k) contient N = 1, 4, 16, qui sont perdants pour Aline ; le corrigé écrit aussi « {1, …, 2ⁿ} est gagnant si et seulement si n est pair » au lieu de « impair », et initialise le lemme 3 avec l'ensemble vide déclaré perdant alors qu'il l'a déclaré gagnant ; la réponse corrigée est vérifiée par ordinateur pour N ⩽ 18)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-5-2024-2025.pdf"
---

## Statement

Soit $N \geq 1$ un entier. Aline et Baptiste jouent au jeu suivant. Au départ, les entiers $1, 2, \ldots, N$ sont écrits au tableau.

Chacun à son tour, en commençant par Aline, le joueur choisit un entier $k \geq 0$ et un entier $n$ écrit au tableau. Il efface alors du tableau tous les entiers $s$ tels que $2^k$ divise $n - s$. (Le nombre $n$ lui-même est donc toujours effacé.)

Le jeu s'arrête quand il ne reste plus aucun nombre au tableau. Le joueur qui a effacé le dernier nombre a **perdu**.

Déterminer les entiers $N$ pour lesquels Aline peut être sûre de gagner, quels que soient les coups de Baptiste.

## Hints

1. Faites les petits cas : qui gagne pour $N = 1$, $2$, $3$, $4$ ? Que se passe-t-il quand un joueur choisit $k = 0$ ?
2. Avec $k = 1$, on efface tous les nombres qui ont la même parité que $n$. Séparez le tableau en deux parties : les nombres impairs et les nombres pairs.
3. Montrez que jouer sur les nombres $2a$ (ou sur les nombres $2a - 1$), pour $a$ dans un ensemble $A$, revient à jouer sur l'ensemble $A$ lui-même.
4. Si les nombres impairs et les nombres pairs forment « deux copies » d'un même ensemble, le second joueur peut imiter dans une partie ce que le premier fait dans l'autre.

## Solution

La réponse : écrivons $N = 2^v m$ avec $m$ impair. **Aline peut être sûre de gagner exactement dans les deux cas suivants :**

- **$m = 1$ et $v$ est impair**, c'est-à-dire $N = 2$, $8$, $32$, $128$, …
- **$m \geq 3$ et $v$ est pair**, par exemple $N = 3$, $5$, $7$, $9$, $11$, $12$, $13$, $15$, $17$, $20$, …

Pour $N = 1$, $4$, $6$, $10$, $14$, $16$, $18$, …, c'est Baptiste qui peut être sûr de gagner.

### Vocabulaire

Un **tableau** est un ensemble fini d'entiers au moins égaux à $1$. On dit qu'un tableau est **gagnant** si le joueur qui doit jouer devant ce tableau peut être sûr de gagner, et **perdant** sinon.

Chaque coup efface au moins un nombre, donc une partie s'arrête toujours. Pour un tableau non vide :

- il est gagnant s'il existe un coup qui laisse un tableau perdant à l'adversaire ;
- il est perdant si tous les coups laissent un tableau gagnant à l'adversaire.

**Le tableau vide est gagnant** : si c'est à vous de jouer devant un tableau vide, c'est que votre adversaire vient d'effacer le dernier nombre, et vous avez gagné. Avec $k = 0$, comme $2^0 = 1$ divise tout, on efface tout le tableau : c'est un coup qui fait perdre aussitôt.

**Un tableau qui ne contient qu'un seul nombre est perdant**, car tout coup efface ce nombre.

### Notations

Pour un ensemble $A$ d'entiers, on note $2A$ l'ensemble des nombres $2a$, et $2A - 1$ l'ensemble des nombres $2a - 1$, pour $a$ dans $A$. Pour deux ensembles $A$ et $B$, on note

$$T(A, B) = (2A - 1) \cup 2B.$$

Ses nombres impairs forment $2A - 1$ et ses nombres pairs forment $2B$. Tout tableau s'écrit d'une seule façon sous la forme $T(A, B)$. Par exemple, en notant $I_N = \{1, 2, \ldots, N\}$,

$$I_{2N} = T(I_N, I_N) \qquad \text{et} \qquad I_{2N+1} = T(I_{N+1}, I_N).$$

En effet, les nombres impairs de $I_{2N+1}$ sont $1, 3, \ldots, 2N + 1$, c'est-à-dire les $2a - 1$ pour $a = 1, \ldots, N + 1$, et ses nombres pairs sont $2, 4, \ldots, 2N$.

Le **statut** d'un tableau, c'est le fait d'être gagnant ou perdant.

### Lemme 1 : les tableaux A, 2A et 2A − 1 ont le même statut

Soit $c$ égal à $0$ ou à $-1$, et notons $2A + c$ le tableau $2A$ ou $2A - 1$.

*Les coups se correspondent.* Sur le tableau $2A + c$, le coup $(k, 2a + c)$ avec $k \geq 1$ efface les nombres $2s + c$ tels que $2^k$ divise $2(a - s)$, c'est-à-dire tels que $2^{k-1}$ divise $a - s$. Ce sont les doubles (moins $1$ si $c = -1$) des nombres effacés par le coup $(k - 1, a)$ sur le tableau $A$. Le coup avec $k = 0$ efface tout, comme le coup $(0, a)$ sur $A$. Enfin, tout coup $(j, a)$ sur $A$ correspond au coup $(j + 1, 2a + c)$ sur $2A + c$.

Donc les tableaux que l'on peut obtenir en un coup à partir de $2A + c$ sont exactement les tableaux $2F + c$, où $F$ est un tableau que l'on peut obtenir en un coup à partir de $A$.

*Conclusion du lemme.* Supposons qu'il existe des tableaux $A$ tels que $A$ et $2A + c$ n'ont pas le même statut, et prenons-en un qui a le moins d'éléments possible. Il n'est pas vide, car le double du tableau vide est vide. Les tableaux $F$ obtenus en un coup à partir de $A$ ont moins d'éléments que $A$, donc $F$ et $2F + c$ ont le même statut. Alors $A$ est gagnant si et seulement si un coup mène de $A$ à un tableau $F$ perdant, donc si et seulement si un coup mène de $2A + c$ à un tableau $2F + c$ perdant, c'est-à-dire si et seulement si $2A + c$ est gagnant. Les tableaux $A$ et $2A + c$ ont donc le même statut, ce qui est une contradiction. **Donc $A$, $2A$ et $2A - 1$ ont toujours le même statut.**

### Lemme 2 : si A et B sont non vides et si l'un des deux est perdant, alors T(A, B) est gagnant

Le coup $(1, n)$ efface tous les nombres de même parité que $n$.

- Si $A$ est perdant, on joue $(1, n)$ avec $n$ pair (il en existe, car $B$ n'est pas vide). On efface tous les nombres pairs et il reste $2A - 1$, qui est perdant d'après le lemme 1.
- Si $B$ est perdant, on joue $(1, n)$ avec $n$ impair. Il reste $2B$, qui est perdant d'après le lemme 1.

Dans les deux cas, on laisse un tableau perdant à l'adversaire, donc $T(A, B)$ est gagnant.

### Lemme 3 : si A est non vide et gagnant, alors T(A, A) est perdant

C'est une stratégie d'imitation. Supposons que le lemme soit faux, et prenons un tableau $A$ non vide et gagnant, avec le moins d'éléments possible, tel que $T(A, A)$ soit gagnant. On va montrer que tout coup joué sur $T(A, A)$ laisse un tableau gagnant, ce qui contredira le fait que $T(A, A)$ est gagnant.

- **Un coup avec $k = 0$** vide le tableau, qui est gagnant pour l'adversaire.
- **Un coup $(k, 2a - 1)$ avec $k \geq 1$.** Les nombres effacés sont les $2s - 1$ tels que $2^{k-1}$ divise $a - s$ : ils sont tous impairs, et ce sont exactement les images des nombres effacés par le coup $(k - 1, a)$ sur $A$. Notons $F$ le tableau qui reste quand on joue ce coup sur $A$. Le tableau laissé à l'adversaire est $T(F, A)$, et $F$ a moins d'éléments que $A$.
  - Si $F$ est vide, l'adversaire a devant lui le tableau $2A$, qui est gagnant comme $A$ d'après le lemme 1.
  - Si $F$ est non vide et perdant, l'adversaire joue $(1, n)$ avec $n$ pair. Il efface tous les nombres pairs et laisse $2F - 1$, qui est perdant comme $F$. Donc $T(F, A)$ est gagnant.
  - Si $F$ est non vide et gagnant, l'adversaire **imite** le coup dans les nombres pairs : il joue $(k, 2a)$, ce qui est possible car $2a$ est encore au tableau. Il efface les $2s$ tels que $2^{k-1}$ divise $a - s$, et laisse $T(F, F)$. Comme $F$ est non vide, gagnant, et a moins d'éléments que $A$, le tableau $T(F, F)$ est perdant. Donc $T(F, A)$ est gagnant.
- **Un coup $(k, 2a)$ avec $k \geq 1$** se traite de la même façon, en échangeant les rôles des nombres pairs et des nombres impairs : il laisse un tableau $T(A, F)$, et dans les trois cas ce tableau est gagnant.

Tous les coups laissent un tableau gagnant, donc $T(A, A)$ est perdant : c'est la contradiction annoncée. **Le lemme 3 est démontré.**

### Les tableaux 1, 2, ..., N

**Doubler change le statut.** Soit $N \geq 1$. On a $I_{2N} = T(I_N, I_N)$.

- Si $I_N$ est gagnant, alors $I_{2N}$ est perdant d'après le lemme 3.
- Si $I_N$ est perdant, alors $I_{2N}$ est gagnant d'après le lemme 2.

**Un nombre impair au moins égal à 3 donne un tableau gagnant.** Soit $N \geq 1$. On a $I_{2N+1} = T(I_{N+1}, I_N)$.

- Si $I_N$ est perdant, alors $I_{2N+1}$ est gagnant d'après le lemme 2.
- Si $I_N$ est gagnant, alors $I_{2N}$ est perdant d'après le point précédent. On choisit $k$ tel que $2^k > 2N$ et on joue $(k, 2N + 1)$. Un nombre $s$ du tableau est effacé si $2^k$ divise $2N + 1 - s$. Or $0 \leq 2N + 1 - s \leq 2N < 2^k$, donc seul $s = 2N + 1$ est effacé. On laisse le tableau $I_{2N}$, qui est perdant, donc $I_{2N+1}$ est gagnant.

### Conclusion

Aline joue la première, donc elle peut être sûre de gagner si et seulement si $I_N$ est gagnant. Écrivons $N = 2^v m$ avec $m$ impair.

- **Si $m = 1$** : $I_1$ ne contient qu'un nombre, il est perdant. En doublant, les statuts alternent : $I_2$ est gagnant, $I_4$ perdant, $I_8$ gagnant, etc. Donc $I_{2^v}$ est gagnant si et seulement si $v$ est impair.
- **Si $m \geq 3$** : $I_m$ est gagnant, puis $I_{2m}$ est perdant, $I_{4m}$ gagnant, etc. Donc $I_{2^v m}$ est gagnant si et seulement si $v$ est pair.

**Aline peut être sûre de gagner exactement lorsque $N$ est une puissance de $2$ d'exposant impair ($N = 2, 8, 32, \ldots$), ou lorsque $N = m \times 4^j$ avec $m$ impair au moins égal à $3$ et $j \geq 0$.**

## Going further

1. Qui gagne pour $N = 2026$ ? Et pour $N = 2048$ ?
2. Pour $N = 12$, donnez un premier coup gagnant pour Aline. (Utilisez le lemme 2 et le statut de $I_6$.)
3. Pourquoi l'énoncé fait-il perdre le joueur qui efface le dernier nombre ? Que se passerait-il avec la règle inverse ?
