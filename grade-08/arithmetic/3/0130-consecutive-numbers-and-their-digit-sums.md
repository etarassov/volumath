---
id: "0130"
title: "Deux nombres qui se suivent et leurs chiffres"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [somme-des-chiffres, divisibilite, entiers, demonstration]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 13, задача 1"
  url: "https://mmmf.msu.ru/for_schools/Ast2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

On s'intéresse à la somme des chiffres d'un nombre entier. Par exemple, la somme des chiffres de $253$ vaut $2 + 5 + 3 = 10$.

1. Existe-t-il deux entiers naturels qui se suivent dont les sommes des chiffres sont toutes les deux divisibles par $4$ ?
2. Existe-t-il deux entiers naturels qui se suivent qui ont **la même** somme des chiffres ?

Dans chaque cas, donner un exemple ou montrer que c'est impossible.

## Hints

1. Question 1 : commence par essayer deux nombres qui se suivent sans retenue, comme $52$ et $53$. Comment passe-t-on d'une somme des chiffres à l'autre ? Deux nombres qui se suivent peuvent-ils être tous les deux divisibles par $4$ ?
2. Question 1 : il faut donc une retenue. Essaie des nombres qui se terminent par $9$, comme $29$ et $30$, puis $39$ et $40$.
3. Question 2 : essaie beaucoup d'exemples, tu vas deviner la réponse. Pour la démontrer, souviens-toi du critère de divisibilité par $3$ : il parle justement de la somme des chiffres.
4. Question 2 : montre d'abord que, pour n'importe quel entier, la différence entre le nombre et la somme de ses chiffres est un multiple de $3$. Écris pour cela un nombre de trois chiffres sous la forme $100a + 10b + c$.

## Solution

### Question 1 : oui, par exemple $39$ et $40$.

En effet $3 + 9 = 12$ et $4 + 0 = 4$, et ces deux sommes sont divisibles par $4$.

**Comment le trouver sans chercher au hasard.**

Regardons d'abord ce qui se passe quand on ajoute $1$ à un nombre qui ne se termine pas par $9$, par exemple $52 \to 53$ : le dernier chiffre augmente de $1$, donc la somme des chiffres augmente de $1$. Les deux sommes se suivent, et deux nombres qui se suivent ne peuvent pas être tous les deux divisibles par $4$. Il faut donc une retenue.

Prenons un nombre qui se termine par un seul $9$. Appelons $a$ la somme des chiffres qui précèdent ce $9$ :

- le nombre a pour somme des chiffres $a + 9$ ;
- le nombre suivant se termine par $0$, et le chiffre d'avant a augmenté de $1$ : sa somme des chiffres vaut $a + 1$.

La différence entre les deux sommes est $(a+9) - (a+1) = 8$, qui est déjà un multiple de $4$. Donc si l'une des deux sommes est divisible par $4$, l'autre l'est aussi ! Il suffit alors de prendre $a + 1 = 4$, c'est-à-dire $a = 3$ : cela donne les nombres $39$ et $40$.

### Question 2 : non, c'est impossible.

**L'idée : utiliser le critère de divisibilité par $3$.**

**Étape 1. Un nombre et la somme de ses chiffres diffèrent d'un multiple de $3$.**

Prenons un nombre de trois chiffres, $\overline{abc} = 100a + 10b + c$. La somme de ses chiffres vaut $a + b + c$. Calculons la différence :

$$(100a + 10b + c) - (a + b + c) = 99a + 9b = 3 \times (33a + 3b).$$

C'est bien un multiple de $3$.

Le calcul est le même avec un nombre de quatre chiffres, de cinq chiffres, etc. : on tombe sur $999a + 99b + 9c$, et $9$, $99$, $999$, … sont tous des multiples de $3$.

Retenons donc : **pour tout entier $n$, le nombre $n - S(n)$ est un multiple de $3$**, où $S(n)$ désigne la somme des chiffres de $n$. (C'est la raison profonde du critère de divisibilité par $3$.)

**Étape 2. Le raisonnement par l'absurde.**

Supposons que deux entiers qui se suivent, $n$ et $n+1$, aient la même somme des chiffres. Appelons $S$ cette somme commune.

D'après l'étape 1 :

$$n - S \text{ est un multiple de } 3
\qquad \text{et} \qquad
(n+1) - S \text{ est un multiple de } 3.$$

Or la différence de deux multiples de $3$ est encore un multiple de $3$. Calculons cette différence :

$$\big((n+1) - S\big) - \big(n - S\big) = 1.$$

Il faudrait donc que $1$ soit un multiple de $3$, ce qui est faux.

**Conclusion.**

Notre supposition est impossible : **deux entiers qui se suivent n'ont jamais la même somme des chiffres.**

## Going further

1. Existe-t-il deux entiers qui se suivent dont les sommes des chiffres sont toutes les deux divisibles par $3$ ? (La réponse se démontre avec l'outil de la question 2.)
2. Et divisibles par $5$ ? Cherche du côté des nombres qui se terminent par plusieurs $9$.
3. Quand on passe de $n$ à $n+1$, de combien la somme des chiffres peut-elle diminuer ? Quelles sont les valeurs possibles ?
