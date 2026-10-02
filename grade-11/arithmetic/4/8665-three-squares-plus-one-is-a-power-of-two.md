---
id: "8665"
title: "Trois carrés plus 1 font une puissance de 2"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [equation-diophantienne, congruences, modulo-huit, carres, etude-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Équations diophantiennes et factorisations » (Théo & Gaspard D.), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver tous les quadruplets $(x, y, z, n)$ d'entiers naturels tels que

$$x^2 + y^2 + z^2 + 1 = 2^n .$$

## Hints

1. Comme souvent avec une puissance de $2$, l'idée est de montrer d'abord que l'exposant $n$ ne peut pas être grand.
2. Dès que $n \geqslant 3$, le nombre $2^n$ est un multiple de $8$. Regarde donc l'équation modulo $8$.
3. Quels sont les restes possibles d'un carré modulo $8$ ? Il n'y en a que trois.
4. Fais la liste de toutes les sommes de trois de ces restes. Le reste $7$ y figure-t-il ?
5. Une fois $n \leqslant 2$ établi, il ne reste que trois équations à résoudre à la main. Pense à donner toutes les permutations.

## Solution

### Étape 1 : montrer que $n \leqslant 2$

**Les carrés modulo 8.** Le reste de $x^2$ modulo $8$ ne dépend que du reste de $x$ :

| $x \bmod 8$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|---|---|---|---|
| $x^2 \bmod 8$ | $0$ | $1$ | $4$ | $1$ | $0$ | $1$ | $4$ | $1$ |

Un carré vaut donc toujours $0$, $1$ ou $4$ modulo $8$.

**Les sommes de trois carrés modulo 8.** Additionnons trois valeurs prises dans $\{0, 1, 4\}$, répétitions autorisées :

| choix | somme | modulo $8$ |
|---|---|---|
| $0+0+0$ | $0$ | $0$ |
| $0+0+1$ | $1$ | $1$ |
| $0+0+4$ | $4$ | $4$ |
| $0+1+1$ | $2$ | $2$ |
| $0+1+4$ | $5$ | $5$ |
| $0+4+4$ | $8$ | $0$ |
| $1+1+1$ | $3$ | $3$ |
| $1+1+4$ | $6$ | $6$ |
| $1+4+4$ | $9$ | $1$ |
| $4+4+4$ | $12$ | $4$ |

On obtient $0, 1, 2, 3, 4, 5, 6$ : **jamais $7$**.

**La conclusion de l'étape.** Si $n \geqslant 3$, alors $8$ divise $2^n$, donc

$$x^2 + y^2 + z^2 \equiv 2^n - 1 \equiv -1 \equiv 7 \pmod 8 ,$$

ce qui est impossible d'après le tableau. Donc $n \leqslant 2$.

### Étape 2 : les trois cas restants

**Cas $n = 0$.** L'équation devient $x^2+y^2+z^2 = 1 - 1 = 0$. Une somme de carrés est nulle seulement si chaque terme l'est, donc $x = y = z = 0$.

$$\text{Solution : } (0, 0, 0, 0).$$

**Cas $n = 1$.** L'équation devient $x^2+y^2+z^2 = 2 - 1 = 1$. L'un des trois carrés vaut $1$ et les deux autres $0$.

$$\text{Solutions : } (1, 0, 0, 1), \ (0, 1, 0, 1), \ (0, 0, 1, 1).$$

**Cas $n = 2$.** L'équation devient $x^2+y^2+z^2 = 4 - 1 = 3$. Chacun des trois carrés est au plus $3$, donc chacun vaut $0$ ou $1$, donc $x, y, z \in \{0, 1\}$. Pour que la somme fasse $3$, il faut que les trois valent $1$.

$$\text{Solution : } (1, 1, 1, 2).$$

### Conclusion

Il y a exactement cinq quadruplets solutions :

$$\boxed{(0,0,0,0), \quad (1,0,0,1), \quad (0,1,0,1), \quad (0,0,1,1), \quad (1,1,1,2).}$$

On vérifie chacun : $0+0+0+1 = 1 = 2^0$ ; $1+0+0+1 = 2 = 2^1$ ; $1+1+1+1 = 4 = 2^2$. 

## Going further

L'exercice illustre la structure d'une résolution complète d'équation diophantienne, en **deux temps** :

1. une congruence bien choisie **borne** une des inconnues ;
2. il ne reste alors qu'un nombre fini de cas, qu'on traite à la main, sans oublier de **vérifier** les solutions trouvées.

Le choix du modulo $8$ n'est pas un hasard : c'est le plus petit module pour lequel les carrés ne prennent que trois valeurs, ce qui laisse très peu de sommes possibles. C'est aussi le module qui montre que $8k + 7$ n'est jamais une somme de trois carrés.

Essaie maintenant, exactement de la même façon : trouver tous les triplets $(x, y, n)$ d'entiers naturels tels que $x^2 + y^2 + 41 = 2^n$. *(Réponse : aucun. Le module $4$ suffit.)*
