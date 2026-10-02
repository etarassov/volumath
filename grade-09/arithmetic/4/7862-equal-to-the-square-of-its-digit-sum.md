---
id: "7862"
title: "Égal au carré de la somme de ses chiffres"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [somme-des-chiffres, divisibilite-par-neuf, encadrement, recherche-exhaustive]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015, La Muraille"
  reference: "stage_ete_2015.pdf, « La Muraille », exercice 19 (résolu par Théodore Fougereux et Étienne Massart)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Le nombre $81$ a une propriété amusante : la somme de ses chiffres est $8 + 1 = 9$, et $9^2 = 81$.
Le nombre est donc égal au carré de la somme de ses chiffres.

Trouver **tous** les entiers naturels qui ont cette propriété.

## Hints

1. Note $s(n)$ la somme des chiffres de $n$. On cherche les $n$ tels que $n = s(n)^2$.
2. Un nombre à $4$ chiffres a une somme de chiffres au plus $9 + 9 + 9 + 9 = 36$. Quel est alors le
   plus grand carré possible ? Compare-le à $1000$, puis fais la même comparaison pour $5$, $6$,
   $7$ chiffres. La somme des chiffres grandit très lentement, mais le nombre, lui, est multiplié
   par $10$ à chaque chiffre ajouté.
3. Une fois que tu sais que $n$ ne dépasse pas quelques centaines, il reste encore beaucoup de cas.
   Souviens-toi qu'un nombre et la somme de ses chiffres laissent le **même reste** dans la division
   par $9$.
4. Écris $s = s(n)$. La question 3 te dit que $s^2$ et $s$ ont le même reste modulo $9$, donc que
   $9$ divise $s^2 - s = s(s-1)$. Or $s$ et $s - 1$ sont deux entiers consécutifs.

## Solution

Notons $s(n)$ la somme des chiffres de $n$. On cherche tous les entiers naturels $n$ tels que
$$n = s(n)^2.$$

### Étape 1 : le nombre n'a pas beaucoup de chiffres

Supposons que $n$ possède $d$ chiffres. Alors :

- chaque chiffre vaut au plus $9$, donc $s(n) \leq 9d$, et par conséquent
  $n = s(n)^2 \leq 81d^2$ ;
- d'autre part, un nombre à $d$ chiffres est au moins $10^{d-1}$.

Il faut donc que $10^{d-1} \leq 81 d^2$. Regardons $d = 5$ : à gauche $10^4 = 10\,000$, à droite
$81 \times 25 = 2025$. C'est faux.

Et cela reste faux ensuite : quand on passe de $d$ à $d+1$, le membre de gauche est multiplié par
$10$, tandis que le membre de droite est multiplié par $\left(\frac{d+1}{d}\right)^2$, qui vaut au
plus $\left(\frac{6}{5}\right)^2 = \text{1,44}$ dès que $d \geq 5$. Le membre de gauche prend donc
une avance qu'il ne perd plus jamais.

**Conclusion : $n$ a au plus $4$ chiffres.** Donc $s(n) \leq 36$, et $n = s(n)^2 \leq 36^2 = 1296$.

Affinons : puisque $n \leq 1296$, la somme de ses chiffres vaut au plus $9 + 9 + 9 = 27$ (le plus
gourmand des nombres inférieurs à $1296$ est $999$). Posons $s = s(n)$ ; on sait maintenant que
$$0 \leq s \leq 27.$$

### Étape 2 : le reste dans la division par $9$

Un entier et la somme de ses chiffres laissent le même reste dans la division par $9$ : c'est la
vieille « preuve par neuf ». Autrement dit $n \equiv s \pmod 9$.

Mais $n = s^2$, donc $s^2 \equiv s \pmod 9$, c'est-à-dire que $9$ divise
$$s^2 - s = s(s-1).$$

Or $s$ et $s-1$ sont deux entiers consécutifs : ils n'ont aucun facteur commun autre que $1$. Le
facteur $9 = 3 \times 3$ ne peut donc pas se répartir entre les deux, il est entièrement dans l'un
ou entièrement dans l'autre. Ainsi $9$ divise $s$, ou bien $9$ divise $s - 1$.

Avec $0 \leq s \leq 27$, cela ne laisse que sept valeurs :
$$s \in \{0,\; 1,\; 9,\; 10,\; 18,\; 19,\; 27\}.$$

### Étape 3 : on essaie les sept candidats

Pour chaque valeur de $s$, on calcule $n = s^2$, puis on vérifie si la somme des chiffres de ce $n$
vaut bien $s$.

| $s$ | $n = s^2$ | somme des chiffres de $n$ | convient ? |
|---|---|---|---|
| $0$ | $0$ | $0$ | oui |
| $1$ | $1$ | $1$ | oui |
| $9$ | $81$ | $8+1 = 9$ | oui |
| $10$ | $100$ | $1+0+0 = 1$ | non |
| $18$ | $324$ | $3+2+4 = 9$ | non |
| $19$ | $361$ | $3+6+1 = 10$ | non |
| $27$ | $729$ | $7+2+9 = 18$ | non |

### Conclusion

Les seuls entiers naturels égaux au carré de la somme de leurs chiffres sont
$$\boxed{0, \quad 1, \quad 81}.$$

## Going further

Si l'on écarte les cas sans intérêt $0$ et $1$, il ne reste qu'un seul nombre, $81$. On peut poser
la même question avec un cube : quels entiers sont égaux au **cube** de la somme de leurs chiffres ?
La méthode est identique — un encadrement, puis le reste modulo $9$, puis une courte liste à tester
— et cette fois la liste est plus riche : $0$, $1$, puis $512 = 8^3$ (car $5+1+2 = 8$),
$4913 = 17^3$, $5832 = 18^3$, $17576 = 26^3$ et $19683 = 27^3$. Sept nombres en tout, et aucun
au-delà : les retrouver tous est un beau travail de patience.
