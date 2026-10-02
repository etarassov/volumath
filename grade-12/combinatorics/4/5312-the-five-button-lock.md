---
id: "5312"
title: "La serrure à cinq boutons"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [denombrement, recurrence, coefficients-binomiaux, partitions-ordonnees]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Simplex Locks, par Amy N. Myers (Bryn Mawr College), Philadelphia Area Math Teachers Circle"
  reference: "PAMTC_Simplex_Lock.pdf, sections 3 et 5. Attention, le tableau imprimé de la section 5 donne g(4) = 151 : c'est une erreur, la somme vaut 150 (1 + 4 + 18 + 52 + 75)"
  url: "https://mathcircles.org/activity/simplex-locks/"
  original_language: "en"
  local_copy: "sources/originals/namc/PAMTC_Simplex_Lock.pdf"
---

## Statement

Certaines portes sont fermées par une serrure mécanique à cinq boutons, numérotés de $1$ à $5$. Pour l'ouvrir, on tape une combinaison, c'est-à-dire une suite d'appuis. Les règles de la serrure sont les suivantes.

- Un appui consiste à enfoncer **un ou plusieurs** boutons **en même temps**. Quand plusieurs boutons sont enfoncés ensemble, l'ordre dans lequel on pose les doigts ne compte pas.
- Un bouton enfoncé reste enfoncé : il ne peut donc servir que dans **un seul** appui.
- Tous les boutons doivent être utilisés : à la fin, les cinq boutons sont enfoncés.

Par exemple, avec une serrure à **deux** boutons, il y a exactement trois combinaisons : « $1$ puis $2$ », « $2$ puis $1$ », et « $1$ et $2$ ensemble ».

1. Combien de combinaisons différentes une serrure à cinq boutons possède-t-elle ?
2. Même question si la règle change et que certains boutons ont le droit de **rester libres** : une combinaison est alors une suite d'appuis, éventuellement vide, qui n'utilise pas forcément tous les boutons.

## Hints

1. Compter d'abord à la main les combinaisons d'une serrure à **trois** boutons, en les classant par le nombre d'appuis : un seul appui, deux appuis, trois appuis.
2. On trouve $13$ pour trois boutons. Noter $f(n)$ le nombre de combinaisons d'une serrure à $n$ boutons, et poser $f(0) = 1$ (la combinaison vide). On a donc $f(0) = 1$, $f(1) = 1$, $f(2) = 3$, $f(3) = 13$.
3. Pour trouver une relation, regarder le **tout premier appui** : combien de boutons contient-il, et lesquels ? Une fois ce choix fait, que reste-t-il à compter ?
4. Pour la question 2, commencer par choisir **l'ensemble des boutons réellement utilisés**.

## Solution

### Question 1 : la réponse est 541

Notons $f(n)$ le nombre de combinaisons d'une serrure à $n$ boutons, avec la convention $f(0) = 1$ : sur une serrure sans bouton, il y a une seule combinaison, celle qui ne fait rien.

**La relation de récurrence.** Regardons le **premier appui** d'une combinaison. Il contient un certain nombre $j$ de boutons, avec $1 \leqslant j \leqslant n$, et ces $j$ boutons sont choisis parmi les $n$ boutons de la serrure, sans que leur ordre compte : il y a $\binom{n}{j}$ choix possibles.

Une fois ce premier appui joué, il reste $n - j$ boutons libres, et la suite de la combinaison est exactement une combinaison de ces $n-j$ boutons : il y en a $f(n-j)$.

Comme le nombre $j$ et l'ensemble des boutons du premier appui déterminent le découpage, et qu'aucune combinaison n'est comptée deux fois, on obtient

$$f(n) = \sum_{j=1}^{n} \binom{n}{j} \, f(n-j) .$$

**Le calcul.**

$$f(1) = \binom{1}{1} f(0) = 1 .$$

$$f(2) = \binom{2}{1} f(1) + \binom{2}{2} f(0) = 2 \times 1 + 1 \times 1 = 3 .$$

$$f(3) = \binom{3}{1} f(2) + \binom{3}{2} f(1) + \binom{3}{3} f(0) = 3 \times 3 + 3 \times 1 + 1 \times 1 = 13 .$$

$$f(4) = 4 \times 13 + 6 \times 3 + 4 \times 1 + 1 \times 1 = 52 + 18 + 4 + 1 = 75 .$$

$$f(5) = 5 \times 75 + 10 \times 13 + 10 \times 3 + 5 \times 1 + 1 \times 1 = 375 + 130 + 30 + 5 + 1 = 541 .$$

**Une serrure à cinq boutons possède donc $541$ combinaisons.**

**Vérification par un autre chemin.** On peut aussi classer les combinaisons par le **nombre d'appuis**. Avec cinq boutons :

- $1$ appui : les cinq boutons ensemble, soit $1$ combinaison ;
- $5$ appuis : les cinq boutons un par un, dans un ordre quelconque, soit $5! = 120$ combinaisons ;
- $2$ appuis : il faut couper $\{1,2,3,4,5\}$ en deux paquets non vides et les ordonner. Les tailles possibles sont $1+4$, $2+3$, $3+2$, $4+1$, d'où $\binom{5}{1} + \binom{5}{2} + \binom{5}{3} + \binom{5}{4} = 5 + 10 + 10 + 5 = 30$ ;
- $3$ appuis : $150$ ; $4$ appuis : $240$ (ces deux nombres se calculent de la même façon, en choisissant successivement le contenu de chaque appui).

Et $1 + 30 + 150 + 240 + 120 = 541$. Les deux méthodes concordent.

### Question 2 : la réponse est 1082

Notons $g(n)$ le nombre de combinaisons quand les boutons n'ont plus l'obligation d'être tous utilisés.

**Le décompte.** Choisissons d'abord l'ensemble $E$ des boutons réellement utilisés. Si $E$ compte $k$ boutons, il y a $\binom{n}{k}$ choix pour $E$, puis $f(k)$ façons de taper une combinaison qui utilise exactement ces $k$ boutons. Donc

$$g(n) = \sum_{k=0}^{n} \binom{n}{k} \, f(k) .$$

Pour $n = 5$ :
$$g(5) = 1 \times 1 + 5 \times 1 + 10 \times 3 + 10 \times 13 + 5 \times 75 + 1 \times 541 = 1 + 5 + 30 + 130 + 375 + 541 = 1082 .$$

**Une jolie surprise.** On remarque que $1082 = 2 \times 541$. Ce n'est pas un hasard. Reprenons la relation de récurrence et posons $k = n - j$ : comme $\binom{n}{j} = \binom{n}{n-j}$, elle s'écrit

$$f(n) = \sum_{k=0}^{n-1} \binom{n}{k} f(k) .$$

La somme qui donne $g(n)$ est la même, avec en plus le terme $k = n$, qui vaut $\binom{n}{n} f(n) = f(n)$. Donc

$$g(n) = f(n) + f(n) = 2 f(n) ,$$

pour tout $n \geqslant 1$. On retrouve $g(4) = 2 \times 75 = 150$ et $g(5) = 2 \times 541 = 1082$.

*(Le document d'origine imprime $g(4) = 151$ ; c'est une faute de frappe, la somme $1 + 4 + 18 + 52 + 75$ vaut bien $150$.)*

## Going further

1. Les nombres $1$, $1$, $3$, $13$, $75$, $541$, … comptent aussi les façons de classer $n$ concurrents en autorisant les ex æquo. Expliquer pourquoi c'est le même problème.
2. Combien de combinaisons pour une serrure à six boutons ? À sept ?
3. Combien de combinaisons d'une serrure à cinq boutons utilisent exactement trois appuis ?
