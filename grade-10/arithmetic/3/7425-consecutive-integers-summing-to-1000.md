---
id: "7425"
title: "Des entiers consécutifs dont la somme vaut 1000"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [somme-des-entiers, diviseurs, parite, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, chasse au trésor"
  reference: "stage_ete_2011.pdf, « Chasse au Trésor », exercices des débutants, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Trouver tous les couples d'entiers $(n \,;\, m)$ avec $n \geq 1$ et $m \geq 1$ tels que
$$n + (n+1) + (n+2) + \dots + (n+m) = 1000.$$

Autrement dit : de combien de façons peut-on écrire $1000$ comme la somme d'au moins deux entiers
consécutifs strictement positifs ?

## Hints

1. Combien de termes y a-t-il dans cette somme ? Attention : de $n$ à $n+m$, il y en a $m+1$, pas
   $m$.
2. Exprime la somme à l'aide de $n$ et de $m$. Une somme d'entiers consécutifs vaut (nombre de
   termes) $\times$ (moyenne du premier et du dernier).
3. Tu obtiendras $(2n + m)(m+1) = 2000$. Les deux facteurs sont donc des diviseurs associés de
   $2000$. Regarde leur **somme** : est-elle paire ou impaire ? Cela élimine presque tout.

## Solution

**On met l'équation en forme.**

La somme porte sur les entiers de $n$ à $n+m$, il y a donc $m+1$ termes. En regroupant le premier
avec le dernier, le deuxième avec l'avant-dernier, etc., on obtient la formule classique
$$n + (n+1) + \dots + (n+m) = \frac{(m+1)(n + (n+m))}{2} = \frac{(m+1)(2n+m)}{2}.$$

L'équation devient donc
$$(m+1)(2n+m) = 2000.$$

**Deux observations décisives.**

Posons $A = m+1$ et $B = 2n+m$, de sorte que $AB = 2000$.

*Première observation : $A$ et $B$ ne sont pas de la même parité.* En effet
$$A + B = (m+1) + (2n+m) = 2n + 2m + 1,$$
qui est **impair**. Deux nombres dont la somme est impaire sont de parités différentes : l'un est
pair, l'autre impair.

*Deuxième observation : $A < B$.* Comme $n \geq 1$,
$$B = 2n + m \geq m + 2 > m + 1 = A.$$
De plus $A = m+1 \geq 2$.

**On liste les possibilités.**

On a $2000 = 2^4 \times 5^3$. Le facteur impair de $2000$ est $5^3 = 125$, donc **la puissance de
$2$ tout entière, c'est-à-dire $16$, doit se trouver du même côté** : celui des deux nombres $A$,
$B$ qui est pair contient les quatre facteurs $2$, et l'autre est un diviseur impair de $2000$,
c'est-à-dire $1$, $5$, $25$ ou $125$.

Les décompositions de $2000$ en un facteur impair fois un facteur pair sont donc :
$$2000 = 1 \times 2000 = 5 \times 400 = 25 \times 80 = 125 \times 16.$$

Chacune donne deux répartitions possibles ($A$ impair ou $A$ pair), mais la condition
$2 \leq A < B$ tranche. Comme $A < B$ et $AB = 2000$, on a $A < \sqrt{2000} \approx \text{44,7}$, donc
$A \leq 44$.

La paire $\{1, 2000\}$ est exclue, puisqu'elle donnerait $A = 1$, alors que $A \geq 2$. Il reste
trois paires.

| $\{A, B\}$ | $A$ (le plus petit) | $B$ | $m = A - 1$ | $2n = B - m$ | $n$ |
|---|---|---|---|---|---|
| $\{5, 400\}$ | $5$ | $400$ | $4$ | $396$ | $198$ |
| $\{25, 80\}$ | $25$ | $80$ | $24$ | $56$ | $28$ |
| $\{125, 16\}$ | $16$ | $125$ | $15$ | $110$ | $55$ |

**Vérifications.**

- $n = 198$, $m = 4$ : c'est la somme $198 + 199 + 200 + 201 + 202$. Cinq termes de moyenne $200$,
  donc $5 \times 200 = 1000$.
- $n = 28$, $m = 24$ : $28 + 29 + \dots + 52$, soit $25$ termes de moyenne $40$, donc
  $25 \times 40 = 1000$.
- $n = 55$, $m = 15$ : $55 + 56 + \dots + 70$, soit $16$ termes de moyenne $\text{62,5}$, donc
  $16 \times \text{62,5} = 1000$.

**Conclusion.** Il y a exactement trois façons d'écrire $1000$ comme somme d'entiers consécutifs
strictement positifs (avec au moins deux termes) :
$$(n \,;\, m) = (198 \,;\, 4), \quad (28 \,;\, 24), \quad (55 \,;\, 15).$$

## Going further

Pourquoi une puissance de $2$, comme $1024$, ne peut-elle jamais s'écrire comme somme d'au moins
deux entiers consécutifs strictement positifs ? Reprends l'argument de parité.
