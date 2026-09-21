---
id: "7702"
title: "Un nombre en ab32 divisible par 99"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, chiffres, encadrement, multiples]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, Coupe Animath du 3 juin 2014"
  reference: "stage_ete_2014.pdf, « Coupe Animath et évaluation initiale », énoncés collège, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

On cherche un nombre de quatre chiffres dont les deux derniers chiffres sont $3$ et $2$, dans cet ordre. Ses deux premiers chiffres sont notés $a$ et $b$ : le nombre s'écrit donc

$$a \; b \; 3 \; 2 .$$

Par exemple $1432$, $7032$ ou $9932$ conviennent à cette description.

Trouver tous les couples de chiffres $(a, b)$ pour lesquels ce nombre est divisible par $99$.

## Hints

1. Appelle $n$ le nombre à deux chiffres formé par $a$ et $b$. Comment s'écrit le grand nombre avec $n$ ?
2. Tu obtiens $100n + 32$. Le nombre $99n$ est évidemment un multiple de $99$ : que reste-t-il si tu l'enlèves ?
3. Il reste donc à trouver quand $n + 32$ est un multiple de $99$. Entre quelles valeurs $n + 32$ est-il forcément compris ?

## Solution

**Il y a une seule solution : $a = 6$ et $b = 7$, c'est-à-dire le nombre $6732$.**

**On donne un nom aux deux premiers chiffres.** Notons $n$ le nombre à deux chiffres formé par $a$ et $b$, autrement dit $n = 10a + b$. Le nombre cherché s'écrit alors

$$N = 100 \times n + 32 .$$

Par exemple, si $a = 1$ et $b = 4$, alors $n = 14$ et $N = 1400 + 32 = 1432$.

**On fait apparaître un multiple de 99.** L'astuce est de casser $100n$ en deux morceaux :

$$N = 100n + 32 = 99n + n + 32 .$$

Le terme $99n$ est un multiple de $99$. Donc

$$N \text{ est divisible par } 99 \quad \Longleftrightarrow \quad n + 32 \text{ est divisible par } 99 .$$

**On encadre.** Comme $a$ et $b$ sont des chiffres, $n$ est compris entre $0$ et $99$, donc

$$32 \leqslant n + 32 \leqslant 131 .$$

Entre $32$ et $131$, le seul multiple de $99$ est $99$ lui-même : en effet $0$ est trop petit et $198$ est trop grand.

**On conclut.** Il faut donc $n + 32 = 99$, c'est-à-dire $n = 67$, c'est-à-dire $a = 6$ et $b = 7$.

Vérification :

$$6732 = 99 \times 68 .$$

**Conclusion : le seul couple qui convient est $(a, b) = (6, 7)$, et le nombre est $6732$.**

## Going further

La même méthode marche avec n'importe quelle fin. Par exemple, pour que $a\,b\,4\,5$ soit divisible par $99$, il faut que $n + 45$ soit un multiple de $99$, donc $n = 54$ : le seul nombre est $5445$.
