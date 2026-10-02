---
id: "8722"
title: "La somme des inverses des carrés reste sous 2"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [recurrence, inegalite, hypothese-renforcee, telescopage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Récurrence » (Antoine), exercice 9"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Montrer que pour tout entier $n \geqslant 1$,

$$\frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \cdots + \frac{1}{n^2} \;<\; 2 .$$

## Hints

1. Essaie d'abord une récurrence directe sur l'énoncé tel quel. Tu vas te heurter à un mur : écris précisément où ça bloque, c'est instructif.
2. Le problème est que l'hypothèse « la somme est $< 2$ » est trop faible : en ajoutant $\frac{1}{(n+1)^2}$ on peut dépasser $2$. Il faut donc démontrer **quelque chose de plus fort**.
3. Calcule les premières sommes : $1$, puis $\text{1,25}$, puis environ $\text{1,361}$, puis $\text{1,4236}$. Compare-les à $2 - \frac{1}{n}$.
4. Autre route, sans récurrence : majore $\frac{1}{k^2}$ par $\frac{1}{k(k-1)}$ pour $k \geqslant 2$, puis décompose cette dernière fraction en une différence.

## Solution

Notons

$$S_n = \frac{1}{1^2} + \frac{1}{2^2} + \cdots + \frac{1}{n^2} .$$

### Pourquoi la récurrence directe échoue

Supposons $S_n < 2$ et essayons d'en déduire $S_{n+1} < 2$. On a

$$S_{n+1} = S_n + \frac{1}{(n+1)^2} < 2 + \frac{1}{(n+1)^2} .$$

On obtient $S_{n+1} < 2 + \text{quelque chose de positif}$, ce qui ne dit rien. L'hypothèse de récurrence est trop molle : elle ne laisse aucune marge pour absorber le terme suivant.

### L'idée : renforcer l'énoncé

C'est un phénomène fréquent et un peu déroutant : pour qu'une récurrence passe, il faut parfois démontrer **plus** que ce qui est demandé. Ici, on va montrer

$$S_n \;\leqslant\; 2 - \frac{1}{n} \qquad \text{pour tout } n \geqslant 1 . \qquad (\mathcal{P}_n)$$

Cet énoncé est plus fort que celui de l'exercice, puisque $2 - \frac{1}{n} < 2$. Mais il laisse une marge de $\frac{1}{n}$, et c'est cette marge qui va absorber le terme suivant.

**Initialisation.** Pour $n = 1$ : $S_1 = 1$ et $2 - \frac{1}{1} = 1$. On a bien $S_1 \leqslant 1$.

**Hérédité.** Supposons $(\mathcal{P}_n)$ vraie pour un certain $n \geqslant 1$. Alors

$$S_{n+1} = S_n + \frac{1}{(n+1)^2} \;\leqslant\; 2 - \frac{1}{n} + \frac{1}{(n+1)^2} .$$

Il suffit donc de vérifier que

$$2 - \frac{1}{n} + \frac{1}{(n+1)^2} \;\leqslant\; 2 - \frac{1}{n+1} ,$$

ce qui, en passant les termes du bon côté, s'écrit

$$\frac{1}{(n+1)^2} \;\leqslant\; \frac{1}{n} - \frac{1}{n+1} = \frac{1}{n(n+1)} .$$

Or $(n+1)^2 = (n+1)(n+1) > n(n+1)$, donc $\dfrac{1}{(n+1)^2} < \dfrac{1}{n(n+1)}$. L'inégalité est vraie, et $(\mathcal{P}_{n+1})$ est démontrée.

**Conclusion de la récurrence.** Pour tout $n \geqslant 1$,

$$S_n \leqslant 2 - \frac{1}{n} < 2 .$$

### Une seconde méthode, sans récurrence

Pour $k \geqslant 2$, on a $k^2 > k(k-1)$, donc

$$\frac{1}{k^2} < \frac{1}{k(k-1)} = \frac{1}{k-1} - \frac{1}{k} .$$

(La dernière égalité se vérifie en réduisant au même dénominateur.)

En sommant de $k=2$ à $k=n$, la somme de droite se **télescope** : chaque terme annule le suivant.

$$\frac{1}{2^2} + \cdots + \frac{1}{n^2} \;<\; \left(\frac{1}{1}-\frac{1}{2}\right) + \left(\frac{1}{2}-\frac{1}{3}\right) + \cdots + \left(\frac{1}{n-1}-\frac{1}{n}\right) = 1 - \frac{1}{n} .$$

En ajoutant le premier terme $\dfrac{1}{1^2} = 1$ :

$$S_n < 1 + 1 - \frac{1}{n} = 2 - \frac{1}{n} < 2 .$$

On retrouve exactement la même majoration, et on comprend d'où vient le $2 - \frac{1}{n}$ de la première méthode.

$$\boxed{\ \frac{1}{1^2} + \frac{1}{2^2} + \cdots + \frac{1}{n^2} < 2 \ \text{ pour tout } n \geqslant 1 .}$$

## Going further

1. La majoration $2 - \frac{1}{n}$ est loin d'être optimale. Euler a démontré en 1735 que lorsque $n$ devient très grand, $S_n$ s'approche de $\dfrac{\pi^2}{6} \approx \text{1,6449}$. Calcule $S_{10}$ et compare.

2. Améliore la méthode du télescopage : au lieu de commencer à $k=2$, garde $\frac{1}{1^2}$ et $\frac{1}{2^2}$ à part et télescope à partir de $k=3$. Quelle majoration obtiens-tu ?

3. Même travail avec $\dfrac{1}{1^3} + \dfrac{1}{2^3} + \cdots + \dfrac{1}{n^3}$ : trouve une majoration valable pour tout $n$.

4. Et avec $\dfrac{1}{1} + \dfrac{1}{2} + \cdots + \dfrac{1}{n}$ ? Cette fois aucune majoration constante n'existe : regroupe les termes par paquets $\frac{1}{3}+\frac{1}{4}$, puis $\frac{1}{5}+\cdots+\frac{1}{8}$, et minore chaque paquet par $\frac{1}{2}$.
