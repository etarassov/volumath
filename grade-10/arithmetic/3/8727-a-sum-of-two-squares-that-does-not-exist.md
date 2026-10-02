---
id: "8727"
title: "Une somme de deux carrés qui n'existe pas"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [carres, congruences, modulo-4, impossibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « TD de modulos » (Théo et Thomas), exercices 9 et 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Existe-t-il deux entiers $a$ et $b$ tels que

$$a^2 + b^2 = 10^{100} + 3 \;\;?$$

## Hints

1. Le nombre $10^{100}+3$ est bien trop grand pour qu'on cherche $a$ et $b$ à la main. Il faut donc trouver un obstacle, c'est-à-dire une propriété qu'aurait $a^2+b^2$ et que $10^{100}+3$ n'a pas.
2. Le bon outil est le **reste dans la division par 4**. Calcule le reste de $n^2$ modulo $4$ selon que $n$ est pair ou impair.
3. Tu trouveras que le carré d'un entier laisse toujours le reste $0$ ou $1$ modulo $4$. Quels restes une somme de deux carrés peut-elle donc laisser ?
4. Quel est le reste de $10^{100}+3$ modulo $4$ ? Rappelle-toi que $100$ est divisible par $4$.

## Solution

**Réponse : non, de tels entiers n'existent pas.**

### Les carrés modulo 4

Regardons le reste d'un carré dans la division par $4$, en séparant selon la parité.

*Si $n$ est pair*, $n = 2k$, alors $n^2 = 4k^2$ : le reste est $0$.

*Si $n$ est impair*, $n = 2k+1$, alors

$$n^2 = 4k^2 + 4k + 1 = 4\left(k^2+k\right)+1 : \quad \text{le reste est } 1 .$$

Donc :

> Le carré d'un entier laisse toujours le reste $0$ ou $1$ dans la division par $4$.

### Les sommes de deux carrés modulo 4

Si $a^2$ laisse le reste $0$ ou $1$, et $b^2$ aussi, alors $a^2+b^2$ laisse l'un des restes

$$0+0 = 0, \qquad 0+1 = 1, \qquad 1+0 = 1, \qquad 1+1 = 2 .$$

Donc :

> Une somme de deux carrés laisse toujours le reste $0$, $1$ ou $2$ dans la division par $4$. **Jamais le reste 3.**

### Le reste de $10^{100}+3$

Le nombre $10^{100}$ se termine par au moins deux zéros, donc il est divisible par $100$, donc par $4$ (car $100 = 4 \times 25$). Son reste modulo $4$ vaut $0$.

Par conséquent, $10^{100}+3$ laisse le reste $3$ dans la division par $4$.

### Conclusion

Si l'on avait $a^2+b^2 = 10^{100}+3$, la somme de gauche laisserait le reste $3$ modulo $4$, ce qui est impossible.

$$\boxed{\text{Il n'existe pas d'entiers } a, b \text{ tels que } a^2+b^2 = 10^{100}+3 .}$$

*Ce qu'il faut retenir.* Pour montrer qu'une équation n'a pas de solution entière, on cherche un nombre $m$ bien choisi et on regarde l'équation « modulo $m$ », c'est-à-dire en ne gardant que les restes dans la division par $m$. Les modules les plus utiles sont $3$, $4$, $8$, $9$ et $5$. Pour une équation avec des carrés, $4$ et $8$ sont presque toujours les premiers à essayer.

## Going further

1. **Même méthode, autre module.** Montre qu'il n'existe pas d'entiers $a$ et $b$ tels que
   $$3a^2 = b^2 + 1 .$$
   *Indication : travaille modulo $3$. Quels sont les restes possibles d'un carré modulo $3$ ?*

2. Détermine tous les restes possibles d'un carré modulo $8$. Déduis-en qu'aucun entier de la forme $8k+7$ n'est la somme de **trois** carrés.

3. Pour quelles valeurs du chiffre $c$ le nombre $10^{100} + c$ peut-il être une somme de deux carrés ? Le critère modulo $4$ n'élimine pas tout : il donne une condition nécessaire, pas suffisante. Vérifie par exemple que $10^{100}+1$ est bien une somme de deux carrés en l'exhibant.
