---
id: "12851"
title: "L'allumeur de réverbères et ses 2024 interrupteurs"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 25
tags: [parite, interrupteurs, lampes, complementaire]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 21 et 22 février 2024"
  reference: "2025-01_Enonce-Test-3.pdf, test EGMO, exercice 8 ; corrigé 2025-01_Corrige-Test-3.pdf (le corrigé écrit « les autres réverbères » pour « les autres interrupteurs », coquille sans conséquence)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-3.pdf"
---

## Statement

Sur une planète lointaine se trouvent des réverbères et $2024$ interrupteurs. Chaque réverbère est relié à exactement $1000$ de ces interrupteurs. Au départ, certains réverbères sont allumés et les autres sont éteints.

L'allumeur de réverbères peut effectuer des opérations. Une opération consiste à choisir un interrupteur et à appuyer dessus : tous les réverbères reliés à cet interrupteur changent d'état. Ceux qui étaient allumés s'éteignent, et ceux qui étaient éteints s'allument.

Le petit prince lui assure qu'il est possible, en effectuant un nombre fini de telles opérations, d'allumer tous les réverbères de la planète.

Démontrer que l'allumeur de réverbères peut alors allumer tous les réverbères en effectuant **au plus $1012$ opérations**.

## Hints

1. L'ordre dans lequel on appuie sur les interrupteurs a-t-il de l'importance ? Que se passe-t-il si l'on appuie deux fois sur le même interrupteur ?
2. Dans le plan du petit prince, seuls comptent les interrupteurs sur lesquels il appuie un nombre impair de fois. Combien d'opérations faut-il pour obtenir le même résultat ?
3. Que fait à un réverbère donné le fait d'appuyer une fois sur chacun des $2024$ interrupteurs ?
4. Comparez l'effet d'appuyer une fois sur chacun des interrupteurs du plan, et l'effet d'appuyer une fois sur chacun des autres.

## Solution

### Étape 1 : seule la parité compte

Un réverbère change d'état à chaque fois qu'on appuie sur un interrupteur qui lui est relié, et seulement dans ce cas. Son état final dépend donc seulement du nombre de fois où il a changé d'état, et même seulement de la parité de ce nombre : s'il est pair, le réverbère revient à son état de départ, s'il est impair, il est dans l'état opposé.

Considérons le plan du petit prince, et notons $E$ l'ensemble des interrupteurs sur lesquels il appuie un **nombre impair** de fois. Notons $k$ le nombre d'éléments de $E$, et $F$ l'ensemble des $2024 - k$ autres interrupteurs.

Pour un réverbère $r$, notons $a(r)$ le nombre d'interrupteurs de $E$ reliés à $r$, et $b(r)$ le nombre d'interrupteurs de $F$ reliés à $r$. Dans le plan du petit prince, le nombre de changements d'état de $r$ est la somme, sur tous les interrupteurs reliés à $r$, du nombre d'appuis sur chacun. Les appuis sur les interrupteurs de $F$ sont en nombre pair, ceux sur les interrupteurs de $E$ en nombre impair. Cette somme a donc la même parité que $a(r)$.

Le plan du petit prince allume tous les réverbères. Donc, pour chaque réverbère $r$, le nombre $a(r)$ est pair si $r$ était allumé au départ, et impair si $r$ était éteint.

### Étape 2 : deux façons courtes d'allumer tout

**Première façon.** Appuyons une fois sur chaque interrupteur de $E$, et sur aucun autre. Chaque réverbère $r$ change alors d'état exactement $a(r)$ fois. D'après l'étape 1, il finit allumé. Cela demande $k$ opérations.

**Seconde façon.** Appuyons une fois sur chaque interrupteur de $F$, et sur aucun autre. Chaque réverbère $r$ change d'état $b(r)$ fois. Or le réverbère $r$ est relié à $1000$ interrupteurs en tout, donc

$$a(r) + b(r) = 1000.$$

Comme $1000$ est pair, $a(r)$ et $b(r)$ ont la même parité. Le réverbère $r$ finit donc dans le même état qu'avec la première façon : allumé. Cela demande $2024 - k$ opérations.

### Conclusion

Comme $k + (2024 - k) = 2024$, l'un des deux nombres $k$ et $2024 - k$ est au plus égal à $2024/2 = 1012$. L'allumeur choisit la façon qui utilise le moins d'opérations : **il allume tous les réverbères en au plus $1012$ opérations.**

## Going further

1. Où a-t-on utilisé que $1000$ est pair ? Si chaque réverbère était relié à $999$ interrupteurs, montrez que les deux façons de l'étape 2 donneraient des résultats opposés : l'une allume tout, l'autre éteint tout.
2. Le petit prince affirmait qu'allumer tout était possible. Construisez un exemple, avec deux réverbères seulement, où ce n'est pas possible.
