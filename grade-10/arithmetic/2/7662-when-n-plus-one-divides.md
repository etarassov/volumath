---
id: "7662"
title: "Quand n + 1 divise n² + 1"
grade: 10
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [divisibilite, division-euclidienne, diviseurs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours d'arithmétique du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, cours d'arithmétique, exercice sur la divisibilité de n²+1 par n+1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 1$ pour lesquels $n + 1$ divise $n^2 + 1$.

## Hints

1. On ne peut pas conclure directement : $n^2 + 1$ et $n+1$ ne se ressemblent pas. Cherchez à faire apparaître un multiple de $n+1$ à l'intérieur de $n^2 + 1$.
2. Que vaut $(n+1)(n-1)$ ?
3. Écrivez $n^2 + 1$ sous la forme « un multiple de $n+1$, plus un reste ».
4. Le reste doit alors lui-même être divisible par $n+1$. Que vaut ce reste ?

## Solution

**Faire apparaître un multiple de $n+1$.**

Rappelons l'identité $(n+1)(n-1) = n^2 - 1$. On peut donc écrire

$$n^2 + 1 = (n^2 - 1) + 2 = (n+1)(n-1) + 2 .$$

**Utiliser cette écriture.**

Supposons que $n+1$ divise $n^2 + 1$.

Le terme $(n+1)(n-1)$ est clairement un multiple de $n+1$. Comme $n^2+1$ en est un aussi par hypothèse, leur différence l'est également :

$$2 = (n^2 + 1) - (n+1)(n-1) .$$

Donc **$n + 1$ divise $2$**.

**Conclure.**

Comme $n \geqslant 1$, on a $n + 1 \geqslant 2$. Les diviseurs positifs de $2$ sont $1$ et $2$, donc la seule possibilité est

$$n + 1 = 2, \qquad \text{c'est-à-dire} \qquad n = 1 .$$

**Vérification.** Pour $n = 1$ : $n^2 + 1 = 2$ et $n + 1 = 2$. On a bien $2 \mid 2$. $\checkmark$

**Conclusion.** Le seul entier $n \geqslant 1$ convenant est

$$\boxed{n = 1 .}$$

## Going further

La méthode se résume en une phrase : **pour savoir si $B$ divise $A$, on remplace $A$ par son reste dans la division par $B$**. Ici, la division euclidienne de $n^2+1$ par $n+1$ s'écrit $n^2 + 1 = (n+1)(n-1) + 2$, et tout se ramène à un petit nombre, $2$, indépendant de $n$.

**Si l'on autorise tous les entiers relatifs**, il faut aussi accepter $n+1 \in \{-1, -2\}$, donc $n = -2$ et $n = -3$, ainsi que $n = 0$ (avec $n+1 = 1$). Au total cinq valeurs : $-3$, $-2$, $0$ et $1$.

**Des variantes à essayer.**

- Pour quels entiers $n \geqslant 1$ est-ce que $n+2$ divise $n^2 + 4$ ? Écrivez $n^2 + 4 = (n+2)(n-2) + 8$, donc $n+2$ doit diviser $8$, ce qui donne $n \in \{2, 6\}$.
- Pour quels entiers $n \geqslant 1$ est-ce que $n - 1$ divise $n^3 + 5$ ? Ici $n^3 + 5 = (n-1)(n^2+n+1) + 6$, donc $n - 1$ divise $6$.
