---
id: "1012"
title: "Comparer nⁿ et (n + 1)ⁿ⁻¹"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, puissances, binome-de-newton, majoration, suites]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction and Peano Axioms"
  reference: "Handout-4785-4955.pdf, problème 5.1 (problème communiqué par Nikita Gladkov)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4785-4955.pdf"
---

## Statement

Montrer que pour tout entier $n \geqslant 1$,
$$n^{n} \geqslant (n+1)^{n-1}.$$

*(Par exemple : $2^{2} = 4 \geqslant 3^{1} = 3$, puis $3^{3} = 27 \geqslant 4^{2} = 16$, puis $4^{4} = 256 \geqslant 5^{3} = 125$.)*

## Hints

1. Les deux membres sont des puissances d'exposants voisins. Essayez de tout ramener à une seule puissance en divisant par $n^{n-1}$.
2. Après division, l'inégalité à démontrer devient $\left(1 + \frac{1}{n}\right)^{n-1} \leqslant n$. Vérifiez que c'est bien équivalent.
3. Le membre de gauche a l'air de grandir avec $n$, mais il est en fait **borné**. Développez-le avec la formule du binôme.
4. Dans le développement, le terme de rang $k$ contient $\binom{n-1}{k}\frac{1}{n^{k}}$. Montrez qu'il est au plus $\frac{1}{k!}$, puis que $\frac{1}{k!} \leqslant \frac{1}{2^{k-1}}$ pour $k \geqslant 1$.
5. Les petites valeurs de $n$ se traitent à la main.

## Solution

### Ramener à une seule puissance

Comme $n \geqslant 1$, le nombre $n^{n-1}$ est strictement positif, et l'on peut diviser les deux membres par lui :
$$n^{n} \geqslant (n+1)^{n-1} \iff \frac{n^{n}}{n^{n-1}} \geqslant \frac{(n+1)^{n-1}}{n^{n-1}} \iff n \geqslant \left(\frac{n+1}{n}\right)^{n-1} = \left(1 + \frac{1}{n}\right)^{n-1}.$$

Il suffit donc de montrer
$$\left(1 + \frac{1}{n}\right)^{n-1} \leqslant n. \qquad (\star)$$

### Majorer le membre de gauche

**Étape 1 : une majoration par une somme d'inverses de factorielles.**

La formule du binôme donne, pour $n \geqslant 2$,
$$\left(1 + \frac{1}{n}\right)^{n-1} = \sum_{k=0}^{n-1} \binom{n-1}{k}\frac{1}{n^{k}}.$$

Pour $1 \leqslant k \leqslant n-1$,
$$\binom{n-1}{k}\frac{1}{n^{k}} = \frac{1}{k!} \cdot \frac{(n-1)(n-2)\cdots(n-k)}{n^{k}} = \frac{1}{k!} \cdot \frac{n-1}{n} \cdot \frac{n-2}{n} \cdots \frac{n-k}{n} \leqslant \frac{1}{k!},$$
car chacune des $k$ fractions $\frac{n-j}{n}$ est comprise entre $0$ et $1$. Le terme $k = 0$ vaut $1$ des deux côtés. Donc
$$\left(1 + \frac{1}{n}\right)^{n-1} \leqslant 1 + \frac{1}{1!} + \frac{1}{2!} + \cdots + \frac{1}{(n-1)!}.$$

**Étape 2 : majorer la somme par $3$.**

Pour tout $k \geqslant 1$ on a $k! \geqslant 2^{k-1}$. (Récurrence immédiate : $1! = 2^{0}$, et si $k! \geqslant 2^{k-1}$ alors $(k+1)! = (k+1)k! \geqslant 2 \times 2^{k-1} = 2^{k}$.) Donc
$$1 + \sum_{k=1}^{n-1} \frac{1}{k!} \leqslant 1 + \sum_{k=1}^{n-1} \frac{1}{2^{k-1}} = 1 + \frac{1 - \left(\frac12\right)^{n-1}}{1 - \frac12} = 3 - \frac{1}{2^{n-2}} < 3.$$

Finalement, pour tout $n \geqslant 2$,
$$\left(1 + \frac{1}{n}\right)^{n-1} < 3. \qquad (\star\star)$$

### Conclure

- Pour $n \geqslant 3$, $(\star\star)$ donne $\left(1 + \frac{1}{n}\right)^{n-1} < 3 \leqslant n$, donc $(\star)$ est vraie.
- Pour $n = 1$ : le membre de gauche vaut $\left(1 + 1\right)^{0} = 1$ et le membre de droite vaut $1$. L'inégalité $(\star)$ est vraie (avec égalité).
- Pour $n = 2$ : le membre de gauche vaut $\left(\frac32\right)^{1} = \text{1,5}$ et le membre de droite vaut $2$. L'inégalité $(\star)$ est vraie.

Dans tous les cas $(\star)$ est vérifiée, donc
$$n^{n} \geqslant (n+1)^{n-1} \qquad \text{pour tout entier } n \geqslant 1.$$

**Conclusion.** L'inégalité est démontrée. Le seul cas d'égalité est $n = 1$.

**Ce qui se cache derrière.** La quantité $\left(1 + \frac{1}{n}\right)^{n}$ tend vers le nombre d'Euler $e \approx \text{2,718}$ quand $n$ grandit. C'est pour cela qu'elle reste toujours sous $3$ : c'est le vrai contenu de l'étape 2. Et comme $n$ finit par dépasser $3$, l'inégalité devient même très large : pour $n = 10$, on compare $10^{10} = 10^{10}$ à $11^{9} \approx \text{2,36} \times 10^{9}$, soit un rapport de plus de $4$.

## Going further

1. Montrer que le rapport $\dfrac{n^{n}}{(n+1)^{n-1}}$ tend vers l'infini, et plus précisément qu'il est équivalent à $\dfrac{n}{e}$.
2. Comparer de même $n^{n+1}$ et $(n+1)^{n}$. Quelle est l'inégalité, et à partir de quel $n$ ?
3. En déduire quel est le plus grand des deux nombres $2026^{2027}$ et $2027^{2026}$.
4. Comparer $e^{\pi}$ et $\pi^{e}$. (Même idée : étudier la fonction $x \mapsto \frac{\ln x}{x}$.)
