---
id: "0254"
title: "PGCD de tous les réarrangements de 123456789"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [pgcd, divisibilite, chiffres, somme-des-chiffres, demonstration]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, первое полугодие (Е. А. Асташов, Д. А. Удимов)"
  reference: "AU.pdf, письменная работа, задача 9"
  url: "https://mmmf.msu.ru/for_schools/AU.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

On écrit tous les nombres de neuf chiffres que l'on peut obtenir en changeant l'ordre des
chiffres du nombre $123456789$. Le nombre $123456789$ lui-même fait partie de la liste,
ainsi par exemple que $987654321$ et $192837465$.

Trouver le PGCD de tous les nombres de cette liste.

## Hints

1. Appelle $d$ le PGCD cherché. Pour trouver $d$, il faut deux choses : montrer que tel nombre divise tous les nombres de la liste, puis montrer que $d$ ne peut pas être plus grand.
2. Additionne les chiffres de l'un de ces nombres. Cette somme change-t-elle quand on réarrange les chiffres ? Que dit le critère de divisibilité par 9 ?
3. Pour la deuxième partie : si $d$ divise deux nombres, il divise aussi leur différence. Cherche donc deux nombres de la liste dont la différence soit la plus petite possible.
4. Compare $123456789$ et $123456798$ : ils sont tous les deux dans la liste, et il suffit d'échanger leurs deux derniers chiffres pour passer de l'un à l'autre.

## Solution

**L'idée : encadrer le PGCD par les deux bouts. On montre d'abord que 9 divise tous ces
nombres, puis que le PGCD ne peut pas dépasser 9.**

Notons $d$ le PGCD de tous les nombres de la liste.

**Étape 1. Tous ces nombres sont divisibles par 9, donc 9 divise $d$.**

Quel que soit l'ordre choisi, les chiffres utilisés sont toujours $1, 2, 3, \dots, 9$. La
somme des chiffres vaut donc toujours
$$1+2+3+4+5+6+7+8+9 = 45 .$$

Or $45 = 9 \times 5$ est divisible par 9. D'après le critère de divisibilité par 9, chacun
des nombres de la liste est donc divisible par 9.

Comme 9 est un diviseur commun à tous ces nombres, il divise leur PGCD :
$$9 \ \text{divise}\ d, \qquad \text{donc}\qquad d \ge 9 .$$

**Étape 2. Le PGCD divise 9, donc $d \le 9$.**

Prenons deux nombres bien choisis de la liste :
$$123456789 \qquad\text{et}\qquad 123456798 .$$
Le second s'obtient à partir du premier en échangeant les deux derniers chiffres, donc il
est bien dans la liste. Leur différence vaut
$$123456798 - 123456789 = 9 .$$

Le PGCD $d$ divise chacun de ces deux nombres, donc il divise aussi leur différence, c'est-à-dire 9.
Un diviseur de 9 est au plus égal à 9 :
$$d \le 9 .$$

**Étape 3. Conclure.**

L'étape 1 donne $d \ge 9$ et l'étape 2 donne $d \le 9$. Donc
$$d = 9 .$$

**Conclusion.** Le PGCD de tous les nombres de neuf chiffres obtenus en réarrangeant les
chiffres de $123456789$ vaut $9$.

**Remarque.** L'étape 2 est le vrai ressort du problème : on ne calcule aucun de ces
nombres, on se sert seulement du fait qu'un diviseur commun à deux nombres divise leur
différence. Et l'on a le droit de choisir la paire la plus commode.

## Going further

1. Montre que deux nombres écrits avec exactement les mêmes chiffres laissent toujours le
   même reste dans la division par 9.
2. Même question que l'exercice, mais avec les nombres de sept chiffres obtenus en
   réarrangeant les chiffres de $1234567$. Que devient la réponse, et pourquoi ?
3. Quel est le PGCD de tous les nombres obtenus en réarrangeant les chiffres de $112233$ ?
