---
id: "40923"
title: "La hauteur d'un rationnel est presque élevée au carré par x ↦ (x² − 1)/(2x)"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [pgcd, nombres-premiers-entre-eux, nombres-premiers, fractions, rationnels, parite, majoration, minoration]
adapted_from: null
see_also: ["40921", "40922", "40924"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2025, mathématiques"
  reference: "cg-2025-s-sujet.pdf, exercice 1 « Addition sur une parabole », partie 2, questions 5 à 7. Le sujet pose h(P) = ln(H(x_P)) et demande deux réels m et M tels que m + h(P ⊕ P) ≤ 2h(P) ≤ h(P ⊕ P) + M ; on pose ici la même question sans logarithme, sous la forme équivalente kH(x)² ≤ H(D(x)) ≤ KH(x)²."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2025-s-sujet.pdf"
---

## Statement

Tout rationnel non nul $x$ s'écrit d'une seule façon $x = \frac{a}{b}$ avec $a$ et $b$ entiers,
$b \geq 1$ et $\mathrm{PGCD}(a, b) = 1$ (c'est la fraction irréductible). On appelle alors
**hauteur** de $x$ le plus grand des deux entiers $|a|$ et $|b|$ :
$$H(x) = \max(|a|, |b|) .$$
Par exemple $H\left(-\frac{4}{3}\right) = 4$ et $H\left(\frac{2}{7}\right) = 7$. On convient de
plus que $H(0) = 1$.

Pour tout réel $x \neq 0$, on pose
$$D(x) = \frac{x^2 - 1}{2x} .$$

1. Soit $N \geq 1$ un entier. Démontrer qu'il n'y a qu'un nombre fini de rationnels $x$ tels que
   $H(x) \leq N$.
2. Soient $a$ un entier non nul et $b \geq 1$ un entier, avec $\mathrm{PGCD}(a, b) = 1$.
   Démontrer que $\mathrm{PGCD}(a^2 - b^2, ab) = 1$.
3. Démontrer qu'il existe deux réels $k > 0$ et $K > 0$ tels que, pour tout rationnel
   $x \neq 0$,
   $$k \, H(x)^2 \leq H(D(x)) \leq K \, H(x)^2 .$$

## Hints

1. **Question 1.** Si $H(x) \leq N$ et $x = \frac{a}{b}$ est irréductible, entre quelles valeurs
   peuvent se trouver $a$ et $b$ ?
2. **Question 2.** Raisonner par l'absurde avec un nombre premier $p$ qui diviserait à la fois
   $a^2 - b^2$ et $ab$.
3. **Question 2.** Si un nombre premier divise un produit $ab$, il divise $a$ ou $b$ (pensez à la
   décomposition en facteurs premiers).
4. **Question 3.** Avec $x = \frac{a}{b}$ irréductible, calculer $D(x)$ comme une fraction
   d'entiers. Est-elle irréductible ? Sinon, par quoi peut-on la simplifier ?
5. **Question 3.** Le PGCD de $a^2 - b^2$ et $2ab$ vaut $1$ ou $2$. Distinguer selon la parité
   de $a$ et de $b$.
6. **Question 3.** Pour la minoration, comparer $a^2 + b^2$ à $|a^2 - b^2| + 2|ab|$.

## Solution

**1.** Si $x = \frac{a}{b}$ est irréductible et $H(x) \leq N$, alors $-N \leq a \leq N$ et
$1 \leq b \leq N$. Il y a $2N + 1$ choix pour $a$ et $N$ choix pour $b$, donc au plus
$(2N + 1)N$ fractions possibles, auxquelles s'ajoute éventuellement $0$. L'ensemble des
rationnels de hauteur au plus $N$ est donc fini.

**2.** Supposons par l'absurde que $a^2 - b^2$ et $ab$ ont un diviseur commun $d \geq 2$, et
prenons un nombre premier $p$ qui divise $d$. Alors $p$ divise $ab$. Un nombre premier qui divise
un produit divise l'un des facteurs (il apparaît dans la décomposition en facteurs premiers de
$a$ ou de $b$), donc $p$ divise $a$ ou $b$.

- Si $p$ divise $a$, il divise $a^2$, et comme il divise $a^2 - b^2$, il divise
  $a^2 - (a^2 - b^2) = b^2$. Donc $p$ divise $b$.
- Si $p$ divise $b$, on montre de même que $p$ divise $a$.

Dans les deux cas $p$ divise $a$ et $b$, ce qui contredit $\mathrm{PGCD}(a, b) = 1$.

**Conclusion :** $\mathrm{PGCD}(a^2 - b^2, ab) = 1$.

**3.** Soit $x = \frac{a}{b}$ irréductible, avec $a \neq 0$ et $b \geq 1$. Notons
$m = \max(|a|, |b|) = H(x)$.

*Le cas $x = \pm 1$.* Alors $D(x) = 0$, $H(D(x)) = 1$ et $H(x)^2 = 1$.

*Le cas $x \neq \pm 1$.* On calcule
$$D(x) = \frac{\frac{a^2}{b^2} - 1}{\frac{2a}{b}} = \frac{a^2 - b^2}{2ab} .$$
Notons $g = \mathrm{PGCD}(a^2 - b^2, 2ab)$.

Un nombre premier impair qui diviserait $a^2 - b^2$ et $2ab$ diviserait $ab$ (les facteurs
premiers impairs de $2ab$ sont ceux de $ab$), ce qui est impossible d'après la question 2. Donc
$g$ n'a pas d'autre facteur premier que $2$.

- Si l'un des deux entiers $a$, $b$ est pair, l'autre est impair (ils sont premiers entre eux),
  donc $a^2 - b^2$ est impair. Alors $g$ est impair, donc $g = 1$.
- Si $a$ et $b$ sont impairs, $a^2 - b^2$ et $2ab$ sont pairs, donc $2$ divise $g$. Mais $ab$ est
  impair, donc $2ab$ n'est pas divisible par $4$, et $g$ non plus. Ainsi $g = 2$.

Dans les deux cas, la fraction irréductible égale à $D(x)$ s'obtient en divisant
$a^2 - b^2$ et $2ab$ par $g \in \{1, 2\}$ (et en mettant le signe au numérateur). Donc, en notant
$$S = \max(|a^2 - b^2|, 2|ab|), \qquad H(D(x)) = \frac{S}{g}, \qquad \text{d'où} \qquad \frac{S}{2} \leq H(D(x)) \leq S .$$

*Majoration.* On a $|a| \leq m$ et $|b| \leq m$, donc $|a^2 - b^2| \leq \max(a^2, b^2) = m^2$ et
$2|ab| \leq 2m^2$. Donc $H(D(x)) \leq S \leq 2m^2$.

*Minoration.* Supposons par exemple $a^2 \geq b^2$, c'est-à-dire $|a| \geq |b|$ (l'autre cas est
pareil). Alors
$$|a^2 - b^2| + 2|ab| = a^2 - b^2 + 2|a||b| \geq a^2 - b^2 + 2b^2 = a^2 + b^2 .$$
Donc $m^2 \leq a^2 + b^2 \leq |a^2 - b^2| + 2|ab| \leq 2S \leq 4H(D(x))$.

**Conclusion :** pour tout rationnel $x \neq 0$ (le cas $x = \pm 1$ compris),
$$\frac{1}{4} H(x)^2 \leq H(D(x)) \leq 2H(x)^2 ,$$
donc $k = \frac{1}{4}$ et $K = 2$ conviennent.

**Bilan.** La transformation $x \mapsto \frac{x^2 - 1}{2x}$ élève la hauteur d'un rationnel au
carré, à un facteur près compris entre $\frac{1}{4}$ et $2$. La raison est que la fraction
$\frac{a^2 - b^2}{2ab}$ est presque irréductible : on ne peut la simplifier que par $2$.

## Going further

- Exemples : $D(3) = \frac{4}{3}$, $D\left(\frac{4}{3}\right) = \frac{7}{24}$,
  $D\left(\frac{7}{24}\right) = -\frac{527}{336}$. Les hauteurs $3$, $4$, $24$, $527$ vont
  à peu près en s'élevant au carré.
- Dans le sujet, on posait $h = \ln H$. Le résultat s'écrit alors : il existe deux réels $m$ et
  $M$ tels que $m + h(D(x)) \leq 2h(x) \leq h(D(x)) + M$ (on peut prendre $m = -\ln 2$ et
  $M = \ln 4$). La suite du sujet en déduisait que $\frac{\ln H(x_n)}{2^n}$ converge pour la
  suite $x_0 = 3$, $x_{n+1} = D(x_n)$ : voir l'exercice 40924.
- Pour le club : $D(x)$ est l'abscisse du point $P \oplus P$ de l'exercice 40921, quand $P$ est
  le point de la parabole $y = x^2$ d'abscisse $x$.
