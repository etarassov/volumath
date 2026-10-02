---
id: "7636"
title: "Le plus grand produit à somme 2013"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [optimisation, decomposition, entiers, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 26 (sans solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On choisit plusieurs entiers strictement positifs, en nombre quelconque, dont la somme vaut $2013$. On peut reprendre plusieurs fois le même nombre.

Quelle est la plus grande valeur possible de leur **produit** ?

## Hints

1. Essayez avec un petit total, par exemple $10$, en testant plusieurs découpages : $5+5$, $3+3+4$, $2+2+2+2+2$, $3+3+2+2$… Lequel donne le plus grand produit ?
2. Montrez d'abord qu'il ne faut jamais utiliser le nombre $1$.
3. Montrez ensuite qu'un terme $k \geqslant 5$ a toujours intérêt à être remplacé par $2$ et $k-2$. Comparez $2(k-2)$ et $k$.
4. Il ne reste donc que des $2$, des $3$ et des $4$. Mais $4 = 2 + 2$ donne le même produit : on peut se limiter aux $2$ et aux $3$.
5. Enfin, comparez trois $2$ et deux $3$ : ils ont la même somme, mais pas le même produit.

## Solution

**Réponse : le plus grand produit vaut $3^{671}$.**

Appelons **découpage** une liste d'entiers strictement positifs dont la somme vaut $2013$, et considérons un découpage dont le produit est le plus grand possible. (Il en existe : les découpages sont en nombre fini, puisque chaque terme vaut au moins $1$ et qu'il y a donc au plus $2013$ termes.)

**Étape 1 : aucun terme n'est égal à $1$.**

Supposons qu'un terme vaille $1$. Comme le total est $2013 > 1$, il y a au moins un autre terme, disons $a \geqslant 1$. Remplaçons les deux termes $1$ et $a$ par le seul terme $1 + a$ : la somme ne change pas, et le produit est multiplié par

$$\frac{1 + a}{1 \times a} = \frac{a+1}{a} > 1 .$$

Le produit augmente strictement, ce qui contredit le choix du découpage. Donc **tous les termes valent au moins $2$**.

**Étape 2 : aucun terme n'est supérieur ou égal à $5$.**

Supposons qu'un terme $k$ vérifie $k \geqslant 5$. Remplaçons-le par les deux termes $2$ et $k - 2$ : la somme ne change pas, et le produit est multiplié par

$$\frac{2(k-2)}{k} = \frac{2k - 4}{k} .$$

Ce rapport est strictement plus grand que $1$ dès que $2k - 4 > k$, c'est-à-dire $k > 4$, ce qui est bien le cas. Le produit augmente : contradiction.

Donc **tous les termes valent $2$, $3$ ou $4$**.

**Étape 3 : on peut supposer qu'il n'y a que des $2$ et des $3$.**

Un terme $4$ peut être remplacé par $2 + 2$ : la somme ne change pas et le produit non plus, puisque $2 \times 2 = 4$. On peut donc supposer que le découpage optimal n'utilise que des $2$ et des $3$.

**Étape 4 : au plus deux termes valent $2$.**

Supposons qu'il y ait au moins trois $2$. Remplaçons trois d'entre eux par deux $3$ : la somme ne change pas, car $2 + 2 + 2 = 6 = 3 + 3$, mais le produit est multiplié par

$$\frac{3 \times 3}{2 \times 2 \times 2} = \frac{9}{8} > 1 .$$

Le produit augmente : contradiction. Donc le découpage optimal comporte **au plus deux $2$**, et tout le reste en $3$.

**Étape 5 : conclusion.**

Le découpage optimal s'écrit donc avec $m$ termes égaux à $3$ et $r$ termes égaux à $2$, où $r \in \{0, 1, 2\}$, et

$$3m + 2r = 2013 .$$

Comme $2013 = 3 \times 671$ est un multiple de $3$, le nombre $2r$ doit lui aussi être un multiple de $3$ ; avec $r \leqslant 2$, cela impose $r = 0$, puis $m = 671$.

Le produit maximal vaut

$$\boxed{3^{671}} .$$

## Going further

Deux mots sur les autres restes possibles. Si le total $N$ n'est pas un multiple de $3$ :

- $N \equiv 1 \pmod 3$ : on prend $\dfrac{N-4}{3}$ termes égaux à $3$ et deux termes égaux à $2$. Attention, il **ne faut pas** prendre un $1$ : $3 \times 1 = 3$ est moins bon que $2 \times 2 = 4$.
- $N \equiv 2 \pmod 3$ : on prend $\dfrac{N-2}{3}$ termes égaux à $3$ et un terme égal à $2$.

**Pourquoi le $3$ gagne-t-il ?** Si l'on s'autorisait des nombres réels au lieu d'entiers, le découpage optimal utiliserait des termes tous égaux au nombre $\mathrm{e} \approx \text{2,718}$. Parmi les entiers, c'est $3$ qui en est le plus proche, et c'est lui qui l'emporte, de justesse : sur une somme de $6$, deux $3$ donnent $9$, trois $2$ donnent $8$.

Pour s'entraîner : quel est le plus grand produit d'entiers de somme $100$ ?
