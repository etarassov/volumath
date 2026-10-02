---
id: "10680"
title: "Des plus et des moins pour arriver à zéro"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [choix-de-signes, parite, plus-petit-contre-exemple, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Seniors, exercice 12 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf. Le corrigé procède par récurrence ; la solution ci-dessous utilise un plus petit contre-exemple, ce qui revient au même sans le vocabulaire de Terminale. Coquille dans l'initialisation du corrigé : « z1 − z − 2 + z3 » pour z1 − z2 + z3."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier et soient $z_1, z_2, \ldots, z_n$ des entiers strictement positifs tels que $z_j \leqslant j$ pour tout $j$ entre $1$ et $n$, et tels que la somme $z_1 + z_2 + \cdots + z_n$ soit paire. Montrer que l'on peut choisir chaque signe $\pm$, indépendamment des autres, de sorte que

$$z_1 \pm z_2 \pm \cdots \pm z_n = 0$$

## Hints

1. Que vaut forcément $z_1$ ? Règle le cas $n = 2$, puis essaie quelques exemples avec $n = 3$.
2. Suppose que ce soit impossible pour au moins une liste, et choisis une telle liste avec $n$ le plus petit possible. Tu vas fabriquer une liste plus courte pour laquelle c'est aussi impossible.
3. Regarde les deux derniers nombres $z_{n-1}$ et $z_n$, et décide de leur donner des signes opposés. S'ils sont égaux, ils s'annulent.
4. S'ils sont différents, remplace-les par un seul nombre, $|z_n - z_{n-1}|$, placé en position $n - 1$. Vérifie que la nouvelle liste respecte encore toutes les conditions.

## Solution

Disons qu'une liste $z_1, \ldots, z_n$ est **bonne** si $n \geqslant 2$, si chaque $z_j$ est un entier vérifiant $1 \leqslant z_j \leqslant j$, et si la somme des $z_j$ est paire. On veut montrer que, pour toute bonne liste, on peut choisir les signes pour que $z_1 \pm z_2 \pm \cdots \pm z_n = 0$. Remarquons que $z_1 = 1$ dans toute bonne liste, puisque $1 \leqslant z_1 \leqslant 1$.

**Étape 1. Le cas $n = 2$.**

On a $z_1 = 1$ et $z_2$ vaut $1$ ou $2$. Comme $z_1 + z_2$ est pair, $z_2 = 1$, et $z_1 - z_2 = 0$.

**Étape 2. Un plus petit contre-exemple.**

Supposons qu'il existe des bonnes listes pour lesquelles aucun choix de signes ne donne $0$. Appelons-les des contre-exemples, et choisissons-en un, $z_1, \ldots, z_n$, dont la longueur $n$ est la plus petite possible. Par l'étape 1, $n \geqslant 3$. On va construire un contre-exemple plus court, ce qui sera absurde.

**Étape 3. Si $z_{n-1} = z_n$.**

Si $n = 3$, la somme vaut $z_1 + 2z_2 = 1 + 2z_2$, qui est impaire : ce cas est impossible. Donc $n \geqslant 4$. La liste raccourcie $z_1, \ldots, z_{n-2}$ a au moins deux termes, respecte $1 \leqslant z_j \leqslant j$, et sa somme vaut la somme totale moins $2z_n$, donc elle est paire : c'est une bonne liste.

Si on pouvait choisir des signes avec $z_1 \pm \cdots \pm z_{n-2} = 0$, il suffirait d'ajouter $+ z_{n-1} - z_n$, qui vaut $0$, pour obtenir un choix de signes qui marche pour la liste de départ. C'est impossible, donc la liste raccourcie est un contre-exemple plus court.

**Étape 4. Si $z_{n-1} \neq z_n$.**

Posons $d = |z_n - z_{n-1}|$. C'est un entier, et $d \geqslant 1$ car les deux nombres sont différents. De plus $d$ est au plus égal au plus grand des deux, moins $1$ (car le plus petit vaut au moins $1$), donc $d \leqslant n - 1$.

Considérons la liste $z_1, \ldots, z_{n-2}, d$, de longueur $n - 1 \geqslant 2$, avec $d$ en position $n - 1$.

- Les conditions $1 \leqslant z_j \leqslant j$ sont vraies pour $j \leqslant n - 2$, et pour la dernière position on vient de voir que $1 \leqslant d \leqslant n - 1$.
- La différence entre $z_{n-1} + z_n$ et $d$ vaut $2 \times \min(z_{n-1}, z_n)$, qui est paire. Donc la somme de la nouvelle liste a la même parité que celle de l'ancienne : elle est paire.

C'est donc une bonne liste. Si on pouvait choisir des signes avec $z_1 \pm \cdots \pm z_{n-2} \pm d = 0$, on remplacerait $\pm d$ par $\pm z_{n-1} \mp z_n$ ou par $\mp z_{n-1} \pm z_n$, selon que $d$ vaut $z_{n-1} - z_n$ ou $z_n - z_{n-1}$. On obtiendrait un choix de signes qui marche pour la liste de départ, ce qui est impossible. Donc la nouvelle liste est un contre-exemple plus court.

Remarquons que dans les deux étapes, le premier terme $z_1$ reste à sa place, toujours avec le signe $+$.

**Étape 5. Conclusion.**

Dans tous les cas, on a trouvé un contre-exemple de longueur strictement plus petite que $n$, ce qui contredit le choix de $n$. Il n'y a donc aucun contre-exemple.

**Conclusion : pour toute liste qui vérifie les conditions de l'énoncé, il existe un choix des signes tel que $z_1 \pm z_2 \pm \cdots \pm z_n = 0$.**

## Going further

Pour $z_1 = 1$, $z_2 = 2$, $z_3 = 3$, $z_4 = 4$, $z_5 = 4$, $z_6 = 6$, suis la méthode de la solution pas à pas pour trouver les signes.
