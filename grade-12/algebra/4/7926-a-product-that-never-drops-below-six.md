---
id: "7926"
title: "Un produit qui ne descend jamais au-dessous de 6"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, inegalite-arithmetico-geometrique, factorisation, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, évaluation initiale"
  reference: "stage_ete_2016.pdf, « Evaluation initiale », rubrique Algèbre, exercice sur l'inégalité arithmético-géométrique (p. 34)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels strictement positifs tels que

$$a^3 b^2 = 1 .$$

Montrer que $(1 + a)(2 + b) \ge 6$, et déterminer les cas d'égalité.

## Hints

1. Commence par $1 + a$. Compare-le à $2\sqrt{a}$ en étudiant le signe de $\left(\sqrt{a} - 1\right)^2$.
2. Pour $2 + b$, écris $2 + b = 1 + 1 + b$ et devine à quoi le comparer : à quelque chose contenant $\sqrt[3]{b}$.
3. Pose $t = \sqrt[3]{b}$. L'inégalité à prouver devient un polynôme de degré $3$ en $t$. Factorise-le en remarquant que $t = 1$ est racine, et regarde si c'est une racine double.
4. Multiplie les deux inégalités obtenues, puis fais apparaître $a^3b^2$ dans le produit $\sqrt{a} \times \sqrt[3]{b}$.

## Solution

**Étape 1 : une minoration de $1 + a$.**

Comme $a > 0$, le nombre $\sqrt{a}$ existe et

$$\left(\sqrt{a} - 1\right)^2 \ge 0 \quad \Longleftrightarrow \quad a - 2\sqrt{a} + 1 \ge 0 \quad \Longleftrightarrow \quad 1 + a \ge 2\sqrt{a} ,$$

avec égalité si et seulement si $\sqrt{a} = 1$, c'est-à-dire $a = 1$.

**Étape 2 : une minoration de $2 + b$.**

Posons $t = \sqrt[3]{b}$, donc $t > 0$ et $b = t^3$. Nous voulons montrer

$$2 + t^3 \ge 3t .$$

Étudions $P(t) = t^3 - 3t + 2$. On remarque que $P(1) = 1 - 3 + 2 = 0$, donc $t - 1$ divise $P$. En effectuant la division :

$$P(t) = (t-1)\left(t^2 + t - 2\right) = (t-1)(t-1)(t+2) = (t-1)^2 (t+2) .$$

Pour $t > 0$, on a $(t-1)^2 \ge 0$ et $t + 2 > 0$, donc $P(t) \ge 0$, c'est-à-dire

$$2 + b \ge 3\sqrt[3]{b} ,$$

avec égalité si et seulement si $t = 1$, c'est-à-dire $b = 1$.

**Étape 3 : on multiplie.**

Les deux membres de chaque inégalité sont strictement positifs, on peut donc multiplier :

$$(1 + a)(2 + b) \ge 2\sqrt{a} \times 3\sqrt[3]{b} = 6 \, a^{1/2} b^{1/3} .$$

**Étape 4 : on utilise l'hypothèse.**

Élevons $a^{1/2} b^{1/3}$ à la puissance $6$ :

$$\left(a^{1/2} b^{1/3}\right)^6 = a^3 b^2 = 1 .$$

Comme $a^{1/2}b^{1/3}$ est strictement positif et que sa puissance sixième vaut $1$, on a $a^{1/2}b^{1/3} = 1$.

D'où

$$(1 + a)(2 + b) \ge 6 \times 1 = 6 .$$

**Étape 5 : les cas d'égalité.**

Il y a égalité seulement si les deux inégalités des étapes 1 et 2 sont des égalités, c'est-à-dire si $a = 1$ et $b = 1$. Réciproquement, ce couple vérifie bien $a^3b^2 = 1$, et alors

$$(1+1)(2+1) = 2 \times 3 = 6 .$$

**Conclusion.** Pour tous réels $a, b > 0$ avec $a^3b^2 = 1$, on a $(1+a)(2+b) \ge 6$, avec égalité uniquement pour $a = b = 1$.

## Going further

Les deux minorations utilisées sont deux cas de l'**inégalité arithmético-géométrique** : la moyenne arithmétique de nombres positifs est toujours supérieure ou égale à leur moyenne géométrique. Ici, $\frac{1+a}{2} \ge \sqrt{1 \times a}$ pour deux nombres, et $\frac{1+1+b}{3} \ge \sqrt[3]{1 \times 1 \times b}$ pour trois. Les exposants $3$ et $2$ de l'énoncé ne sont pas choisis au hasard : ils sont exactement ce qu'il faut pour que $\sqrt{a}\sqrt[3]{b}$ se simplifie.
