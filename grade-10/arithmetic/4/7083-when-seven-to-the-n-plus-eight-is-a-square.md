---
id: "7083"
title: "Quand 7ⁿ + 8 est un carré parfait"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [carre parfait, puissances, reste, difference de deux carres]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des avancés"
  reference: "stage_junior_2011.pdf, « Arithmétique », TD du groupe des avancés, exercice 4, question b"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ pour lesquels $7^n + 8$ est le carré d'un entier.

## Hints

1. Commence par essayer $n = 0, 1, 2, 3, 4$. Tu devrais tomber sur un cas qui marche.
2. Un carré ne peut pas donner n'importe quel reste dans la division par $4$. Écris un entier sous la forme $2t$ puis sous la forme $2t+1$ et calcule son carré : quels restes obtiens-tu ?
3. Cherche maintenant le reste de $7^n$ dans la division par $4$. Calcule-le pour $n = 0, 1, 2, 3$ : que remarques-tu ?
4. Le nombre $8$ est un multiple de $4$, donc il ne change pas le reste. Compare le reste de $7^n + 8$ et les restes possibles d'un carré : une des deux parités de $n$ est éliminée.
5. Il reste $n$ pair, disons $n = 2m$. Alors $7^n$ est lui-même un carré. Fais apparaître une différence de deux carrés et factorise-la.
6. Une fois que tu as $(\text{quelque chose}) \times (\text{quelque chose}) = 8$, les deux facteurs sont petits. Combien peut valoir le plus grand des deux ?

## Solution

**Un cas qui marche.** Pour $n = 0$ on a $7^0 + 8 = 1 + 8 = 9 = 3^2$. Voilà une solution. Montrons que c'est la seule.

Supposons donc que $7^n + 8 = x^2$ pour un certain entier $x \geq 0$.

**Étape 1 : $n$ ne peut pas être impair.**

D'abord, les restes possibles d'un carré dans la division par $4$. Si $x = 2t$, alors $x^2 = 4t^2$, de reste $0$. Si $x = 2t+1$, alors

$$x^2 = 4t^2 + 4t + 1 = 4\left(t^2 + t\right) + 1,$$

de reste $1$. **Un carré a donc pour reste $0$ ou $1$ dans la division par $4$, jamais $2$ ni $3$.**

Ensuite, le reste de $7^n$. Comme $8 = 4 \times 2$, ajouter $8$ ne change pas le reste par $4$, donc $7^n + 8$ et $7^n$ ont le même reste. Calculons :

$$7^0 = 1, \qquad 7^1 = 7 = 4 + 3, \qquad 7^2 = 49 = 4 \times 12 + 1,$$

donc les restes sont $1$, $3$, $1$. Et comme $7^{n+2} = 49 \times 7^n$ avec $49$ de reste $1$, le reste se répète de deux en deux. Le reste de $7^n$ par $4$ vaut donc

$$1 \ \text{si } n \text{ est pair}, \qquad 3 \ \text{si } n \text{ est impair}.$$

Si $n$ était impair, $7^n + 8$ aurait pour reste $3$, ce qu'aucun carré ne fait. Donc $n$ est pair.

**Étape 2 : une différence de deux carrés.**

Écrivons $n = 2m$ avec $m$ entier naturel. Alors $7^n = \left(7^m\right)^2$, et l'équation $7^n + 8 = x^2$ devient

$$x^2 - \left(7^m\right)^2 = 8, \qquad \text{c'est-à-dire} \qquad \left(x - 7^m\right)\left(x + 7^m\right) = 8.$$

Le facteur $x + 7^m$ est strictement positif, et leur produit vaut $8 > 0$, donc $x - 7^m$ est positif lui aussi. Les deux facteurs sont donc des entiers strictement positifs de produit $8$, ce qui force

$$x + 7^m \leq 8, \qquad \text{donc} \qquad 7^m \leq 7, \qquad \text{donc} \qquad m = 0 \ \text{ou} \ m = 1.$$

**Étape 3 : les deux derniers cas.**

- $m = 1$. Il faudrait $\left(x - 7\right)\left(x + 7\right) = 8$ avec $x + 7 \leq 8$, donc $x \leq 1$. Mais alors $x - 7 \leq -6$ est négatif, ce qui contredit le fait que les deux facteurs sont positifs. Impossible.
- $m = 0$. Il faut $\left(x - 1\right)\left(x + 1\right) = 8$, soit $x^2 = 9$, donc $x = 3$. Et en effet $7^0 + 8 = 9 = 3^2$.

**Conclusion.** Le seul entier naturel $n$ tel que $7^n + 8$ soit un carré parfait est

$$\boxed{n = 0}, \qquad \text{avec} \quad 7^0 + 8 = 9 = 3^2.$$

## Going further

Les deux outils employés ici reviennent très souvent dans les problèmes de ce type, et méritent d'être retenus séparément.

Le premier est le **filtre des restes**. Dès qu'une équation contient un carré, regarder les restes par $4$ (ou par $3$, ou par $8$) élimine souvent la moitié des cas d'un coup, sans aucun calcul.

Le second est le **piège du produit fixe**. Une fois qu'on a écrit $A \times B = 8$ avec $A$ et $B$ entiers positifs, il ne reste qu'un nombre fini de possibilités, et c'est fini. C'est pour cela qu'on cherche toujours à ramener une équation à une factorisation.

Pour t'entraîner, reprends exactement la même méthode sur : pour quels entiers naturels $n$ le nombre $3^n + 4$ est-il un carré parfait ? Le filtre par $4$ montre encore que $n$ est pair, puis la factorisation donne $\left(x - 3^m\right)\left(x + 3^m\right) = 4$, donc $3^m \leq 3$. Cette fois aucun des deux cas restants ne fournit de carré, et la réponse est qu'il n'y a **aucun** $n$ qui convienne.
