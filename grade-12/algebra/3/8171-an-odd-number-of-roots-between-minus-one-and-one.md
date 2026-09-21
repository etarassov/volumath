---
id: "8171"
title: "Un nombre impair de racines entre −1 et 1"
grade: 12
theme: algebra
difficulty: 3
duration_min: 30
tags: [polynome, racines, signe, valeur-en-un-et-moins-un]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 3, exercice 119 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil. L'énoncé imprimé compare $|a_1+a_3+\cdots+a_{2015}|$ à $|a_2+a_4+\cdots+a_{2016}|$, en oubliant $a_0$ dans la seconde somme ; sous cette forme l'énoncé est faux, comme le montre $P(x)=x^{2016}+10x^{2015}+100$. L'énoncé a été corrigé en ajoutant $a_0$."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soit $P$ un polynôme à coefficients réels de degré $2016$ :

$$P(x) = a_{2016}x^{2016} + a_{2015}x^{2015} + \cdots + a_1 x + a_0 .$$

Montrer que si

$$\big|\,a_1 + a_3 + \cdots + a_{2015}\,\big| \ >\ \big|\,a_0 + a_2 + a_4 + \cdots + a_{2016}\,\big| ,$$

alors le nombre de racines de $P$ dans l'intervalle $[-1\,;\,1]$, comptées avec leur multiplicité, est **impair**.

## Hints

1. Les deux sommes de l'énoncé ne sortent pas de nulle part. Calcule $P(1)$ et $P(-1)$.
2. Note $I$ la somme des coefficients d'indice impair et $J$ celle des coefficients d'indice pair. Exprime $P(1)$ et $P(-1)$ avec $I$ et $J$, puis calcule le produit $P(1) \times P(-1)$.
3. L'hypothèse dit exactement que ce produit est strictement négatif. Que peux-tu déjà en déduire sur $P(1)$ et $P(-1)$ ?
4. Pour compter les racines avec multiplicité, factorise $P$ en produit de facteurs de degré $1$ (un par racine réelle) et de facteurs de degré $2$ sans racine réelle. Quel est le signe d'un facteur de degré $2$ sans racine réelle ?
5. Pour une racine réelle $r$, quel est le signe de $(1-r)(-1-r)$ ? Distingue selon que $r$ est dans $]-1\,;\,1[$ ou non.

## Solution

Notons

$$I = a_1 + a_3 + \cdots + a_{2015}, \qquad J = a_0 + a_2 + a_4 + \cdots + a_{2016} .$$

**Étape 1 : le produit $P(1)P(-1)$.**

On a immédiatement

$$P(1) = \sum_{k=0}^{2016} a_k = I + J .$$

Pour $P(-1)$, les puissances paires de $-1$ valent $1$ et les impaires valent $-1$, donc

$$P(-1) = J - I .$$

Par conséquent

$$P(1)\,P(-1) = (J+I)(J-I) = J^2 - I^2 .$$

L'hypothèse s'écrit $|I| > |J|$, donc $I^2 > J^2$, donc

$$P(1)\,P(-1) < 0 .$$

En particulier $P(1) \neq 0$ et $P(-1) \neq 0$ : ni $1$ ni $-1$ n'est racine de $P$. Les racines de $P$ dans $[-1\,;\,1]$ sont donc toutes dans l'intervalle ouvert $]-1\,;\,1[$.

**Étape 2 : factoriser $P$.**

Tout polynôme à coefficients réels se factorise en un produit d'un coefficient, de facteurs de degré $1$ et de facteurs de degré $2$ sans racine réelle :

$$P(x) = a_{2016}\,(x - r_1)(x - r_2)\cdots(x - r_m)\, Q_1(x) \cdots Q_t(x) ,$$

où $r_1, \ldots, r_m$ sont les racines réelles de $P$ répétées selon leur multiplicité, et où chaque $Q_i$ est un trinôme de discriminant strictement négatif.

Un tel trinôme ne s'annule jamais, donc garde un signe constant sur $\mathbb{R}$ : en particulier $Q_i(1)$ et $Q_i(-1)$ sont de même signe, et $Q_i(1)Q_i(-1) > 0$.

**Étape 3 : compter les changements de signe.**

En évaluant la factorisation en $1$ et en $-1$ puis en multipliant :

$$P(1)\,P(-1) = a_{2016}^2 \, \prod_{j=1}^{m} (1 - r_j)(-1-r_j) \times \prod_{i=1}^{t} Q_i(1)Q_i(-1) .$$

Le facteur $a_{2016}^2$ est strictement positif, et chaque $Q_i(1)Q_i(-1)$ aussi. Le signe de $P(1)P(-1)$ est donc celui du produit des $(1-r_j)(-1-r_j)$.

Or

$$(1-r)(-1-r) = -(1-r)(1+r) = r^2 - 1 ,$$

qui est :

- strictement négatif si $|r| < 1$,
- strictement positif si $|r| > 1$,
- nul si $|r| = 1$, cas exclu par l'étape 1.

Le produit des $(1-r_j)(-1-r_j)$ est donc strictement négatif si et seulement si le nombre d'indices $j$ tels que $|r_j| < 1$ est impair.

**Conclusion.**

Comme $P(1)P(-1) < 0$, ce nombre est impair. Et ce nombre est exactement le nombre de racines de $P$ dans $]-1\,;\,1[$, comptées avec multiplicité, c'est-à-dire, d'après l'étape 1, le nombre de racines dans $[-1\,;\,1]$.

$$\boxed{\ P \text{ a un nombre impair de racines dans } [-1\,;\,1],\ \text{comptées avec multiplicité.}\ }$$

## Going further

Le degré $2016$ ne joue aucun rôle : la démonstration vaut pour n'importe quel degré, et même pour n'importe quel polynôme non nul.

L'énoncé imprimé dans le recueil d'origine oublie $a_0$ dans la seconde somme. Sous cette forme, il est faux. Prenons en effet

$$P(x) = x^{2016} + 10\,x^{2015} + 100 .$$

Alors $a_1 + a_3 + \cdots + a_{2015} = 10$ et $a_2 + a_4 + \cdots + a_{2016} = 1$, donc l'hypothèse « oubliée » $10 > 1$ est vérifiée. Pourtant, pour $|x| \leqslant 1$,

$$\left|x^{2016} + 10x^{2015}\right| \leqslant 1 + 10 = 11 < 100 ,$$

donc $P(x) \geqslant 100 - 11 = 89 > 0$ : le polynôme n'a **aucune** racine dans $[-1\,;\,1]$, et zéro est un nombre pair. En ajoutant $a_0 = 100$ à la seconde somme, l'hypothèse devient $10 > 101$, qui est fausse : l'énoncé corrigé ne dit plus rien sur ce polynôme, et tout rentre dans l'ordre.
