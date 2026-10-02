---
id: "12036"
title: "De (a, b, c) à (1, 0, 0) en cinq opérations"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [maths-expertes, bezout, pgcd, nombres premiers, premiers entre eux, algorithme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du 24 mars 2013"
  reference: "2017-10_ofm-2012-2013-test-mars-2.pdf, exercice 7 ; corrigé 2017-10_ofm-2012-2013-test-mars-corrige.pdf (le corrigé choisit n par le théorème chinois ; solution réécrite avec un choix explicite de n)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-mars-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-mars-2.pdf"
---

## Statement

On part d'un triplet $(x, y, z)$ d'entiers relatifs. Une **opération** consiste à ajouter à l'un des trois entiers un multiple de l'un des deux autres. Ce multiple peut être positif, négatif ou nul. Par exemple, en ajoutant à $x$ le multiple $-2z$ de $z$, on passe de $(x, y, z)$ à $(x - 2z, y, z)$.

Soient $a$, $b$, $c$ trois entiers relatifs dont le plus grand diviseur commun vaut $1$. Démontrer que l'on peut passer du triplet $(a, b, c)$ au triplet $(1, 0, 0)$ en au plus cinq opérations.

## Hints

1. Si l'on arrive à un triplet de la forme $(1, s, t)$, combien d'opérations faut-il encore pour atteindre $(1, 0, 0)$ ?
2. Si $b$ et $c$ sont premiers entre eux, le théorème de Bézout permet de passer de $(a, b, c)$ à $(1, b, c)$ en deux opérations. Comment ?
3. En général $b$ et $c$ ne sont pas premiers entre eux. Utilisez une première opération pour remplacer $b$ par $b + na$, avec un entier $n$ bien choisi, de sorte que $b + na$ et $c$ soient premiers entre eux.
4. Pour choisir $n$ (quand $c \neq 0$), prenez le produit des facteurs premiers de $c$ qui ne divisent pas $b$. Regardez séparément un facteur premier $q$ de $c$ qui divise $b$, et un qui ne divise pas $b$.

## Solution

On utilise deux résultats du cours de maths expertes :

- **le théorème de Bézout** : si deux entiers $m$ et $c$ sont premiers entre eux, il existe des entiers $u$ et $w$ tels que $um + wc = 1$ ;
- **le lemme d'Euclide** (cas particulier du théorème de Gauss) : si un nombre premier divise un produit de deux entiers, il divise l'un des deux.

Deux entiers sont premiers entre eux exactement quand aucun nombre premier ne les divise tous les deux.

**Premier cas : $b = c = 0$.** Le plus grand diviseur commun de $a$, $0$, $0$ est $|a|$, donc $a = 1$ ou $a = -1$. Si $a = 1$, il n'y a rien à faire. Si $a = -1$, trois opérations suffisent :

- on ajoute à $y$ le multiple $-x$ de $x$ : on passe de $(-1, 0, 0)$ à $(-1, 1, 0)$ ;
- on ajoute à $x$ le multiple $2y$ de $y$ : on obtient $(1, 1, 0)$ ;
- on ajoute à $y$ le multiple $-x$ de $x$ : on obtient $(1, 0, 0)$.

**Second cas : $b$ ou $c$ est non nul.** Les rôles de $y$ et de $z$ sont interchangeables dans la définition d'une opération. Si $c = 0$, alors $b \neq 0$, et il suffit d'échanger les rôles de $y$ et de $z$ dans tout ce qui suit. On peut donc supposer $c \neq 0$.

*Étape 1 : choisir $n$ pour que $b + na$ et $c$ soient premiers entre eux.* Soit $n$ le produit des nombres premiers qui divisent $c$ mais ne divisent pas $b$, chacun pris une seule fois. S'il n'y en a aucun, on pose $n = 1$. Notons $b' = b + na$, et soit $q$ un nombre premier qui divise $c$.

- Si $q$ divise $b$ : alors $q$ ne divise pas $a$, sinon $q$ diviserait $a$, $b$ et $c$, dont le plus grand diviseur commun est $1$. De plus $q$ ne divise pas $n$, car $n$ est un produit de nombres premiers différents de $q$. D'après le lemme d'Euclide, $q$ ne divise pas le produit $na$. Comme $q$ divise $b$, il ne divise donc pas $b' = b + na$.
- Si $q$ ne divise pas $b$ : alors $q$ est l'un des facteurs de $n$, donc $q$ divise $na$. Comme $q$ ne divise pas $b$, il ne divise pas $b' = b + na$.

Aucun nombre premier ne divise à la fois $c$ et $b'$ : ces deux entiers sont premiers entre eux.

*Étape 2 : les cinq opérations.*

1. On ajoute à $y$ le multiple $na$ de $x$ : on obtient $(a, b', c)$.
2. D'après le théorème de Bézout, il existe des entiers $u$ et $w$ tels que $ub' + wc = 1$. En multipliant par $1 - a$, on obtient
$$(1 - a)\,u\,b' + (1 - a)\,w\,c = 1 - a .$$
On ajoute à $x$ le multiple $(1 - a)\,u\,b'$ de $y$ : on obtient $(a + (1 - a)\,u\,b',\ b',\ c)$.
3. On ajoute à $x$ le multiple $(1 - a)\,w\,c$ de $z$. Le premier terme devient $a + (1 - a) = 1$ : on obtient $(1, b', c)$.
4. On ajoute à $y$ le multiple $-b'$ de $x$ : on obtient $(1, 0, c)$.
5. On ajoute à $z$ le multiple $-c$ de $x$ : on obtient $(1, 0, 0)$.

**Conclusion.** Dans tous les cas, on passe de $(a, b, c)$ à $(1, 0, 0)$ en au plus cinq opérations.

## Going further

1. Appliquer la méthode au triplet $(4, 6, 9)$. Que vaut $n$ ? Écrire les cinq triplets successifs.
2. Montrer qu'en partant de $(a, b, c)$, on ne peut atteindre que des triplets dont le plus grand diviseur commun est le même que celui de $(a, b, c)$. Pourquoi l'hypothèse sur $a$, $b$, $c$ est-elle donc nécessaire ?
