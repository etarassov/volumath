---
id: "8615"
title: "2023 plus une puissance de 2 qui donne un carré"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [carres, congruences, modulo-quatre, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, entraînement de mi-parcours, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Déterminer tous les couples $(n, k)$ d'entiers positifs ou nuls tels que

$$2023 + 2^n = k^2 .$$

## Hints

1. Avant tout, essaie les toutes petites valeurs de $n$ : $n = 0$, $n = 1$, $n = 2$, $n = 3$. Une seule donne un carré.
2. Pour éliminer toutes les grandes valeurs d'un coup, regarde l'équation modulo un petit nombre bien choisi. Quel nombre a un lien à la fois avec les carrés et avec les puissances de $2$ ?
3. Quels sont les restes possibles d'un carré dans la division par $4$ ? Il n'y en a que deux : teste $k = 0, 1, 2, 3$.
4. Quel est le reste de $2^n$ dans la division par $4$ lorsque $n \geqslant 2$ ? Et celui de $2023$ ?
5. Une fois les grandes valeurs éliminées, il ne reste que $n = 0$ et $n = 1$ à traiter à la main.

## Solution

**Les restes des carrés modulo 4.** Tout entier $k$ s'écrit $4q + r$ avec $r \in \{0, 1, 2, 3\}$, et

$$0^2 \equiv 0, \qquad 1^2 \equiv 1, \qquad 2^2 = 4 \equiv 0, \qquad 3^2 = 9 \equiv 1 \pmod 4 .$$

Un carré parfait est donc toujours congru à $0$ ou à $1$ modulo $4$. **Jamais à $2$, jamais à $3$.**

**Élimination des grandes valeurs de $n$.** Supposons $n \geqslant 2$. Alors $2^n$ est un multiple de $4$, donc $2^n \equiv 0 \pmod 4$.

Par ailleurs $2023 = 4 \times 505 + 3$, donc $2023 \equiv 3 \pmod 4$.

L'équation donnerait alors

$$k^2 = 2023 + 2^n \equiv 3 + 0 = 3 \pmod 4 ,$$

ce qui est impossible d'après le paragraphe précédent.

**Il ne reste que deux cas.**

*Cas $n = 0$.* L'équation devient $k^2 = 2023 + 1 = 2024$. Or

$$44^2 = 1936 \qquad \text{et} \qquad 45^2 = 2025 ,$$

donc $44^2 < 2024 < 45^2$ : le nombre $2024$ est coincé entre deux carrés consécutifs, ce n'est pas un carré. Pas de solution.

*Cas $n = 1$.* L'équation devient $k^2 = 2023 + 2 = 2025$. Et $2025 = 45^2$. Donc $k = 45$ convient (on cherche $k$ positif).

**Conclusion.** L'unique couple solution est

$$\boxed{(n, k) = (1, 45)} .$$

## Going further

Le réflexe à retenir : dès qu'une équation mélange **des carrés** et **des puissances de 2**, le module $4$ (ou $8$) est le premier à essayer, parce que ces deux objets y ont très peu de restes possibles.

Le même travail avec $8$ donne d'ailleurs un peu plus : les carrés impairs sont tous congrus à $1$ modulo $8$. Sauras-tu t'en servir pour montrer qu'un entier de la forme $8m + 7$ n'est jamais la somme de trois carrés ?
