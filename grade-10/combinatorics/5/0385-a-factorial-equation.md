---
id: "0385"
title: "Une équation avec des factorielles"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 25
tags: [factorielle, equation, entiers, infini, construction]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (А. А. Аксёнов, А. А. Севастьянов)"
  reference: "AU2.pdf, листок 9 «Факториал!», задача 8"
  url: "https://mmmf.msu.ru/for_schools/AU2.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

On rappelle que pour un entier $n \ge 1$, la **factorielle** de $n$ est le nombre

$$n! = 1 \times 2 \times 3 \times \cdots \times n .$$

Par exemple $3! = 6$, $5! = 120$ et $6! = 720$.

Montrer que l'équation

$$x! \times y! = z!$$

admet une infinité de solutions en entiers naturels $x$, $y$, $z$ avec $x \ne 1$ et $y \ne 1$.

*(La condition $x \ne 1$ et $y \ne 1$ sert à écarter les solutions sans intérêt : comme $1! = 1$, l'égalité $1! \times y! = y!$ en fournirait déjà une infinité.)*

## Hints

1. Cherche d'abord un seul exemple, avec de petits nombres. Que vaut $3! \times 5!$ ? Et $6!$ ?
2. La seule chose à savoir sur les factorielles est la règle $N! = N \times (N-1)!$. Relis ton exemple en te servant de cette règle.
3. Applique cette règle non pas à un petit nombre, mais à $N = x!$. Qu'obtiens-tu ?
4. Tu arrives à $(x!)! = x! \times (x!-1)!$. Quelles valeurs faut-il alors donner à $y$ et à $z$ ? À partir de quelle valeur de $x$ la condition $y \ne 1$ est-elle bien vérifiée ?

## Solution

**On cherche d'abord un seul exemple.**

Essayons de petits nombres :

$$3! \times 5! = 6 \times 120 = 720 = 6! .$$

Voilà une première solution : $(x, y, z) = (3, 5, 6)$, avec bien $x \ne 1$ et $y \ne 1$.

Pourquoi cela fonctionne-t-il ? Parce que $6 = 3!$ et que $6! = 6 \times 5!$. Autrement dit, l'exemple s'écrit

$$6! = 6 \times 5! = 3! \times \big(3! - 1\big)! .$$

**L'idée : appliquer la règle de base à une factorielle.**

La seule propriété utilisée est la règle

$$N! = N \times (N-1)! \qquad \text{valable pour tout entier } N \ge 1 .$$

Elle dit simplement que pour obtenir $N!$ on multiplie $(N-1)!$ par $N$.

L'idée est de l'appliquer non pas à un petit nombre, mais à $N = x!$ :

$$(x!)! = x! \times (x! - 1)! .$$

Cette égalité est exactement de la forme voulue. Il suffit de poser

$$y = x! - 1 \qquad \text{et} \qquad z = x! ,$$

et l'on obtient $x! \times y! = z!$.

**On vérifie que les conditions sont remplies.**

Prenons $x \ge 3$. Alors $x! \ge 6$, donc

$$y = x! - 1 \ge 5 .$$

On a donc bien $x \ne 1$ et $y \ne 1$.

De plus, à deux valeurs différentes de $x$ correspondent deux valeurs différentes de $z = x!$, puisque $3! < 4! < 5! < \cdots$ : les solutions obtenues sont deux à deux différentes.

**Conclusion.** Pour chaque entier $x \ge 3$, le triplet

$$(x,\ y,\ z) = \big(x,\ x!-1,\ x!\big)$$

est une solution de l'équation $x! \times y! = z!$ avec $x \ne 1$ et $y \ne 1$. Comme il y a une infinité de valeurs possibles pour $x$, l'équation possède bien une infinité de solutions.

Les trois premières sont

$$3! \times 5! = 6! , \qquad 4! \times 23! = 24! , \qquad 5! \times 119! = 120! .$$

## Going further

1. Vérifier directement, sans calculer les valeurs, que $4! \times 23! = 24!$.
2. Que donne la construction si l'on prend $x = 2$ ? Pourquoi cette solution est-elle écartée par l'énoncé ?
3. Vérifier que $6! \times 7! = 10!$. Cette solution appartient-elle à la famille que l'on vient de construire ?
