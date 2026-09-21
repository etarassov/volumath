---
id: "8661"
title: "3a² = b² + 1 n'a pas de solution"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [equation diophantienne, congruences, carres, modulo trois]
adapted_from: null
see_also: ["7859", "8326", "8429"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Équations diophantiennes et factorisations » (Théo & Gaspard D.), exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver tous les couples d'entiers $(a, b)$ tels que

$$3a^2 = b^2 + 1 .$$

## Hints

1. Essaie quelques petites valeurs de $a$ : $a = 1$ donne $3$, $a = 2$ donne $12$, $a = 3$ donne $27$. Faut-il que $b^2$ vaille $2$, $11$, $26$\ldots ?
2. Le membre de gauche est un multiple de $3$, quelle que soit la valeur de $a$. Cela suggère un modulo.
3. Quels sont les restes possibles d'un carré dans la division par $3$ ?
4. Calcule $0^2$, $1^2$ et $2^2$ modulo $3$. Tu n'obtiendras que deux valeurs.

## Solution

Regardons l'égalité modulo $3$.

**Le membre de gauche.** $3a^2$ est un multiple de $3$, donc

$$3a^2 \equiv 0 \pmod 3 .$$

**Les carrés modulo 3.** Le reste de $b^2$ ne dépend que du reste de $b$ :

| $b \bmod 3$ | $0$ | $1$ | $2$ |
|---|---|---|---|
| $b^2 \bmod 3$ | $0$ | $1$ | $1$ |

Un carré est donc toujours $\equiv 0$ ou $\equiv 1$ modulo $3$.

**Le membre de droite.** Par conséquent

$$b^2 + 1 \equiv 1 \ \text{ou} \ 2 \pmod 3 .$$

**La contradiction.** Si l'égalité $3a^2 = b^2 + 1$ avait lieu, le membre de gauche serait $\equiv 0$ et le membre de droite serait $\equiv 1$ ou $2$. C'est impossible.

$$\boxed{\text{L'équation } 3a^2 = b^2 + 1 \text{ n'a aucune solution en nombres entiers.}}$$

## Going further

**Une seconde solution, modulo 4.** Un carré vaut $0$ ou $1$ modulo $4$.

- Le membre de gauche $3a^2$ vaut donc $0$ ou $3$ modulo $4$.
- Le membre de droite $b^2 + 1$ vaut $1$ ou $2$ modulo $4$.

Les deux listes n'ont rien en commun : même conclusion. Il arrive souvent que plusieurs modulos fonctionnent, et il est instructif d'en essayer plusieurs pour voir lequel est le plus court.

**Une mise en garde.** Change un seul chiffre et tout change : l'équation $3a^2 = b^2 + 2$ a des solutions, par exemple $a = 1$, $b = 1$, et aussi $a = 3$, $b = 5$. Le modulo $3$ ne dit alors rien, puisque $b^2 + 2$ peut être $\equiv 0$. Les congruences ne servent qu'à dire non, et seulement quand elles le peuvent.
