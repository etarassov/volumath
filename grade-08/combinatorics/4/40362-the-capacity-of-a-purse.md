---
id: "40362"
title: "La capacité d'un porte-monnaie"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [monnaie, puissances-de-deux, denombrement, sous-ensembles, majoration-et-exemple, base-deux, algorithme]
adapted_from: null
see_also: ["40363", "0182"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2011, mathématiques, série S"
  reference: "cg-2011-s-sujet.pdf, exercice 2 « Rendez la monnaie ! », question 1° « Sans rendu » (a, b, c, d)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2011.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2011-s-sujet.pdf"
---

## Statement

Un acheteur a $n$ pièces dans son porte-monnaie. Leurs valeurs sont des nombres entiers
strictement positifs $a_1, a_2, \ldots, a_n$ (plusieurs pièces peuvent avoir la même valeur).
Chaque pièce ne peut servir qu'une fois, et le marchand ne rend pas la monnaie : pour payer une
somme, il faut donner des pièces dont le total est exactement cette somme.

On appelle **capacité** du porte-monnaie le plus grand entier $M$ tel qu'on puisse payer
chacune des sommes $1, 2, 3, \ldots, M$. On la note $C(a_1, \ldots, a_n)$.

Dans tout l'exercice, on suppose que $a_1 = 1$ et que les pièces sont rangées par valeur
croissante : $a_1 \leq a_2 \leq \cdots \leq a_n$.

1. Calculer les capacités $C(1, 2, 4)$, $C(1, 2, 5)$ et $C(1, 2, 3, 4, 5)$.
2. Soit $j$ un entier entre $1$ et $n - 1$. On connaît les pièces $a_1, \ldots, a_j$. À quelle
   condition sur la pièce suivante $a_{j+1}$ la capacité change-t-elle quand on l'ajoute,
   c'est-à-dire $C(a_1, \ldots, a_j) \neq C(a_1, \ldots, a_j, a_{j+1})$ ?
3. Donner une méthode pour calculer $C(a_1, \ldots, a_n)$.
4. On fixe le nombre $n$ de pièces. Comment choisir leurs valeurs pour que la capacité soit la
   plus grande possible ?

## Hints

1. **Question 1.** Écrire la liste de toutes les sommes qu'on peut former, et chercher le
   premier entier qui manque.
2. **Question 2.** Ajouter une pièce peut-il faire baisser la capacité ? Si $M$ est l'ancienne
   capacité, quelle est la seule somme dont il faut se demander si elle devient payable ?
3. **Question 2.** Pour payer $M + 1$ avec la nouvelle pièce, il faut la donner et compléter
   avec les anciennes pièces. Que faut-il pour que ce complément soit possible ?
4. **Question 3.** Notons $S_j = a_1 + \cdots + a_j$ le total des $j$ premières pièces. Tant que
   chaque nouvelle pièce vaut au plus « le total des précédentes plus 1 », que vaut la capacité ?
5. **Question 3.** Les pièces sont rangées par valeur croissante. Si une pièce est trop grosse
   pour combler le trou, les suivantes peuvent-elles le combler ?
6. **Question 4.** Compter les façons de choisir un groupe de pièces parmi les $n$ : chaque
   pièce est donnée ou gardée. Combien de sommes différentes peut-on former au plus ?
7. **Question 4.** Essayer les pièces $1, 2, 4, 8, \ldots$

## Solution

**1.** Avec $1, 2, 4$ : $1$, $2$, $3 = 1 + 2$, $4$, $5 = 1 + 4$, $6 = 2 + 4$, $7 = 1 + 2 + 4$.
On ne peut pas dépasser le total $7$, donc $C(1, 2, 4) = 7$.

Avec $1, 2, 5$ : on paie $1$, $2$, $3 = 1 + 2$, mais pas $4$ (la pièce de $5$ est trop grosse et
les deux autres ne font que $3$). Donc $C(1, 2, 5) = 3$.

Avec $1, 2, 3, 4, 5$ : le total vaut $15$, et toute somme de $1$ à $15$ se paie, par exemple
$6 = 1 + 5$, $7 = 2 + 5$, $8 = 3 + 5$, $9 = 4 + 5$, $10 = 1 + 4 + 5$, $11 = 2 + 4 + 5$,
$12 = 3 + 4 + 5$, $13 = 1 + 3 + 4 + 5$, $14 = 2 + 3 + 4 + 5$, $15 = 1 + 2 + 3 + 4 + 5$ (et
$1$ à $5$ avec une seule pièce). Donc $C(1, 2, 3, 4, 5) = 15$.

**2.** Notons $M = C(a_1, \ldots, a_j)$. Toute somme payable avec les $j$ premières pièces reste
payable quand on en ajoute une, donc la capacité ne peut pas baisser : elle change si et
seulement si la somme $M + 1$ devient payable.

- Si $a_{j+1} \geq M + 2$ : pour payer $M + 1$ sans la nouvelle pièce, c'est impossible par
  définition de $M$ ; avec elle, on dépasse déjà $M + 1$. La capacité ne change pas.
- Si $a_{j+1} \leq M + 1$ : on écrit $M + 1 = a_{j+1} + r$ avec $0 \leq r \leq M$. Si $r = 0$,
  on donne la nouvelle pièce seule ; sinon, on donne la nouvelle pièce et on paie $r$ avec les
  anciennes, ce qui est possible puisque $1 \leq r \leq M$. La capacité augmente.

**Conclusion :** la capacité change si et seulement si $a_{j+1} \leq C(a_1, \ldots, a_j) + 1$.

**3.** Notons $S_j = a_1 + a_2 + \cdots + a_j$ le total des $j$ premières pièces. La capacité ne
peut jamais dépasser le total des pièces.

*Tant que les pièces « se suivent bien ».* Supposons que $C(a_1, \ldots, a_j) = S_j$ et que
$a_{j+1} \leq S_j + 1$. Avec les anciennes pièces on paie $1, \ldots, S_j$ ; en ajoutant la
nouvelle, on paie $a_{j+1}, \ldots, a_{j+1} + S_j$. Comme $a_{j+1} \leq S_j + 1$, ces deux listes
se touchent ou se chevauchent, donc on paie toutes les sommes de $1$ à $a_{j+1} + S_j = S_{j+1}$ :
la capacité vaut $S_{j+1}$, le total. Au départ, $C(a_1) = C(1) = 1 = S_1$.

*Au premier trou.* Supposons que $C(a_1, \ldots, a_j) = S_j$ et que $a_{j+1} > S_j + 1$. Toutes
les pièces suivantes valent au moins $a_{j+1}$, puisqu'elles sont rangées par ordre croissant.
Pour payer $S_j + 1$, on ne peut utiliser que des pièces parmi les $j$ premières (toute autre
pièce dépasse déjà $S_j + 1$), et celles-ci font au plus $S_j$. Donc $S_j + 1$ ne sera jamais
payable : la capacité restera $S_j$ jusqu'au bout.

*La méthode.* On calcule les totaux $S_1 = 1, S_2, S_3, \ldots$ en vérifiant à chaque pas que
la pièce suivante vérifie $a_{j+1} \leq S_j + 1$.

- Si une pièce échoue pour la première fois, au rang $j + 1$, alors $C(a_1, \ldots, a_n) = S_j$.
- Si toutes les pièces passent le test, alors $C(a_1, \ldots, a_n) = S_n$, le total de toutes
  les pièces.

Par exemple pour $1, 2, 5$ : $S_2 = 3$ et $5 > 4$, donc la capacité est $3$.

**4.** *On ne peut pas faire mieux que $2^n - 1$.* Pour payer, on choisit pour chaque pièce si
on la donne ou non : deux choix pour la première pièce, deux pour la deuxième, etc., soit
$2 \times 2 \times \cdots \times 2 = 2^n$ choix en tout. L'un d'eux consiste à ne rien donner.
Il reste $2^n - 1$ façons de donner au moins une pièce, donc on forme au plus $2^n - 1$ sommes
différentes. Les sommes $1, 2, \ldots, M$ sont différentes, donc $M \leq 2^n - 1$.

*Les puissances de $2$ atteignent $2^n - 1$.* Prenons $a_1 = 1$, $a_2 = 2$, $a_3 = 4$, …,
$a_n = 2^{n-1}$. Alors $S_j = 1 + 2 + \cdots + 2^{j-1} = 2^j - 1$, et la pièce suivante vaut
$2^j = S_j + 1$ : toutes les pièces passent le test de la question 3, et la capacité vaut le
total $2^n - 1$.

*C'est le seul choix.* Supposons que la capacité vaille $2^n - 1$. Alors les $2^n - 1$ façons de
donner au moins une pièce doivent donner des sommes toutes différentes. On a $a_1 = 1$.
Supposons que $a_1, \ldots, a_j$ soient $1, 2, \ldots, 2^{j-1}$, avec $j < n$, de total
$2^j - 1$.

- Si $a_{j+1} > 2^j$, la question 3 montre que la capacité reste $2^j - 1 < 2^n - 1$.
- Si $a_{j+1} < 2^j$, on peut payer $a_{j+1}$ avec les $j$ premières pièces : deux façons
  différentes donnent la même somme, et la capacité est plus petite que $2^n - 1$.

Donc $a_{j+1} = 2^j$, et de proche en proche les pièces sont $1, 2, 4, \ldots, 2^{n-1}$.

**Conclusion :** la capacité la plus grande possible avec $n$ pièces est $2^n - 1$. Elle est
atteinte en prenant les pièces $1, 2, 4, \ldots, 2^{n-1}$, et seulement avec ce choix.

**Bilan.** Quand on range les pièces par valeur croissante, la capacité se calcule en une
seule lecture : on additionne les pièces tant que chacune vaut au plus « total des précédentes
plus $1$ », et on s'arrête au premier trou. Avec $n$ pièces, on ne peut jamais payer plus de
$2^n - 1$ sommes différentes, et les puissances de $2$ sont le seul porte-monnaie qui y arrive.

## Going further

- Dans la suite du sujet, le marchand a lui aussi des pièces et peut rendre la monnaie : voir
  l'exercice 40363. Avec $n$ pièces pour l'acheteur et $p$ pour le marchand, jusqu'où peut-on
  payer toutes les sommes ?
- Le même problème avec une balance : l'exercice 0182 (« Les poids de l'épicier ») compare
  les poids posés sur un seul plateau, comme ici, et sur les deux plateaux.
- Que devient la méthode de la question 3 si l'on ne suppose plus $a_1 = 1$ ?
