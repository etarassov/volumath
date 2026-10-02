---
id: "7036"
title: "Un nombre fait de 1 divisible par 2011"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [principe-des-tiroirs, congruences, repunit]
adapted_from: null
see_also: ["7043"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, « Arithmétique », TD (Antoine Taveneaux), exercice 5 ; variante avec des 2 au test final des débutants, exercice 3, question 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

On considère les nombres
$$1, \quad 11, \quad 111, \quad 1111, \quad \ldots, \quad \underbrace{11\cdots1}_{2011 \text{ chiffres}} .$$

Montrer que l'un au moins de ces $2011$ nombres est divisible par $2011$.

## Hints

1. On ne va pas les examiner un par un. Regarde plutôt les **restes** de ces nombres dans la
   division par $2011$.
2. Combien de restes différents existe-t-il ? Combien de nombres as-tu ? Que dit le principe
   des tiroirs ?
3. Si deux de ces nombres ont le même reste, que peux-tu dire de leur différence ? À quoi
   ressemble-t-elle ?
4. Une différence comme $1111 - 11 = 1100$ se factorise. Et $2011$ est premier.

## Solution

Notons $a_k = \underbrace{11\cdots1}_{k \text{ chiffres}}$, pour $k$ allant de $1$ à $2011$.

**Premier cas : l'un des $a_k$ est déjà divisible par $2011$.** C'est fini.

**Second cas : aucun ne l'est.** Alors, pour chaque $k$, le reste de $a_k$ dans la division
par $2011$ est un entier compris entre $1$ et $2010$. Cela fait **$2010$ valeurs possibles**
pour **$2011$ nombres**.

D'après le principe des tiroirs, deux de ces nombres ont le même reste : il existe
$k < \ell$ tels que
$$a_\ell \equiv a_k \pmod{2011} ,$$
c'est-à-dire que $2011$ divise $a_\ell - a_k$.

**À quoi ressemble cette différence ?** Le nombre $a_\ell$ commence par les mêmes chiffres que
$a_k$ ; en soustrayant, on obtient
$$a_\ell - a_k = \underbrace{11\cdots1}_{\ell - k} \underbrace{00\cdots0}_{k}
 = a_{\ell-k} \times 10^{k} .$$

Par exemple $1111 - 11 = 1100 = 11 \times 100$.

**Conclure.** Donc $2011$ divise $a_{\ell - k} \times 10^k$.

Or $2011$ est un **nombre premier** (il n'est divisible par aucun premier inférieur à
$\sqrt{2011} \approx \text{44,8}$ : on vérifie $2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41,
43$). En particulier $2011$ ne divise pas $10$, donc $2011$ et $10^k$ sont premiers entre eux.

D'après le lemme de Gauss, $2011$ divise donc $a_{\ell-k}$.

Enfin $1 \leq \ell - k \leq 2010 < 2011$, donc $a_{\ell-k}$ fait bien partie de la liste.

**Conclusion.** Dans les deux cas, l'un des nombres de la liste est divisible par $2011$.
$\blacksquare$

## Going further

Le raisonnement ne se sert de $2011$ que par deux propriétés : c'est un nombre premier, et il
est différent de $2$ et de $5$. Le résultat vaut donc pour tout entier $n$ **premier avec
$10$** : l'un des $n$ premiers répunits est divisible par $n$.

Et pour $n = 4$ ? Aucun nombre fait de $1$ n'est divisible par $4$, car les deux derniers
chiffres $11$ ne le sont pas. L'hypothèse « premier avec $10$ » est donc bien nécessaire.
