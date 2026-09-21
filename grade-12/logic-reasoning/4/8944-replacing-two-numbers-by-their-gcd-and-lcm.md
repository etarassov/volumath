---
id: "8944"
title: "Remplacer deux nombres par leur PGCD et leur PPCM"
grade: 12
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [pgcd, ppcm, monovariant, invariant, terminaison]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe C"
  reference: "Poly-Valbonne-2026.pdf, chapitre V « Groupe C », « Combinatoire : Invariants » (Eva et Gaëtan), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Eva écrit au tableau un certain nombre d'entiers strictement positifs. Rémi arrive et s'amuse à répéter l'opération suivante autant de fois qu'il le souhaite :

> choisir deux des nombres écrits au tableau, les effacer, et écrire à la place leur $\mathrm{PGCD}$ et leur $\mathrm{PPCM}$.

Montrer qu'au bout d'un moment, quoi que fasse Rémi, les nombres écrits au tableau ne changent plus jamais.

*Le nombre de nombres au tableau ne change pas : on en efface deux et on en écrit deux.*

## Hints

1. Quand il faut montrer qu'un processus finit par s'arrêter, on cherche une quantité qui évolue toujours dans le même sens et qui ne peut pas s'emballer indéfiniment.
2. Essayez la **somme** de tous les nombres du tableau. Comparez $\mathrm{PGCD}(a,b) + \mathrm{PPCM}(a,b)$ avec $a + b$ sur quelques exemples.
3. Pour démontrer votre inégalité, posez $d = \mathrm{PGCD}(a,b)$ et écrivez $a = d a'$, $b = d b'$ avec $a'$ et $b'$ premiers entre eux. Que vaut alors le $\mathrm{PPCM}$ ?
4. Vous devriez arriver à une différence qui se factorise en $d(a'-1)(b'-1)$. Quand est-elle nulle ?
5. Il reste à montrer que la somme ne peut pas grandir indéfiniment. Cherchez une quantité qui, elle, ne change **jamais**, et qui majore chaque nombre du tableau.

## Solution

Notons $n$ le nombre d'entiers écrits au tableau ; il ne change jamais, puisque chaque opération en efface deux et en écrit deux.

### Étape 1 : le produit ne change jamais

Pour tous entiers strictement positifs $a$ et $b$,

$$\mathrm{PGCD}(a,b) \times \mathrm{PPCM}(a,b) = a \times b.$$

Une opération remplace $a$ et $b$ par deux nombres de même produit, et laisse les autres nombres intacts. Donc le **produit $P$ de tous les nombres du tableau ne change jamais**.

En particulier, comme tous les nombres sont des entiers strictement positifs de produit $P$, chacun d'eux est inférieur ou égal à $P$ à tout instant. La somme des nombres du tableau reste donc toujours inférieure ou égale à $nP$.

### Étape 2 : la somme ne diminue jamais

Montrons que, pour tous entiers strictement positifs $a$ et $b$,

$$\mathrm{PGCD}(a,b) + \mathrm{PPCM}(a,b) \geqslant a + b.$$

Posons $d = \mathrm{PGCD}(a,b)$ et écrivons $a = d a'$, $b = d b'$ avec $a'$ et $b'$ entiers strictement positifs premiers entre eux. Alors $\mathrm{PPCM}(a,b) = d a' b'$. La différence vaut

$$\left(d + d a' b'\right) - \left(d a' + d b'\right) = d\left(1 + a'b' - a' - b'\right) = d\,(a'-1)(b'-1).$$

Comme $a' \geqslant 1$, $b' \geqslant 1$ et $d \geqslant 1$, ce produit est positif ou nul. L'inégalité est donc démontrée, et de plus :

$$\text{il y a égalité si et seulement si } a' = 1 \text{ ou } b' = 1,$$

c'est-à-dire si et seulement si $a$ divise $b$ ou $b$ divise $a$.

La somme $S$ des nombres du tableau ne peut donc jamais diminuer.

### Étape 3 : conclusion

La somme $S$ est un entier strictement positif, elle ne diminue jamais, et elle reste toujours inférieure ou égale à $nP$, qui est un nombre fixe. Une suite d'entiers croissante et majorée ne peut pas augmenter indéfiniment : elle augmente au plus $nP$ fois. À partir d'un certain moment, $S$ garde donc toujours la même valeur.

Regardons ce qui se passe après ce moment-là. Rémi choisit deux nombres $a$ et $b$. L'opération ne change pas $S$, donc on est dans le cas d'égalité de l'étape 2 : $a$ divise $b$, ou $b$ divise $a$. Supposons par exemple que $a$ divise $b$. Alors

$$\mathrm{PGCD}(a,b) = a \qquad \text{et} \qquad \mathrm{PPCM}(a,b) = b,$$

donc Rémi efface $a$ et $b$ pour réécrire… $a$ et $b$. Le tableau est inchangé.

$$\boxed{\text{À partir d'un certain moment, aucune opération ne modifie plus le tableau.}}$$

*Le point de méthode.* Deux quantités ont servi, et il fallait les deux. Le produit est un **invariant** : il ne bouge jamais, et c'est lui qui empêche la somme de partir à l'infini. La somme est un **monovariant** : elle va toujours dans le même sens, et c'est elle qui force l'arrêt. Un invariant seul n'aurait pas prouvé que ça s'arrête ; un monovariant seul n'aurait pas prouvé qu'il est borné.

## Going further

1. Décrivez la configuration finale. Montrez que lorsque plus rien ne bouge, les nombres du tableau peuvent être rangés de sorte que chacun divise le suivant.
2. L'égalité $\mathrm{PGCD}(a,b) + \mathrm{PPCM}(a,b) = a + b$ n'a lieu que si l'un des deux nombres divise l'autre. Retrouvez tous les couples $(a,b)$ d'entiers strictement positifs pour lesquels cette égalité a lieu.
3. Le nombre d'opérations est-il borné ? Rémi peut-il jouer indéfiniment ? (Rien ne l'empêche de répéter une opération qui ne change rien.)
