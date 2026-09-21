---
id: "8656"
title: "300 chiffres 1 et des zéros"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carre parfait, somme des chiffres, divisibilite par neuf]
adapted_from: null
see_also: ["8726"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Modulos » (Elsa), exercice 13 (Coupe Animath d'automne 2019, exercice 8)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Existe-t-il un entier dont l'écriture décimale contienne exactement $300$ chiffres « $1$ », aucun autre chiffre que des « $0$ », et qui soit un carré parfait ?

*On dit qu'un entier $N$ est un carré parfait s'il existe un entier $k$ tel que $N = k^2$. Par exemple $9 = 3 \times 3$ est un carré parfait, mais $2$ n'en est pas un.*

## Hints

1. Un tel nombre s'écrit avec des $1$ et des $0$, dans n'importe quel ordre, et il y a exactement $300$ chiffres $1$. Que vaut la somme de ses chiffres ?
2. La somme des chiffres donne le reste dans la division par $3$ et par $9$. Que vaut $300$ modulo $3$ ? modulo $9$ ?
3. Donc le nombre est un multiple de $3$. Est-il un multiple de $9$ ?
4. Maintenant regarde un carré parfait $k^2$ divisible par $3$. Que peut-on dire de $k$ ? Et donc de $k^2$ ?

## Solution

Appelons $N$ un tel nombre, s'il existe.

**La somme des chiffres de $N$.** Les chiffres de $N$ sont des $1$ et des $0$, et il y a exactement $300$ chiffres $1$. La somme des chiffres vaut donc exactement

$$1 + 1 + \cdots + 1 = 300 \qquad (300 \text{ fois}) .$$

**Ce que cela donne modulo 3 et modulo 9.** Un nombre a le même reste que la somme de ses chiffres dans la division par $3$, et aussi dans la division par $9$.

- $300 = 3 \times 100$, donc $3$ divise $300$, donc **$3$ divise $N$**.
- $300 = 9 \times 33 + 3$, donc $300$ n'est **pas** un multiple de $9$, donc **$9$ ne divise pas $N$**.

**Ce qu'un carré peut faire.** Supposons que $N$ soit un carré parfait, disons $N = k^2$.

Comme $3$ divise $k^2 = k \times k$ et que $3$ est un nombre premier, $3$ divise $k$. Écrivons $k = 3m$. Alors

$$N = k^2 = (3m)^2 = 9m^2 ,$$

donc $9$ divise $N$.

**La contradiction.** On vient d'obtenir que $9$ divise $N$, alors qu'on a montré plus haut que $9$ ne divise pas $N$. C'est impossible.

**Conclusion.**

$$\boxed{\text{Non, un tel entier n'existe pas.}}$$

## Going further

L'argument n'utilise à aucun moment l'ordre des chiffres : il marche pour $111\ldots1$ (les $300$ uns collés), pour $1010\ldots10$, pour n'importe quelle disposition. C'est ce qui rend la solution si courte.

Retiens le lemme qui a fait tout le travail : **si un carré parfait est divisible par un nombre premier $p$, alors il est divisible par $p^2$.** Il sert très souvent.

Et une question pour continuer : existe-t-il un carré parfait dont l'écriture ne contienne que des $1$ et des $0$, avec exactement $301$ chiffres $1$ ? Là, l'argument ci-dessus ne dit plus rien. Sauras-tu trouver un autre obstacle, ou un exemple ?
