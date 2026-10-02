---
id: "12838"
title: "Si a divise b, aᵃ divise-t-il bᵇ ?"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, puissances, contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 17 janvier 2024"
  reference: "2025-01_Enonce-Test-2.pdf, test junior, exercice 1 ; corrigé 2025-01_Corrige-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-2.pdf"
---

## Statement

Soit $a$ et $b$ deux entiers strictement positifs. On suppose que $a$ divise $b$.

1. L'entier $a^a$ divise-t-il forcément l'entier $b^b$ ?
2. L'entier $a^b$ divise-t-il forcément l'entier $b^a$ ?

## Hints

1. Puisque $a$ divise $b$, on peut écrire $b = k \times a$ avec $k$ entier. Que vaut alors $b^b$ ?
2. Pour la première question, remarquez que $b \geq a$ et coupez $a^b$ en deux morceaux : $a^b = a^{b-a} \times a^a$.
3. Pour la seconde question, essayez des petits exemples avec $a = 2$, et comparez la taille de $a^b$ et celle de $b^a$.

## Solution

Puisque $a$ divise $b$, il existe un entier $k \geq 1$ tel que $b = k \times a$. En particulier $b \geq a$.

### Question 1 : oui

On utilise deux règles de calcul sur les puissances : $(k \times a)^b = k^b \times a^b$, et $a^b = a^{b-a} \times a^a$ (car $b - a \geq 0$). Donc

$$b^b = (k \times a)^b = k^b \times a^b = k^b \times a^{b-a} \times a^a.$$

Le nombre $k^b \times a^{b-a}$ est un entier, donc **$a^a$ divise toujours $b^b$**.

### Question 2 : non

Un seul exemple suffit pour montrer que la réponse est non. Prenons $a = 2$ et $b = 6$ : on a bien $2$ qui divise $6$. Mais

$$a^b = 2^6 = 64 \qquad \text{et} \qquad b^a = 6^2 = 36.$$

Le nombre $64$ est plus grand que $36$, donc il ne peut pas diviser $36$. **Ainsi $a^b$ ne divise pas forcément $b^a$.**

## Going further

1. Pour $a = 2$ et $b = 4$, l'entier $a^b$ divise-t-il $b^a$ ? Et lorsque $a = 1$, ou lorsque $a = b$ ?
2. (Plus difficile.) On écrit $b = k \times a$ avec $a \geq 2$ et $k \geq 2$. Montrer que $a^b > b^a$, sauf lorsque $a = 2$ et $b = 4$. En déduire tous les couples $(a, b)$, avec $a$ qui divise $b$, tels que $a^b$ divise $b^a$. (On pourra comparer $a^{k-1}$ et $k$.)
