---
id: "8244"
title: "Le plus petit multiple de 29 qui se termine par 29"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [divisibilite, somme-des-chiffres, criteres-de-divisibilite, recherche]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, « Modulo, TD » (Aline Cahuzac), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

On cherche un nombre entier $N$ qui vérifie les trois conditions suivantes à la fois :

- $N$ est un multiple de $29$ ;
- les deux derniers chiffres de $N$ sont $2$ puis $9$ ;
- la somme des chiffres de $N$ vaut $29$.

Quel est le plus petit tel nombre ?

## Hints

1. « Se termine par $29$ » s'écrit $N = 100M + 29$ pour un certain entier $M$. Que devient alors
   la condition « $N$ est un multiple de $29$ » ?
2. $29$ est premier et ne divise pas $100$ : que peut-on en conclure sur $M$ ?
3. Tu obtiens $N = 2900m + 29$. Écris ce nombre en base dix : quels sont ses chiffres ?
4. La somme des chiffres de $N$ vaut $29$. Combien vaut alors la somme des chiffres de $29m$ ?
5. Cette somme est un multiple de $9$. Le critère de divisibilité par $9$ donne alors une
   information sur $m$.

## Solution

**Réponse : $N = 78\,329 = 29 \times 2701$.**

**On traduit « se termine par 29 ».**

Dire que les deux derniers chiffres de $N$ sont $2$ puis $9$, c'est dire qu'il existe un entier
$M \ge 0$ tel que

$$N = 100M + 29 .$$

**On traduit « multiple de 29 ».**

$N$ est un multiple de $29$, et $29$ en est un aussi, donc la différence $N - 29 = 100M$ est un
multiple de $29$. Or $29$ est un nombre premier qui ne divise pas $100$. Il divise donc $M$ :
écrivons $M = 29m$ avec $m$ entier. Il vient

$$N = 2900\,m + 29 .$$

**Les chiffres de $N$.**

Regardons cette écriture de près :

$$N = (29m) \times 100 + 29 .$$

Multiplier par $100$ décale de deux rangs, et on ajoute ensuite $29$, qui occupe exactement ces
deux rangs. Donc **l'écriture décimale de $N$ est celle de $29m$, suivie des deux chiffres $2$
et $9$**. Par exemple pour $m = 1$ : $29 \times 1 = 29$ et $N = 2929$.

La somme des chiffres de $N$ vaut donc

$$S(N) = S(29m) + 2 + 9 = S(29m) + 11 ,$$

où $S$ désigne la somme des chiffres. La condition $S(N) = 29$ devient

$$S(29m) = 18 .$$

**Le critère de divisibilité par 9.**

Un nombre et la somme de ses chiffres ont le même reste dans la division par $9$. Comme
$S(29m) = 18$ est un multiple de $9$, le nombre $29m$ est lui aussi un multiple de $9$. Et $29$
n'est pas divisible par $9$ (il est même premier), donc

$$9 \ \text{divise} \ m .$$

**On balaie les candidats.**

Les valeurs possibles de $m$ sont donc $9, 18, 27, 36, \ldots$, et on veut la plus petite qui
convienne. Calculons $29m$ et sa somme des chiffres :

| $m$ | $29m$ | $S(29m)$ | convient ? |
|---|---|---|---|
| $9$ | $261$ | $2+6+1 = 9$ | non |
| $18$ | $522$ | $5+2+2 = 9$ | non |
| $27$ | $783$ | $7+8+3 = 18$ | **oui** |

Le plus petit $m$ qui convient est $m = 27$, et alors

$$N = 783 \times 100 + 29 = 78\,329 .$$

**Vérification.**

- $78\,329 = 29 \times 2701$, c'est bien un multiple de $29$ ;
- il se termine par $29$ ;
- $7 + 8 + 3 + 2 + 9 = 29$.

**Le plus petit nombre cherché est $78\,329$.**

## Going further

1. Pourquoi $m = 0$ est-il exclu ? Quel nombre donnerait-il, et quelle condition échoue ?
2. Quel est le plus petit multiple de $29$ qui se termine par $29$ et dont la somme des chiffres
   vaut $38$ ?
3. Reprendre l'exercice avec $7$ à la place de $29$ : quel est le plus petit multiple de $7$
   dont les deux derniers chiffres sont $0$ puis $7$ et dont la somme des chiffres vaut $16$ ?
   L'étape « $29$ ne divise pas $100$ » se remplace-t-elle sans problème ?
