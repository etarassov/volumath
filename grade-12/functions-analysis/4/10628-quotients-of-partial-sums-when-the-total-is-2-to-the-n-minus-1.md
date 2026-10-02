---
id: "10628"
title: "Une somme de quotients quand la somme vaut 2ⁿ − 1"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 45
tags: [inegalite, logarithme, changement-de-variable, sommes-partielles, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 2 (algèbre)"
  reference: "2021-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 7, repris en Exercices Seniors, exercice 14 ; corrigé 2022-01_corrige-envoi-2.pdf. Le corrigé utilise l'inégalité entre moyennes pour n nombres, hors programme ; la solution ci-dessous la remplace par une inégalité sur le logarithme."
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-12_Sujet-envoi-2.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier, et soient $a_1, a_2, \ldots, a_n$ des réels strictement positifs tels que

$$a_1 + a_2 + \cdots + a_n = 2^n - 1$$

Déterminer la plus petite valeur que peut prendre

$$S = \frac{a_1}{1} + \frac{a_2}{1 + a_1} + \frac{a_3}{1 + a_1 + a_2} + \cdots + \frac{a_n}{1 + a_1 + a_2 + \cdots + a_{n-1}}$$

## Hints

1. Essaie $a_k = 2^{k-1}$, c'est-à-dire $1, 2, 4, \ldots, 2^{n-1}$. Que vaut $S$ ?
2. Pose $b_0 = 1$ et $b_k = 1 + a_1 + \cdots + a_k$. Écris chaque fraction à l'aide des $b_k$. Que vaut $b_n$ ?
3. Avec $r_k = \frac{b_k}{b_{k-1}}$, on a $S = (r_1 - 1) + \cdots + (r_n - 1)$, et le produit $r_1 r_2 \cdots r_n$ est connu.
4. Le logarithme transforme un produit en somme. Étudie la fonction $g(r) = r - 2 - 2\ln\left(\frac{r}{2}\right)$ sur $]0, +\infty[$.

## Solution

**Étape 1. Changer de variables.**

Posons $b_0 = 1$ et, pour $1 \leqslant k \leqslant n$, $b_k = 1 + a_1 + \cdots + a_k$. Ces nombres sont strictement positifs, $a_k = b_k - b_{k-1}$, et le dénominateur de la $k$-ième fraction est $b_{k-1}$. De plus $b_n = 1 + (2^n - 1) = 2^n$. Donc

$$S = \frac{b_1 - b_0}{b_0} + \frac{b_2 - b_1}{b_1} + \cdots + \frac{b_n - b_{n-1}}{b_{n-1}} = (r_1 - 1) + (r_2 - 1) + \cdots + (r_n - 1)$$

où $r_k = \frac{b_k}{b_{k-1}} > 0$. Le produit de ces quotients se simplifie :

$$r_1 r_2 \cdots r_n = \frac{b_1}{b_0} \times \frac{b_2}{b_1} \times \cdots \times \frac{b_n}{b_{n-1}} = \frac{b_n}{b_0} = 2^n$$

**Étape 2. Une inégalité sur le logarithme.**

Soit $g(r) = r - 2 - 2\ln\left(\frac{r}{2}\right)$ pour $r > 0$. Sa dérivée est $g'(r) = 1 - \frac{2}{r} = \frac{r - 2}{r}$, négative sur $]0, 2[$ et positive sur $]2, +\infty[$. Donc $g$ atteint son minimum en $r = 2$, et $g(2) = 0$. Ainsi, pour tout $r > 0$,

$$r - 1 \geqslant 1 + 2\ln\left(\frac{r}{2}\right)$$

avec égalité si et seulement si $r = 2$.

*D'où vient cette inégalité ?* On cherche à minorer $r - 1$ par une expression qui contient $\ln r$, pour profiter du produit connu, et qui soit une égalité en $r = 2$, la valeur suggérée par l'exemple de l'indication 1. Le coefficient $2$ devant le logarithme est celui qui rend les deux courbes tangentes en $r = 2$.

**Étape 3. On additionne.**

En appliquant l'étape 2 à chaque $r_k$ et en additionnant :

$$S \geqslant n + 2\left(\ln\frac{r_1}{2} + \cdots + \ln\frac{r_n}{2}\right) = n + 2\ln\left(\frac{r_1 r_2 \cdots r_n}{2^n}\right) = n + 2\ln 1 = n$$

L'égalité a lieu si et seulement si tous les $r_k$ valent $2$.

**Étape 4. La valeur $n$ est atteinte.**

Tous les $r_k$ valent $2$ quand $b_k = 2^k$, c'est-à-dire $a_k = 2^k - 2^{k-1} = 2^{k-1}$. Ces nombres sont strictement positifs, leur somme est $1 + 2 + \cdots + 2^{n-1} = 2^n - 1$, et chaque fraction de $S$ vaut $\frac{2^{k-1}}{2^{k-1}} = 1$, donc $S = n$.

**Conclusion : la plus petite valeur de $S$ est $n$, atteinte pour $a_k = 2^{k-1}$.**

## Going further

L'inégalité entre la moyenne arithmétique et la moyenne géométrique de $n$ nombres positifs, $\frac{r_1 + \cdots + r_n}{n} \geqslant \sqrt[n]{r_1 \cdots r_n}$, donne directement $r_1 + \cdots + r_n \geqslant 2n$. La méthode de l'étape 2, une tangente au bon endroit, permet en fait de la démontrer dans le cas général.
