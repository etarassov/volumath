---
id: "7673"
title: "Quatre nombres qui donnent le même résultat"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [somme-des-chiffres, numeration, construction, retenues]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 57 (solution chapitre XI, résolue par Charles Madeline-Dérou). Le corrigé imprimé donne a = 10^1111111111127 ; l'exposant correct est 1111111111126, sans quoi le quatrième nombre ne convient pas (voir la solution)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Pour un entier $N \geqslant 1$, on note $S(N)$ la somme des chiffres de $N$ en base dix, et on pose

$$f(N) = N + S(N) .$$

Par exemple $f(91) = 91 + 10 = 101$ et $f(100) = 100 + 1 = 101$ : deux nombres différents peuvent donner le même résultat.

Trouver **quatre** entiers deux à deux distincts $m$, $n$, $p$, $q$ tels que

$$f(m) = f(n) = f(p) = f(q) .$$

## Hints

1. Il est inutile de chercher de petits nombres : on peut vérifier à la machine qu'aucune valeur inférieure à $200\,000$ n'est atteinte trois fois. La réponse est une **construction**, pas une recherche.
2. Les nombres faciles à manier sont ceux dont la somme des chiffres se calcule d'un coup d'œil : $10^N$, dont la somme des chiffres vaut $1$, et $10^N - 1$, faite de $N$ chiffres $9$.
3. Commencez par en trouver **trois**. Posons $C = 10^N + 10^{13}$. Calculez $f(C - 1)$, $f(C + 98)$ et $f(C + 107)$. Faites bien attention aux retenues.
4. Vous devriez obtenir trois fois la même valeur, et vous verrez pourquoi c'est $10^{13}$ et pas une autre puissance de dix qui convient.
5. Pour le quatrième, prenez $m = 10^N - 9$ et ajustez $N$ pour que $f(m)$ tombe sur la même valeur.

## Solution

### Trois nombres faciles

Choisissons deux exposants, $N$ grand (il sera fixé plus loin) et $13$. Posons

$$C = 10^N + 10^{13} .$$

Le nombre $C$ s'écrit avec un $1$ en tête, puis des zéros, puis un $1$ à la place des $10^{13}$, puis treize zéros. Regardons trois de ses voisins.

**Le premier : $n = C - 1$.**

$$n = 10^N + \left(10^{13} - 1\right) = 10^N + \underbrace{99\cdots9}_{13 \text{ chiffres}} .$$

Son écriture est donc : un $1$, puis des zéros, puis treize $9$. D'où $S(n) = 1 + 13 \times 9 = 118$, et

$$f(n) = 10^N + 10^{13} - 1 + 118 = 10^N + 10^{13} + 117 .$$

**Le deuxième : $p = C + 98$.**

Les derniers chiffres de $C$ sont des zéros, donc ajouter $98$ ne crée aucune retenue. L'écriture de $p$ est : un $1$, des zéros, un $1$, des zéros, puis $98$. D'où $S(p) = 1 + 1 + 9 + 8 = 19$, et

$$f(p) = 10^N + 10^{13} + 98 + 19 = 10^N + 10^{13} + 117 .$$

**Le troisième : $q = C + 107$.**

De même, $S(q) = 1 + 1 + 1 + 0 + 7 = 10$, et

$$f(q) = 10^N + 10^{13} + 107 + 10 = 10^N + 10^{13} + 117 .$$

Les trois valeurs coïncident. Notons

$$V = 10^N + 10^{13} + 117 .$$

> **Pourquoi l'exposant $13$ ?** Pour $p$ et $q$, l'exposant n'intervient pas : $98 + 19 = 107 + 10 = 117$ quel que soit lui. C'est $n$ qui l'impose : $f(n) = 10^N + 10^{k} + 9k$ si l'on remplace $13$ par $k$, et il faut $9k = 117$, donc $k = 13$. C'est le seul exposant qui marche.

### Le quatrième nombre

Prenons

$$m = 10^N - 9 .$$

Son écriture décimale compte $N$ chiffres : $N - 1$ chiffres $9$ suivis d'un $1$. Par exemple $10^4 - 9 = 9991$. Donc

$$S(m) = 9(N-1) + 1 = 9N - 8 ,$$

et

$$f(m) = 10^N - 9 + 9N - 8 = 10^N + 9N - 17 .$$

Pour que $f(m) = V$, il faut

$$9N - 17 = 10^{13} + 117, \qquad \text{c'est-à-dire} \qquad 9N = 10^{13} + 134 .$$

Le nombre $10^{13} + 134 = 10\,000\,000\,000\,134$ a pour somme des chiffres $1 + 1 + 3 + 4 = 9$ : il est donc bien divisible par $9$, et

$$N = \frac{10\,000\,000\,000\,134}{9} = 1\,111\,111\,111\,126 .$$

### La réponse

Avec $N = 1\,111\,111\,111\,126$, les quatre entiers

$$m = 10^{N} - 9, \qquad n = 10^{N} + 10^{13} - 1, \qquad p = 10^{N} + 10^{13} + 98, \qquad q = 10^{N} + 10^{13} + 107$$

sont deux à deux distincts (le premier a $N$ chiffres, les trois autres en ont $N+1$, et ils diffèrent visiblement entre eux) et vérifient

$$f(m) = f(n) = f(p) = f(q) = 10^{N} + 10^{13} + 117 . \qquad \blacksquare$$

> **Remarque sur la source.** Le corrigé du polycopié donne la même construction mais avec l'exposant $1\,111\,111\,111\,127$. Avec cette valeur, $9N - 17 = 10^{13} + 126$, soit $9$ de trop : le quatrième nombre rate la cible. L'exposant correct est $1\,111\,111\,111\,126$.

## Going further

**Pourquoi faut-il des nombres aussi gigantesques ?** Parce que trouver seulement **trois** entiers de même image est déjà très rare. On peut le vérifier à l'ordinateur : aucune valeur de $f$ inférieure à $200\,000$ n'est atteinte trois fois. Les couples, en revanche, sont fréquents : $f(91) = f(100) = 101$ en est le plus petit exemple.

**Ce qui fait marcher la construction.** Tout repose sur le comportement de $S$ face aux retenues. Quand on passe de $98$ à $107$, la somme des chiffres chute de $17$ à $8$, soit $-9$, exactement de quoi compenser le $+9$ de la valeur : $f$ ne bouge pas. C'est la clef : **une retenue fait perdre $9$ à la somme des chiffres.**

**Un fait voisin, bien plus simple.** Montrez que $f(N) \equiv 2N \pmod 9$ pour tout $N$. Cela découle de $S(N) \equiv N \pmod 9$. On en déduit que quatre entiers de même image ont tous le même reste modulo... presque : ils vérifient $2m \equiv 2n \pmod 9$, donc $m \equiv n \pmod 9$ puisque $2$ est inversible modulo $9$. Vérifiez-le sur les quatre nombres de la solution.

**Une question ouverte à votre niveau.** Existe-t-il, pour tout entier $k$, un groupe de $k$ entiers de même image par $f$ ? La réponse est oui, mais les nombres nécessaires grandissent de façon vertigineuse avec $k$.
