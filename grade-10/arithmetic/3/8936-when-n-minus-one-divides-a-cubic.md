---
id: "8936"
title: "Quand n − 1 divise un polynôme en n"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [divisibilite, congruences, polynome, diviseurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe B"
  reference: "Poly-Valbonne-2026.pdf, chapitre IV « Groupe B », « Arithmétique : TD de révisions » (Eva), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 2$ tels que $n - 1$ divise

$$3n^3 - 2n^2 + 5n + 1.$$

## Hints

1. Posez $d = n - 1$. Modulo $d$, à quoi $n$ est-il congru ?
2. Si $n \equiv 1$, alors $n^2 \equiv 1$ et $n^3 \equiv 1$. Que devient toute l'expression modulo $n-1$ ?
3. Vous devriez tomber sur un nombre fixe, qui ne dépend plus de $n$ du tout.
4. Il reste à écrire « $n-1$ divise ce nombre fixe » et à lister les diviseurs positifs de ce nombre.
5. Si les congruences ne vous disent rien encore, faites la même chose à la main : soustrayez de $3n^3 - 2n^2 + 5n + 1$ des multiples bien choisis de $n-1$, comme $3n^2(n-1)$, pour faire tomber le degré d'un cran à chaque fois.

## Solution

### Le calcul modulo $n-1$

Comme $n \geqslant 2$, l'entier $n - 1$ est strictement positif, ce qui nous autorise à parler de ses diviseurs sans précaution.

Par définition, $n - 1 \equiv 0 \pmod{n-1}$, autrement dit

$$n \equiv 1 \pmod{n-1}.$$

En élevant au carré puis au cube, $n^2 \equiv 1$ et $n^3 \equiv 1$ modulo $n-1$. Donc

$$3n^3 - 2n^2 + 5n + 1 \equiv 3 \times 1 - 2 \times 1 + 5 \times 1 + 1 = 7 \pmod{n-1}.$$

Ainsi :

$$n-1 \text{ divise } 3n^3 - 2n^2 + 5n + 1 \quad \Longleftrightarrow \quad n - 1 \text{ divise } 7.$$

C'est une **équivalence**, pas seulement une implication : les deux nombres ont le même reste modulo $n-1$, donc l'un est divisible par $n-1$ exactement quand l'autre l'est. Il n'y aura donc rien à vérifier à la fin, mais nous le ferons quand même.

### La même chose sans congruences

Si l'on préfère rester avec des soustractions, voici le même calcul. On enlève à chaque étape un multiple de $n-1$ pour faire baisser le degré :

$$3n^3 - 2n^2 + 5n + 1 - 3n^2(n-1) = n^2 + 5n + 1,$$
$$n^2 + 5n + 1 - n(n-1) = 6n + 1,$$
$$6n + 1 - 6(n-1) = 7.$$

À chaque ligne on a retranché un multiple de $n-1$, donc $n-1$ divise le nombre de départ si et seulement s'il divise $7$.

### Conclusion

Les diviseurs strictement positifs de $7$ sont $1$ et $7$, car $7$ est premier. Comme $n - 1 \geqslant 1$, on a donc

$$n - 1 = 1 \quad \text{ou} \quad n - 1 = 7, \qquad \text{soit} \qquad n = 2 \quad \text{ou} \quad n = 8.$$

Vérifions :

- $n = 2$ : $3 \times 8 - 2 \times 4 + 10 + 1 = 24 - 8 + 11 = 27$, et $n - 1 = 1$ divise bien $27$.
- $n = 8$ : $3 \times 512 - 2 \times 64 + 40 + 1 = 1536 - 128 + 41 = 1449$, et $1449 = 7 \times 207$, donc $n-1 = 7$ divise bien $1449$.

$$\boxed{n = 2 \quad \text{et} \quad n = 8.}$$

*Le point de méthode.* Le nombre $7$ n'est pas tombé du ciel : c'est la valeur du polynôme en $n = 1$. En effet $3 - 2 + 5 + 1 = 7$. C'est une règle générale : pour un polynôme $P$ à coefficients entiers, $n - a$ divise $P(n) - P(a)$, donc étudier « $n - a$ divise $P(n)$ » revient toujours à étudier « $n-a$ divise $P(a)$ », un nombre fixe.

## Going further

1. L'énoncé impose $n \geqslant 2$. Que se passe-t-il pour $n = 0$ et pour $n = 1$ ? Pour $n = 1$, le nombre $n-1$ vaut $0$, et $0$ ne divise que $0$ : comme le polynôme vaut $7$, cela ne marche pas. Pour $n = 0$, on a $n - 1 = -1$, qui divise tous les entiers, donc $n=0$ convient aussi si l'on accepte les diviseurs négatifs. Les énoncés d'olympiade laissent souvent ces deux cas de côté sans le dire : c'est à vous de les repérer.
2. Avec la règle énoncée ci-dessus, trouvez sans effort tous les entiers $n \geqslant 3$ tels que $n - 2$ divise $n^3 + 4$.
