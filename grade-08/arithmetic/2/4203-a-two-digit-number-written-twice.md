---
id: "4203"
title: "Le nombre à deux chiffres écrit deux fois"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [numeration, chiffres, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Tricky Percents"
  reference: "Handout-2354-2086.pdf, exercice 20 (problème Kangourou)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2354-2086.pdf"
---

## Statement

On choisit un nombre de deux chiffres, puis on récrit ce même nombre juste à sa droite. On
obtient ainsi un nombre de quatre chiffres. Par exemple, $37$ donne $3737$.

Le nombre de quatre chiffres obtenu est un multiple du nombre de départ. Par combien est-il
multiplié ?

Montrer que la réponse est la même quel que soit le nombre de deux chiffres choisi.

## Hints

1. Essaie avec deux ou trois exemples : $12$, $37$, $50$. Divise à chaque fois le grand nombre
   par le petit.
2. Appelle $n$ le nombre de deux chiffres. Écrire $n$ puis $n$ revient à décaler le premier $n$
   de deux rangs vers la gauche. Par combien est-il alors multiplié ?
3. Le nombre de quatre chiffres vaut donc $100 \times n + n$. Factorise.

## Solution

Commençons par un exemple : avec $37$, on obtient $3737$, et
$$3737 \div 37 = 101.$$

Montrons que c'est toujours $101$.

Notons $n$ le nombre de deux chiffres choisi. Quand on écrit $n$, puis de nouveau $n$ à sa
droite, les deux chiffres du premier $n$ se retrouvent décalés de deux rangs vers la gauche :
le chiffre des unités devient un chiffre des centaines, et celui des dizaines un chiffre des
milliers. Le premier $n$ compte donc pour $100 \times n$.

Le nombre de quatre chiffres obtenu vaut par conséquent
$$100 \times n + n = (100 + 1) \times n = 101\,n.$$

**Conclusion.** Le nombre de quatre chiffres est toujours égal à $\mathbf{101}$ fois le nombre
de deux chiffres, quel que soit ce nombre.

## Going further

1. Que se passe-t-il si l'on écrit deux fois de suite un nombre de **trois** chiffres, comme
   $428 \to 428428$ ? (Le facteur devient $1001$.)
2. $1001 = 7 \times 11 \times 13$. En déduire que tout nombre de la forme $\overline{abcabc}$ est
   divisible par $7$, par $11$ et par $13$.
