---
id: "12638"
title: "Aline, Théo et les puissances de nombres premiers"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [nombres-premiers, divisibilite, decomposition-en-facteurs-premiers, jeu, strategie-gagnante, infini, principe-des-tiroirs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 12 janvier 2022"
  reference: "2022-08_Enonce-Web-Test-2.pdf, exercice 2 ; corrigé 2022-01_Corrige-Web-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/08/Énoncé-Web-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-08_Enonce-Web-Test-2.pdf"
---

## Statement

Aline et Théo jouent au jeu suivant.

- D'abord, Théo choisit une suite infinie de nombres premiers $p_1, p_2, p_3, \ldots$
- Puis Aline choisit une suite infinie d'entiers naturels non nuls $n_1, n_2, n_3, \ldots$, deux à deux distincts.
- Enfin, Théo choisit deux entiers $k \geqslant 1$ et $\ell \geqslant 1$.

Théo gagne s'il existe une infinité d'entiers $n_i$ qui ne sont pas divisibles par $p_k^{\ell}$. Sinon, c'est Aline qui gagne.

a) Qui, d'Aline ou de Théo, a une stratégie gagnante ?

b) On ajoute une règle pour Aline : chacun des entiers $n_i$ ne doit diviser qu'un nombre fini d'entiers $n_j$. Avec cette nouvelle règle, qui a une stratégie gagnante ?

## Hints

1. Pour que Théo perde, il faut que, quels que soient $k$ et $\ell$, presque tous les $n_i$ (tous sauf un nombre fini) soient divisibles par $p_k^{\ell}$. Aline peut-elle construire des $n_i$ qui contiennent de plus en plus de nombres premiers, avec des exposants de plus en plus grands ?
2. Pour a), essaie $n_i = (p_1 \times p_2 \times \cdots \times p_i)^i$.
3. Pour b), Théo a intérêt à choisir une suite qui contient tous les nombres premiers. Regarde ensuite le premier entier $n_1$ d'Aline : il ne divise qu'un nombre fini des $n_j$.
4. Décompose $n_1$ en facteurs premiers. Si $n_1$ ne divise pas $n_j$, l'une des puissances de nombres premiers de cette décomposition ne divise pas $n_j$. Il y a une infinité de tels $n_j$, mais seulement un nombre fini de puissances.

## Solution

Les deux suites sont **infinies**, et c'est ce qui rend le jeu intéressant.

**a) Aline a une stratégie gagnante.** Quelle que soit la suite $p_1, p_2, \ldots$ choisie par Théo, on pose $q_i = p_1 \times p_2 \times \cdots \times p_i$, et Aline choisit
$$n_i = q_i^{\,i} = (p_1 \times p_2 \times \cdots \times p_i)^i.$$

*Ces entiers sont deux à deux distincts.* On a $q_i \geqslant 2$ et $q_{i+1} = q_i \times p_{i+1} \geqslant 2q_i > q_i$. Donc
$$n_{i+1} = q_{i+1}^{\,i+1} > q_i^{\,i+1} \geqslant q_i^{\,i} = n_i.$$
La suite $(n_i)$ est strictement croissante, donc ses termes sont deux à deux distincts.

*Théo perd, quels que soient $k$ et $\ell$.* Soit $i$ un entier tel que $i \geqslant k$ et $i \geqslant \ell$. Comme $i \geqslant k$, le nombre $p_k$ fait partie du produit $q_i$, donc $p_k$ divise $q_i$. Alors $p_k^{\,i}$ divise $q_i^{\,i} = n_i$. Comme $\ell \leqslant i$, $p_k^{\ell}$ divise $p_k^{\,i}$, donc $p_k^{\ell}$ divise $n_i$.

Ainsi, les seuls $n_i$ qui peuvent ne pas être divisibles par $p_k^{\ell}$ sont ceux dont l'indice $i$ est plus petit que $k$ ou que $\ell$. Il y en a un nombre fini, donc Théo perd.

**b) Cette fois, Théo a une stratégie gagnante.** Théo choisit pour $p_1, p_2, p_3, \ldots$ la suite de **tous** les nombres premiers : $2, 3, 5, 7, 11, \ldots$ Aline choisit ensuite ses entiers $n_1, n_2, \ldots$ en respectant la nouvelle règle.

*Une infinité de $n_j$ ne sont pas multiples de $n_1$.* D'après la règle, $n_1$ ne divise qu'un nombre fini des $n_j$. Comme il y a une infinité d'entiers $n_j$, il y en a une infinité que $n_1$ ne divise pas. En particulier, $n_1 \neq 1$, car $1$ divise tous les entiers.

*On décompose $n_1$.* On écrit la décomposition de $n_1$ en facteurs premiers :
$$n_1 = r_1^{a_1} \times r_2^{a_2} \times \cdots \times r_t^{a_t},$$
où $r_1, \ldots, r_t$ sont des nombres premiers distincts et $a_1, \ldots, a_t$ des entiers supérieurs ou égaux à 1.

Soit $n_j$ un entier que $n_1$ ne divise pas. Alors l'une des puissances $r_1^{a_1}, \ldots, r_t^{a_t}$ ne divise pas $n_j$. En effet, si chaque $r_s^{a_s}$ divisait $n_j$, le nombre premier $r_s$ apparaîtrait dans la décomposition de $n_j$ avec un exposant au moins égal à $a_s$, pour chaque $s$, et $n_1$ diviserait $n_j$.

*Le principe des tiroirs.* On range chacun des entiers $n_j$ que $n_1$ ne divise pas dans un tiroir numéroté $s$, où $r_s^{a_s}$ est une puissance qui ne divise pas $n_j$ (s'il y en a plusieurs, on en prend une). Il y a une infinité d'entiers à ranger dans seulement $t$ tiroirs. Si chaque tiroir n'en contenait qu'un nombre fini, ils en contiendraient en tout un nombre fini. Donc l'un des tiroirs, disons le tiroir $s$, contient une infinité d'entiers $n_j$ : il y a une infinité d'entiers $n_j$ qui ne sont pas divisibles par $r_s^{a_s}$.

*Le choix de Théo.* Le nombre premier $r_s$ figure dans la suite de Théo : $r_s = p_k$ pour un certain $k$. Théo choisit ce $k$ et $\ell = a_s$. Une infinité d'entiers $n_j$ ne sont pas divisibles par $p_k^{\ell}$, donc Théo gagne.

**Conclusion.** **a) Aline a une stratégie gagnante ; b) avec la nouvelle règle, c'est Théo qui a une stratégie gagnante.**

## Going further

- Dans b), il est important que Théo choisisse $k$ et $\ell$ **après** avoir vu les entiers d'Aline : son choix dépend de $n_1$.
- Le corrigé signale que presque tous les candidats ont cru que les suites étaient finies. Avec des suites finies, le jeu n'a plus d'intérêt : Théo ne peut jamais trouver une infinité d'entiers.
- Dans b), Théo prend tous les nombres premiers. Montre que s'il en oublie une infinité, Aline gagne. Indication : prends des nombres premiers $r_1, r_2, \ldots$ distincts qui ne sont pas dans la suite de Théo, et pose $n_i = r_i \times (p_1 \times p_2 \times \cdots \times p_i)^i$. On peut montrer que s'il n'en oublie qu'un nombre fini, Théo gagne encore, mais c'est plus difficile.
