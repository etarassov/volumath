---
id: "7337"
title: "Paver un rectangle avec des briques n × 1"
grade: 11
theme: coloring
difficulty: 5
duration_min: 60
tags: [pavage, coloriage, invariant, comptage, damier]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Saint-Malo 2007"
  reference: "stage_ete_2007.pdf, « Les exercices du groupe B », stratégies de base, exercice 29. L'énoncé de la solution publiée est faux (« x et y tous les deux multiples de n ») ; la démonstration qui suit établit en réalité le bon critère, rétabli ici."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

On dispose de briques rectangulaires de taille $n \times 1$, que l'on peut poser horizontalement ou verticalement. On veut recouvrir entièrement un damier rectangulaire de $x$ lignes et $y$ colonnes, sans trou et sans chevauchement.

**À quelle condition sur $x$, $y$ et $n$ est-ce possible ?**

*Avant de te lancer, teste : avec des briques $3 \times 1$, peut-on paver un damier $2 \times 3$ ? un damier $2 \times 2$ ? un damier $4 \times 5$ ?*

## Hints

1. Un sens est facile. Si $n$ divise le nombre de lignes, comment remplis-tu chaque colonne ? Et si $n$ divise le nombre de colonnes ?
2. Il reste à montrer que si $n$ ne divise **ni** $x$ **ni** $y$, c'est impossible. Cherche un coloriage du damier que chaque brique voit de la même façon.
3. Le coloriage en deux couleurs du damier ordinaire ne suffit pas. Utilise $n$ couleurs, et colorie la case de la ligne $i$ et de la colonne $j$ d'après le **reste de $i + j$ modulo $n$**.
4. Vérifie qu'une brique, horizontale ou verticale, couvre exactement une case de chaque couleur. Que doit-il donc se passer si un pavage existe ?
5. Il ne reste plus qu'à compter les cases de chaque couleur et à montrer qu'elles ne sont pas en nombre égal. Commence par te ramener au cas $0 < x < n$ et $0 < y < n$ : enlever $n$ lignes d'un coup ne change rien aux écarts entre les couleurs.
6. Dans ce petit damier, que contient une ligne ? Combien de couleurs, et lesquelles ?

## Solution

**Réponse.**

$$\boxed{\text{Le pavage est possible si et seulement si } n \text{ divise } x \; \textbf{ou} \; n \text{ divise } y .}$$

Par exemple, avec des briques $3 \times 1$, le damier $2 \times 3$ se pave (deux briques horizontales), le damier $4 \times 5$ ne se pave pas, et le damier $2 \times 2$ non plus.

### Le sens facile

Si $n$ divise $x$, chaque colonne compte $x$ cases, donc se remplit exactement avec $x/n$ briques verticales. En faisant cela pour les $y$ colonnes, le damier est pavé.

Si $n$ divise $y$, on remplit de même chaque ligne avec $y/n$ briques horizontales.

### Le coloriage

Numérotons les lignes $i = 1, \ldots, x$ et les colonnes $j = 1, \ldots, y$, et donnons à la case $(i, j)$ la couleur
$$c_{\,i + j \bmod n} ,$$
c'est-à-dire l'une de $n$ couleurs $c_0, c_1, \ldots, c_{n-1}$, choisie d'après le reste de $i + j$ dans la division par $n$. Sur le damier, cela donne des diagonales monochromes qui se répètent tous les $n$ crans :

| | $j=1$ | $j=2$ | $j=3$ | $\cdots$ |
|---|---|---|---|---|
| $i=1$ | $c_2$ | $c_3$ | $c_4$ | $\cdots$ |
| $i=2$ | $c_3$ | $c_4$ | $c_5$ | $\cdots$ |
| $i=3$ | $c_4$ | $c_5$ | $c_6$ | $\cdots$ |

**Une brique couvre exactement une case de chaque couleur.** En effet :

- une brique **horizontale** occupe les cases $(i, j), (i, j+1), \ldots, (i, j+n-1)$, dont les sommes $i+j$ sont $n$ entiers consécutifs ;
- une brique **verticale** occupe les cases $(i, j), (i+1, j), \ldots, (i+n-1, j)$, dont les sommes sont là encore $n$ entiers consécutifs.

Or $n$ entiers consécutifs donnent les $n$ restes possibles modulo $n$, chacun une fois exactement.

**Conséquence.** Si un pavage existe, chaque brique apporte une case de chaque couleur, donc **toutes les couleurs apparaissent le même nombre de fois** sur le damier (à savoir $xy/n$ fois chacune).

Il suffit donc de montrer : *si $n$ ne divise ni $x$ ni $y$, alors deux couleurs n'apparaissent pas le même nombre de fois.*

### On se ramène à un petit damier

Supposons $x > n$ et regardons les $n$ premières lignes. Dans une colonne fixée, ces $n$ cases ont des sommes $i+j$ consécutives, donc une couleur chacune. Ces $n$ lignes apportent donc **exactement $y$ cases de chaque couleur**.

Les enlever diminue donc tous les comptages de la même quantité $y$ : cela ne change rien à la question « toutes les couleurs sont-elles également représentées ? ». En recommençant, on se ramène à
$$0 < x < n$$
(on a bien $x > 0$ puisque $n$ ne divise pas $x$). Le même raisonnement sur les colonnes donne $0 < y < n$.

### Le comptage dans le petit damier

Regardons la ligne $i$. Elle contient les couleurs
$$c_{i+1}, \; c_{i+2}, \; \ldots, \; c_{i+y}$$
(indices modulo $n$), c'est-à-dire **$y$ couleurs consécutives dans l'ordre cyclique $c_0, c_1, \ldots, c_{n-1}, c_0, \ldots$**, chacune une seule fois. Comme $y < n$, toutes les autres couleurs sont absentes de cette ligne.

Donc, pour une couleur $c_m$ :
$$\text{nombre d'apparitions de } c_m = \#\big\{ i \in \{1, \ldots, x\} \;:\; m \in \{i+1, \ldots, i+y\} \big\} .$$

La condition « $m$ est entre $i+1$ et $i+y$ » se réécrit « $i$ est entre $m-y$ et $m-1$ ». On compare donc deux blocs de restes consécutifs modulo $n$ : le bloc $A = \{1, \ldots, x\}$, de longueur $x$, et le bloc $B_m = \{m-y, \ldots, m-1\}$, de longueur $y$. Le nombre d'apparitions de $c_m$ est le nombre d'éléments communs.

Prenons deux valeurs de $m$ bien choisies.

**La couleur $c_{x+1}$.** Ici $B_{x+1} = \{x+1-y, \ldots, x\}$. Ce bloc finit en $x$, et $A$ aussi. Leur intersection est donc le plus court des deux, et compte
$$\min(x, y) \quad \text{cases.}$$

**La couleur $c_1$.** Ici $B_1 = \{1-y, \ldots, 0\}$, c'est-à-dire, modulo $n$, le bloc $\{n+1-y, \ldots, n\}$. Son intersection avec $A = \{1, \ldots, x\}$ est $\{n+1-y, \ldots, x\}$, qui est vide si $n+1-y > x$ et compte sinon
$$x + y - n \quad \text{cases.}$$

Le nombre d'apparitions de $c_1$ vaut donc $\max(0, \, x+y-n)$.

**Les deux comptages diffèrent.** Comme $x \leqslant n-1$ et $y \leqslant n-1$ :
$$x + y - n < x \quad (\text{car } y < n) \qquad \text{et} \qquad x + y - n < y \quad (\text{car } x < n) ,$$
donc $x+y-n < \min(x, y)$, et bien sûr $0 < \min(x,y)$. Dans les deux cas,
$$\max(0, \, x+y-n) \;<\; \min(x, y) ,$$
c'est-à-dire que la couleur $c_1$ apparaît **strictement moins souvent** que la couleur $c_{x+1}$.

Les couleurs ne sont donc pas également représentées, et aucun pavage n'existe.

### Conclusion

Le pavage d'un damier $x \times y$ par des briques $n \times 1$ est possible **exactement** quand $n$ divise $x$ ou quand $n$ divise $y$.

**Un exemple pour voir le mécanisme.** Avec $n = 3$ sur un damier $2 \times 2$, le coloriage donne

| | $j=1$ | $j=2$ |
|---|---|---|
| $i=1$ | $c_2$ | $c_0$ |
| $i=2$ | $c_0$ | $c_1$ |

La couleur $c_0$ apparaît deux fois, la couleur $c_1$ une seule : pas de pavage. Sur un damier $2 \times 3$, en revanche, chaque couleur apparaît deux fois — et le pavage existe bel et bien.

**Attention au piège.** Il est tentant de croire que la condition est « $n$ divise $x$ **et** $n$ divise $y$ ». C'est ce qu'affirme la solution imprimée dans le polycopié de 2007, et c'est faux : le damier $2 \times 3$ se pave par deux briques $3 \times 1$ alors que $3$ ne divise pas $2$. La démonstration publiée, elle, est correcte : elle prouve bien que le pavage est impossible quand $n$ ne divise ni $x$ ni $y$.

## Going further

1. Combien de pavages différents un damier $3 \times 3$ admet-il avec des briques $3 \times 1$ ? Et un damier $3 \times 6$ ? *(Réponses : $2$ et $6$.)*
2. Avec des briques $2 \times 1$ (les dominos), le critère devient « $2$ divise $x$ ou $2$ divise $y$ », c'est-à-dire « $xy$ est pair ». Retrouve ce résultat sans le théorème général.
3. Que devient la question si l'on impose que toutes les briques soient horizontales ?
4. Une variante célèbre : peut-on paver un damier $8 \times 8$ privé de deux cases opposées par des dominos ? Le coloriage à deux couleurs répond tout de suite.
