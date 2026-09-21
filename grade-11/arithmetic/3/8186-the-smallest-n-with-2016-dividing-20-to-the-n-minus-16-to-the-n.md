---
id: "8186"
title: "Quand 2016 divise 20ⁿ − 16ⁿ"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [divisibilite, congruences, puissances, decomposition en facteurs premiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, test final du Groupe C"
  reference: "stage_ete_2018.pdf, chapitre V « Groupe C », section 5 « Exercices d'entraînement », « Entraînement final », exercice 1. La solution imprimée passe par les ordres multiplicatifs et le petit théorème de Fermat ; celle ci-dessous se contente de dresser les tables de puissances, ce qui reste à portée d'une première."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Trouver le plus petit entier $n \geq 1$ tel que $2016$ divise $20^n - 16^n$.

## Hints

1. Décompose $2016$ en produit de facteurs premiers.
2. Mets $4^n$ en facteur dans $20^n - 16^n$.
3. Le facteur qui reste est-il pair ou impair ? Cela dit tout de suite d'où doivent venir les
   facteurs $2$.
4. Il reste à traiter séparément le facteur $9$ et le facteur $7$. Dresse la table des restes
   de $5^n$ et de $4^n$ modulo $9$, puis modulo $7$, jusqu'à ce que les restes se répètent.
5. Rassemble les trois conditions sur $n$ et prends le plus petit entier qui les vérifie toutes.

## Solution

**Réponse : $n = 6$.**

**Décomposons $2016$.**

$$2016 = 2 \times 1008 = 2^5 \times 63 = 2^5 \times 3^2 \times 7.$$

Il faut donc que $20^n - 16^n$ soit divisible par $32$, par $9$ et par $7$.

**Mettons $4^n$ en facteur.**

$$20^n - 16^n = (4 \times 5)^n - (4 \times 4)^n = 4^n \left( 5^n - 4^n \right) = 2^{2n}\left(5^n - 4^n\right).$$

**Le facteur $2^5$.**

Pour $n \geq 1$, l'entier $5^n$ est impair et $4^n$ est pair, donc $5^n - 4^n$ est **impair**.
Tous les facteurs $2$ de $20^n - 16^n$ viennent donc de $2^{2n}$. Il faut
$$2n \geq 5, \qquad \text{c'est-à-dire} \qquad n \geq 3.$$

**Le facteur $9$.**

Comme $9$ est impair, il doit diviser $5^n - 4^n$. Dressons les tables des restes modulo $9$ :

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|---|---|---|
| $5^n \bmod 9$ | $5$ | $7$ | $8$ | $4$ | $2$ | $1$ | $5$ |
| $4^n \bmod 9$ | $4$ | $7$ | $1$ | $4$ | $7$ | $1$ | $4$ |

La première ligne se répète à partir de $n = 7$, la seconde à partir de $n = 4$ : les deux
lignes sont donc périodiques, de période $6$ et $3$, et il suffit de regarder $n = 1$ à $6$.

Les deux restes coïncident pour $n = 2$, $n = 4$ et $n = 6$, c'est-à-dire exactement pour les
$n$ **pairs**.

**Le facteur $7$.**

De même, $7$ doit diviser $5^n - 4^n$ :

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|---|---|---|
| $5^n \bmod 7$ | $5$ | $4$ | $6$ | $2$ | $3$ | $1$ | $5$ |
| $4^n \bmod 7$ | $4$ | $2$ | $1$ | $4$ | $2$ | $1$ | $4$ |

Les deux lignes sont périodiques de période $6$ et $3$. Sur $n = 1$ à $6$, les restes ne
coïncident que pour $n = 6$. Comme tout se répète avec une période de $6$, la condition est
donc : **$n$ est un multiple de $6$.**

**Rassemblons.**

Il faut $n \geq 3$, $n$ pair, et $n$ multiple de $6$. La troisième condition entraîne les deux
autres, donc la condition est simplement « $n$ est un multiple de $6$ ».

Le plus petit tel entier avec $n \geq 1$ est $n = 6$.

**Vérification.** $20^6 - 16^6 = 64\,000\,000 - 16\,777\,216 = 47\,222\,784$, et
$$47\,222\,784 = 2016 \times 23\,424.$$

**Le plus petit entier cherché est $n = 6$.**

## Going further

L'ensemble de **tous** les entiers $n \geq 1$ qui conviennent est exactement l'ensemble des
multiples de $6$. Le raisonnement ci-dessus le donne gratuitement : les trois conditions
réunies se résument à « $6$ divise $n$ ».

Remarque sur la méthode : découper la condition « $2016$ divise » en trois conditions, une par
facteur premier, est le réflexe à retenir. Il est permis parce que $32$, $9$ et $7$ n'ont aucun
facteur commun deux à deux.
