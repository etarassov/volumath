---
id: "13805"
title: "Somme des chiffres 2018, produit des chiffres 2"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 10
tags: [chiffres, somme des chiffres, produit, denombrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2018, éliminatoires"
  reference: "2018-05_coupe_printemps_2018_elim_college.pdf, questionnaire collégiens, exercice 3 ; réponse dans 2018-06_coupe_printemps_2018_elim_college_corrige.pdf (tableau des réponses, sans solution rédigée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/05/coupe_printemps_2018_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-05_coupe_printemps_2018_elim_college.pdf"
---

## Statement

Combien existe-t-il de nombres entiers positifs dont la somme des chiffres vaut $2018$ et
dont le produit des chiffres vaut $2$ ?

## Hints

1. Le produit des chiffres vaut $2$. Peut-il y avoir un chiffre $0$ ? Un chiffre plus grand
   que $2$ ? Deux chiffres égaux à $2$ ?
2. Le nombre s'écrit donc avec un seul $2$ et des $1$. Combien de $1$, pour que la somme
   fasse $2018$ ?
3. Il ne reste plus qu'à choisir la place du chiffre $2$.

## Solution

**Quels chiffres ?** Le produit des chiffres vaut $2$.

- Aucun chiffre n'est $0$, sinon le produit vaudrait $0$.
- Aucun chiffre ne dépasse $2$ : un chiffre $c \geqslant 3$ donnerait un produit au moins
  égal à $c$, puisque les autres chiffres valent au moins $1$.
- Les chiffres sont donc des $1$ et des $2$. Chaque $2$ multiplie le produit par $2$, et les
  $1$ ne le changent pas. Pour obtenir $2$, il faut exactement **un** chiffre $2$.

Le nombre s'écrit donc avec un chiffre $2$ et des chiffres $1$.

**Combien de chiffres ?** La somme des chiffres vaut $2018$. Le chiffre $2$ en apporte $2$, il
faut donc $2016$ chiffres $1$. Le nombre a $1 + 2016 = 2017$ chiffres.

**Combien de nombres ?** Un tel nombre est entièrement déterminé par la place du chiffre $2$
parmi les $2017$ chiffres : en premier, en deuxième, et ainsi de suite jusqu'au dernier. Ces
$2017$ places donnent $2017$ nombres différents, et ils conviennent tous.

Par exemple, avec une somme $5$ au lieu de $2018$, on trouverait de même les $4$ nombres
$2111$, $1211$, $1121$ et $1112$.

**Il existe $2017$ tels nombres.**
