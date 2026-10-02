---
id: "13014"
title: "Cent ampoules et trois interrupteurs"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [parite, interrupteurs, invariant]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 2 octobre 2013"
  reference: "2017-09_coupe_automne_2013.pdf, exercice 3 ; corrigé 2017-09_coupe_automne_2013_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2013.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2013.pdf"
---

## Statement

On dispose de $100$ ampoules, numérotées de $1$ à $100$. Chacune est soit allumée, soit éteinte. Elles sont reliées à trois interrupteurs $A$, $B$ et $C$ :

- appuyer sur $A$ change l'état de **toutes** les ampoules : celles qui étaient allumées s'éteignent, et celles qui étaient éteintes s'allument ;
- appuyer sur $B$ change l'état des ampoules qui portent un numéro **impair**, et seulement d'elles ;
- appuyer sur $C$ change l'état des ampoules dont le numéro s'écrit $3n + 1$ avec $n$ entier, c'est-à-dire $1, 4, 7, 10, \ldots$, et seulement d'elles.

Au début de la soirée, toutes les ampoules sont allumées. Pendant la fête, Igor, emporté par son enthousiasme, appuie au hasard sur les interrupteurs, $1000$ fois en tout. À la fin, on constate que les ampoules numéro $95$ et numéro $96$ sont éteintes.

Combien d'ampoules sont encore allumées ?

## Hints

1. Si l'on appuie deux fois de suite sur le même interrupteur, que se passe-t-il ? L'ordre dans lequel on appuie a-t-il de l'importance ?
2. Note $a$, $b$ et $c$ le nombre de fois où Igor a appuyé sur $A$, $B$ et $C$. Ce qui compte, c'est seulement de savoir si chacun de ces nombres est pair ou impair.
3. Quels interrupteurs agissent sur l'ampoule $96$ ? Sur l'ampoule $95$ ? Qu'en déduis-tu sur $a$, puis sur $b$, puis sur $c$ ?

## Solution

**Ce qui compte vraiment.** Une ampoule change d'état chaque fois qu'on appuie sur un interrupteur qui agit sur elle. Elle est donc allumée à la fin si elle a changé d'état un nombre **pair** de fois, et éteinte si elle a changé d'état un nombre **impair** de fois. L'ordre des appuis ne compte pas, seul compte le nombre d'appuis sur chaque interrupteur.

Notons $a$, $b$ et $c$ le nombre de fois où Igor a appuyé sur $A$, $B$ et $C$. On a
$$a + b + c = 1000 .$$

**L'ampoule $96$.** Le nombre $96$ est pair, donc $B$ n'agit pas sur elle. On a $96 = 3 \times 32$, donc $96$ ne s'écrit pas $3n + 1$, et $C$ n'agit pas sur elle non plus. Seul $A$ la fait changer d'état : elle a changé $a$ fois. Elle est éteinte, donc **$a$ est impair**.

**L'ampoule $95$.** Le nombre $95$ est impair, donc $B$ agit sur elle. On a $95 = 3 \times 31 + 2$, donc $95$ ne s'écrit pas $3n + 1$ et $C$ n'agit pas sur elle. Elle a changé d'état $a + b$ fois. Elle est éteinte, donc $a + b$ est impair. Comme $a$ est impair, **$b$ est pair**.

**Le nombre $c$.** On a $c = 1000 - a - b$. Le nombre $1000$ est pair et $a + b$ est impair, donc **$c$ est impair**.

**L'état final.** Tout se passe comme si Igor avait appuyé une seule fois sur $A$, jamais sur $B$, et une seule fois sur $C$. Appuyer sur $A$ éteint toutes les ampoules, puis appuyer sur $C$ rallume exactement celles dont le numéro s'écrit $3n + 1$.

Ces numéros sont $1, 4, 7, \ldots, 100$, c'est-à-dire $3n + 1$ pour $n = 0, 1, 2, \ldots, 33$, puisque $3 \times 33 + 1 = 100$. Il y en a $34$.

**Conclusion.** À la fin de la soirée, il reste $34$ ampoules allumées.

## Going further

1. Toujours avec $1000$ appuis en tout, est-il possible que les ampoules $1$, $95$ et $96$ soient toutes les trois éteintes à la fin ?
2. Au début, toutes les ampoules sont allumées. Combien de situations différentes (ensembles d'ampoules allumées) peut-on obtenir en appuyant sur les interrupteurs autant de fois qu'on veut ?
