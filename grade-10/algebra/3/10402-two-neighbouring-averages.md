---
id: "10402"
title: "Deux moyennes voisines"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [moyenne, valeur-absolue, inegalite-triangulaire, somme-des-entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 4 (algèbre)"
  reference: "2017-10_ofm-2012-2013-envoi4.pdf, Exercices Juniors, exercice 2 ; corrigé 2017-10_ofm-2012-2013-envoi4-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi4.pdf"
---

## Statement

On considère une suite de nombres réels $u_1, u_2, u_3, \ldots$ dans laquelle deux termes consécutifs diffèrent toujours d'au plus $1$ :

$$|u_{k+1} - u_k| \leqslant 1 \qquad \text{pour tout entier } k \geqslant 1 .$$

Soit $n \geqslant 1$ un entier. Montrer que la moyenne des $n$ premiers termes et la moyenne des $n + 1$ premiers termes diffèrent d'au plus $\frac{1}{2}$.

## Hints

1. Note $m_n = \dfrac{u_1 + \cdots + u_n}{n}$. Écris $m_{n+1} - m_n$ comme une seule fraction, de dénominateur $n(n+1)$.
2. Montre que le numérateur peut s'écrire $(u_{n+1} - u_1) + (u_{n+1} - u_2) + \cdots + (u_{n+1} - u_n)$.
3. Combien de « pas » faut-il pour aller de $u_i$ à $u_{n+1}$ ? Quelle est alors la plus grande valeur possible de $|u_{n+1} - u_i|$ ?
4. Il reste à calculer $n + (n-1) + \cdots + 2 + 1$.

## Solution

Notons, pour tout entier $p \geqslant 1$, $S_p = u_1 + u_2 + \cdots + u_p$ et $m_p = \dfrac{S_p}{p}$ la moyenne des $p$ premiers termes. Il s'agit de montrer que $|m_{n+1} - m_n| \leqslant \frac{1}{2}$.

**Étape 1 : une seule fraction.** Comme $S_{n+1} = S_n + u_{n+1}$,

$$m_{n+1} - m_n = \frac{S_n + u_{n+1}}{n+1} - \frac{S_n}{n} = \frac{n\,S_n + n\,u_{n+1} - (n+1)\,S_n}{n(n+1)} = \frac{n\,u_{n+1} - S_n}{n(n+1)} .$$

Or $n\,u_{n+1} - S_n$ est la somme de $n$ fois $u_{n+1}$, moins $u_1$, moins $u_2$, …, moins $u_n$. On peut donc le regrouper ainsi :

$$n\,u_{n+1} - S_n = (u_{n+1} - u_1) + (u_{n+1} - u_2) + \cdots + (u_{n+1} - u_n) .$$

**Étape 2 : chaque terme est petit.** Fixons $i$ entre $1$ et $n$. Pour aller de $u_i$ à $u_{n+1}$, on passe par $u_{i+1}, u_{i+2}, \ldots$, ce qui fait $n + 1 - i$ pas. À chaque pas, la valeur bouge d'au plus $1$, vers le haut ou vers le bas. Au bout de $n + 1 - i$ pas, on est donc à distance au plus $n + 1 - i$ du point de départ :

$$|u_{n+1} - u_i| \leqslant n + 1 - i .$$

(C'est l'inégalité triangulaire : $|u_{n+1} - u_i| \leqslant |u_{n+1} - u_n| + |u_n - u_{n-1}| + \cdots + |u_{i+1} - u_i|$, une somme de $n+1-i$ termes tous au plus égaux à $1$.)

**Étape 3 : on additionne.** La valeur absolue d'une somme est au plus la somme des valeurs absolues. Donc

$$|n\,u_{n+1} - S_n| \leqslant |u_{n+1} - u_1| + |u_{n+1} - u_2| + \cdots + |u_{n+1} - u_n| \leqslant n + (n-1) + \cdots + 1 .$$

La somme des entiers de $1$ à $n$ vaut $\dfrac{n(n+1)}{2}$. Ainsi

$$|m_{n+1} - m_n| = \frac{|n\,u_{n+1} - S_n|}{n(n+1)} \leqslant \frac{n(n+1)}{2} \times \frac{1}{n(n+1)} = \frac{1}{2} .$$

**Conclusion.** La moyenne des $n$ premiers termes et celle des $n+1$ premiers termes diffèrent d'au plus $\frac{1}{2}$.

On ne peut pas faire mieux : avec $u_k = k$ pour tout $k$, deux termes consécutifs diffèrent exactement de $1$, et les deux moyennes valent $\frac{n+1}{2}$ et $\frac{n+2}{2}$, qui diffèrent exactement de $\frac{1}{2}$.

## Going further

1. Montrer de la même façon que la moyenne des $n$ premiers termes et celle des $n + 2$ premiers termes diffèrent d'au plus $1$.
2. Plus généralement, de combien au plus peuvent différer la moyenne des $n$ premiers termes et celle des $p$ premiers termes, pour $p > n$ ?
