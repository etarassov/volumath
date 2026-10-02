---
id: "2806"
title: "Le chiffre des unités d'un très grand nombre"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [chiffre-des-unites, puissances, periodicite, divisibilite]
adapted_from: null
see_also: []
same_as: ["1604"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Relays"
  reference: "Handout-1301-1322.pdf, problème 19 (réponse dans Handout-1302-1322.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1301-1322.pdf"
---

## Statement

On pose

$$k = 2008^2 + 2^{2008} .$$

Quel est le chiffre des unités de $k^2 + 2^k$ ?

*(Le nombre $k$ a plus de six cents chiffres, et $2^k$ en a un nombre astronomique : il n'est évidemment pas question de les calculer.)*

## Hints

1. Le chiffre des unités d'une somme ou d'un produit ne dépend que des chiffres des unités des nombres de départ. Vérifie-le sur un exemple avant de continuer.
2. Écris les chiffres des unités de $2^1, 2^2, 2^3, 2^4, 2^5, 2^6, \ldots$ Que remarques-tu ?
3. Cette liste se répète avec une période de $4$. Pour connaître le chiffre des unités de $2^n$, il suffit donc de connaître le **reste de $n$ dans la division par $4$**.
4. Commence par trouver le chiffre des unités de $k$. Cela donne celui de $k^2$.
5. Pour $2^k$, ce n'est pas le chiffre des unités de $k$ qui sert, mais le reste de $k$ dans la division par $4$. Or $2008$ est un multiple de $4$ : que dire de $2008^2$ ? et de $2^{2008}$ ?

## Solution

**Un principe de base.**

Quand on additionne ou multiplie deux entiers, le chiffre des unités du résultat ne dépend que des chiffres des unités des deux nombres de départ. C'est visible sur la pose de l'opération : les retenues se propagent vers la gauche, jamais vers la droite. On peut donc travailler uniquement avec les chiffres des unités.

**Le cycle des puissances de $2$.**

Calculons les chiffres des unités des premières puissances de $2$ :

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|---|
| $2^n$ finit par | $2$ | $4$ | $8$ | $6$ | $2$ | $4$ | $8$ | $6$ |

Le motif $2, 4, 8, 6$ se répète. C'est normal : pour passer d'une ligne à la suivante on multiplie par $2$ et on ne garde que le chiffre des unités ; dès qu'un chiffre réapparaît, toute la suite se répète. Et de $6$ on revient bien à $2$, puisque $6 \times 2 = 12$.

Donc, pour $n \geqslant 1$ :

- si $n$ a pour reste $1$ dans la division par $4$, le chiffre des unités de $2^n$ est $2$ ;
- reste $2$ : c'est $4$ ; reste $3$ : c'est $8$ ; reste $0$ : c'est $6$.

**Étape 1 : le chiffre des unités de $k$.**

$2008^2$ se termine comme $8^2 = 64$, donc par le chiffre $4$.

$2^{2008}$ : comme $2008 = 4 \times 502$, le reste de $2008$ dans la division par $4$ est $0$, donc $2^{2008}$ se termine par $6$.

La somme se termine donc comme $4 + 6 = 10$ : le chiffre des unités de $k$ est $\mathbf{0}$.

**Étape 2 : le chiffre des unités de $k^2$.**

Il se termine comme $0 \times 0 = 0$. Le chiffre des unités de $k^2$ est $\mathbf{0}$.

**Étape 3 : le chiffre des unités de $2^k$.**

Ici, attention au piège : ce n'est **pas** le chiffre des unités de $k$ qui intervient, mais le reste de $k$ dans la division par $4$.

Examinons les deux morceaux de $k$ :

- $2008 = 4 \times 502$, donc $2008^2 = 16 \times 502^2$ est un multiple de $4$ ;
- $2^{2008} = 4 \times 2^{2006}$ est aussi un multiple de $4$ (car $2008 \geqslant 2$).

La somme de deux multiples de $4$ est un multiple de $4$ : le reste de $k$ dans la division par $4$ vaut donc $0$.

D'après le cycle, et puisque $k \geqslant 1$, le chiffre des unités de $2^k$ est $\mathbf{6}$.

**Étape 4 : conclure.**

Le chiffre des unités de $k^2 + 2^k$ se lit sur $0 + 6 = 6$.

**Conclusion.** Le chiffre des unités de $k^2 + 2^k$ est

$$6 .$$

**Ce qu'il faut retenir.** Pour un chiffre des unités on regarde le nombre **modulo $10$** ; mais pour un chiffre des unités d'une puissance de $2$ on doit regarder l'**exposant** modulo $4$. Confondre les deux est l'erreur classique de ce problème.

## Going further

1. Quel est le chiffre des unités de $3^{2008}$ ? de $7^{2008}$ ? Quelle est la période dans chaque cas ?
2. Quels sont les deux derniers chiffres de $2^{2008}$ ? (Le cycle des deux derniers chiffres de $2^n$ est plus long.)
3. Montrer que pour tout entier $n \geqslant 1$, les nombres $2^n$ et $2^{n+4}$ ont le même chiffre des unités, en écrivant $2^{n+4} - 2^n$ comme un produit.
