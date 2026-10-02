---
id: "5013"
title: "Vingt-huit chiffres et le diviseur 396"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [criteres-de-divisibilite, chiffres, probabilite, somme-alternee]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Primes, Divisibility, and Modular Arithmetic », Joshua Zucker, The Teachers' Circle, 2006"
  reference: "numbertheory.pdf, partie 2, problème 13 p)"
  url: "https://mathcircles.org/activity/primes-divisibility-and-modular-arithmetic/"
  original_language: "en"
  local_copy: "sources/originals/namc/numbertheory.pdf"
---

## Statement

On écrit au tableau un nombre de vingt-huit chiffres dont dix sont manquants, notés « ? » :

5?383?8?2?936?5?8?203?9?3?76

On remplace les dix « ? » par les dix chiffres $0, 1, 2, \ldots, 9$, chacun utilisé une fois et
une seule, dans un ordre tiré **au hasard**.

Quelle est la probabilité que le nombre obtenu soit divisible par $396$ ?

*Indication : $396 = 4 \times 9 \times 11$.*

## Hints

1. Les nombres $4$, $9$ et $11$ n'ont aucun diviseur commun deux à deux. Un nombre est donc
   divisible par $396$ si et seulement s'il est divisible par $4$, par $9$ et par $11$ à la
   fois. Traite les trois conditions séparément.
2. Le critère de divisibilité par $4$ ne regarde que les deux derniers chiffres. Sont-ils
   connus ?
3. Le critère de divisibilité par $9$ ne regarde que la somme des chiffres. Les dix chiffres
   manquants sont toujours les mêmes, quel que soit l'ordre : que vaut leur somme ?
4. Le critère de divisibilité par $11$ regarde la somme alternée des chiffres, c'est-à-dire la
   différence entre la somme des chiffres de rang impair et celle des chiffres de rang pair.
   Numérote les vingt-huit positions et repère où tombent les dix « ? ».
5. C'est là qu'est la surprise : regarde bien la parité de ces dix positions.

## Solution

### On découpe 396

$$396 = 4 \times 9 \times 11 ,$$

et ces trois nombres sont deux à deux premiers entre eux. Un entier est donc divisible par
$396$ si et seulement s'il est divisible par $4$, par $9$ et par $11$. Examinons les trois
conditions l'une après l'autre.

### La divisibilité par 4 : toujours vraie

Un nombre est divisible par $4$ si et seulement si le nombre formé par ses deux derniers
chiffres l'est. Ici, le nombre se termine par $76$, et

$$76 = 4 \times 19 .$$

Les deux derniers chiffres sont connus et ne dépendent pas du tirage : **la condition est
toujours vérifiée**.

### La divisibilité par 9 : toujours vraie

Un nombre est divisible par $9$ si et seulement si la somme de ses chiffres l'est.

Les dix chiffres tirés sont $0, 1, 2, \ldots, 9$ dans un certain ordre, et leur somme vaut

$$0 + 1 + 2 + \cdots + 9 = 45 ,$$

quel que soit l'ordre choisi.

Les dix-huit chiffres connus sont, dans l'ordre d'écriture,

$$5,\ 3,\ 8,\ 3,\ 8,\ 2,\ 9,\ 3,\ 6,\ 5,\ 8,\ 2,\ 0,\ 3,\ 9,\ 3,\ 7,\ 6 ,$$

et leur somme vaut $90$.

La somme totale des chiffres vaut donc toujours

$$90 + 45 = 135 = 9 \times 15 .$$

**La condition est toujours vérifiée**, elle non plus ne dépend pas du tirage.

### La divisibilité par 11 : la surprise

Un nombre est divisible par $11$ si et seulement si la différence entre la somme de ses
chiffres de rang impair et la somme de ses chiffres de rang pair est un multiple de $11$.
(Comptons les rangs à partir de la gauche, à partir de $1$.)

Numérotons donc les vingt-huit positions. Dans les tableaux ci-dessous, $r$ est le rang et
$c$ le chiffre qui s'y trouve.

| $r$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ | $12$ | $13$ | $14$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $c$ | $5$ | ? | $3$ | $8$ | $3$ | ? | $8$ | ? | $2$ | ? | $9$ | $3$ | $6$ | ? |

| $r$ | $15$ | $16$ | $17$ | $18$ | $19$ | $20$ | $21$ | $22$ | $23$ | $24$ | $25$ | $26$ | $27$ | $28$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $c$ | $5$ | ? | $8$ | ? | $2$ | $0$ | $3$ | ? | $9$ | ? | $3$ | ? | $7$ | $6$ |

Les dix « ? » occupent les rangs

$$2,\ 6,\ 8,\ 10,\ 14,\ 16,\ 18,\ 22,\ 24,\ 26 .$$

**Ils sont tous de rang pair.** C'est la clé : les dix chiffres tirés tombent tous du même côté
de la soustraction, et comme leur somme vaut toujours $45$, leur contribution ne dépend pas du
tirage.

Calculons.

- Somme des chiffres de rang **impair** (rangs $1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27$) :
  $$5 + 3 + 3 + 8 + 2 + 9 + 6 + 5 + 8 + 2 + 3 + 9 + 3 + 7 = 73 .$$
- Somme des chiffres de rang **pair** : les quatre chiffres connus, aux rangs $4$, $12$, $20$ et
  $28$, valent $8$, $3$, $0$ et $6$, ce qui fait $17$ ; on y ajoute les dix chiffres tirés, de
  somme $45$. Total :
  $$17 + 45 = 62 .$$

La différence vaut donc

$$73 - 62 = 11 ,$$

qui est un multiple de $11$. **La condition est encore toujours vérifiée.**

(Contrôle : $73 + 62 = 135$, ce qui redonne bien la somme totale des chiffres calculée plus
haut.)

### Conclusion

Les trois conditions sont vérifiées quel que soit le tirage. Le nombre écrit au tableau est
donc **toujours** divisible par $396$, et la probabilité demandée vaut

$$\boxed{1} .$$

La question était une farce : elle ressemble à un problème de probabilités, mais il n'y a rien
d'aléatoire dans la réponse. Celui qui a fabriqué l'énoncé a placé les dix trous exactement
là où ils ne pouvaient rien changer.

## Going further

Le dernier calcul montre où était le piège. Si un seul des dix « ? » avait été à un rang impair,
tout aurait changé : la contribution des chiffres tirés à la somme alternée aurait été
$45 - 2d$, où $d$ est le chiffre tombé à ce rang impair, et la réponse aurait dépendu du
tirage.

Pour t'en convaincre, échangeons les chiffres des rangs $2$ et $3$, c'est-à-dire écrivons

53?83?8?2?936?5?8?203?9?3?76

Appelons $d$ le chiffre tiré qui se retrouve au rang $3$, désormais impair.

- Somme des rangs impairs : on retire le $3$ qui était au rang $3$ et on ajoute $d$, ce qui
  donne $73 - 3 + d = 70 + d$.
- Somme des rangs pairs : on ajoute le $3$ qui est passé au rang $2$, et il ne reste que neuf
  chiffres tirés de ce côté, de somme $45 - d$. Cela donne $17 + 3 + (45 - d) = 65 - d$.

La différence vaut $(70 + d) - (65 - d) = 5 + 2d$, qui varie entre $5$ et $23$ selon le tirage.
Le seul multiple de $11$ dans cet intervalle est $11$, atteint pour $d = 3$.

Les divisibilités par $4$ et par $9$ restent acquises, donc la probabilité devient la
probabilité que le chiffre tombé au rang $3$ soit un $3$, c'est-à-dire

$$\frac{1}{10} .$$

Un seul chiffre déplacé fait passer la réponse de $1$ à $\tfrac{1}{10}$.
