---
id: "8935"
title: "Trois divisibilités à démêler"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [divisibilite, combinaison-lineaire, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe B"
  reference: "Poly-Valbonne-2026.pdf, chapitre IV « Groupe B », « Arithmétique : TD de révisions » (Eva), exercices 1, 2 et 3 réunis"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Dans tout l'exercice, $n$ désigne un entier naturel. Trouver tous les $n$ qui conviennent dans chacun des trois cas suivants.

**a)** $n + 1$ divise $3n + 2$.

**b)** $2n + 1$ divise $n + 2$.

**c)** $2n + 1$ divise $5n + 2$.

## Hints

1. Un diviseur commun à deux nombres divise aussi leur différence, et plus généralement toute combinaison du type « un multiple du premier moins un multiple du second ».
2. Pour **a)**, remarquez que $n+1$ divise évidemment $3(n+1) = 3n+3$. Que vaut $3n+3 - (3n+2)$ ?
3. Pour **b)** et **c)**, le nombre qui divise est $2n+1$, alors que les nombres à diviser contiennent un seul $n$. Commencez par doubler : si $d$ divise $n+2$, alors $d$ divise $2n+4$.
4. Attention : la réciproque du point précédent n'est pas automatique. Pour revenir de $2n+4$ à $n+2$, servez-vous du fait que $2n+1$ est **impair**.
5. À la fin, vous obtiendrez « $2n+1$ divise un petit nombre fixe ». Listez les diviseurs positifs de ce petit nombre, et n'oubliez pas de vérifier chaque candidat dans l'énoncé de départ.

## Solution

L'outil unique de cet exercice : **si un entier $d$ divise deux nombres, il divise toute différence de leurs multiples.**

### a) $n+1$ divise $3n+2$

L'entier $n+1$ divise toujours $3(n+1) = 3n + 3$. Si de plus il divise $3n+2$, il divise la différence

$$(3n+3) - (3n+2) = 1.$$

Or le seul entier strictement positif qui divise $1$ est $1$ lui-même, et $n+1 \geqslant 1$. Donc $n + 1 = 1$, c'est-à-dire $n = 0$.

Réciproquement, pour $n = 0$ : $n+1 = 1$ divise bien $3n+2 = 2$.

$$\boxed{\text{a)} \quad n = 0 \text{ est la seule solution.}}$$

### b) $2n+1$ divise $n+2$

Le nombre qui divise contient $2n$, alors que $n+2$ n'en contient qu'un seul. Doublons donc : si $2n+1$ divise $n+2$, alors il divise aussi $2(n+2) = 2n + 4$. Et comme $2n+1$ divise $2n+1$, il divise la différence

$$(2n+4) - (2n+1) = 3.$$

Les diviseurs strictement positifs de $3$ sont $1$ et $3$, et $2n+1$ est strictement positif. Donc $2n+1 = 1$ ou $2n+1 = 3$, c'est-à-dire $n = 0$ ou $n = 1$.

Vérifions les deux, puisque nous n'avons montré qu'une implication :

- $n = 0$ : $2n+1 = 1$ divise $n+2 = 2$. C'est bon.
- $n = 1$ : $2n+1 = 3$ divise $n+2 = 3$. C'est bon.

$$\boxed{\text{b)} \quad n = 0 \text{ et } n = 1.}$$

### c) $2n+1$ divise $5n+2$

Même départ : si $2n+1$ divise $5n+2$, il divise $2(5n+2) = 10n+4$. Il divise aussi $5(2n+1) = 10n+5$, donc il divise la différence

$$(10n+5) - (10n+4) = 1.$$

Donc $2n+1 = 1$, c'est-à-dire $n = 0$. Et pour $n = 0$ : $2n+1 = 1$ divise $5n+2 = 2$. C'est bon.

$$\boxed{\text{c)} \quad n = 0 \text{ est la seule solution.}}$$

### Une remarque importante sur la méthode

Dans **b)**, nous sommes passés de « $2n+1$ divise $n+2$ » à « $2n+1$ divise $2n+4$ ». Ce sens-là est gratuit. Le sens inverse ne l'est pas : en général, savoir que $d$ divise $2m$ ne suffit pas à conclure que $d$ divise $m$ (par exemple $4$ divise $2 \times 6 = 12$, mais $4$ ne divise pas $6$).

Ici, cela marche quand même parce que $2n+1$ est **impair** : un nombre impair qui divise un nombre pair doit en diviser la moitié. Nous n'en avions pas besoin dans la solution ci-dessus, parce que nous avons seulement utilisé le sens facile pour fabriquer la liste des candidats, puis vérifié chaque candidat à la main. **Fabriquer une liste de candidats, puis les tester un par un**, c'est la façon la plus sûre de ne pas se faire piéger par une implication qui ne se retourne pas.

## Going further

1. Trouvez tous les entiers naturels $n$ tels que $n - 3$ divise $2n^2 - n + 3$. (Même méthode : fabriquez des multiples de $n-3$ pour faire disparaître les $n$ un par un.)
2. Reprenez **b)** et démontrez proprement l'affirmation utilisée dans la remarque : si $d$ est impair et divise $2m$, alors $d$ divise $m$.
