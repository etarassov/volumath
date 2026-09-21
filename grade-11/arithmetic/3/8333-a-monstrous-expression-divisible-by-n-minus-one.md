---
id: "8333"
title: "Une expression monstrueuse divisible par n − 1"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [congruences, divisibilite, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Modulo et factorisation » (Émile), exercice 11"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Montrer que, pour tout entier $n \geqslant 2$, le nombre $n - 1$ divise

$$n^{3n+1} - 3n^4 + 2 .$$

## Hints

1. L'expression a l'air effrayante, mais l'exposant $3n+1$ n'est un obstacle que si on cherche à développer. Ne développe pas.
2. Travaille modulo $n - 1$. Que vaut $n$ modulo $n-1$ ?
3. $n \equiv 1 \pmod{n-1}$. Et les congruences se comportent bien avec les puissances : si $a \equiv b$, alors $a^q \equiv b^q$.
4. Remplace chaque $n$ par $1$, y compris dans les exposants ? Non, surtout pas : l'exposant ne se réduit pas modulo $n-1$. Mais ici cela ne pose aucun problème, car $1$ à n'importe quelle puissance vaut $1$.

## Solution

**On travaille modulo $n-1$.**

Par définition, $n - 1$ divise $n - 1$, donc

$$n \equiv 1 \pmod{n-1} .$$

Les congruences sont compatibles avec les puissances : si $a \equiv b \pmod{N}$, alors
$a^q \equiv b^q \pmod{N}$ pour tout entier $q \geqslant 0$. Appliquons cela à chaque terme.

$$n^{3n+1} \equiv 1^{3n+1} \equiv 1 \pmod{n-1} ,$$
$$3n^4 \equiv 3 \times 1^4 \equiv 3 \pmod{n-1} .$$

Donc

$$n^{3n+1} - 3n^4 + 2 \;\equiv\; 1 - 3 + 2 \;\equiv\; 0 \pmod{n-1} .$$

**Conclusion.** Le nombre $n - 1$ divise $n^{3n+1} - 3n^4 + 2$ pour tout entier $n \geqslant 2$.

**Une remarque importante.** L'exposant $3n+1$ n'a pas été touché : on n'a **pas** le droit de le
remplacer par une valeur réduite modulo $n-1$. Une congruence porte sur la **base**, jamais sur
l'exposant. Ici la manœuvre passe parce que la base devient $1$, et $1^q = 1$ quel que soit $q$.

Pour bien voir le piège : modulo $3$, on a $0 \equiv 3$, mais $2^0 = 1$ alors que $2^3 = 8 \equiv 2$.
Réduire l'exposant aurait donné une réponse fausse.

## Going further

Le même calcul donne une règle générale. Si $P$ est une expression polynomiale à coefficients
entiers, alors

$$n - a \;\text{divise}\; P(n) - P(a)$$

pour tous entiers $n$ et $a$. Ici, avec $a = 1$, le « polynôme » vaut $1 - 3 + 2 = 0$, d'où le
résultat.

Vérifie sur un exemple : pour $n = 3$, l'expression vaut
$3^{10} - 3 \times 81 + 2 = 59\,049 - 243 + 2 = 58\,808$, et $58\,808 = 2 \times 29\,404$, donc
divisible par $n-1 = 2$.
