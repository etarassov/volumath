---
id: "8438"
title: "Remplacer chaque nombre par la somme de ses chiffres"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [invariant, somme-des-chiffres, reste, division-par-neuf, denombrement]
adapted_from: null
see_also: ["7218"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Entraînement de fin de parcours », exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Vladimir écrit au tableau tous les entiers de $1$ à $1000$.

Tant qu'il reste au tableau un nombre strictement plus grand que $9$, il en choisit un, **celui qu'il veut**, l'efface, et écrit à la place la somme de ses chiffres.

Il s'arrête lorsque tous les nombres du tableau sont des chiffres, c'est-à-dire compris entre $0$ et $9$.

Combien de fois le nombre $1$ figure-t-il alors au tableau ?

## Hints

1. Commence par te convaincre que Vladimir finit toujours par s'arrêter : chaque remplacement fait-il vraiment diminuer le nombre choisi ?
2. La réponse ne dépend pas des choix de Vladimir. Cela veut dire qu'il existe une quantité attachée à chaque nombre qui ne change **jamais** quand on le remplace par la somme de ses chiffres.
3. Le reste dans la division par $9$ est cette quantité. Pourquoi ? Parce que $10$, $100$, $1000$, ... laissent tous le reste $1$ dans la division par $9$.
4. À la fin, un nombre du tableau est un chiffre. Connaissant son reste modulo $9$, peux-tu retrouver ce chiffre ? Attention au cas du reste $0$.
5. Il ne reste plus qu'à compter les entiers de $1$ à $1000$ dont le reste modulo $9$ vaut $1$.

## Solution

### Étape 1. Le procédé s'arrête

Si un nombre $n$ a au moins deux chiffres, il est strictement plus grand que la somme de ses chiffres. En effet, en écrivant $n = a_k \times 10^k + \cdots + a_1 \times 10 + a_0$ avec $k \geqslant 1$ et $a_k \neq 0$, chaque terme $a_i \times 10^i$ est supérieur ou égal à $a_i$, et le terme de tête vérifie $a_k \times 10^k > a_k$.

Chaque remplacement fait donc strictement diminuer le nombre choisi. Comme les nombres du tableau restent des entiers positifs, le procédé finit par s'arrêter.

### Étape 2. L'invariant : le reste dans la division par 9

Rappelons que $9$, $99$, $999$, ... sont tous des multiples de $9$. Donc $10$, $100$, $1000$, ... laissent tous le reste $1$ dans la division par $9$.

Écrivons $n = a_k \times 10^k + \cdots + a_1 \times 10 + a_0$. En remplaçant chaque puissance de $10$ par $1$, on ne change pas le reste modulo $9$ :

$$n \equiv a_k + \cdots + a_1 + a_0 \pmod 9.$$

> **Un nombre et la somme de ses chiffres laissent le même reste dans la division par $9$.**

Donc, quand Vladimir remplace un nombre par la somme de ses chiffres, **le reste de ce nombre modulo $9$ ne change pas**. C'est vrai quel que soit le nombre qu'il choisit, et donc quels que soient ses choix.

### Étape 3. Que devient un nombre à la fin ?

Partons d'un entier $n$ entre $1$ et $1000$, et suivons-le jusqu'à la fin. Il aboutit à un chiffre $c$, avec $0 \leqslant c \leqslant 9$, et $c$ a le même reste que $n$ modulo $9$.

Au passage, $c$ n'est jamais $0$ : la somme des chiffres d'un entier strictement positif est strictement positive, donc tous les nombres du tableau restent strictement positifs. Donc $1 \leqslant c \leqslant 9$.

Parmi les chiffres de $1$ à $9$, chacun a un reste différent modulo $9$ :

$$1, 2, \ldots, 8 \text{ ont pour restes } 1, 2, \ldots, 8, \qquad \text{et } 9 \text{ a pour reste } 0.$$

Donc le chiffre final $c$ est entièrement déterminé par le reste de $n$ :

$$c = 1 \quad \Longleftrightarrow \quad n \text{ laisse le reste } 1 \text{ dans la division par } 9.$$

### Étape 4. Compter

Il reste à compter les entiers $n$ avec $1 \leqslant n \leqslant 1000$ et $n \equiv 1 \pmod 9$, c'est-à-dire les nombres de la forme $n = 9q + 1$ :

$$1 \leqslant 9q + 1 \leqslant 1000 \quad \Longleftrightarrow \quad 0 \leqslant 9q \leqslant 999 \quad \Longleftrightarrow \quad 0 \leqslant q \leqslant 111.$$

Il y a donc $112$ valeurs possibles de $q$ (de $0$ à $111$), et deux valeurs différentes de $q$ donnent deux nombres différents.

### Conclusion

Le nombre $1$ figure exactement $\boxed{112}$ fois au tableau à la fin, et ceci quels que soient les choix de Vladimir.

## Going further

Le point le plus intéressant de cet exercice n'est pas le nombre $112$, c'est que la réponse **ne dépend pas des choix**. On dit qu'on a trouvé un *invariant* : une quantité que l'opération ne modifie pas. Ici, c'est le reste modulo $9$ de chaque nombre, pris séparément.

C'est l'un des deux grands usages des invariants :

- montrer qu'on ne peut **pas** atteindre une certaine configuration (l'invariant n'y est pas le bon) ;
- montrer que le résultat final est **toujours le même**, comme ici.

Le chiffre auquel aboutit un nombre porte d'ailleurs un nom : c'est sa **racine numérique**. On vient de démontrer qu'elle vaut $9$ si le nombre est un multiple de $9$, et son reste modulo $9$ sinon.

Voir aussi l'exercice n° 7218, qui pose la même machine sur les entiers de $1$ à un million et demande quel chiffre apparaît le plus souvent.
