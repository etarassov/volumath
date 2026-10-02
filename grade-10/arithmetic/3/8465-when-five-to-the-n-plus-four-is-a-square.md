---
id: "8465"
title: "Quand 5ⁿ + 4 est un carré"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [equation-diophantienne, difference-de-carres, puissances, nombres-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Équations diophantiennes » (Jean Rax), exercice 9. La solution imprimée mène correctement le raisonnement puis conclut « n = 2 » en écrivant « 5² + 4 = 9 » : c'est faux, 5² + 4 = 29. La bonne réponse est n = 1, et c'est bien ce que donne le raisonnement de la source."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ pour lesquels $5^{\,n} + 4$ est le carré d'un entier.

## Hints

1. Essaie $n = 0, 1, 2, 3$ pour te faire une idée.
2. Pose $5^{\,n} + 4 = a^2$ et fais passer le $4$ de l'autre côté. Que reconnais-tu ?
3. Tu obtiens $(a-2)(a+2) = 5^{\,n}$. Les deux facteurs sont des diviseurs positifs d'une puissance de $5$ : que peut-on en dire ?
4. Deux puissances de $5$ dont la différence vaut $4$ : lesquelles ?

## Solution

### Étape 1. Factoriser

Supposons que $5^{\,n} + 4 = a^2$ pour un certain entier $a \geqslant 0$. Alors

$$5^{\,n} = a^2 - 4 = (a-2)(a+2).$$

Comme $a^2 = 5^{\,n} + 4 \geqslant 5$, on a $a \geqslant 3$, donc les deux facteurs $a - 2$ et $a + 2$ sont strictement positifs.

### Étape 2. Les deux facteurs sont des puissances de 5

Le produit $(a-2)(a+2)$ vaut $5^{\,n}$. Comme $5$ est premier, les seuls diviseurs positifs de $5^{\,n}$ sont

$$1, \quad 5, \quad 5^2, \quad \ldots, \quad 5^{\,n}.$$

Donc il existe des entiers $s$ et $r$ avec

$$a - 2 = 5^{\,s}, \qquad a + 2 = 5^{\,r}, \qquad s + r = n.$$

Comme $a - 2 < a+2$, on a $s < r$.

### Étape 3. Leur différence vaut 4

Soustrayons :

$$5^{\,r} - 5^{\,s} = (a+2) - (a-2) = 4.$$

Mettons $5^{\,s}$ en facteur :

$$5^{\,s}\left(5^{\,r-s} - 1\right) = 4.$$

Le nombre $5^{\,s}$ divise $4$. Or les puissances de $5$ qui divisent $4$ se réduisent à une seule : $5^{0} = 1$. Donc

$$s = 0, \qquad \text{puis} \qquad 5^{\,r} - 1 = 4, \qquad \text{donc} \qquad 5^{\,r} = 5, \qquad r = 1.$$

### Étape 4. Conclure

On obtient $a - 2 = 1$ et $a + 2 = 5$, donc $a = 3$, et

$$n = s + r = 0 + 1 = 1.$$

**Vérification.** $5^{1} + 4 = 9 = 3^2$. C'est bien un carré.

$$\boxed{n = 1 \text{ est la seule solution.}}$$

## Going further

Que se passe-t-il si l'on remplace $4$ par un autre nombre ? Prenons $5^{\,n} + 1 = a^2$, soit $(a-1)(a+1) = 5^{\,n}$. Les deux facteurs sont encore des puissances de $5$, de différence $2$, donc $5^{\,s}\left(5^{\,r-s}-1\right) = 2$, ce qui impose $s = 0$ et $5^{\,r} = 3$ : impossible. L'équation $5^{\,n} + 1 = a^2$ n'a donc **aucune** solution.

Ce qui rend la méthode efficace ici, c'est que $5$ est premier : cela force les deux facteurs à être eux-mêmes des puissances de $5$, ce qui les rend très rigides. Si le membre de droite avait été $6^{\,n}$, le raisonnement se serait effondré, car $6^{\,n}$ a beaucoup de diviseurs, et il aurait fallu une autre idée.

Remarquons aussi que l'exercice, dans le polycopié d'origine, est corrigé avec la réponse « $n = 2$ ». C'est une coquille : le raisonnement mené dans la source aboutit bien à $5^{\,n} = 5$, et $5^2 + 4 = 29$ n'est pas un carré. Cela rappelle qu'un corrigé imprimé reste un texte écrit par quelqu'un qui peut se tromper : on vérifie toujours la réponse finale à la main.
