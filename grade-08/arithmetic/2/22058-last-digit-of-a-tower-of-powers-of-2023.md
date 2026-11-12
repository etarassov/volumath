---
id: "22058"
title: "Le dernier chiffre d'une tour de puissances"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [chiffre-des-unites, puissances, restes]
adapted_from: null
see_also: ["4411", "22045", "8650"]
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Équations diophantiennes, factorisation » (Augustin & Éva), exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Quel est le chiffre des unités du nombre
$$2023^{2024^{2025^{2026^{2027}}}} \;?$$

On lit la tour de haut en bas : on calcule d'abord $2026^{2027}$, puis $2025$ à cette puissance, et ainsi de suite.

## Hints

1. Le chiffre des unités d'un produit ne dépend que des chiffres des unités des facteurs. Par quoi peut-on remplacer $2023$ ?
2. Écrivez les chiffres des unités de $3^1, 3^2, 3^3, 3^4, 3^5, \ldots$ Que remarquez-vous ?
3. L'exposant de $2023$ est une puissance de $2024$. Est-il un multiple de $4$ ?

## Solution

**Étape 1 : on peut remplacer $2023$ par $3$.** Le chiffre des unités d'un produit ne dépend que des chiffres des unités des facteurs. Par exemple, $2023 \times 2023$ se termine comme $3 \times 3 = 9$. Donc $2023^N$ se termine par le même chiffre que $3^N$, pour tout entier $N \geq 1$.

**Étape 2 : les puissances de $3$.** Les chiffres des unités de $3^1, 3^2, 3^3, 3^4$ sont $3$, $9$, $7$, $1$. Comme $3^4 = 81$ se termine par $1$, on a pour tout entier $k \geq 1$ :
$$3^{4k} = \left(3^4\right)^k = 81^k,$$
qui se termine par $1$, puisque $1 \times 1 \times \cdots \times 1 = 1$. Ensuite le cycle $3, 9, 7, 1$ recommence.

**Étape 3 : l'exposant est un multiple de $4$.** L'exposant de $2023$ est $N = 2024^M$, avec $M = 2025^{2026^{2027}}$, qui est un entier au moins égal à $1$. Comme $2024 = 4 \times 506$, le nombre $N = 2024 \times 2024^{M-1}$ est un multiple de $4$. Écrivons $N = 4k$.

**Conclusion.** Le nombre $2023^N$ se termine comme $3^{4k}$, donc par $1$. **Le chiffre des unités est $1$.**

## Going further

1. Quel est le chiffre des unités de $2027^{2026^{2025^{2024^{2023}}}}$ ?
2. Quels sont les deux derniers chiffres de $2023^{2024}$ ? Seuls les deux derniers chiffres de $2023$ comptent : on pourra chercher la plus petite puissance de $23$ qui se termine par $01$.
