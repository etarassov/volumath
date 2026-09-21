---
id: "8654"
title: "Deux équations sans aucune solution"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [congruences, carres, equation diophantienne, choix du modulo]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Modulos » (Elsa), exercices 10 et 11"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Montrer qu'aucune des deux équations suivantes n'a de solution en nombres entiers $x$ et $y$ :

$$1. \quad x^2 + y^2 = 175 \qquad\qquad 2. \quad x^2 - 7y^2 = 117 .$$

## Hints

1. On ne peut pas tester tous les entiers. L'idée est de regarder l'égalité **modulo** un bien choisi : si les deux côtés n'ont pas le même reste, il n'y a pas de solution.
2. Reste à choisir le modulo. Pour une somme de deux carrés, essaie $4$ : quels sont les restes possibles d'un carré modulo $4$ ?
3. Un carré est $\equiv 0$ ou $1$ modulo $4$. Quelles valeurs peut donc prendre $x^2 + y^2$ modulo $4$ ? Et $175$, que vaut-il modulo $4$ ?
4. Pour la deuxième équation, le terme $7y^2$ suggère un modulo qui le fait disparaître entièrement.
5. Modulo $7$, l'équation devient $x^2 \equiv 117$. Calcule le reste de $117$, puis la liste des carrés modulo $7$.

## Solution

Le principe est le même dans les deux cas : si une égalité entre entiers est vraie, elle reste vraie quand on remplace chaque nombre par son reste dans la division par un entier $m$. Il suffit donc de trouver un $m$ pour lequel les deux côtés ne peuvent pas coïncider.

### 1. $x^2 + y^2 = 175$, modulo 4

**Les carrés modulo $4$.** Un entier est pair ou impair.

- Si $x = 2k$, alors $x^2 = 4k^2 \equiv 0 \pmod 4$.
- Si $x = 2k+1$, alors $x^2 = 4k^2 + 4k + 1 = 4(k^2+k) + 1 \equiv 1 \pmod 4$.

Un carré est donc toujours $\equiv 0$ ou $\equiv 1$ modulo $4$.

**La somme de deux carrés.** En additionnant deux valeurs prises dans $\{0, 1\}$, on obtient $0$, $1$ ou $2$ :

$$x^2 + y^2 \equiv 0, \ 1 \ \text{ou} \ 2 \pmod 4 .$$

**Le second membre.** $175 = 4 \times 43 + 3$, donc $175 \equiv 3 \pmod 4$.

Le reste $3$ n'est pas atteignable. **L'équation n'a donc aucune solution entière.**

### 2. $x^2 - 7y^2 = 117$, modulo 7

Ici le choix du modulo saute aux yeux : modulo $7$, le terme $7y^2$ disparaît, quel que soit $y$. L'équation devient

$$x^2 \equiv 117 \pmod 7 .$$

**Le second membre.** $117 = 7 \times 16 + 5$, donc $117 \equiv 5 \pmod 7$.

**Les carrés modulo $7$.** On teste les sept restes :

| $x \bmod 7$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|---|---|
| $x^2 \bmod 7$ | $0$ | $1$ | $4$ | $2$ | $2$ | $4$ | $1$ |

Les seuls restes possibles pour un carré modulo $7$ sont donc $0$, $1$, $2$ et $4$. Le reste $5$ n'y figure pas.

**L'équation n'a donc aucune solution entière.**

**Conclusion.**

$$\boxed{\text{Ni } x^2 + y^2 = 175 \text{ ni } x^2 - 7y^2 = 117 \text{ n'a de solution en nombres entiers.}}$$

## Going further

Ce qu'il faut retenir, c'est la **façon de choisir le modulo**.

- Quand l'équation ne contient que des carrés et des sommes, $4$ (et parfois $8$) est le premier réflexe, parce que les carrés y prennent très peu de valeurs.
- Quand un coefficient est un nombre premier $p$, prendre le modulo $p$ fait disparaître tout le terme correspondant, et c'est souvent gratuit.

Attention quand même : cette méthode ne prouve jamais qu'une équation **a** une solution. Elle ne sait que dire non. Par exemple $x^2 + y^2 = 3$ n'a pas de solution, et le modulo $4$ le montre ; mais $x^2 + y^2 = 6$ n'en a pas non plus, et là le modulo $4$ ne dit rien du tout, puisque $6 \equiv 2$ est un reste autorisé. Il faut alors un autre argument.
