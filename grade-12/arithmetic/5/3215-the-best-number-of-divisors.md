---
id: "3215"
title: "Le meilleur nombre de diviseurs pour sa taille"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [diviseurs, decomposition en facteurs premiers, maximum, inegalites, racine cubique]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Functions review"
  reference: "Handout-4805-4981.pdf, exercice 17, d'après AMC 12A 2021, problème 25"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4805-4981.pdf"
---

## Statement

Pour un entier $n \ge 1$, on note $d(n)$ le nombre de diviseurs positifs de $n$. Par exemple $d(1) = 1$, $d(2) = 2$ et $d(12) = 6$.

On pose

$$F(n) = \frac{d(n)}{\sqrt[3]{n}} .$$

Il existe un unique entier $N \ge 1$ tel que $F(N) > F(n)$ pour tout entier $n \ne N$.

Trouver $N$, puis la somme de ses chiffres.

## Hints

1. Rappelle la formule qui donne $d(n)$ à partir de la décomposition en facteurs premiers $n = p_1^{\alpha_1} \cdots p_k^{\alpha_k}$.
2. Écris $F(n)$ comme un **produit**, un facteur par nombre premier. Que vaut le facteur associé à un premier qui ne divise pas $n$ ?
3. Comme les facteurs sont indépendants les uns des autres, on peut chercher le meilleur exposant pour chaque nombre premier séparément.
4. Pour un premier $p$ fixé, étudie $g_p(\alpha) = \dfrac{\alpha+1}{p^{\alpha/3}}$. Pour comparer $g_p(\alpha+1)$ et $g_p(\alpha)$, forme le **quotient** plutôt que la différence.
5. Le quotient vaut $\dfrac{\alpha+2}{\alpha+1} \times \dfrac{1}{\sqrt[3]{p}}$. Quand est-il plus petit que $1$ ?
6. Traite les premiers $2$, $3$, $5$, $7$ un par un, puis montre d'un seul coup que pour $p \ge 11$ le meilleur exposant est $0$.

## Solution

**Écrire $F$ comme un produit.**

Si $n = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_k^{\alpha_k}$ est la décomposition de $n$ en facteurs premiers, alors

$$d(n) = (\alpha_1+1)(\alpha_2+1)\cdots(\alpha_k+1) \qquad \text{et} \qquad \sqrt[3]{n} = p_1^{\alpha_1/3} p_2^{\alpha_2/3}\cdots p_k^{\alpha_k/3} .$$

Donc

$$F(n) = \prod_{i=1}^{k} \frac{\alpha_i + 1}{p_i^{\alpha_i/3}} = \prod_{i=1}^{k} g_{p_i}\!\left( \alpha_i \right), \qquad \text{où} \qquad g_p(\alpha) = \frac{\alpha+1}{p^{\alpha/3}} .$$

Remarquons que $g_p(0) = 1$ : un nombre premier absent de $n$ contribue par un facteur $1$. On peut donc considérer que **tous** les nombres premiers interviennent, avec un exposant éventuellement nul.

Comme les exposants sont choisis indépendamment les uns des autres, maximiser $F$ revient à **maximiser chaque facteur $g_p(\alpha)$ séparément**.

**Comparer deux exposants consécutifs.**

Pour un premier $p$ et un entier $\alpha \ge 0$,

$$\frac{g_p(\alpha+1)}{g_p(\alpha)} = \frac{\alpha+2}{\alpha+1} \times \frac{p^{\alpha/3}}{p^{(\alpha+1)/3}} = \frac{\alpha+2}{\alpha+1} \times \frac{1}{\sqrt[3]{p}} .$$

Ce quotient est strictement plus grand que $1$ (« passer de $\alpha$ à $\alpha+1$ améliore ») exactement quand

$$\frac{\alpha+2}{\alpha+1} > \sqrt[3]{p}, \qquad \text{c'est-à-dire} \qquad 1 + \frac{1}{\alpha+1} > \sqrt[3]{p} .$$

Le membre de gauche **décroît** quand $\alpha$ augmente. Donc, pour chaque $p$, il y a un seuil : on améliore tant que $\alpha$ est petit, puis on dégrade, et le maximum de $g_p$ est atteint en un unique exposant.

**Nombre premier par nombre premier.**

- **$p = 2$**, $\sqrt[3]{2} \approx \text{1,2599}$. On améliore tant que $1 + \frac{1}{\alpha+1} > \text{1,2599}$, soit $\alpha + 1 < \text{3,847}$, soit $\alpha \le 2$. Donc $g_2(0) < g_2(1) < g_2(2) < g_2(3)$ et $g_2$ décroît ensuite. **Meilleur exposant : $3$**, avec $g_2(3) = \frac{4}{2} = 2$.

- **$p = 3$**, $\sqrt[3]{3} \approx \text{1,4422}$. On améliore tant que $\alpha+1 < \frac{1}{\text{0,4422}} \approx \text{2,261}$, soit $\alpha \le 1$. **Meilleur exposant : $2$**, avec $g_3(2) = \frac{3}{3^{2/3}} \approx \text{1,442}$.

- **$p = 5$**, $\sqrt[3]{5} \approx \text{1,7100}$. On améliore tant que $\alpha+1 < \frac{1}{\text{0,7100}} \approx \text{1,408}$, soit $\alpha = 0$. **Meilleur exposant : $1$**, avec $g_5(1) = \frac{2}{5^{1/3}} \approx \text{1,170}$.

- **$p = 7$**, $\sqrt[3]{7} \approx \text{1,9129}$. On améliore tant que $\alpha+1 < \frac{1}{\text{0,9129}} \approx \text{1,095}$, soit $\alpha = 0$. **Meilleur exposant : $1$**, avec $g_7(1) = \frac{2}{7^{1/3}} \approx \text{1,046}$.

- **$p \ge 11$.** Alors $\sqrt[3]{p} \ge \sqrt[3]{11} \approx \text{2,224} > 2$. Or pour tout $\alpha \ge 0$,
  $$1 + \frac{1}{\alpha+1} \le 1 + 1 = 2 < \sqrt[3]{p} .$$
  Le quotient $\frac{g_p(\alpha+1)}{g_p(\alpha)}$ est donc toujours strictement inférieur à $1$ : $g_p$ décroît dès le départ. **Meilleur exposant : $0$.**

**On assemble.**

L'unique entier qui maximise $F$ est donc

$$N = 2^3 \times 3^2 \times 5^1 \times 7^1 = 8 \times 9 \times 5 \times 7 = 2520 .$$

Le maximum vaut

$$F(2520) = 2 \times \frac{3}{3^{2/3}} \times \frac{2}{5^{1/3}} \times \frac{2}{7^{1/3}} \approx \text{3,527}, \qquad \text{avec } d(2520) = 4 \times 3 \times 2 \times 2 = 48 .$$

Comme chaque facteur atteint son maximum en un **unique** exposant, l'entier $N$ est bien unique.

**Conclusion.** $N = 2520$, et la somme de ses chiffres est

$$2 + 5 + 2 + 0 = 9 .$$

## Going further

1. Vérifier à la main que $d(2520) = 48$ en listant les exposants de sa décomposition.
2. Refaire l'étude avec $\dfrac{d(n)}{\sqrt{n}}$ à la place de $\dfrac{d(n)}{\sqrt[3]{n}}$. Quel entier gagne cette fois ?
3. Et avec $\dfrac{d(n)}{n}$ ? Montrer que le maximum est atteint pour un tout petit entier.
4. Pourquoi ne peut-il pas exister d'entier $n$ maximisant $d(n)$ tout court ?
