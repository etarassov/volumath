---
id: "0457"
title: "Les amibes martiennes"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, parite, fusion, amibes]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8 класс), сост. А. Л. Канунников"
  reference: "Kan2017.pdf, листок 9, задача 4"
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Une éprouvette contient des amibes martiennes de trois types : $A$, $B$ et $C$.

Deux amibes de deux types différents peuvent fusionner : elles disparaissent toutes les deux et donnent naissance à une seule amibe, qui est du troisième type.

Au départ, l'éprouvette contient $20$ amibes de type $A$, $21$ de type $B$ et $22$ de type $C$.

Après plusieurs fusions, il ne reste plus qu'une seule amibe dans l'éprouvette. De quel type est-elle ?

## Hints

1. Note $a$, $b$ et $c$ les nombres d'amibes de chaque type. Écris ce que deviennent ces trois nombres pour chacune des trois fusions possibles.
2. Tu verras qu'à chaque fusion, les trois nombres changent tous de $1$ : deux baissent de $1$, le troisième monte de $1$. Que deviennent alors leurs parités ?
3. Au départ, $20$ et $22$ sont pairs et $21$ est impair : deux des trois nombres ont la même parité, le troisième non. Cela peut-il changer au cours des fusions ?

## Solution

**L'idée : on regarde les parités, et on cherche ce qui ne change jamais.**

Notons $a$, $b$ et $c$ les nombres d'amibes de type $A$, $B$ et $C$.

**Étape 1. Ce que fait une fusion.**

Il n'y a que trois fusions possibles :

| fusion | effet sur $a$ | effet sur $b$ | effet sur $c$ |
|---|---|---|---|
| $A + B \to C$ | $-1$ | $-1$ | $+1$ |
| $B + C \to A$ | $+1$ | $-1$ | $-1$ |
| $A + C \to B$ | $-1$ | $+1$ | $-1$ |

Dans les trois cas, **les trois nombres changent de $1$ en même temps**. Peu importe le signe : ajouter $1$ ou enlever $1$ change la parité d'un nombre.

Donc à chaque fusion, $a$, $b$ et $c$ changent tous de parité en même temps.

**Étape 2. Ce qui ne change jamais.**

Si deux de ces trois nombres ont la même parité, ils la gardent tous les deux ou ils en changent tous les deux : ils continuent donc d'avoir la même parité. De même, deux nombres de parités différentes restent de parités différentes.

Autrement dit, **la façon dont les trois parités se répartissent ne change jamais**. C'est notre invariant.

Regardons le départ :

$$a = 20 \ (\text{pair}), \qquad b = 21 \ (\text{impair}), \qquad c = 22 \ (\text{pair})$$

Donc, et cela restera vrai jusqu'au bout :

- $a$ et $c$ ont toujours la même parité ;
- $b$ a toujours une parité différente de celle de $a$ et de celle de $c$.

**Étape 3. On teste les trois fins possibles.**

À la fin il reste une seule amibe. Le triplet $(a, b, c)$ vaut donc $(1,0,0)$, ou $(0,1,0)$, ou $(0,0,1)$.

- $(1,0,0)$ : $a = 1$ est impair et $c = 0$ est pair. Ils n'ont pas la même parité : impossible.
- $(0,1,0)$ : $a = 0$ et $c = 0$ sont tous les deux pairs, et $b = 1$ est impair. Tout est en règle.
- $(0,0,1)$ : $a = 0$ est pair et $c = 1$ est impair. Impossible.

**Conclusion.**

La dernière amibe est nécessairement de type $B$.

## Going further

1. Même question en partant de $20$ amibes de type $A$, $21$ de type $B$ et $23$ de type $C$.
2. On part cette fois de $1$ amibe de chaque type. Montrer qu'on ne pourra jamais descendre à une seule amibe.
3. On repart de $20$, $21$ et $22$. Décrire une suite de fusions qui aboutit vraiment à une seule amibe : le raisonnement ci-dessus dit de quel type elle serait, il ne dit pas qu'on peut y arriver.
