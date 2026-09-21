---
id: "8657"
title: "Le nombre 27x85y divisible par 33"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [criteres de divisibilite, divisibilite par onze, chiffres inconnus]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Modulos » (Elsa), exercice 18 (d'après le poly d'arithmétique de Jean-Louis Tu, 3.7). Le corrigé imprimé annonce y − x ≡ 2 mod 11 ; le bon calcul donne y − x ≡ 3 mod 11, et les trois solutions ci-dessous."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

On considère le nombre à six chiffres $\overline{27x85y}$, où $x$ et $y$ désignent deux chiffres inconnus.

À quelle condition sur $x$ et $y$ ce nombre est-il divisible par $33$ ? Donner toutes les solutions.

## Hints

1. $33$ n'est pas premier : $33 = 3 \times 11$. Comme $3$ et $11$ n'ont pas de diviseur commun, être divisible par $33$, c'est être divisible par $3$ **et** par $11$.
2. Le critère de divisibilité par $3$ porte sur la somme des chiffres. Écris-la.
3. Le critère de divisibilité par $11$ porte sur la somme **alternée** des chiffres : on les additionne en changeant de signe à chaque fois, en partant du chiffre des unités.
4. Tu obtiens deux conditions, l'une sur $x + y$, l'autre sur $y - x$. N'oublie pas que $x$ et $y$ sont des chiffres : entre $0$ et $9$.
5. Pour la condition sur $y - x$ : cette différence est comprise entre $-9$ et $9$. Combien de valeurs dans cet intervalle ont le bon reste modulo $11$ ?

## Solution

Comme $33 = 3 \times 11$ et que $3$ et $11$ n'ont aucun diviseur commun autre que $1$, le nombre est divisible par $33$ si et seulement s'il est divisible à la fois par $3$ et par $11$.

**La condition de divisibilité par 3.** La somme des chiffres vaut

$$2 + 7 + x + 8 + 5 + y = 22 + x + y .$$

Elle doit être un multiple de $3$. Comme $22 = 3 \times 7 + 1$, cela s'écrit $1 + x + y \equiv 0$, c'est-à-dire

$$(\star) \qquad x + y \equiv 2 \pmod 3 .$$

**La condition de divisibilité par 11.** On additionne les chiffres en alternant les signes, en partant des unités. Les chiffres, des unités vers les plus hauts rangs, sont $y$, $5$, $8$, $x$, $7$, $2$. La somme alternée vaut

$$y - 5 + 8 - x + 7 - 2 = y - x + 8 .$$

Elle doit être un multiple de $11$ :

$$y - x + 8 \equiv 0 \pmod{11}, \qquad \text{c'est-à-dire} \qquad (\star\star) \quad y - x \equiv 3 \pmod{11} .$$

**On résout.** Comme $x$ et $y$ sont des chiffres, $y - x$ est compris entre $-9$ et $9$. Dans cet intervalle, les nombres de reste $3$ modulo $11$ sont $3$ et $3 - 11 = -8$. Deux cas.

**Cas $y - x = 3$.** Alors $y = x + 3$, et la condition $(\star)$ donne

$$x + (x+3) = 2x + 3 \equiv 2 \pmod 3 \quad \Longleftrightarrow \quad 2x \equiv 2 \pmod 3 \quad \Longleftrightarrow \quad x \equiv 1 \pmod 3 .$$

Donc $x \in \{1, 4, 7\}$. Mais il faut aussi $y = x + 3 \leqslant 9$, ce qui élimine $x = 7$ (qui donnerait $y = 10$). Il reste

$$(x, y) = (1, 4) \quad \text{et} \quad (x, y) = (4, 7) .$$

**Cas $y - x = -8$.** Les seules possibilités avec des chiffres sont $(x, y) = (8, 0)$ et $(x, y) = (9, 1)$. On teste $(\star)$ :

- $(8, 0)$ : $x + y = 8 \equiv 2 \pmod 3$. **Convient.**
- $(9, 1)$ : $x + y = 10 \equiv 1 \pmod 3$. Ne convient pas.

**Les solutions.** Il y en a trois :

$$\boxed{(x, y) = (1, 4), \quad (4, 7), \quad (8, 0)} $$

soit les nombres $271854$, $274857$ et $278850$.

**Vérification.** $271854 = 33 \times 8238$, $274857 = 33 \times 8329$, $278850 = 33 \times 8450$. 

## Going further

Le pas décisif est le tout premier : casser $33$ en $3 \times 11$. Il ne marche que parce que $3$ et $11$ n'ont pas de facteur commun. Attention au piège classique : être divisible par $4$ et par $6$ ne suffit **pas** pour être divisible par $24$, puisque $4$ et $6$ partagent le facteur $2$. Par exemple $12$ est divisible par $4$ et par $6$, mais pas par $24$.

Pour t'entraîner : à quelle condition sur les chiffres $x$ et $y$ le nombre $\overline{4x27y}$ est-il divisible par $45$ ?
