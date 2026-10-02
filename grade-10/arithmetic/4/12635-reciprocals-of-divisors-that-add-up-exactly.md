---
id: "12635"
title: "Des inverses de diviseurs qui tombent juste"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [diviseurs, nombres-premiers, puissances, fractions, contre-exemple, sommes-partielles]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 17 novembre 2021"
  reference: "2021-12_Enonce-Web-Test-1.pdf, exercice 3 ; corrigé 2021-12_Corrige-Web-Test-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Énoncé-Web-Test-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Web-Test-1.pdf"
---

## Statement

Soit $a$ et $b$ deux entiers naturels non nuls. On dit que $b$ est *$a$-gréable* si la propriété suivante est vraie :

> pour toute liste $d_1, d_2, \ldots, d_k$ de diviseurs de $b$, pas forcément distincts, telle que
> $$\frac{1}{d_1} + \frac{1}{d_2} + \cdots + \frac{1}{d_k} > a,$$
> on peut choisir certains termes de la liste dont la somme des inverses vaut exactement $a$.

L'entier $a$ étant fixé, quels sont les entiers $a$-gréables ?

## Hints

1. Prends $a = 1$ et $b = 6$. Trouve une liste de diviseurs de 6 dont la somme des inverses dépasse 1, mais dont aucun choix de termes ne donne exactement 1.
2. Si $b$ a deux facteurs premiers différents $p < q$, généralise l'exemple : prends une fois le diviseur $p$, et beaucoup de fois le diviseur $q$.
3. Si $b = p^\alpha$ est une puissance d'un nombre premier, range les diviseurs de la liste du plus petit au plus grand, et ajoute leurs inverses un par un. Arrête-toi dès que la somme atteint ou dépasse $a$.
4. Multiplie cette dernière somme par le dernier diviseur ajouté. Pourquoi obtient-on un entier ? Pourquoi la somme ne peut-elle pas avoir sauté par-dessus $a$ ?

## Solution

On va montrer que **les entiers $a$-gréables sont les puissances d'un nombre premier, $b = p^\alpha$ avec $p$ premier et $\alpha \geqslant 0$**. Cela inclut $b = 1 = p^0$.

Un entier $b \geqslant 2$ qui n'est pas une puissance d'un nombre premier a au moins deux facteurs premiers différents. On traite ce cas d'abord.

**Si $b$ a deux facteurs premiers différents, il n'est pas $a$-gréable.** Soit $p < q$ deux nombres premiers qui divisent $b$. On prend la liste formée d'une fois le diviseur $p$ et de $aq - 1$ fois le diviseur $q$. La somme de ses inverses vaut
$$\frac{1}{p} + \frac{aq - 1}{q} = a + \frac{1}{p} - \frac{1}{q} > a,$$
car $p < q$ donne $1/p > 1/q$. On montre qu'aucun choix de termes ne donne exactement $a$.

- Si on ne prend pas le terme $p$, on prend $j$ fois $q$ avec $j \leqslant aq - 1$, et la somme vaut $j/q \leqslant (aq - 1)/q < a$.
- Si on prend le terme $p$ et $j$ fois $q$, avec $0 \leqslant j \leqslant aq - 1$, et si la somme vaut $a$, alors
$$\frac{1}{p} + \frac{j}{q} = a, \qquad \text{donc} \qquad q + jp = apq, \qquad \text{donc} \qquad q = p\,(aq - j).$$
Le nombre premier $p$ diviserait alors le nombre premier $q$, qui est différent de $p$. C'est impossible.

Par exemple, pour $a = 1$ et $b = 6$, la liste $2, 3, 3$ a une somme des inverses égale à $7/6 > 1$, et ses choix possibles donnent seulement $1/2$, $1/3$, $2/3$, $5/6$ et $7/6$.

**Si $b = p^\alpha$, il est $a$-gréable.** Les diviseurs de $b$ sont les nombres $p^\beta$ avec $0 \leqslant \beta \leqslant \alpha$. Parmi deux tels diviseurs, le plus petit divise toujours le plus grand.

Soit une liste de diviseurs de $b$ dont la somme des inverses dépasse $a$. On la range dans l'ordre croissant : $d_1 \leqslant d_2 \leqslant \cdots \leqslant d_k$. On note
$$S_j = \frac{1}{d_1} + \frac{1}{d_2} + \cdots + \frac{1}{d_j}$$
la somme des $j$ premiers inverses, avec $S_0 = 0$. On a $S_0 = 0 < a$ et $S_k > a$. Soit $\ell$ le plus petit indice tel que $S_\ell \geqslant a$. Alors $\ell \geqslant 1$ et $S_{\ell - 1} < a \leqslant S_\ell$.

Chaque $d_i$ avec $i \leqslant \ell$ est inférieur ou égal à $d_\ell$, donc il divise $d_\ell$. Les nombres $t_i = d_\ell / d_i$ sont donc des entiers, et $t_\ell = 1$. On multiplie par $d_\ell$ :
$$d_\ell\, S_\ell = t_1 + t_2 + \cdots + t_\ell = T \qquad \text{et} \qquad d_\ell\, S_{\ell - 1} = T - t_\ell = T - 1,$$
où $T$ est un entier. L'encadrement $S_{\ell - 1} < a \leqslant S_\ell$ devient
$$T - 1 < a\, d_\ell \leqslant T.$$
Le nombre $a\, d_\ell$ est un entier, et le seul entier strictement plus grand que $T - 1$ et inférieur ou égal à $T$ est $T$ lui-même. Donc $a\, d_\ell = T$, c'est-à-dire $S_\ell = a$ : les termes $d_1, \ldots, d_\ell$ conviennent.

**Conclusion.** Pour tout entier $a \geqslant 1$, les entiers $a$-gréables sont **les puissances d'un nombre premier** : $1, 2, 3, 4, 5, 7, 8, 9, 11, 13, 16, \ldots$ La réponse ne dépend pas de $a$.

## Going further

- L'idée de la seconde partie : on ajoute les inverses du plus grand au plus petit. Au moment où l'on ajoute $1/d_\ell$, la somme déjà obtenue et le nombre $a$ sont tous les deux des multiples de $1/d_\ell$. La somme avance donc d'un multiple au suivant, et ne peut pas enjamber $a$.
- Le corrigé officiel propose aussi une récurrence sur la longueur de la liste. On y remplace $p$ copies d'un même diviseur $p^t$ par une seule copie de $p^{t-1}$, qui a le même inverse au total.
- Il faut bien traduire la condition obtenue : les entiers qui n'ont pas deux facteurs premiers différents sont exactement les puissances d'un nombre premier, y compris $1$. Le corrigé signale que plusieurs candidats se sont trompés à cette étape.
