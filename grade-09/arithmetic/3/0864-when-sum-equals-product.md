---
id: "0864"
title: "Quand la somme égale le produit"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [equation entiere, factorisation, entiers naturels, diviseurs]
adapted_from: null
see_also: ["0760"]
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Calcul », niveau collège - débutants, 16 avril 2024"
  reference: "Nombres.Introduction.pdf, exercice 29, section « Divers »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Nombres.Introduction.pdf"
---

## Statement

Trouve tous les couples d'entiers naturels $a$ et $b$ tels que

$$a + b = ab.$$

Autrement dit : deux entiers naturels dont la somme est égale au produit.

## Hints

1. Commence par essayer de petites valeurs : $a = 0$, puis $a = 1$, puis $a = 2$, puis $a = 3$. Tu trouveras vite deux couples qui marchent, mais il restera à prouver qu'il n'y en a pas d'autres.
2. Une équation avec deux inconnues sur des entiers se traite presque toujours de la même façon : on ramène tout d'un côté et on **factorise**.
3. Ici $ab - a - b$ ne se factorise pas tel quel. Mais si tu ajoutes $1$ aux deux membres, le membre de gauche devient factorisable.
4. Développe $(a-1)(b-1)$ et compare avec $ab - a - b + 1$.

## Solution

**L'idée : se ramener à un produit connu.**

On met tout du même côté :

$$ab - a - b = 0.$$

Le membre de gauche ne se factorise pas directement, mais en ajoutant $1$ des deux côtés :

$$ab - a - b + 1 = 1.$$

Or on reconnaît un produit développé :

$$(a-1)(b-1) = ab - a - b + 1.$$

L'équation devient donc

$$(a-1)(b-1) = 1.$$

**On utilise que $a$ et $b$ sont des entiers naturels.**

Comme $a \geqslant 0$ et $b \geqslant 0$, les deux facteurs $a-1$ et $b-1$ sont des entiers
supérieurs ou égaux à $-1$.

Deux entiers dont le produit vaut $1$ sont soit tous les deux égaux à $1$, soit tous les deux égaux
à $-1$ : il n'y a pas d'autre façon d'écrire $1$ comme produit de deux entiers.

- **Premier cas :** $a - 1 = 1$ et $b - 1 = 1$, donc $a = 2$ et $b = 2$.
- **Second cas :** $a - 1 = -1$ et $b - 1 = -1$, donc $a = 0$ et $b = 0$.

**Vérification.**

$$2 + 2 = 4 \quad \text{et} \quad 2 \times 2 = 4. \qquad \checkmark$$
$$0 + 0 = 0 \quad \text{et} \quad 0 \times 0 = 0. \qquad \checkmark$$

**Conclusion.** Il y a exactement deux couples d'entiers naturels solutions :

$$(a\,;\,b) = (0\,;\,0) \qquad \text{et} \qquad (a\,;\,b) = (2\,;\,2).$$

(Si l'on convient que $\mathbb{N}$ commence à $1$, il ne reste que le couple $(2\,;\,2)$.)

## Going further

1. Trouve tous les couples d'entiers naturels tels que $ab = a + b + 1$. (Même astuce : ajoute ce qu'il faut pour faire apparaître $(a-1)(b-1)$.)
2. Trouve tous les couples d'entiers naturels tels que $ab = 2(a+b)$.
3. Et si on cherchait des nombres quelconques, pas forcément entiers ? Montre que pour tout $a \neq 1$ il existe un $b$ qui convient, et donne son expression.
