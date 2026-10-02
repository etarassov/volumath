---
id: "10677"
title: "Des racines de puissances de n, comparées deux fois"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [inegalite, inegalite-arithmetico-geometrique, exponentielle, somme-cyclique, logarithme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Juniors, exercice 9 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf. La solution reprend l'idée du corrigé (retirer un terme, puis deux fois l'inégalité arithmético-géométrique) en l'écrivant avec des exposants."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Soit $n$ un entier strictement positif et soient $a_1, a_2, \ldots, a_{n+1}$ des entiers strictement positifs. On pose $b_i = a_i^n$ pour $i = 1, 2, \ldots, n + 1$. Montrer que

$$\sqrt[b_1]{n^{b_2}} + \sqrt[b_2]{n^{b_3}} + \cdots + \sqrt[b_{n+1}]{n^{b_1}} \geqslant \sqrt[a_2]{n^{a_1}} + \sqrt[a_3]{n^{a_2}} + \cdots + \sqrt[a_1]{n^{a_{n+1}}}$$

## Hints

1. Règle d'abord le cas $n = 1$. Ensuite, écris chaque racine comme une puissance de $n$ : $\sqrt[b]{n^{c}} = n^{c/b}$.
2. Pose $r_i = \frac{a_{i+1}}{a_i}$, avec $a_{n+2} = a_1$. Montre que l'inégalité s'écrit $\sum n^{r_i^n} \geqslant \sum n^{1/r_i}$, et que le produit des $r_i$ vaut $1$.
3. Il y a $n + 1$ termes à gauche. Retire l'un d'eux, disons celui d'indice $j$, et applique aux $n$ termes restants l'inégalité entre moyenne arithmétique et moyenne géométrique.
4. L'exposant que tu obtiens est une moyenne de nombres $r_i^n$. Applique-lui encore la même inégalité : il est au moins égal à $\frac{1}{r_j}$.
5. Additionne les inégalités obtenues pour $j = 1, 2, \ldots, n + 1$.

## Solution

**Rappel.** On utilise l'**inégalité entre moyenne arithmétique et moyenne géométrique** : si $x_1, x_2, \ldots, x_n$ sont $n$ réels strictement positifs, alors

$$\frac{x_1 + x_2 + \cdots + x_n}{n} \geqslant \sqrt[n]{x_1 x_2 \cdots x_n}$$

Pour plus de deux nombres, elle n'est pas dans le cours, mais elle se démontre en quelques lignes avec le logarithme. La fonction $g(t) = t - 1 - \ln t$ a pour dérivée $g'(t) = 1 - \frac{1}{t}$, qui est négative pour $0 < t < 1$ et positive pour $t > 1$. Son minimum sur $]0, +\infty[$ est donc $g(1) = 0$ : pour tout $t > 0$, on a $\ln t \leqslant t - 1$, avec égalité seulement pour $t = 1$. Notons $m$ la moyenne des $x_i$, et appliquons cette inégalité à $t = x_i/m$ pour chaque $i$. En additionnant les $n$ inégalités obtenues,

$$\ln\frac{x_1}{m} + \ln\frac{x_2}{m} + \cdots + \ln\frac{x_n}{m} \leqslant \frac{x_1 + x_2 + \cdots + x_n}{m} - n = n - n = 0 .$$

Le membre de gauche vaut $\ln\frac{x_1 x_2 \cdots x_n}{m^n}$. Donc $x_1 x_2 \cdots x_n \leqslant m^n$, et en prenant la racine $n$-ième, c'est l'inégalité annoncée. Il y a égalité seulement si tous les $x_i$ sont égaux à $m$.

On utilise aussi les règles de calcul sur les puissances à exposant réel : pour un réel $n > 0$, on a $n^{s} \times n^{t} = n^{s + t}$ et $\sqrt[k]{n^{c}} = n^{c/k}$. Enfin, si $n > 1$, la fonction $t \mapsto n^{t}$ est strictement croissante sur $\mathbb{R}$.

**Étape 1. Le cas $n = 1$.**

Si $n = 1$, toutes les racines sont des racines de puissances de $1$, donc valent $1$. Les deux membres valent $2$ et l'inégalité est vraie, avec égalité. Dans la suite, $n \geqslant 2$.

**Étape 2. Réécrire l'inégalité.**

On lit les indices en tournant : $a_{n+2} = a_1$ et $b_{n+2} = b_1$. Pour $i = 1, 2, \ldots, n + 1$, posons $r_i = \frac{a_{i+1}}{a_i}$, qui est un réel strictement positif. Le terme d'indice $i$ à gauche vaut

$$\sqrt[b_i]{n^{b_{i+1}}} = n^{b_{i+1}/b_i} = n^{(a_{i+1}/a_i)^n} = n^{r_i^n}$$

et le terme d'indice $i$ à droite vaut $\sqrt[a_{i+1}]{n^{a_i}} = n^{a_i/a_{i+1}} = n^{1/r_i}$. L'inégalité à démontrer s'écrit donc

$$n^{r_1^n} + n^{r_2^n} + \cdots + n^{r_{n+1}^n} \geqslant n^{1/r_1} + n^{1/r_2} + \cdots + n^{1/r_{n+1}}$$

De plus, le produit des $r_i$ se simplifie en cascade :

$$r_1 r_2 \cdots r_{n+1} = \frac{a_2}{a_1} \times \frac{a_3}{a_2} \times \cdots \times \frac{a_1}{a_{n+1}} = 1$$

**Étape 3. Retirer un terme.**

Fixons un indice $j$ entre $1$ et $n + 1$. Il reste exactement $n$ indices $i \neq j$. Appliquons le rappel aux $n$ nombres $n^{r_i^n}$, pour $i \neq j$. Leur produit vaut $n^{T}$, avec $T = \sum_{i \neq j} r_i^n$, donc

$$\sum_{i \neq j} n^{r_i^n} \geqslant n \times \sqrt[n]{n^{T}} = n \times n^{T/n}$$

Appliquons maintenant le rappel aux $n$ nombres $r_i^n$, pour $i \neq j$. Leur produit vaut $\left(\prod_{i \neq j} r_i\right)^n$, et comme le produit de tous les $r_i$ vaut $1$, on a $\prod_{i \neq j} r_i = \frac{1}{r_j}$. Donc

$$\frac{T}{n} \geqslant \sqrt[n]{\left(\frac{1}{r_j}\right)^n} = \frac{1}{r_j}$$

Comme $n \geqslant 2$, la fonction $t \mapsto n^{t}$ est croissante, donc $n^{T/n} \geqslant n^{1/r_j}$. En réunissant les deux inégalités, on obtient pour chaque $j$ :

$$(\star) \qquad \sum_{i \neq j} n^{r_i^n} \geqslant n \times n^{1/r_j}$$

**Étape 4. Additionner.**

Additionnons les inégalités $(\star)$ pour $j = 1, 2, \ldots, n + 1$. À droite, on obtient $n$ fois le membre de droite de l'étape 2. À gauche, un terme $n^{r_i^n}$ apparaît dans toutes les inégalités sauf celle où $j = i$, donc $n$ fois. On obtient

$$n \left(n^{r_1^n} + \cdots + n^{r_{n+1}^n}\right) \geqslant n \left(n^{1/r_1} + \cdots + n^{1/r_{n+1}}\right)$$

et il suffit de diviser par $n$.

**Conclusion : l'inégalité est vraie pour tout entier $n \geqslant 1$ et tous entiers strictement positifs $a_1, \ldots, a_{n+1}$. Pour $n \geqslant 2$, il y a égalité quand tous les $a_i$ sont égaux.**

## Going further

La preuve n'a jamais utilisé que les $a_i$ sont des entiers. Vérifie que l'inégalité reste vraie pour des réels strictement positifs quelconques.
