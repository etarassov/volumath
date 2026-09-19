---
id: "0306"
title: "Dix entiers consécutifs"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 40
tags: [pgcd, nombres-premiers-entre-eux, entiers-consecutifs, denombrement, demonstration]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов"
  reference: "AU.pdf, листок 9 «НОД и НОК», задача 6 (с. 57)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Montrer que parmi dix entiers naturels consécutifs, il y en a toujours un qui est premier avec les neuf autres.

(Deux entiers sont dits *premiers entre eux* quand leur PGCD vaut $1$.)

## Hints

1. Essayer sur un exemple, par exemple les nombres de $30$ à $39$, puis de $114$ à $123$. Quel nombre convient à chaque fois ? Qu'ont-ils en commun ?
2. Si un nombre $d$ divise deux des dix nombres, il divise aussi leur différence. Que peut-on en conclure sur $d$ ?
3. Il suffit donc de trouver, parmi les dix, un nombre qui n'est divisible ni par $2$, ni par $3$, ni par $5$, ni par $7$. Pourquoi un tel nombre convient-il ?
4. Compter combien de nombres, parmi les dix, sont à éliminer : les pairs, puis les impairs divisibles par $3$, puis par $5$, puis par $7$. Si le total est inférieur à $10$, c'est gagné.
5. Parmi dix entiers consécutifs, les multiples impairs de $3$ sont espacés de $6$. Combien peut-il y en avoir au maximum ?

## Solution

Appelons $n, n+1, n+2, \dots, n+9$ les dix entiers consécutifs.

**Étape 1 : un diviseur commun à deux d'entre eux est petit.**

Soient $a$ et $b$ deux de ces dix nombres, avec $a \neq b$, et soit $d > 1$ un diviseur commun de $a$ et $b$. Alors $d$ divise la différence $a - b$. Or les dix nombres sont consécutifs, donc
$$1 \leqslant |a - b| \leqslant 9 .$$
Comme $d$ divise un nombre non nul de valeur absolue au plus $9$, on a $d \leqslant 9$.

En particulier, **si deux de nos dix nombres ne sont pas premiers entre eux, ils ont un facteur premier commun, et ce facteur premier est au plus $9$** : c'est donc $2$, $3$, $5$ ou $7$.

**Étape 2 : il suffit de trouver le bon candidat.**

Supposons qu'on trouve, parmi les dix nombres, un nombre $m$ qui n'est divisible ni par $2$, ni par $3$, ni par $5$, ni par $7$. Alors $m$ est premier avec chacun des neuf autres.

En effet, soit $k$ un autre de ces dix nombres, et supposons $\mathrm{PGCD}(m, k) > 1$. Ce PGCD possède un facteur premier $p$, qui divise à la fois $m$ et $k$. D'après l'étape 1, $p$ vaut $2$, $3$, $5$ ou $7$. Mais $m$ n'est divisible par aucun de ces quatre nombres : contradiction. Donc $\mathrm{PGCD}(m, k) = 1$.

Il ne reste plus qu'à montrer qu'un tel $m$ existe toujours.

**Étape 3 : on compte les nombres à éliminer.**

Éliminons de nos dix nombres tous ceux qui sont divisibles par $2$, $3$, $5$ ou $7$, et comptons combien on en élimine au maximum.

- **Les multiples de $2$.** Parmi dix entiers consécutifs, il y en a exactement $5$.
- **Les multiples impairs de $3$.** Ce sont les multiples de $3$ qui ne sont pas des multiples de $6$ : deux multiples impairs de $3$ consécutifs sont donc espacés de $6$. Dans une plage de dix entiers consécutifs, l'écart maximal entre deux nombres est $9$, donc il y en a **au plus $2$** ($1 + \lfloor 9/6 \rfloor = 2$).
- **Les multiples impairs de $5$.** Ils sont espacés de $10$. Comme $10 > 9$, il y en a **au plus $1$**.
- **Les multiples impairs de $7$.** Ils sont espacés de $14$. Comme $14 > 9$, il y en a **au plus $1$**.

Au total, le nombre d'entiers éliminés est au plus
$$5 + 2 + 1 + 1 = 9 .$$

(Ce compte peut être plus petit encore, car un même nombre peut être compté deux fois : $15$ est à la fois un multiple impair de $3$ et un multiple impair de $5$. Peu importe, on n'a besoin que de la majoration.)

**Conclusion.**

On élimine au plus $9$ nombres sur $10$. Il en reste donc au moins un, appelons-le $m$ : il n'est divisible ni par $2$, ni par $3$, ni par $5$, ni par $7$. D'après l'étape 2, ce nombre $m$ est premier avec les neuf autres.

**Parmi dix entiers naturels consécutifs, il existe toujours un nombre premier avec tous les autres.**

**Un exemple.** Prenons $114, 115, \dots, 123$. On élimine les pairs ($114$, $116$, $118$, $120$, $122$), puis $117$ et $123$ (impairs multiples de $3$), puis $115$ (impair multiple de $5$), puis $119 = 7 \times 17$ (impair multiple de $7$). Il reste $121 = 11^2$, qui est bien premier avec les neuf autres.

## Going further

1. Le résultat reste-t-il vrai pour **onze** entiers consécutifs ? Reprendre le décompte.
2. Et pour **seize** entiers consécutifs ? (Le décompte ci-dessus ne suffit plus : il faut regrouper autrement.)
3. Dans l'exemple ci-dessus, deux nombres conviennent-ils, ou un seul ? Peut-on trouver dix entiers consécutifs pour lesquels un seul nombre convient ?
