---
id: "0105"
title: "Le plus petit nombre à somme de chiffres imposée"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [chiffres, somme-de-chiffres, divisibilite, minimum, encadrement]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, кружок 7 класса, I полугодие, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 2, задача 3"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

Trouver le plus petit entier naturel qui est :

1. un multiple de $10$ dont la somme des chiffres vaut $10$ ;
2. un multiple de $100$ dont la somme des chiffres vaut $100$ ;
3. un multiple de $5$ dont la somme des chiffres vaut $25$.

Dans chaque cas, il ne suffit pas de donner un nombre qui convient : il faut aussi expliquer pourquoi aucun nombre plus petit ne convient.

## Hints

1. Un multiple de $10$, par quel chiffre se termine-t-il ? Et un multiple de $100$ ? Et un multiple de $5$ ?
2. Pour trouver le plus petit, commence par chercher le nombre de chiffres. Un nombre à deux chiffres qui se termine par $0$, quelle est la plus grande somme de chiffres qu'il puisse avoir ?
3. Souviens-toi qu'un chiffre vaut au plus $9$. Avec $11$ chiffres, quelle est la plus grande somme de chiffres possible ? Peut-elle atteindre $100$ ?
4. Une fois le nombre de chiffres connu, entre deux nombres ayant le même nombre de chiffres, le plus petit est celui dont le chiffre de gauche est le plus petit. Commence donc par rendre ce chiffre de gauche le plus petit possible, puis occupe-toi des suivants.

## Solution

**La méthode, la même pour les trois questions.**

On procède en deux temps :

- d'abord, on trouve **combien de chiffres** le nombre doit avoir au minimum ;
- ensuite, parmi les nombres ayant ce nombre de chiffres, on cherche le plus petit, en rendant le chiffre le plus à gauche aussi petit que possible.

On se sert tout le temps du fait qu'**un chiffre vaut au plus $9$**.

### 1. Multiple de $10$, somme des chiffres $10$

Un multiple de $10$ se termine par le chiffre $0$. Ce dernier chiffre n'apporte rien à la somme.

**Combien de chiffres ?**

- À un chiffre : le seul multiple de $10$ est $0$, dont la somme des chiffres vaut $0$. Cela ne convient pas.
- À deux chiffres : le nombre s'écrit $\overline{a0}$, et sa somme des chiffres vaut $a$, donc au plus $9$. On ne peut pas atteindre $10$.

Il faut donc **au moins trois chiffres**.

**Le plus petit nombre à trois chiffres.**

Le nombre s'écrit $\overline{ab0}$, avec $a + b = 10$. Pour qu'il soit le plus petit possible, on prend $a$ le plus petit possible. Comme $a$ est le chiffre de gauche, $a \neq 0$, donc $a \geqslant 1$.

Avec $a = 1$, il faut $b = 9$ : cela donne $190$.

Vérification : $190 = 19 \times 10$, et $1 + 9 + 0 = 10$.

**Réponse : $190$.**

### 2. Multiple de $100$, somme des chiffres $100$

Un multiple de $100$ se termine par **deux** chiffres $0$, qui n'apportent rien à la somme.

**Combien de chiffres ?**

Appelons $k$ le nombre de chiffres placés devant ces deux zéros. Ces $k$ chiffres doivent avoir pour somme $100$. Comme chaque chiffre vaut au plus $9$ :

$$\text{somme} \leqslant 9k$$

Avec $k = 11$, on aurait au plus $9 \times 11 = 99 < 100$ : c'est trop peu. Il faut donc $k \geqslant 12$, et le nombre a au moins $12 + 2 = 14$ chiffres.

**Le plus petit nombre à quatorze chiffres.**

Il s'écrit avec $12$ chiffres de somme $100$, suivis de $00$. On veut le chiffre de gauche le plus petit possible. Les $11$ chiffres qui le suivent ont une somme d'au plus $9 \times 11 = 99$, donc le chiffre de gauche vaut au moins

$$100 - 99 = 1$$

On prend donc $1$ à gauche. Il reste alors $11$ chiffres de somme $100 - 1 = 99 = 9 \times 11$ : ils doivent tous valoir $9$.

$$\underbrace{1\,\underbrace{99999999999}_{11 \text{ neufs}}}_{12 \text{ chiffres, somme } 100}\,00 \;=\; 19\,999\,999\,999\,900$$

**Réponse : $19\,999\,999\,999\,900$.**

### 3. Multiple de $5$, somme des chiffres $25$

Un multiple de $5$ se termine par $0$ ou par $5$.

**Combien de chiffres ?**

Pour un nombre à $n$ chiffres, la somme des chiffres est la plus grande possible quand tous les chiffres de devant valent $9$ et que le dernier vaut $5$ :

- à un chiffre : au plus $5$ ;
- à deux chiffres : au plus $9 + 5 = 14$ ;
- à trois chiffres : au plus $9 + 9 + 5 = 23$.

Comme $23 < 25$, il faut **au moins quatre chiffres**.

**Le plus petit nombre à quatre chiffres.**

On essaie le plus petit chiffre de gauche possible.

- Chiffre de gauche $1$. Si le nombre finit par $0$, les deux chiffres du milieu doivent avoir pour somme $25 - 1 - 0 = 24$, impossible car $24 > 9 + 9$. S'il finit par $5$, il leur faut la somme $25 - 1 - 5 = 19$, impossible aussi.
- Chiffre de gauche $2$. Si le nombre finit par $0$, il faut la somme $23$ au milieu : impossible. S'il finit par $5$, il faut la somme $25 - 2 - 5 = 18$, et c'est possible : $9 + 9 = 18$. On obtient $2995$.

Comme le chiffre de gauche $1$ ne marche pas, et qu'avec un chiffre de gauche égal à $2$ le seul nombre possible est $2995$, c'est bien le plus petit.

Vérification : $2995 = 599 \times 5$, et $2 + 9 + 9 + 5 = 25$.

**Réponse : $2995$.**

**Conclusion.** Les trois réponses sont $190$, $19\,999\,999\,999\,900$ et $2995$.

## Going further

1. Sans aucune condition de divisibilité, quel est le plus petit entier naturel dont la somme des chiffres vaut $100$ ?
2. Quel est le plus **grand** nombre à quatre chiffres, multiple de $5$, dont la somme des chiffres vaut $25$ ?
3. Quel est le plus petit multiple de $100$ dont la somme des chiffres vaut $99$ ? Cette fois, le chiffre de gauche ne peut pas valoir $1$ : pourquoi ?
