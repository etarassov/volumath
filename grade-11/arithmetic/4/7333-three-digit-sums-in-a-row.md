---
id: "7333"
title: "Trois sommes de chiffres à la suite"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [somme-des-chiffres, congruences, majoration, modulo-neuf]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la seconde mi-temps », en TD, arithmétique, exercice 36"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

On note $A$ la somme des chiffres du nombre $4444^{4444}$, et $B$ la somme des chiffres de $A$.

**Que vaut la somme des chiffres de $B$ ?**

## Hints

1. Personne ne peut écrire $4444^{4444}$. On ne va donc jamais calculer $A$ ni $B$ : on va les **encadrer**, puis utiliser un reste.
2. Combien de chiffres $4444^{4444}$ a-t-il, au plus ? Majore $4444$ par une puissance de $10$.
3. Un nombre de $t$ chiffres a une somme de chiffres au plus $9t$. Applique cela trois fois de suite : tu obtiendras une majoration très petite pour la somme des chiffres de $B$.
4. Deuxième ingrédient : un entier et sa somme de chiffres ont le même reste modulo $9$. Pourquoi ?
5. Calcule donc $4444^{4444}$ modulo $9$. Commence par $4444$ modulo $9$, puis regarde les puissances successives : elles se répètent vite.
6. Tu auras un nombre à la fois petit et de reste connu modulo $9$. Un seul candidat reste.

## Solution

Pour tout entier $n > 0$, notons $s(n)$ la somme de ses chiffres et $t(n)$ son nombre de chiffres.

### Premier ingrédient : une majoration

Comme chaque chiffre vaut au plus $9$,
$$s(n) \leqslant 9 \, t(n) .$$

**Taille de $4444^{4444}$.** On a $4444 < 10^4$, donc
$$4444^{4444} < (10^4)^{4444} = 10^{17776} ,$$
et $4444^{4444}$ a donc au plus $17\,776$ chiffres.

**Taille de $A$.** Par conséquent
$$A = s(4444^{4444}) \leqslant 9 \times 17\,776 = 159\,984 .$$

**Taille de $B$.** Ainsi $A$ a au plus $6$ chiffres, donc
$$B = s(A) \leqslant 9 \times 6 = 54 .$$

**Taille de $s(B)$.** Enfin $B$ est un entier au plus égal à $54$. Parmi les entiers de $1$ à $54$, celui qui a la plus grande somme de chiffres est $49$, avec $4 + 9 = 13$. Donc
$$s(B) \leqslant 13 .$$

### Deuxième ingrédient : le reste modulo 9

Si $n = \overline{a_k a_{k-1} \cdots a_1 a_0}$, alors
$$n = a_k 10^k + \cdots + a_1 10 + a_0 .$$
Or $10 \equiv 1 \pmod 9$, donc $10^i \equiv 1 \pmod 9$ pour tout $i$, d'où
$$n \equiv a_k + \cdots + a_1 + a_0 = s(n) \pmod 9 .$$

**Un entier et sa somme de chiffres ont donc toujours le même reste modulo $9$.** En appliquant cela trois fois :
$$s(B) \equiv B = s(A) \equiv A = s\big(4444^{4444}\big) \equiv 4444^{4444} \pmod 9 .$$

### On calcule ce reste

$4444 = 4+4+4+4 = 16$ pour la somme des chiffres, et $1 + 6 = 7$, donc $4444 \equiv 7 \pmod 9$. Ainsi
$$4444^{4444} \equiv 7^{4444} \pmod 9 .$$

Les puissances de $7$ modulo $9$ :
$$7^1 \equiv 7, \qquad 7^2 = 49 \equiv 4, \qquad 7^3 \equiv 7 \times 4 = 28 \equiv 1 \pmod 9 .$$

La suite est donc périodique de période $3$. Comme $4444 = 3 \times 1481 + 1$,
$$7^{4444} = (7^3)^{1481} \times 7 \equiv 1^{1481} \times 7 = 7 \pmod 9 .$$

### On conclut

On sait maintenant deux choses :
$$1 \leqslant s(B) \leqslant 13 \qquad \text{et} \qquad s(B) \equiv 7 \pmod 9 .$$

Les entiers de $1$ à $13$ congrus à $7$ modulo $9$ : il n'y en a qu'un, car le suivant serait $7 + 9 = 16 > 13$.

$$\boxed{s(B) = 7 .}$$

*(Cet exercice est un grand classique des olympiades internationales. La méthode — majorer grossièrement, puis fixer le reste modulo $9$ — sert chaque fois qu'un énoncé empile des sommes de chiffres.)*

## Going further

1. Si le reste de $4444^{4444}$ modulo $9$ avait été $0$ au lieu de $7$, la conclusion aurait-elle été aussi rapide ? Quelle aurait été la réponse ?
2. Combien de chiffres $4444^{4444}$ a-t-il exactement ? On pourra utiliser $\log_{10} 4444 \approx \text{3,64777}$. *(Réponse : $16\,211$, loin de la majoration $17\,776$ utilisée plus haut — et c'est sans importance.)*
3. Si l'on continuait — somme des chiffres de $s(B)$, puis encore — que se passerait-il ? Montre que le procédé se stabilise toujours sur un entier entre $1$ et $9$, appelé la **racine numérique**, et qu'elle vaut le reste modulo $9$ (avec $9$ au lieu de $0$).
4. Reprends le problème avec $5555^{5555}$.
