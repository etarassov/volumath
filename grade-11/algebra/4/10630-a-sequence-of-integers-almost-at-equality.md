---
id: "10630"
title: "Une suite d'entiers presque à l'égalité"
grade: 11
theme: algebra
difficulty: 4
duration_min: 50
tags: [inegalite, suites, entiers, somme-de-carres, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 2 (algèbre)"
  reference: "2021-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 9 ; corrigé 2022-01_corrige-envoi-2.pdf. La fin de la solution est plus directe que celle du corrigé : on compare chaque terme à deux termes différents fixés."
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-12_Sujet-envoi-2.pdf"
---

## Statement

Soit $(a_n)_{n \geqslant 1}$ une suite d'entiers strictement positifs telle que, pour tout entier $n \geqslant 1$,

$$\left(a_1^2 + a_2^2 + \cdots + a_n^2\right)\left(\frac{1}{a_1^2} + \frac{1}{a_2^2} + \cdots + \frac{1}{a_n^2}\right) \leqslant n^2 + 2021$$

Montrer que la suite $(a_n)$ est constante.

## Hints

1. Que vaut le produit quand tous les $a_i$ sont égaux ? Développe le produit dans le cas $n = 2$ et compare-le à $4$.
2. Montre que le produit vaut $n^2 + D_n$, où $D_n$ est la somme des carrés $\left(\frac{a_i}{a_j} - \frac{a_j}{a_i}\right)^2$ sur toutes les paires $i < j$. L'hypothèse dit que $D_n \leqslant 2021$.
3. Si $m$ et $a$ sont deux entiers strictement positifs différents, montre que $\left|\frac{m}{a} - \frac{a}{m}\right| \geqslant \frac{1}{a}$.
4. Suppose que $a_p \neq a_q$. Chaque autre terme de la suite est différent de $a_p$ ou de $a_q$. Que devient $D_n$ quand $n$ grandit ?

## Solution

**Étape 1. Réécrire le produit.**

En développant le produit, on obtient tous les termes $\frac{a_i^2}{a_j^2}$ pour $i$ et $j$ entre $1$ et $n$. Les $n$ termes avec $i = j$ valent $1$. Les autres se regroupent par paires $\{i, j\}$ avec $i < j$, et il y a $\frac{n(n-1)}{2}$ paires. Pour une paire, en posant $t = \frac{a_i}{a_j}$,

$$\frac{a_i^2}{a_j^2} + \frac{a_j^2}{a_i^2} = t^2 + \frac{1}{t^2} = \left(t - \frac{1}{t}\right)^2 + 2$$

Donc le produit vaut

$$n + 2 \times \frac{n(n-1)}{2} + D_n = n^2 + D_n \qquad \text{où} \qquad D_n = \sum_{1 \leqslant i < j \leqslant n} \left(\frac{a_i}{a_j} - \frac{a_j}{a_i}\right)^2$$

L'hypothèse s'écrit donc : $D_n \leqslant 2021$ pour tout $n$. Tous les termes de $D_n$ sont positifs ou nuls.

**Étape 2. Deux entiers différents donnent un terme pas trop petit.**

Soient $m$ et $a$ deux entiers strictement positifs différents. Alors $|m - a| \geqslant 1$, et

$$\left|\frac{m}{a} - \frac{a}{m}\right| = \frac{|m^2 - a^2|}{am} = \frac{|m - a|\,(m + a)}{am} \geqslant \frac{m + a}{am} = \frac{1}{a} + \frac{1}{m} > \frac{1}{a}$$

Donc $\left(\frac{m}{a} - \frac{a}{m}\right)^2 > \frac{1}{a^2}$.

**Étape 3. Supposons que la suite n'est pas constante.**

Il existe alors deux indices $p < q$ tels que $a_p \neq a_q$. Posons $c = \max(a_p, a_q)$.

Soit $n \geqslant q$, et soit $i \leqslant n$ un indice différent de $p$ et de $q$. Le nombre $a_i$ ne peut pas être égal à la fois à $a_p$ et à $a_q$. S'il est différent de $a_p$, la paire $\{i, p\}$ apporte à $D_n$ un terme strictement plus grand que $\frac{1}{a_p^2} \geqslant \frac{1}{c^2}$, par l'étape 2. Sinon, il est différent de $a_q$, et la paire $\{i, q\}$ apporte un terme plus grand que $\frac{1}{c^2}$.

Deux indices $i$ différents donnent deux paires différentes. Il y a $n - 2$ indices $i$ possibles, donc

$$D_n > \frac{n - 2}{c^2}$$

Prenons $n = q + 2021c^2$. Alors $n - 2 \geqslant 2021c^2$, et $D_n > 2021$, ce qui contredit l'étape 1.

**Conclusion : la suite $(a_n)$ est constante.**

## Going further

La réciproque est vraie : pour une suite constante, le produit vaut exactement $n^2$. En fait, l'hypothèse « entiers » n'est pas indispensable. Montre que le résultat reste vrai pour une suite de réels strictement positifs. On pourra étudier, pour $a_p \neq a_q$ fixés, la fonction $x \mapsto \left(\frac{x}{a_p} - \frac{a_p}{x}\right)^2 + \left(\frac{x}{a_q} - \frac{a_q}{x}\right)^2$ sur $]0, +\infty[$.
