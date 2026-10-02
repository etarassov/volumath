---
id: "12628"
title: "Des programmes de révisions équitables"
grade: 12
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, permutations, factorielle, construction, minoration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 12 mai 2021"
  reference: "2021-12_Sujet-test-5-2021.pdf, exercice 3 (junior) ; corrigé 2021-05_Corrige-Web-Test-5.pdf (le corrigé écrit σX(k) > k dans la partie sur les permutations σπ,τ, il faut lire σπ,τ(k) > k)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-test-5-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Sujet-test-5-2021.pdf"
---

## Statement

Pour préparer un concours, Jean-Baptiste et Marie-Odile ont rassemblé 100 problèmes de mathématiques. Pendant les 100 jours qui les séparent du concours, chacun traitera un problème par jour, et chacun traitera ainsi les 100 problèmes. Un *programme de révisions* indique, pour chacun des deux, quel problème il traite chaque jour.

Pour un programme donné, on note $x$ le nombre de problèmes que Jean-Baptiste traite strictement avant Marie-Odile, et $y$ le nombre de problèmes que Marie-Odile traite strictement avant Jean-Baptiste. Le programme est dit *équitable* si $x = y$.

Démontrer qu'il existe au moins
$$100! \times \left(2^{50} + (50!)^2\right)$$
programmes de révisions équitables.

## Hints

1. Commence par fixer l'ordre dans lequel Jean-Baptiste traite les problèmes. Combien y a-t-il de façons de le faire ? Il reste alors à trouver $2^{50} + (50!)^2$ ordres possibles pour Marie-Odile.
2. Numérote les problèmes de 1 à 100 dans l'ordre de Jean-Baptiste. Pour le problème numéro $i$, compare $i$ au jour où Marie-Odile le traite.
3. Le signe $+$ suggère deux familles de programmes, que l'on compte séparément. Pour $2^{50}$, regroupe les problèmes par paires. Pour $(50!)^2$, coupe les 100 jours en deux moitiés.
4. Vérifie que tes deux familles n'ont aucun programme en commun.

## Solution

**Ce qu'est un programme.** Chacun des deux choisit un ordre pour traiter les 100 problèmes. Il y a $100!$ ordres possibles pour chacun, et un programme est la donnée de l'ordre de Jean-Baptiste et de celui de Marie-Odile.

**On fixe l'ordre de Jean-Baptiste.** On numérote les problèmes de 1 à 100 dans l'ordre où Jean-Baptiste les traite : il traite le problème $i$ le jour $i$. Pour chaque problème $i$, on note $j(i)$ le jour où Marie-Odile le traite. Alors :

- Jean-Baptiste traite le problème $i$ strictement avant Marie-Odile si $i < j(i)$ ;
- Marie-Odile le traite strictement avant Jean-Baptiste si $j(i) < i$.

Le programme est donc équitable lorsqu'il y a autant de problèmes avec $j(i) > i$ que de problèmes avec $j(i) < i$.

On va construire, pour cet ordre de Jean-Baptiste, au moins $2^{50} + (50!)^2$ ordres de Marie-Odile qui rendent le programme équitable. Deux ordres différents de Jean-Baptiste donnent des programmes différents, donc il y aura au total au moins $100! \times \left(2^{50} + (50!)^2\right)$ programmes équitables.

**Première famille : échanger des paires.** On regroupe les problèmes en 50 paires : $\{1, 2\}$, $\{3, 4\}$, ..., $\{99, 100\}$, c'est-à-dire les paires $\{2k - 1, 2k\}$ pour $k = 1, 2, \ldots, 50$. On choisit une partie $X$ de l'ensemble $\{1, 2, \ldots, 50\}$.

- Si $k$ est dans $X$, Marie-Odile échange les deux problèmes de la paire : elle traite le problème $2k - 1$ le jour $2k$, et le problème $2k$ le jour $2k - 1$.
- Si $k$ n'est pas dans $X$, elle traite les problèmes $2k - 1$ et $2k$ les mêmes jours que Jean-Baptiste.

Pour chaque $k$ de $X$, le problème $2k - 1$ vérifie $j(2k-1) = 2k > 2k - 1$, et le problème $2k$ vérifie $j(2k) = 2k - 1 < 2k$. Les autres problèmes sont traités le même jour par les deux. Donc $x = y$, et ces deux nombres valent le nombre d'éléments de $X$ : le programme est équitable.

Chacune des 50 paires est échangée ou non, ce qui fait $2^{50}$ choix de $X$, et deux choix différents donnent deux ordres différents. Cette famille contient donc $2^{50}$ programmes équitables.

**Deuxième famille : Marie-Odile commence par la fin.** Pendant les jours 1 à 50, Marie-Odile traite les problèmes 51 à 100, dans l'ordre qu'elle veut. Pendant les jours 51 à 100, elle traite les problèmes 1 à 50, dans l'ordre qu'elle veut.

- Un problème $i \leqslant 50$ est traité par Marie-Odile un jour $j(i) \geqslant 51 > i$.
- Un problème $i \geqslant 51$ est traité par Marie-Odile un jour $j(i) \leqslant 50 < i$.

Donc $x = y = 50$, et le programme est équitable. Il y a $50!$ façons d'ordonner la première moitié et $50!$ façons d'ordonner la seconde, ce qui fait $(50!)^2$ programmes équitables.

**Les deux familles n'ont aucun programme en commun.** Dans la première famille, Marie-Odile traite le problème 1 le jour 1 ou le jour 2. Dans la seconde, elle le traite un jour supérieur ou égal à 51. Un même ordre ne peut donc pas appartenir aux deux familles, et on peut additionner les deux nombres.

**Conclusion.** Pour chacun des $100!$ ordres de Jean-Baptiste, on a trouvé au moins $2^{50} + (50!)^2$ ordres de Marie-Odile qui rendent le programme équitable. Il existe donc **au moins $100! \times \left(2^{50} + (50!)^2\right)$ programmes équitables**.

## Going further

- La vérification que les deux familles sont disjointes n'est pas une formalité. Avec 2 problèmes au lieu de 100, la même méthode annoncerait $2! \times (2^1 + (1!)^2) = 6$ programmes. Mais il n'y en a que 4 : l'échange de la paire $\{1, 2\}$ est aussi le programme où Marie-Odile « commence par la fin », et il a été compté deux fois.
- La minoration est loin d'être exacte. Avec 4 problèmes, l'ordre de Jean-Baptiste étant fixé, la méthode donne $2^2 + (2!)^2 = 8$ ordres pour Marie-Odile, alors qu'il y en a 14 qui conviennent. Essaie de les trouver tous.
