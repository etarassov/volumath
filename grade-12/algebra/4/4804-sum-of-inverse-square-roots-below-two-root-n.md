---
id: "4804"
title: "Une somme de racines carrées inversées, majorée par 2√n"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [recurrence, inegalite, racine-carree, quantite-conjuguee, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Introduction to Induction (Olga Radko)"
  reference: "handoutId10-0.pdf, section 5, exercice 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/handoutId10-0.pdf"
---

## Statement

Montrer que pour tout entier $n \geqslant 1$,
$$1 + \frac{1}{\sqrt{2}} + \frac{1}{\sqrt{3}} + \cdots + \frac{1}{\sqrt{n}} < 2\sqrt{n}.$$

## Hints

1. Vérifie l'inégalité pour $n = 1$, $n = 2$, $n = 3$ à la calculatrice. La marge est-elle grande ?
2. Pour l'hérédité, tu ajoutes $\dfrac{1}{\sqrt{n+1}}$ à gauche et tu passes de $2\sqrt{n}$ à $2\sqrt{n+1}$ à droite. Il suffit donc de comparer $\dfrac{1}{\sqrt{n+1}}$ et $2\sqrt{n+1} - 2\sqrt{n}$.
3. Pour manipuler $\sqrt{n+1} - \sqrt{n}$, multiplie par la quantité conjuguée $\sqrt{n+1} + \sqrt{n}$.
4. Tu devrais arriver à comparer $\sqrt{n+1} + \sqrt{n}$ et $2\sqrt{n+1}$. Laquelle des deux est la plus grande, et pourquoi ?

## Solution

**Notation.** Pour $n \geqslant 1$, posons
$$S_n = 1 + \frac{1}{\sqrt{2}} + \cdots + \frac{1}{\sqrt{n}} = \sum_{k=1}^{n} \frac{1}{\sqrt{k}},$$
et notons $P(n)$ l'affirmation « $S_n < 2\sqrt{n}$ ».

**Initialisation.** $S_1 = 1$ et $2\sqrt{1} = 2$. Comme $1 < 2$, $P(1)$ est vraie.

**Hérédité.** Supposons $P(n)$ vraie pour un entier $n \geqslant 1$, c'est-à-dire $S_n < 2\sqrt{n}$. Alors
$$S_{n+1} = S_n + \frac{1}{\sqrt{n+1}} < 2\sqrt{n} + \frac{1}{\sqrt{n+1}} .$$

Il suffit donc de montrer que
$$2\sqrt{n} + \frac{1}{\sqrt{n+1}} \leqslant 2\sqrt{n+1},$$
c'est-à-dire
$$\frac{1}{\sqrt{n+1}} \leqslant 2\left(\sqrt{n+1} - \sqrt{n}\right).$$

*La quantité conjuguée.* En multipliant et en divisant par $\sqrt{n+1} + \sqrt{n}$ :
$$\sqrt{n+1} - \sqrt{n} = \frac{\left(\sqrt{n+1} - \sqrt{n}\right)\left(\sqrt{n+1} + \sqrt{n}\right)}{\sqrt{n+1} + \sqrt{n}} = \frac{(n+1) - n}{\sqrt{n+1} + \sqrt{n}} = \frac{1}{\sqrt{n+1} + \sqrt{n}} .$$

L'inégalité à montrer devient donc
$$\frac{1}{\sqrt{n+1}} \leqslant \frac{2}{\sqrt{n+1} + \sqrt{n}} .$$

Les deux dénominateurs sont strictement positifs, donc c'est équivalent à
$$\sqrt{n+1} + \sqrt{n} \leqslant 2\sqrt{n+1}, \qquad \text{c'est-à-dire} \qquad \sqrt{n} \leqslant \sqrt{n+1},$$
ce qui est vrai puisque la fonction racine carrée est croissante.

En remontant :
$$S_{n+1} < 2\sqrt{n} + \frac{1}{\sqrt{n+1}} \leqslant 2\sqrt{n+1},$$
donc $P(n+1)$ est vraie.

**Conclusion.** Par récurrence, pour tout entier $n \geqslant 1$ :
$$\boxed{1 + \frac{1}{\sqrt{2}} + \cdots + \frac{1}{\sqrt{n}} < 2\sqrt{n}.}$$

**Vérification numérique.** Pour $n = 100$, la somme vaut environ $\text{18,59}$ et $2\sqrt{100} = 20$. Pour $n = 10\,000$, la somme vaut environ $\text{198,5}$ et $2\sqrt{10\,000} = 200$. La majoration est serrée mais jamais atteinte.

## Going further

1. Démontre de la même façon la minoration $S_n > 2\sqrt{n+1} - 2$. On encadre ainsi la somme entre deux quantités très proches.
2. Déduis de l'encadrement que $S_n$ tend vers $+\infty$ quand $n$ tend vers $+\infty$, mais que $\dfrac{S_n}{\sqrt{n}}$ tend vers $2$.
3. L'inégalité vient en réalité d'une comparaison entre une somme et une aire : compare $\dfrac{1}{\sqrt{k}}$ à l'aire sous la courbe de $x \mapsto \dfrac{1}{\sqrt{x}}$ entre $k-1$ et $k$, puis retrouve le résultat par une intégrale.
