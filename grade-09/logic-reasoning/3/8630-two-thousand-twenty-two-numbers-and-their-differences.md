---
id: "8630"
title: "Les nombres de 1 à 2022 remplacés par leurs différences"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [invariant, parite, somme-des-premiers-entiers, construction]
adapted_from: null
see_also: ["8580"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Invariants/coloriages » (Gaëtan & Vincent), exercice 3. Le corrigé imprimé répond « non » en annonçant 1012 nombres impairs et 1011 nombres pairs entre 1 et 2022, d'où une somme de départ paire ; il y a en réalité 1011 de chaque, la somme vaut 1011 × 2023, qui est impaire, et la réponse est « oui »"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Caroline a écrit au tableau tous les nombres entiers de $1$ à $2022$.

À chaque étape, elle efface deux nombres et les remplace par leur différence (le plus grand moins le plus petit). Elle continue jusqu'à ce qu'il ne reste qu'un seul nombre au tableau.

1. Peut-elle se débrouiller pour que ce dernier nombre soit $0$ ?
2. Peut-elle se débrouiller pour que ce dernier nombre soit $1$ ?

## Hints

1. Combien y a-t-il de nombres au tableau après une opération ? Après deux ? Combien d'opérations faudra-t-il en tout ?
2. La somme des nombres du tableau change à chaque étape. Mais peut-être qu'une information plus grossière sur cette somme, elle, ne change pas.
3. Si l'on remplace $a$ et $b$ par $a - b$, de combien la somme diminue-t-elle ? Est-ce un nombre pair ou impair ?
4. Calcule la somme $1 + 2 + \cdots + 2022$ et regarde si elle est paire ou impaire. Attention, le calcul mérite d'être fait proprement.
5. Pour la question 2, il ne suffit pas de dire que rien ne l'interdit : il faut montrer comment faire. Essaie de regrouper les nombres deux par deux.

## Solution

### L'invariant : la parité de la somme

Supposons que Caroline efface $a$ et $b$ (avec $a \geqslant b$) et écrive $a - b$. La somme des nombres du tableau perd $a + b$ et gagne $a - b$ : elle diminue donc de

$$(a+b) - (a-b) = 2b ,$$

qui est un nombre **pair**.

La somme change donc à chaque étape, mais **sa parité, elle, ne change jamais**.

### La somme de départ

Calculons la somme initiale :

$$1 + 2 + \cdots + 2022 = \frac{2022 \times 2023}{2} = 1011 \times 2023 .$$

Les deux facteurs $1011$ et $2023$ sont impairs, donc leur produit est **impair**.

*(Autre façon de voir : entre $1$ et $2022$ il y a $1011$ nombres impairs, à savoir $1, 3, \ldots, 2021$, et $1011$ nombres pairs. Une somme de $1011$ nombres impairs et de nombres pairs est impaire, puisque $1011$ est impair.)*

### Question 1 : le nombre final ne peut pas être 0

À la fin, il ne reste qu'un seul nombre, et la somme du tableau est ce nombre lui-même. Sa parité est celle de la somme de départ : il est donc **impair**.

Or $0$ est pair. **Caroline ne pourra jamais finir sur $0$.**

### Question 2 : le nombre final peut être 1

La parité n'interdit rien ici, puisque $1$ est impair. Montrons que Caroline y arrive vraiment, en décrivant une façon de procéder.

**Première phase.** Groupons les nombres en paires de nombres consécutifs :

$$(1,2), \quad (3,4), \quad (5,6), \quad \ldots, \quad (2021, 2022) .$$

Il y a $1011$ telles paires. Caroline traite chacune d'elles : $2 - 1 = 1$, $4 - 3 = 1$, et ainsi de suite. Après cette phase, il reste au tableau $1011$ nombres, tous égaux à $1$.

**Deuxième phase.** Caroline met de côté l'un de ces $1$, et groupe les $1010$ autres en $505$ paires. Chaque paire donne $1 - 1 = 0$. Il reste alors $505$ zéros, plus le $1$ mis de côté.

**Troisième phase.** Caroline efface les zéros deux par deux : $0 - 0 = 0$. En répétant, elle réduit les $505$ zéros à un seul zéro. Il reste alors au tableau les deux nombres $0$ et $1$.

**Dernière étape.** $1 - 0 = 1$.

Il ne reste qu'un nombre au tableau, et c'est $1$.

### Conclusion

Caroline ne peut pas finir sur $0$, mais elle peut finir sur $1$.

## Going further

L'invariant dit que le nombre final est toujours impair. Rien de plus : pour chaque valeur impaire, il faut une construction séparée.

Essaie d'obtenir $2021$. *Indication : mets $2022$ et $1$ de côté, fais tomber tout le reste à $0$ comme dans la solution, puis termine.*

L'impossibilité vient de l'invariant, et la possibilité d'une construction. Les deux sont nécessaires : un invariant qui ne bloque pas ne prouve jamais qu'une chose est réalisable. C'est précisément le piège dans lequel tombe le corrigé d'origine de ce problème, qui conclut « non » à partir d'un calcul de parité erroné.
