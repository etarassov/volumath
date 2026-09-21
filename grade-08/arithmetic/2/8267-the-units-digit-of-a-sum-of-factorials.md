---
id: "8267"
title: "Le chiffre des unités d'une somme de factorielles"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [chiffre des unites, factorielle, multiples de dix]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, La Muraille"
  reference: "PolycopieV1-1.pdf, chapitre IX « La Muraille », exercice 7 (niveau 1, proposé par Anatole Bouton). La Muraille ne publie pas de solutions."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Pour un entier $n \ge 1$, on note $n!$ le produit de tous les entiers de $1$ à $n$ :

$$n! = 1 \times 2 \times 3 \times \cdots \times n .$$

Par exemple $1! = 1$, $\ 2! = 2$, $\ 3! = 6$, $\ 4! = 24$, $\ 5! = 120$.

Quel est le chiffre des unités de

$$1! + 2! + 3! + \cdots + 42! \ ?$$

## Hints

1. Il est hors de question de calculer cette somme : $42!$ a plus de cinquante chiffres. Seul
   le chiffre des unités compte.
2. Le chiffre des unités d'une somme ne dépend que des chiffres des unités des termes.
3. Regarde $5!$, puis $6!$, puis $7!$. Que remarques-tu sur leur chiffre des unités ? Pourquoi ?
4. Le produit $1 \times 2 \times 3 \times 4 \times 5$ contient un $2$ et un $5$. Que vaut
   $2 \times 5$ ?

## Solution

**Réponse : le chiffre des unités est $3$.**

**À partir de $5!$, tout se termine par zéro.**

Dès que $n \ge 5$, le produit $n! = 1 \times 2 \times 3 \times \cdots \times n$ contient à la
fois le facteur $2$ et le facteur $5$. Il est donc divisible par $2 \times 5 = 10$, et son
chiffre des unités est **$0$**.

On le voit bien sur les premières valeurs :

$$5! = 120, \qquad 6! = 720, \qquad 7! = 5040, \qquad 8! = 40\,320 .$$

Tous les termes de $5!$ à $42!$ se terminent donc par $0$, et ils n'apportent rien au chiffre
des unités de la somme.

**Il ne reste que les quatre premiers termes.**

$$1! + 2! + 3! + 4! = 1 + 2 + 6 + 24 = 33 .$$

Le chiffre des unités de la somme totale est donc celui de $33$, c'est-à-dire **$3$**.

**Rédigeons proprement.** Écrivons

$$1! + 2! + \cdots + 42! = \underbrace{(1 + 2 + 6 + 24)}_{= \ 33} + \underbrace{(5! + 6! +
\cdots + 42!)}_{\text{multiple de } 10} .$$

Une somme de multiples de $10$ est un multiple de $10$. La somme totale est donc de la forme
$33 + 10k$, et son chiffre des unités est celui de $33$.

$$\boxed{\text{Le chiffre des unités vaut } 3 .}$$

## Going further

1. Quel est le chiffre des unités de $1! + 2! + \cdots + 2019!$ ? Pourquoi la réponse ne dépend
   pas du nombre de termes, dès qu'il y en a au moins quatre ?
2. Quels sont les **deux** derniers chiffres de $1! + 2! + \cdots + 42!$ ? (À partir de quel
   rang une factorielle est-elle un multiple de $100$ ?)
3. Par combien de zéros se termine $42!$ ? (Compter les facteurs $5$.)
