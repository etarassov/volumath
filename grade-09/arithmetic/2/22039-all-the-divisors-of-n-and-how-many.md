---
id: "22039"
title: "Tous les diviseurs de n, et combien il y en a"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 25
tags: [diviseurs, nombre-de-diviseurs, decomposition-en-facteurs-premiers, nombres-premiers, denombrement]
adapted_from: null
see_also: ["13810"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Nombres premiers » (Xavier), exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n \geq 2$ un entier. On écrit sa décomposition en produit de facteurs premiers :

$$n = p_1^{a_1} \times p_2^{a_2} \times \cdots \times p_r^{a_r},$$

où $p_1 < p_2 < \cdots < p_r$ sont des nombres premiers et $a_1, a_2, \ldots, a_r$ des entiers supérieurs ou égaux à $1$. Par exemple, $360 = 2^3 \times 3^2 \times 5$.

1. Déterminer tous les diviseurs positifs de $n$.
2. Combien $n$ a-t-il de diviseurs positifs ?

## Hints

1. Commencez par un exemple : écrivez tous les diviseurs de $12 = 2^2 \times 3$. Quelle forme ont-ils ?
2. Si $d$ divise $n$, on peut écrire $n = d \times e$. Que se passe-t-il si on décompose $d$ et $e$ en facteurs premiers, puis qu'on multiplie ?
3. Pour compter : combien de choix a-t-on pour l'exposant de $p_1$ ? Pour celui de $p_2$ ?

## Solution

**L'outil.** Tout entier supérieur ou égal à $2$ s'écrit comme un produit de nombres premiers, et cette décomposition est **unique**, à l'ordre des facteurs près. Dans la suite, un exposant nul est permis : $p^0 = 1$.

**1. Les diviseurs.** Montrons que les diviseurs positifs de $n$ sont exactement les nombres

$$d = p_1^{b_1} \times p_2^{b_2} \times \cdots \times p_r^{b_r}, \quad \text{avec } 0 \leq b_1 \leq a_1, \; 0 \leq b_2 \leq a_2, \; \ldots, \; 0 \leq b_r \leq a_r.$$

*Ces nombres divisent $n$.* Pour un tel $d$, posons

$$e = p_1^{a_1 - b_1} \times p_2^{a_2 - b_2} \times \cdots \times p_r^{a_r - b_r}.$$

Les exposants $a_i - b_i$ sont positifs ou nuls, donc $e$ est un entier. Et $d \times e = n$, car pour chaque $i$, $p_i^{b_i} \times p_i^{a_i - b_i} = p_i^{a_i}$. Donc $d$ divise $n$.

*Il n'y en a pas d'autres.* Soit $d \geq 1$ un diviseur de $n$. On écrit $n = d \times e$, avec $e \geq 1$ entier. On décompose $d$ et $e$ en facteurs premiers (si l'un d'eux vaut $1$, il n'a aucun facteur). En mettant les deux décompositions bout à bout, on obtient une décomposition de $n$ en facteurs premiers. Par unicité, c'est la décomposition $p_1^{a_1} \times \cdots \times p_r^{a_r}$. Donc :

- tout facteur premier de $d$ est l'un des nombres $p_1, \ldots, p_r$ ;
- le nombre de fois où $p_i$ apparaît dans $d$, plus le nombre de fois où il apparaît dans $e$, est égal à $a_i$. En particulier, $p_i$ apparaît au plus $a_i$ fois dans $d$.

Ainsi $d = p_1^{b_1} \times \cdots \times p_r^{b_r}$ avec $0 \leq b_i \leq a_i$ pour chaque $i$.

**2. Le nombre de diviseurs.** Pour fabriquer un diviseur, on choisit :

- l'exposant $b_1$ parmi $0, 1, \ldots, a_1$, soit $a_1 + 1$ choix ;
- l'exposant $b_2$ parmi $0, 1, \ldots, a_2$, soit $a_2 + 1$ choix ;
- et ainsi de suite jusqu'à $b_r$, avec $a_r + 1$ choix.

Ces choix se font indépendamment les uns des autres, donc il y a $(a_1 + 1) \times (a_2 + 1) \times \cdots \times (a_r + 1)$ façons de choisir les exposants. Deux choix différents donnent deux diviseurs différents, toujours par unicité de la décomposition.

**Conclusion.** Les diviseurs positifs de $n$ sont les nombres $p_1^{b_1} \times \cdots \times p_r^{b_r}$ avec $0 \leq b_i \leq a_i$, et $n$ en a exactement

$$(a_1 + 1)(a_2 + 1) \cdots (a_r + 1).$$

Par exemple, $360 = 2^3 \times 3^2 \times 5^1$ a $(3 + 1)(2 + 1)(1 + 1) = 24$ diviseurs.

## Going further

1. Quels entiers ont un nombre impair de diviseurs ?
2. Trouver le plus petit entier qui a exactement $12$ diviseurs.
