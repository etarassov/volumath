---
id: "7536"
title: "La moyenne des plus petits éléments"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [coefficients-binomiaux, double-comptage, sous-ensembles, identite-de-pascal, moyenne]
adapted_from: null
see_also: []
same_as: ["8677"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 42 (solution p. 243, résolue par Florent Noisette)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Soient $n$ et $k$ des entiers avec $1 \leqslant k \leqslant n$.

Chaque sous-ensemble à $k$ éléments de $\{1, 2, \ldots, n\}$ possède un plus petit élément. Calculer la moyenne de tous ces plus petits éléments.

## Hints

1. Commence par un petit cas complet, par exemple $n = 4$ et $k = 2$ : liste les six sous-ensembles et calcule la moyenne. Recommence avec $n = 5$, $k = 2$. Devines-tu la formule ?
2. Pour démontrer, il faut calculer la **somme** de tous les plus petits éléments, puis diviser par $\binom{n}{k}$.
3. Une astuce pour sommer des minima : pour un entier $m \geqslant 1$, on a $m = 1 + 1 + \cdots + 1$ ($m$ fois), c'est-à-dire $m$ est le nombre d'entiers $i$ tels que $1 \leqslant i \leqslant m$.
4. Combien y a-t-il de sous-ensembles à $k$ éléments dont le plus petit élément est supérieur ou égal à $i$ ?
5. Tu tomberas sur une somme de coefficients binomiaux « en colonne ». Elle se calcule avec la formule de Pascal, en télescopant.

## Solution

**Réponse : la moyenne vaut $\dfrac{n+1}{k+1}$.**

**Étape 0. On vérifie sur un exemple.**

Pour $n = 4$ et $k = 2$, les six sous-ensembles et leurs minima :

| sous-ensemble | {1,2} | {1,3} | {1,4} | {2,3} | {2,4} | {3,4} |
|---|---|---|---|---|---|---|
| minimum | 1 | 1 | 1 | 2 | 2 | 3 |

Somme $= 10$, moyenne $= \dfrac{10}{6} = \dfrac53$. Et la formule annoncée donne $\dfrac{4+1}{2+1} = \dfrac53$. Bon signe.

**Étape 1. On transforme la somme des minima.**

Notons $\Sigma$ la somme des plus petits éléments, la somme portant sur tous les sous-ensembles $S$ à $k$ éléments.

Pour tout entier $m \geqslant 1$, on peut écrire $m$ comme le nombre d'entiers $i$ vérifiant $1 \leqslant i \leqslant m$. Appliqué à $m = \min(S)$ :

$$\min(S) \;=\; \text{nombre d'entiers } i \geqslant 1 \text{ tels que } \min(S) \geqslant i.$$

En sommant sur tous les $S$ et en échangeant l'ordre des deux comptages :

$$\Sigma \;=\; \sum_{i \geqslant 1} \; (\text{nombre de sous-ensembles } S \text{ à } k \text{ éléments avec } \min(S) \geqslant i).$$

**Étape 2. On compte ces sous-ensembles.**

Dire que $\min(S) \geqslant i$, c'est dire que $S$ est entièrement contenu dans $\{i, i+1, \ldots, n\}$, qui a $n-i+1$ éléments. Il y a donc

$$\binom{n-i+1}{k}$$

tels sous-ensembles. Ce nombre est nul dès que $n-i+1 < k$, donc la somme s'arrête à $i = n-k+1$.

Ainsi

$$\Sigma \;=\; \sum_{i=1}^{n-k+1} \binom{n-i+1}{k} \;=\; \binom{n}{k} + \binom{n-1}{k} + \cdots + \binom{k}{k}.$$

**Étape 3. On calcule cette somme en colonne.**

Montrons que pour tous entiers $k \leqslant n$ :

$$\binom{k}{k} + \binom{k+1}{k} + \cdots + \binom{n}{k} \;=\; \binom{n+1}{k+1}.$$

On procède par récurrence sur $n$.

*Initialisation.* Pour $n = k$, le membre de gauche vaut $\binom{k}{k} = 1$ et le membre de droite $\binom{k+1}{k+1} = 1$.

*Hérédité.* Supposons la formule vraie au rang $n$. En ajoutant le terme suivant et en utilisant la formule de Pascal $\binom{m}{k} + \binom{m}{k+1} = \binom{m+1}{k+1}$ avec $m = n+1$ :

$$\underbrace{\binom{k}{k} + \cdots + \binom{n}{k}}_{= \binom{n+1}{k+1}} + \binom{n+1}{k} \;=\; \binom{n+1}{k+1} + \binom{n+1}{k} \;=\; \binom{n+2}{k+1}.$$

C'est la formule au rang $n+1$. La récurrence est terminée.

Donc

$$\Sigma \;=\; \binom{n+1}{k+1}.$$

**Étape 4. On divise.**

Le nombre de sous-ensembles à $k$ éléments est $\binom{n}{k}$, donc la moyenne vaut

$$M \;=\; \frac{\Sigma}{\binom{n}{k}} \;=\; \frac{\binom{n+1}{k+1}}{\binom{n}{k}}.$$

Écrivons les deux coefficients avec des factorielles :

$$\frac{\binom{n+1}{k+1}}{\binom{n}{k}} \;=\; \frac{\dfrac{(n+1)!}{(k+1)!\,(n-k)!}}{\dfrac{n!}{k!\,(n-k)!}} \;=\; \frac{(n+1)!}{(k+1)!} \times \frac{k!}{n!} \;=\; \frac{n+1}{k+1}.$$

**Conclusion.** La moyenne des plus petits éléments vaut $\dfrac{n+1}{k+1}$.

## Going further

La formule est jolie et se retient facilement : on place $k$ points au hasard parmi $n$, et le plus petit tombe « en moyenne » à la fraction $\frac{1}{k+1}$ du chemin, comme si les $k$ points découpaient $\{1, \ldots, n\}$ en $k+1$ tronçons de longueur moyenne égale.

Cette lecture se confirme : par symétrie, le $j$-ième plus petit élément d'un sous-ensemble à $k$ éléments a pour moyenne $j \times \dfrac{n+1}{k+1}$. En particulier le plus **grand** élément a pour moyenne $k \times \dfrac{n+1}{k+1}$, ce que tu peux vérifier sur l'exemple $n=4$, $k=2$ : les maxima sont $2, 3, 4, 3, 4, 4$, de somme $20$ et de moyenne $\frac{20}{6} = \frac{10}{3} = 2 \times \frac53$.

La somme en colonne de l'étape 3 s'appelle l'**identité du bâton de hockey**, à cause de sa forme dans le triangle de Pascal : les termes additionnés forment le manche, et le résultat est la lame.
