---
id: "7068"
title: "Élever à la puissance ne change rien"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [divisibilite, decomposition-en-facteurs-premiers, equivalence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, mercredi : arithmétique, matin (Vincent Jugé), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Soient $a$, $b$, $c$ des entiers naturels, avec $a \geq 1$, $b \geq 1$ et $c \geq 1$.

Montrer que
$$a \text{ divise } b \qquad \Longleftrightarrow \qquad a^c \text{ divise } b^c .$$

## Hints

1. Un sens est facile : si $b = ka$, que vaut $b^c$ ?
2. L'autre sens est le vrai exercice. Il est faux de croire que $a^c \mid b^c$ « se
   simplifie » : essaie de le démontrer directement, tu verras que ça bloque.
3. Passe par la décomposition en facteurs premiers. Pour un nombre premier $p$, note
   $v_p(n)$ l'exposant de $p$ dans la décomposition de $n$.
4. Traduis « $a$ divise $b$ » en termes de $v_p(a)$ et $v_p(b)$, pour tous les premiers $p$.
5. Que vaut $v_p(a^c)$ en fonction de $v_p(a)$ ?

## Solution

**Le sens facile.**

Supposons que $a$ divise $b$ : il existe un entier $k$ avec $b = ka$. Alors
$$b^c = (ka)^c = k^c a^c ,$$
donc $a^c$ divise $b^c$. $\checkmark$

**Le vocabulaire pour l'autre sens.**

Pour un nombre premier $p$ et un entier $n \geq 1$, notons $v_p(n)$ l'exposant de $p$ dans la
décomposition de $n$ en facteurs premiers. Par exemple $v_2(24) = 3$ et $v_3(24) = 1$, puisque
$24 = 2^3 \times 3$.

Deux propriétés, qui découlent directement de l'unicité de la décomposition :

- **(P1)** $n$ divise $m$ si et seulement si $v_p(n) \leq v_p(m)$ pour **tout** nombre premier
  $p$.
- **(P2)** $v_p(n^c) = c \times v_p(n)$, puisque élever à la puissance $c$ multiplie chaque
  exposant par $c$.

**Le sens difficile.**

Supposons que $a^c$ divise $b^c$. Par **(P1)**, pour tout premier $p$,
$$v_p(a^c) \leq v_p(b^c) .$$

Par **(P2)**, cela s'écrit
$$c \times v_p(a) \leq c \times v_p(b) .$$

Comme $c \geq 1$, on peut diviser par $c$ :
$$v_p(a) \leq v_p(b) \qquad \text{pour tout premier } p .$$

Par **(P1)** à nouveau, cela signifie exactement que $a$ divise $b$. $\blacksquare$

## Going further

**Pourquoi la décomposition en facteurs premiers était-elle indispensable ?** Parce que
l'énoncé est faux dans des cadres où elle n'existe pas. Le résultat n'a rien d'évident : il
dit par exemple que si $a^2$ divise $b^2$, alors déjà $a$ divise $b$, ce qui ne se voit pas du
tout en manipulant les égalités.

En voici une conséquence connue. Prenons $b = 2$, $c = 2$. Si $\sqrt 2$ était rationnel,
disons $\sqrt 2 = \dfrac ba$ avec $a \geq 1$, on aurait $b^2 = 2a^2$, donc $a^2$ divise $b^2$,
donc $a$ divise $b$, donc $\dfrac ba$ serait un entier. Mais $1 < \sqrt2 < 2$ : aucun entier
ne convient. Voilà l'irrationalité de $\sqrt 2$, sans passer par la fraction irréductible.

Attention enfin à l'hypothèse $c \geq 1$ : pour $c = 0$, l'énoncé dirait que $1$ divise $1$
équivaut à $a$ divise $b$, ce qui est faux dès que $a$ ne divise pas $b$.
