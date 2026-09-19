---
id: "0206"
title: "Comparer sans compter"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [paires, denombrement, divisibilite, chiffres]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (7 класс, II полугодие), сост. Е. А. Асташов, Я. А. Верёвкин, А. А. Дейч, С. М. Саулин, А. В. Феклина, МГУ, 2017"
  reference: "Ast2017b.pdf, листок 26, задача 1 (p. 67)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

**a)** Parmi les entiers de $1$ à $1000$, y a-t-il plus de nombres pairs ou plus de nombres impairs ?

**b)** Y a-t-il plus de nombres à quatre chiffres, ou plus de nombres à cinq chiffres divisibles par $10$ ?

Dans les deux cas, réponds **sans compter les nombres un par un** : essaie plutôt de les ranger deux par deux, en mettant dans chaque paire un nombre de chaque famille.

## Hints

1. Pour la question a), commence à écrire les paires : $1$ avec $2$, $3$ avec $4$, $5$ avec $6$… Chaque nombre de $1$ à $1000$ apparaît-il dans exactement une paire ?
2. Pour la question b), rappelle-toi qu'un nombre est divisible par $10$ exactement lorsqu'il se termine par le chiffre $0$.
3. Question b) : en partant d'un nombre à quatre chiffres, comment fabriquer un nombre à cinq chiffres terminé par $0$ ?
4. Question b) : vérifie que ça marche aussi dans l'autre sens. En partant d'un nombre à cinq chiffres divisible par $10$, comment retrouver son partenaire à quatre chiffres ? Peut-il arriver qu'on ne tombe pas sur un nombre à quatre chiffres ?

## Solution

**L'idée, dans les deux questions : former des paires.** Si on arrive à ranger tous les nombres des deux familles en paires contenant un nombre de chaque famille, sans laisser personne de côté et sans utiliser deux fois le même nombre, c'est qu'il y en a autant d'un côté que de l'autre. Pas besoin de savoir combien.

**a) Pairs et impairs de $1$ à $1000$.**

Formons les paires

$$(1\,;\,2), \quad (3\,;\,4), \quad (5\,;\,6), \quad \ldots, \quad (999\,;\,1000).$$

Autrement dit, on associe le nombre impair $2n-1$ au nombre pair $2n$.

Chaque nombre de $1$ à $1000$ apparaît dans exactement une paire, et chaque paire contient exactement un nombre impair et un nombre pair. Il y a donc **autant** de nombres pairs que de nombres impairs.

(Pour les curieux : il y a $500$ paires, donc $500$ nombres de chaque sorte, mais la mise en paires suffisait pour répondre.)

**b) Nombres à quatre chiffres et nombres à cinq chiffres divisibles par $10$.**

Un nombre est divisible par $10$ exactement lorsqu'il se termine par $0$.

À chaque nombre à quatre chiffres, associons le nombre obtenu en écrivant un $0$ à la fin, c'est-à-dire en le multipliant par $10$ :

$$1000 \longleftrightarrow 10\,000, \qquad 2\,345 \longleftrightarrow 23\,450, \qquad 9\,999 \longleftrightarrow 99\,990.$$

*Chaque nombre à quatre chiffres a bien un partenaire.* En ajoutant un chiffre on obtient un nombre à cinq chiffres, et il se termine par $0$, donc il est divisible par $10$.

*Chaque nombre à cinq chiffres divisible par $10$ a bien un partenaire.* Comme il se termine par $0$, on peut effacer ce $0$, autrement dit le diviser par $10$. Il reste ses quatre premiers chiffres, et le premier d'entre eux n'est pas $0$ puisqu'on était parti d'un nombre à cinq chiffres. On obtient donc bien un nombre à quatre chiffres.

*Deux nombres différents ont des partenaires différents*, puisque ajouter un $0$ à deux nombres différents donne deux nombres différents.

Les paires rangent donc toute la première famille avec toute la seconde : il y a **autant** de nombres à quatre chiffres que de nombres à cinq chiffres divisibles par $10$.

**Conclusion.**

Dans les deux questions, les deux familles ont exactement le même nombre d'éléments.

## Going further

1. Parmi les entiers de $1$ à $100$, y a-t-il plus de multiples de $3$ ou plus de multiples de $5$ ? (La mise en paires ne marche plus tout à fait : qui reste sans partenaire ?)
2. Même question qu'au a), mais avec les entiers de $1$ à $1001$.
3. Y a-t-il plus de nombres à trois chiffres, ou plus de nombres à six chiffres divisibles par $1000$ ?
