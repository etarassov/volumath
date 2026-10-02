---
id: "13215"
title: "Le motif abcd répété 2016 fois"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, restes, nombres-premiers, chiffres]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices lycéens, exercice 16 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ des chiffres, avec $a \neq 0$. On forme le nombre $N$ en écrivant le motif $abcd$ à la suite $2016$ fois :

$$N = abcd\,abcd \ldots abcd.$$

Combien de tels nombres $N$ sont divisibles par $11$ ?

## Hints

1. Écris $N$ comme le produit du nombre à quatre chiffres $m = abcd$ par un nombre $R$ qui ne s'écrit qu'avec des $0$ et des $1$.
2. Quel est le reste de la division de $10\,000$ par $11$ ? Déduis-en le reste de $R$.
3. Comme $11$ est premier, $11$ divise $m \times R$ seulement s'il divise $m$ ou $R$.

## Solution

**On factorise $N$.** Notons $m$ le nombre à quatre chiffres $abcd$, compris entre $1000$ et $9999$. Écrire $m$ à la suite d'un nombre revient à multiplier ce nombre par $10^4$ puis à ajouter $m$. Donc

$$N = m \times R \qquad \text{avec} \qquad R = 1 + 10^4 + 10^8 + \cdots + 10^{4 \times 2015} = 1\underbrace{0001\,0001 \ldots 0001}_{2015 \text{ fois}}.$$

**Le reste de $R$ dans la division par 11.** On a $10^4 = 10\,000 = 11 \times 909 + 1$ : le nombre $10^4$ a pour reste $1$. Un produit de nombres qui ont tous pour reste $1$ a encore pour reste $1$, donc chaque puissance $10^{4k} = (10^4)^k$ a pour reste $1$. Le nombre $R$ est la somme de $2016$ tels nombres, il a donc le même reste que $2016$. Or $2016 = 11 \times 183 + 3$ : le reste de $R$ est $3$, et $R$ n'est pas divisible par $11$.

**Quand $N$ est-il divisible par 11 ?** Le nombre $11$ est premier. Quand un nombre premier divise un produit, il divise l'un des facteurs. Comme $11$ ne divise pas $R$, on a : $11$ divise $N = m \times R$ si et seulement si $11$ divise $m$.

**On compte les $m$.** Il faut compter les multiples de $11$ entre $1000$ et $9999$. Le premier est $1001 = 11 \times 91$ et le dernier est $9999 = 11 \times 909$. Ce sont les nombres $11 \times k$ pour $k = 91, 92, \ldots, 909$, soit $909 - 91 + 1 = 819$ nombres.

**Conclusion.** Il y a $819$ nombres $N$ divisibles par $11$.

## Going further

Que se passe-t-il si le motif est répété $2013$ fois au lieu de $2016$ ? Et $22$ fois ?
