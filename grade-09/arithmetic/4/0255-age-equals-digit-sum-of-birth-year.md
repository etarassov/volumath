---
id: "0255"
title: "Un âge égal à la somme des chiffres de son année de naissance"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [somme-des-chiffres, encadrement, equation, unicite, annee]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, первое полугодие (Е. А. Асташов, Д. А. Удимов)"
  reference: "AU.pdf, листок 1, задача 5"
  url: "https://mmmf.msu.ru/for_schools/AU.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Le 31 décembre 2011, l'âge de monsieur Lambert était exactement égal à la somme des
chiffres de son année de naissance.

a) Quel âge avait monsieur Lambert le 31 décembre 2014 ?

b) Montrer que la réponse est unique, c'est-à-dire qu'une seule année de naissance convient.

## Hints

1. Note $N$ l'année de naissance. Au 31 décembre 2011, l'âge de monsieur Lambert vaut $2011 - N$. Écris l'égalité demandée par l'énoncé.
2. La somme des chiffres d'une année de quatre chiffres ne peut pas être très grande : au plus $1+9+9+9 = 28$. Entre quelles bornes se trouve donc $N$ ?
3. Tu obtiens $1983 \le N \le 2009$. Il ne reste que trois décennies à examiner : les années $198\_$, $199\_$ et $200\_$.
4. Dans chaque décennie, appelle $x$ le chiffre des unités. Exprime la somme des chiffres et l'âge en fonction de $x$, puis résous l'équation. Attention, $x$ doit être un chiffre, donc un entier.

## Solution

**L'idée : encadrer l'année de naissance, puis examiner les décennies une par une.**

Notons $N$ l'année de naissance de monsieur Lambert et $s(N)$ la somme des chiffres de $N$.
Au 31 décembre 2011, son anniversaire de l'année est passé, donc son âge vaut $2011 - N$.
L'énoncé dit :
$$2011 - N = s(N) .$$

**Étape 1. Encadrer $N$.**

La somme des chiffres d'une année de quatre chiffres est au plus $1+9+9+9 = 28$. Donc
$$2011 - N = s(N) \le 28, \qquad\text{d'où}\qquad N \ge 1983 .$$

Par ailleurs, pour toute année entre 1983 et 2011, la somme des chiffres vaut au moins 2
(le minimum est atteint pour 2000, dont la somme des chiffres vaut 2). Donc
$$2011 - N = s(N) \ge 2, \qquad\text{d'où}\qquad N \le 2009 .$$

Conclusion de cette étape :
$$1983 \le N \le 2009 .$$

Il ne reste que trois décennies à examiner.

**Étape 2. Les années $198x$, avec $3 \le x \le 9$.**

La somme des chiffres vaut $1+9+8+x = 18+x$. L'âge au 31 décembre 2011 vaut
$2011 - (1980+x) = 31 - x$. L'équation devient
$$18 + x = 31 - x, \qquad\text{donc}\qquad 2x = 13 .$$
Il n'y a pas de solution entière : aucune année des années 1980 ne convient.

**Étape 3. Les années $199x$, avec $0 \le x \le 9$.**

La somme des chiffres vaut $1+9+9+x = 19+x$. L'âge vaut $2011 - (1990+x) = 21 - x$.
L'équation devient
$$19 + x = 21 - x, \qquad\text{donc}\qquad 2x = 2, \qquad x = 1 .$$
On trouve $N = 1991$.

Vérifions : $s(1991) = 1+9+9+1 = 20$, et l'âge au 31 décembre 2011 vaut $2011-1991 = 20$.
Cela convient.

**Étape 4. Les années $200x$, avec $0 \le x \le 9$.**

La somme des chiffres vaut $2+0+0+x = 2+x$. L'âge vaut $2011 - (2000+x) = 11 - x$.
L'équation devient
$$2 + x = 11 - x, \qquad\text{donc}\qquad 2x = 9 .$$
Pas de solution entière non plus.

**Étape 5. Conclure.**

Les trois décennies ont été examinées et une seule année convient : $N = 1991$. C'est la
réponse à la question b), l'unicité.

Le 31 décembre 2014, monsieur Lambert avait donc
$$2014 - 1991 = 23 \ \text{ans}.$$

**Conclusion.** Monsieur Lambert est né en 1991, c'est la seule possibilité, et il avait
23 ans le 31 décembre 2014.

**Remarque sur la méthode.** On aurait pu deviner 1991 par tâtonnement. Ce qui demande du
travail, c'est de prouver qu'il n'y a pas d'autre réponse, et pour cela il a fallu d'abord
enfermer $N$ entre deux bornes, sinon il y aurait une infinité d'années à tester.

## Going further

1. Explique pourquoi, dans chaque décennie, il y a au plus une année qui convient : quand on
   augmente de 1 le chiffre des unités, que deviennent la somme des chiffres et l'âge ?
2. Reprends tout l'exercice avec le 31 décembre 2026 à la place du 31 décembre 2011.
3. Montre que toute personne née après 1900 connaît exactement une année de sa vie où son âge
   est égal à la somme des chiffres de son année de naissance. En quelle année cela arrive-t-il
   pour quelqu'un né en 2005 ?
