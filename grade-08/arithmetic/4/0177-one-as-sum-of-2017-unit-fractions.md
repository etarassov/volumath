---
id: "0177"
title: "L'unité en 2017 fractions différentes"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [fractions, construction, demonstration, denominateur]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 7 класс, II полугодие, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 19, задача 7"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

On appelle ici **fraction simple** une fraction dont le numérateur est $1$ et dont le dénominateur est un entier naturel non nul : par exemple $\dfrac{1}{2}$, $\dfrac{1}{7}$, $\dfrac{1}{42}$.

Montrer qu'on peut écrire le nombre $1$ comme une somme de $2017$ fractions simples **toutes différentes les unes des autres**.

## Hints

1. Commence petit. Peux-tu écrire $1$ comme une somme de deux fractions simples, puis de trois ?
2. $1 = \dfrac{1}{2} + \dfrac{1}{2}$ ne convient pas : les deux fractions sont égales. Essaie de remplacer l'une des deux par une somme de deux autres fractions simples.
3. Vérifie l'égalité $\dfrac{1}{n} = \dfrac{1}{n+1} + \dfrac{1}{n(n+1)}$ en réduisant le membre de droite au même dénominateur. Elle permet de remplacer une fraction simple par deux.
4. Applique cette égalité à la **plus petite** fraction de ta somme, celle qui a le plus grand dénominateur. Pourquoi les dénominateurs restent-ils alors tous différents ?
5. Chaque étape ajoute une fraction. Combien d'étapes faut-il pour aller de $3$ fractions à $2017$ ?

## Solution

**L'idée :** on ne va pas trouver les $2017$ fractions d'un coup. On part d'une somme courte, et on se donne un procédé qui **allonge la somme d'une fraction à chaque étape** sans jamais faire réapparaître un dénominateur déjà utilisé.

**Étape 1. L'égalité qui coupe une fraction en deux.**

Pour tout entier $n \geqslant 1$ :

$$\frac{1}{n+1} + \frac{1}{n(n+1)} = \frac{n}{n(n+1)} + \frac{1}{n(n+1)} = \frac{n+1}{n(n+1)} = \frac{1}{n}$$

Autrement dit :

$$\boxed{\ \frac{1}{n} = \frac{1}{n+1} + \frac{1}{n(n+1)}\ }$$

Cette égalité remplace une fraction simple par **deux** fractions simples.

**Étape 2. Un point de départ avec trois fractions différentes.**

On part de $1 = \dfrac{1}{2} + \dfrac{1}{2}$, qui ne convient pas car les deux fractions sont égales. Coupons la seconde en deux avec l'égalité de l'étape 1, pour $n = 2$ :

$$\frac{1}{2} = \frac{1}{3} + \frac{1}{6}$$

d'où

$$1 = \frac{1}{2} + \frac{1}{3} + \frac{1}{6}$$

Trois fractions simples, toutes différentes. (Vérification : $\frac{3}{6} + \frac{2}{6} + \frac{1}{6} = \frac{6}{6} = 1$.)

**Étape 3. La règle du jeu.**

À chaque étape, on repère dans la somme la fraction **la plus petite**, c'est-à-dire celle dont le dénominateur $N$ est le plus grand, et on la remplace par

$$\frac{1}{N} = \frac{1}{N+1} + \frac{1}{N(N+1)}$$

Comme on remplace une fraction par deux, la somme compte **une fraction de plus** qu'avant, et sa valeur n'a pas changé : elle vaut toujours $1$.

Les premières étapes donnent :

$$1 = \frac{1}{2} + \frac{1}{3} + \frac{1}{6}$$
$$1 = \frac{1}{2} + \frac{1}{3} + \frac{1}{7} + \frac{1}{42}$$
$$1 = \frac{1}{2} + \frac{1}{3} + \frac{1}{7} + \frac{1}{43} + \frac{1}{1806}$$

**Étape 4. Pourquoi les fractions restent toutes différentes.**

C'est le point délicat, et c'est pour ça qu'on coupe toujours la plus petite fraction.

Le dénominateur qu'on remplace est $N$, le plus grand de tous. Les deux nouveaux dénominateurs sont $N+1$ et $N(N+1)$. Or, comme $N \geqslant 2$ :

- $N + 1 > N$, donc $N+1$ est plus grand que **tous** les dénominateurs déjà présents ;
- $N(N+1) \geqslant 2(N+1) > N+1$, donc $N(N+1)$ est encore plus grand, et il est différent de $N+1$.

Les deux nouveaux dénominateurs sont donc nouveaux, et différents l'un de l'autre. Toutes les fractions de la somme restent différentes.

**Étape 5. On compte les étapes.**

On démarre avec $3$ fractions et chaque étape en ajoute une. Après $2014$ étapes, la somme compte

$$3 + 2014 = 2017$$

fractions simples, toutes différentes, et elle vaut toujours $1$.

**Conclusion.** Oui, on peut écrire $1$ comme somme de $2017$ fractions simples toutes différentes. Le procédé fonctionnerait aussi bien pour $10$, $100$ ou un million de fractions.

## Going further

1. Écrire $1$ comme somme de $5$ fractions simples différentes, en détaillant le calcul.
2. Peut-on écrire $1$ comme somme de **deux** fractions simples différentes ? Justifier.
3. Le procédé ci-dessus fabrique une somme de $n$ fractions différentes pour tout entier $n \geqslant 3$. Pour quelles valeurs de $n$ le problème est-il donc possible ?
