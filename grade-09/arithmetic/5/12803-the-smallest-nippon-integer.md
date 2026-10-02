---
id: "12803"
title: "Le plus petit entier nippon"
grade: 9
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [diviseurs, fractions, minimum, disjonction-de-cas, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 23 novembre 2022"
  reference: "2023-01_Enonce-Web-Test-1.pdf, exercice 3 ; corrigé 2023-01_Corrige-Web-Test-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Énoncé-Web-Test-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-01_Enonce-Web-Test-1.pdf"
---

## Statement

On dit qu'un entier $n \geq 1$ est **nippon** s'il possède trois diviseurs $d_1$, $d_2$, $d_3$ tels que

$$1 \leq d_1 < d_2 < d_3 \qquad \text{et} \qquad d_1 + d_2 + d_3 = 2022.$$

Quel est le plus petit entier nippon ?

## Hints

1. Trouvez d'abord un entier nippon, même grand. Puis essayez d'en trouver de plus petits, par exemple en cherchant $d_3 = n$ et $d_1$ diviseur de $d_2$.
2. Posez $a_k = n / d_k$ pour $k = 1, 2, 3$. Ce sont des entiers, avec $a_1 > a_2 > a_3 \geq 1$. Réécrivez la condition sous la forme $n \times \left(\frac{1}{a_1} + \frac{1}{a_2} + \frac{1}{a_3}\right) = 2022$.
3. Pour que $n$ soit petit, la somme des trois inverses doit être grande, donc les $a_k$ petits. Montrez que si $a_3 \geq 2$, ou si $a_3 = 1$ et $a_2 \geq 4$, la somme est trop petite pour battre votre meilleur candidat.
4. Dans le cas $a_3 = 1$ et $a_2 = 2$, montrez que $3a_1 + 2$ doit diviser $4044 = 2^2 \times 3 \times 337$.

## Solution

La réponse est $\boxed{1344}$.

### Un entier nippon

On a $1344 = 2^6 \times 3 \times 7$. Ses diviseurs comprennent $6$, $672 = 1344/2$ et $1344$ lui-même, et

$$6 + 672 + 1344 = 2022.$$

Donc $1344$ est nippon. Il reste à montrer qu'aucun entier nippon n'est plus petit.

### Une autre façon d'écrire la condition

Soit $n$ un entier nippon, avec ses diviseurs $d_1 < d_2 < d_3$ de somme $2022$. Posons

$$a_1 = \frac{n}{d_1}, \qquad a_2 = \frac{n}{d_2}, \qquad a_3 = \frac{n}{d_3}.$$

Ce sont des entiers, puisque les $d_k$ divisent $n$, et comme $d_1 < d_2 < d_3 \leq n$ on a $a_1 > a_2 > a_3 \geq 1$. Puisque $d_k = n / a_k$, la condition devient

$$n \left( \frac{1}{a_1} + \frac{1}{a_2} + \frac{1}{a_3} \right) = 2022, \qquad \text{donc} \qquad n = \frac{2022}{S} \quad \text{avec} \quad S = \frac{1}{a_1} + \frac{1}{a_2} + \frac{1}{a_3}.$$

Plus $S$ est grand, plus $n$ est petit. On étudie les cas selon $a_3$ et $a_2$.

### Cas 1 : a₃ ≥ 2

Alors $a_2 \geq 3$ et $a_1 \geq 4$, donc

$$S \leq \frac{1}{2} + \frac{1}{3} + \frac{1}{4} = \frac{13}{12}, \qquad n \geq 2022 \times \frac{12}{13} > 1866 > 1344.$$

### Cas 2 : a₃ = 1 et a₂ ≥ 4

Alors $a_1 \geq 5$, donc

$$S \leq 1 + \frac{1}{4} + \frac{1}{5} = \frac{29}{20}, \qquad n \geq 2022 \times \frac{20}{29} > 1394 > 1344.$$

### Cas 3 : a₃ = 1 et a₂ = 3

Alors $a_1 \geq 4$.

- Si $a_1 \geq 6$, alors $S \leq 1 + \frac{1}{3} + \frac{1}{6} = \frac{3}{2}$, donc $n \geq 2022 \times \frac{2}{3} = 1348 > 1344$.
- Si $a_1 = 4$, alors $S = \frac{19}{12}$ et $n = \frac{2022 \times 12}{19}$. Comme $2022 \times 12 = 2^3 \times 3^2 \times 337$ n'est pas divisible par le nombre premier $19$, ce n'est pas un entier : impossible.
- Si $a_1 = 5$, alors $S = \frac{23}{15}$ et $n = \frac{2022 \times 15}{23}$, qui n'est pas un entier non plus, car $23$ est premier et ne divise ni $2022$ ni $15$.

### Cas 4 : a₃ = 1 et a₂ = 2

Alors $a_1 \geq 3$ et

$$S = 1 + \frac{1}{2} + \frac{1}{a_1} = \frac{3a_1 + 2}{2a_1}, \qquad \text{donc} \qquad n = \frac{4044\,a_1}{3a_1 + 2} \quad \text{et} \quad d_1 = \frac{n}{a_1} = \frac{4044}{3a_1 + 2}.$$

Comme $d_1$ est un entier, $3a_1 + 2$ est un diviseur de $4044 = 2^2 \times 3 \times 337$ ($337$ est premier). Or $3a_1 + 2$ n'est pas un multiple de $3$, donc c'est un diviseur de $2^2 \times 337$, c'est-à-dire l'un des nombres

$$1, \quad 2, \quad 4, \quad 337, \quad 674, \quad 1348.$$

De plus $3a_1 + 2$ a pour reste $2$ dans la division par $3$. Les restes de ces six nombres sont $1, 2, 1, 1, 2, 1$ (par exemple $337 = 3 \times 112 + 1$). Il ne reste que $2$ et $674$, et comme $3a_1 + 2 \geq 3 \times 3 + 2 = 11$, on a $3a_1 + 2 = 674$, donc $a_1 = 224$, $d_1 = 6$ et

$$n = 6 \times 224 = 1344.$$

### Conclusion

Dans tous les cas, un entier nippon vaut au moins $1344$, et $1344$ est nippon. **Le plus petit entier nippon est $1344$**, avec les diviseurs $6$, $672$ et $1344$.

## Going further

1. Refaites l'exercice en remplaçant $2022$ par $2023 = 7 \times 17^2$. (Réponse : $1156 = 4 \times 17^2$, avec les diviseurs $289$, $578$ et $1156$.)
