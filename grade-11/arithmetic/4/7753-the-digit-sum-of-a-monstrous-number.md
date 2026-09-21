---
id: "7753"
title: "La somme des chiffres d'un nombre monstrueux"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [somme des chiffres, congruences, majoration, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : arithmétique », lundi 25 matin (Nicolas Ségarra), exercice 13 (IMO 1975, problème 4)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Pour un entier $N$ strictement positif, on note $f(N)$ la somme des chiffres de $N$ écrit en base dix. Par exemple $f(2014) = 2 + 0 + 1 + 4 = 7$.

On pose

$$N = 4444^{4444} .$$

Calculer $f\bigl(f(f(N))\bigr)$.

## Hints

1. Il est hors de question de calculer $N$ : il a plus de seize mille chiffres. Il faut encadrer, pas calculer.
2. La somme des chiffres a une propriété précieuse : $f(N)$ et $N$ laissent le même reste dans la division par $9$. Cela donne le reste cherché.
3. Le reste par $9$ ne suffit pas : il faut aussi montrer que $f(f(f(N)))$ est petit. Majore le nombre de chiffres de $N$, puis $f(N)$, puis $f(f(N))$, puis $f(f(f(N)))$.
4. Pour majorer $f(M)$ quand $M$ a $c$ chiffres : chaque chiffre vaut au plus $9$, donc $f(M) \leqslant 9c$.
5. Pour le reste par $9$ : $4444 = 9 \times 493 + 7$, donc $4444 \equiv 7$, et les puissances de $7$ modulo $9$ tournent en boucle. Trouve la longueur du cycle.

## Solution

**La réponse est $f(f(f(N))) = 7$.**

L'idée : on sait calculer le **reste par $9$** exactement, et on sait montrer que le nombre cherché est **petit**. Les deux ensemble suffisent à l'identifier.

**Étape 1 : la somme des chiffres et le reste par $9$.**

Si $M = a_k 10^k + \cdots + a_1 10 + a_0$, alors comme $10 \equiv 1 \pmod 9$, on a $10^j \equiv 1 \pmod 9$ pour tout $j$, donc

$$M \equiv a_k + \cdots + a_1 + a_0 = f(M) \pmod 9 .$$

Autrement dit, appliquer $f$ ne change pas le reste dans la division par $9$. Donc

$$f(f(f(N))) \equiv N \pmod 9 .$$

**Étape 2 : le reste de $N$ dans la division par $9$.**

$4444 = 9 \times 493 + 7$, donc $4444 \equiv 7 \pmod 9$ et

$$N = 4444^{4444} \equiv 7^{4444} \pmod 9 .$$

Calculons les puissances de $7$ modulo $9$ :

$$7^1 \equiv 7, \qquad 7^2 = 49 \equiv 4, \qquad 7^3 = 343 = 9 \times 38 + 1 \equiv 1 \pmod 9 .$$

Le cycle a donc longueur $3$. Comme $4444 = 3 \times 1481 + 1$,

$$7^{4444} = \bigl(7^3\bigr)^{1481} \times 7^1 \equiv 1^{1481} \times 7 = 7 \pmod 9 .$$

Donc $f(f(f(N)))$ laisse le reste $7$ dans la division par $9$.

**Étape 3 : $N$ n'a pas trop de chiffres.**

$4444 < 10^4$, donc

$$N = 4444^{4444} < \bigl(10^4\bigr)^{4444} = 10^{17776} .$$

$N$ a donc au plus $17776$ chiffres.

**Étape 4 : on rétrécit, trois fois.**

Chaque chiffre vaut au plus $9$, donc pour un nombre à $c$ chiffres la somme des chiffres est au plus $9c$.

- $f(N) \leqslant 9 \times 17776 = 159\,984$.
- $f(N)$ est donc un nombre d'au plus $6$ chiffres, et $f(f(N)) \leqslant 9 \times 6 = 54$.
- $f(f(N))$ est donc un nombre d'au plus deux chiffres, inférieur ou égal à $54$. La plus grande somme de chiffres atteinte par un tel nombre est celle de $49$, soit $13$. Donc

$$f(f(f(N))) \leqslant 13 .$$

**Étape 5 : on recolle.**

Le nombre $f(f(f(N)))$ est un entier strictement positif, au plus égal à $13$, qui laisse le reste $7$ dans la division par $9$. Les entiers de $1$ à $13$ qui laissent ce reste sont $7$ et… $16$, qui est trop grand. Il n'en reste qu'un.

**Conclusion : $f\bigl(f(f(4444^{4444}))\bigr) = 7$.**

## Going further

Ce problème est le quatrième de l'Olympiade internationale de mathématiques de 1975.

Le mécanisme mérite d'être retenu, car il resservira : quand un nombre est **trop gros pour être calculé**, on l'attaque par deux bouts à la fois. D'un côté une congruence donne une information exacte mais partielle (ici le reste par $9$) ; de l'autre une majoration grossière enferme le résultat dans un petit intervalle. Si l'intervalle ne contient qu'un seul nombre ayant le bon reste, c'est gagné.

On peut remarquer au passage que $f(f(f(N)))$ vaut probablement déjà $f(f(N))$ : rien dans la preuve n'oblige à appliquer $f$ trois fois, c'est simplement la garantie que le résultat est devenu assez petit pour être identifié.
