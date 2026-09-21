---
id: "7218"
title: "Le chiffre qui revient le plus souvent"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [somme des chiffres, modulo 9, comptage, racine numerique]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », jeudi 26 matin (Yohann d'Anello), invariants, exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

On écrit à la suite tous les entiers de $1$ à $1\,000\,000$.

Puis on remplace chaque nombre par la somme de ses chiffres. Puis on recommence, et encore, et
encore, jusqu'à ce que tous les nombres écrits ne comportent plus qu'un seul chiffre.

Quel chiffre apparaît alors le plus souvent ?

## Hints

1. Prends un exemple : pars de $2017$ et applique le procédé jusqu'au bout. Puis pars de $2026$.
   Que remarques-tu ?
2. Un nombre et la somme de ses chiffres ont le même reste dans la division par $9$. Le chiffre
   final est donc entièrement déterminé par quoi ?
3. Attention : le chiffre final n'est pas tout à fait le reste modulo $9$. Que se passe-t-il quand
   le reste vaut $0$ ?
4. Compte, parmi $1, 2, \ldots, 999\,999$, combien de nombres donnent chaque chiffre final. Puis
   traite $1\,000\,000$ à part.

## Solution

**Le chiffre final ne dépend que du reste modulo $9$.**

Un entier et la somme de ses chiffres ont toujours le même reste dans la division par $9$. En
répétant l'opération, le reste modulo $9$ ne change donc jamais.

Le procédé s'arrête sur un nombre à un seul chiffre. Ce chiffre est donc compris entre $1$ et $9$
(il ne peut pas valoir $0$, puisqu'on part d'un nombre strictement positif et que la somme des
chiffres d'un nombre strictement positif est strictement positive), et il a le même reste modulo
$9$ que le nombre de départ.

Entre $1$ et $9$, il y a exactement un nombre par reste modulo $9$ :
$$1, 2, 3, 4, 5, 6, 7, 8 \text{ ont pour restes } 1, 2, \ldots, 8, \qquad
9 \text{ a pour reste } 0 .$$

**Le chiffre final est donc entièrement déterminé par le reste modulo $9$ du nombre de départ**,
avec la règle : reste $r$ non nul donne le chiffre $r$ ; reste $0$ donne le chiffre $9$.

**Le comptage de $1$ à $999\,999$.**

Regroupons les entiers de $1$ à $999\,999$ par paquets de neuf consécutifs :
$$\{1, \ldots, 9\}, \quad \{10, \ldots, 18\}, \quad \ldots, \quad \{999\,991, \ldots, 999\,999\} .$$
Dans chaque paquet de neuf entiers consécutifs, chacun des neuf restes modulo $9$ apparaît
exactement une fois.

Il y a $999\,999 / 9 = 111\,111$ paquets. Donc chacun des chiffres $1, 2, \ldots, 9$ apparaît
exactement $111\,111$ fois.

**Le dernier nombre.**

Il reste $1\,000\,000$. Sa somme de chiffres vaut $1$, et on s'arrête : il donne le chiffre $1$.

**Conclusion.**

Le chiffre $1$ apparaît donc $111\,111 + 1 = 111\,112$ fois, et chacun des chiffres $2$ à $9$
apparaît $111\,111$ fois.

**Le chiffre le plus fréquent est le $1$, avec $111\,112$ apparitions.**

## Going further

Ce chiffre d'arrivée porte un nom : on l'appelle la **racine numérique** du nombre. La formule
compacte est
$$\text{racine numérique de } n = 1 + \big((n-1) \bmod 9\big)$$
pour tout entier $n \geqslant 1$.

Elle explique aussi pourquoi le tour de magie « pense à un nombre, additionne ses chiffres,
recommence » tombe toujours juste : le magicien n'a besoin de connaître que le reste modulo $9$.
