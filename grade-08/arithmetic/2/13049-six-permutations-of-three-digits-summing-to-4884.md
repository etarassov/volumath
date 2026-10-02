---
id: "13049"
title: "Six permutations de trois chiffres dont la somme vaut 4884"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [chiffres, numeration, permutations, encadrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, test de rentrée (Coupe Animath d'automne) du 7 octobre 2015"
  reference: "2017-09_coupe_automne_2015.pdf, exercices collège, exercice 2 ; corrigé 2017-09_coupe_automne_2015_corrige.pdf (le corrigé écrit « x = 6 » et « x = 5 » au lieu de z = 6 et z = 5)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015.pdf"
---

## Statement

On choisit trois chiffres $x$, $y$, $z$ tels que $x > y > z > 0$. Avec ces trois chiffres, on écrit les six nombres de trois chiffres qui utilisent chacun d'eux une fois, et on les additionne.

Par exemple, avec $x = 3$, $y = 2$ et $z = 1$, on obtiendrait
$$321 + 312 + 231 + 213 + 132 + 123 = 1332 .$$

On trouve une somme égale à $4884$. Quelles sont les valeurs possibles du nombre de trois chiffres qui s'écrit $x$, $y$, $z$, dans cet ordre ?

## Hints

1. Écris les six nombres à l'aide de $x$, $y$, $z$, par exemple le nombre qui s'écrit $x$, $y$, $z$ vaut $100x + 10y + z$.
2. Combien de fois le chiffre $x$ est-il à la place des centaines ? Des dizaines ? Des unités ? Que vaut alors la somme ?
3. Tu dois trouver $x + y + z$. Les trois chiffres sont différents et au plus égaux à $9$ : quelle peut être la valeur de $x$ ?

## Solution

**La somme des six nombres.** Dans les six nombres, chaque chiffre est deux fois à la place des centaines, deux fois à la place des dizaines et deux fois à la place des unités. La somme vaut donc
$$2 \times 100\,(x + y + z) + 2 \times 10\,(x + y + z) + 2\,(x + y + z) = 222\,(x + y + z) .$$
(Avec l'exemple de l'énoncé, $222 \times 6 = 1332$.)

**La somme des chiffres.** On a $222\,(x + y + z) = 4884$, donc
$$x + y + z = \frac{4884}{222} = 22 .$$

**Le chiffre $x$.** Si l'on avait $x \leqslant 8$, alors $y \leqslant 7$ et $z \leqslant 6$, car les chiffres sont rangés et différents. On aurait $x + y + z \leqslant 8 + 7 + 6 = 21$, ce qui est impossible. Donc $x = 9$ et
$$y + z = 13 .$$

**Les chiffres $y$ et $z$.** Comme $y > z$, on a $2y > y + z = 13$, donc $y \geqslant 7$. Et $y < x = 9$, donc $y = 7$ ou $y = 8$.

- Si $y = 7$, alors $z = 6$, et l'on a bien $9 > 7 > 6$.
- Si $y = 8$, alors $z = 5$, et l'on a bien $9 > 8 > 5$.

**Conclusion.** Le nombre formé par $x$, $y$, $z$ vaut $976$ ou $985$. On peut vérifier : $222 \times 22 = 4884$ dans les deux cas.

## Going further

1. Quelle est la plus grande somme que l'on peut obtenir de cette façon ? La plus petite ?
2. On fait la même chose avec quatre chiffres différents, non nuls, et les $24$ nombres de quatre chiffres qu'ils permettent d'écrire. Par quel nombre faut-il multiplier la somme des chiffres pour obtenir la somme des $24$ nombres ?
