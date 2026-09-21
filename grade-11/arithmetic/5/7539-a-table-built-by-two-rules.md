---
id: "7539"
title: "Un tableau construit par deux règles"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [recurrence, somme-dentiers-consecutifs, diviseurs, parite, equation-diophantienne]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 43 (une étoile ; solution p. 246, résolue par Étienne Duclos). L'énoncé imprimé annonce que f prend des valeurs entières strictement positives, ce qui est faux : par exemple f(1,3) = -1. Cela ne change rien à la question posée."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On construit un grand tableau : à chaque couple d'entiers $m \geqslant 1$ et $n \geqslant 1$ on associe un nombre $f(m,n)$, en suivant trois règles :

$$f(1,1) = 2, \qquad f(m+1,\, n) = f(m,n) + m, \qquad f(m,\, n+1) = f(m,n) - n .$$

Autrement dit : quand on avance d'une case vers la droite depuis la colonne $m$, on ajoute $m$ ; quand on descend d'une case depuis la ligne $n$, on retranche $n$.

Trouver tous les couples $(p, q)$ tels que $f(p, q) = 2011$.

## Hints

1. Commence par calculer $f(m, 1)$ pour $m = 1, 2, 3, 4, 5$. Tu devrais reconnaître des nombres familiers.
2. Trouve une formule close pour $f(m,n)$, puis vérifie-la par récurrence sur les deux règles.
3. Tu devrais tomber sur $f(m,n) = 2 + \dfrac{m(m-1)}{2} - \dfrac{n(n-1)}{2}$. L'équation $f(p,q) = 2011$ devient alors une égalité entre deux nombres triangulaires.
4. $\dfrac{p(p-1)}{2} - \dfrac{q(q-1)}{2}$ est une somme d'entiers consécutifs. Lesquels ?
5. Il reste à écrire $2009$ comme somme d'entiers consécutifs strictement positifs. Si la somme a $k$ termes et commence à $q$, écris-la avec la formule de la somme d'une suite arithmétique, et cherche les diviseurs de $2 \times 2009$.

## Solution

**Réponse.** Il y a exactement six couples :

$$(p,q) \in \{(2010,\,2009),\; (1006,\,1004),\; (291,\,284),\; (151,\,137),\; (70,\,29),\; (66,\,17)\}.$$

**Étape 1. Une formule pour $f$.**

Partons de $f(1,1) = 2$ et avançons vers la droite. La deuxième règle donne

$$f(2,1) = 2 + 1, \quad f(3,1) = 2 + 1 + 2, \quad f(4,1) = 2 + 1 + 2 + 3, \quad \ldots$$

donc

$$f(m,1) = 2 + \big(1 + 2 + \cdots + (m-1)\big) = 2 + \frac{m(m-1)}{2}.$$

Descendons maintenant, avec la troisième règle :

$$f(m,n) = f(m,1) - \big(1 + 2 + \cdots + (n-1)\big) = 2 + \frac{m(m-1)}{2} - \frac{n(n-1)}{2}.$$

*Vérification.* Cette formule satisfait bien les trois règles :

$$f(m+1,n) - f(m,n) = \frac{(m+1)m}{2} - \frac{m(m-1)}{2} = \frac{m\big((m+1)-(m-1)\big)}{2} = m,$$

et de même $f(m,n+1) - f(m,n) = -n$. Enfin $f(1,1) = 2$. Comme les règles déterminent $f$ de proche en proche à partir de $f(1,1)$, c'est bien la seule fonction possible.

**Étape 2. On traduit l'équation.**

$$f(p,q) = 2011 \iff 2 + \frac{p(p-1)}{2} - \frac{q(q-1)}{2} = 2011 \iff \frac{p(p-1)}{2} - \frac{q(q-1)}{2} = 2009 .$$

Or $\dfrac{p(p-1)}{2} = 1 + 2 + \cdots + (p-1)$ et $\dfrac{q(q-1)}{2} = 1 + 2 + \cdots + (q-1)$. En retranchant, tous les termes jusqu'à $q-1$ se simplifient et il reste

$$q + (q+1) + (q+2) + \cdots + (p-1) = 2009 .$$

Cette somme est vide si $p = q$ et négative si $p < q$, donc nécessairement $p > q$.

**La question devient donc :** de combien de façons $2009$ s'écrit-il comme somme d'entiers consécutifs strictement positifs ?

**Étape 3. La somme d'entiers consécutifs.**

Notons $k = p - q \geqslant 1$ le nombre de termes. La somme va de $q$ à $q + k - 1$, c'est une suite arithmétique de raison $1$ :

$$q + (q+1) + \cdots + (q+k-1) = k \times \frac{q + (q+k-1)}{2} = \frac{k\,(2q + k - 1)}{2}.$$

L'équation devient

$$k\,(2q + k - 1) = 2 \times 2009 = 4018 .$$

Posons $s = 2q + k - 1$, de sorte que $k\,s = 4018$. Remarquons que

$$s - k = 2q - 1$$

est **impair** et **strictement positif** (car $q \geqslant 1$). Donc $k < s$, et $k$ et $s$ n'ont pas la même parité.

**Étape 4. On liste les factorisations.**

Décomposons : $4018 = 2 \times 2009 = 2 \times 7^2 \times 41$.

Comme le facteur $2$ n'apparaît qu'une fois, dans toute écriture $4018 = k \times s$ l'un des deux facteurs est pair et l'autre impair : la condition de parité est **automatiquement** vérifiée. Il ne reste donc qu'à imposer $k < s$.

Les diviseurs de $4018$ sont

$$1,\; 2,\; 7,\; 14,\; 41,\; 49,\; 82,\; 98,\; 287,\; 574,\; 2009,\; 4018 .$$

Les six couples $(k, s)$ avec $k s = 4018$ et $k < s$ sont donc $(1, 4018)$, $(2, 2009)$, $(7, 574)$, $(14, 287)$, $(41, 98)$ et $(49, 82)$.

Pour chacun on récupère $q = \dfrac{s - k + 1}{2}$ puis $p = q + k$ :

| $k$ | $s$ | $q$ | $p$ | la somme |
|---|---|---|---|---|
| $1$ | $4018$ | $2009$ | $2010$ | $2009$ |
| $2$ | $2009$ | $1004$ | $1006$ | $1004 + 1005$ |
| $7$ | $574$ | $284$ | $291$ | $284 + \cdots + 290$ |
| $14$ | $287$ | $137$ | $151$ | $137 + \cdots + 150$ |
| $41$ | $98$ | $29$ | $70$ | $29 + \cdots + 69$ |
| $49$ | $82$ | $17$ | $66$ | $17 + \cdots + 65$ |

*Deux vérifications.* $29 + \cdots + 69$ a $41$ termes de moyenne $\tfrac{29+69}{2} = 49$, donc vaut $41 \times 49 = 2009$. Et $17 + \cdots + 65$ a $49$ termes de moyenne $\tfrac{17+65}{2} = 41$, donc vaut $49 \times 41 = 2009$.

**Conclusion.** Les couples cherchés sont

$$\boxed{(2010,\,2009),\quad (1006,\,1004),\quad (291,\,284),\quad (151,\,137),\quad (70,\,29),\quad (66,\,17)}$$

et il n'y en a pas d'autres.

## Going further

L'étape 3 démontre au passage un joli résultat général. Écrire un entier $N$ comme somme d'au moins un entier consécutif strictement positif revient à factoriser $2N = k s$ avec $k < s$ et $k$, $s$ de parités différentes. On en tire :

> Le nombre d'écritures de $N$ comme somme d'entiers consécutifs strictement positifs est égal au nombre de diviseurs **impairs** de $N$.

En particulier, une puissance de $2$ n'a qu'un seul diviseur impair, $1$, donc ne s'écrit que d'une seule façon : elle-même, toute seule. C'est pour cela que $8$, $16$, $32$ ne sont jamais des sommes d'entiers consécutifs.

Ici $2009 = 7^2 \times 41$ a six diviseurs impairs, ce qui explique les six solutions.
