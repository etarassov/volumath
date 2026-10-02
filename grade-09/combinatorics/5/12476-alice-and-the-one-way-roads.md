---
id: "12476"
title: "Alice et les routes à sens unique"
grade: 9
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [strategie, questions, routes-a-sens-unique, double-comptage, algorithme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 1er avril 2020"
  reference: "2020-11_Enonce-Test-Avril-2020.pdf, exercices 4 (groupe Junior) et 5 (groupe Senior), qui sont le même problème ; corrigé 2020-04_Corrige-Web.pdf (solution du corrigé, rédigée sans le vocabulaire des graphes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Avril-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Avril-2020.pdf"
---

## Statement

Au pays des merveilles, il y a $n$ villes. Chaque paire de villes est reliée par une route à sens
unique, qui part d'une des deux villes et arrive à l'autre.

Pour s'y retrouver, Alice interroge le roi de cœur. À chaque question, elle choisit deux villes, et
le roi lui dit de laquelle des deux part la route qui les relie.

Démontrer qu'en $5n$ questions au plus, Alice peut savoir s'il existe une ville d'où part au plus
une route.

## Hints

1. Si Alice sait déjà que deux routes partent d'une ville, cette ville ne l'intéresse plus. Appelle
   une telle ville **éliminée**. Il est inutile de poser des questions sur deux villes éliminées.
2. Première phase : tant qu'il reste deux villes non éliminées sur lesquelles Alice n'a pas encore
   posé de question, elle pose cette question. Chaque réponse fait connaître une route qui part
   d'une ville. Pourquoi cette phase compte-t-elle au plus $2n$ questions ?
3. À la fin de cette phase, Alice connaît toutes les routes entre les villes non éliminées. Compte
   ces routes de deux façons pour montrer qu'il reste au plus $3$ villes non éliminées.
4. Pour chacune de ces $3$ villes au plus, Alice peut demander toutes les routes qui la touchent.

## Solution

Au cours des questions, on dit qu'une ville est **éliminée** dès qu'Alice connaît deux routes qui
en partent. Une ville éliminée n'est pas une ville d'où part au plus une route : elle ne peut pas
répondre au problème. On dit qu'une ville est **candidate** tant qu'elle n'est pas éliminée.

Voici la stratégie d'Alice, en deux phases.

### Première phase : au plus $2n$ questions

Tant qu'il existe deux villes candidates sur lesquelles Alice n'a pas encore posé de question, elle
choisit deux telles villes et pose la question. Comme il n'y a qu'un nombre fini de paires de
villes, cette phase s'arrête.

**Comptons les questions.** Chaque réponse fait connaître une route, qui part d'une des deux villes
de la question. Disons que cette ville **reçoit** la réponse.

Une ville qui reçoit une réponse était candidate au moment de la question, donc Alice connaissait
au plus une route qui en partait. Après la réponse, elle en connaît au plus deux. Si elle en connaît
deux, la ville est éliminée, et on ne pose plus de question sur elle pendant cette phase.

Chaque ville reçoit donc au plus $2$ réponses. Comme chaque question donne une réponse reçue par une
seule ville, la première phase compte au plus $2n$ questions.

### Il reste au plus $3$ villes candidates

À la fin de la première phase, notons $x$ le nombre de villes candidates. Si $x \leqslant 1$, il
n'y a rien à démontrer. Sinon, toute paire de villes candidates a fait l'objet d'une question
(sinon la première phase ne serait pas finie). Alice connaît donc les $\dfrac{x(x - 1)}{2}$ routes
qui relient deux villes candidates.

Comptons ces routes d'une autre façon. Chacune part d'une ville candidate, et d'une ville candidate
part au plus une route connue d'Alice. Il y a donc au plus $x$ telles routes. Ainsi
$$\frac{x(x - 1)}{2} \leqslant x, \quad \text{donc} \quad x - 1 \leqslant 2, \quad \text{c'est-à-dire} \quad x \leqslant 3.$$

### Seconde phase : au plus $3n$ questions

Pour chaque ville candidate $y$, Alice pose la question pour chacune des $n - 1$ paires formées de
$y$ et d'une autre ville, même si elle connaît déjà la réponse. Cela fait au plus $3(n - 1)$
questions.

Elle connaît alors toutes les routes qui touchent $y$, et elle sait exactement combien de routes
partent de $y$.

### Conclusion

Les villes éliminées ne répondent pas au problème, puisqu'au moins deux routes en partent. Il existe
donc une ville d'où part au plus une route si et seulement si l'une des villes candidates est dans
ce cas, et Alice le sait après la seconde phase. Elle a posé au plus
$$2n + 3(n - 1) < 5n$$
questions. **En $5n$ questions au plus, Alice peut savoir s'il existe une ville d'où part au plus
une route.**

## Going further

1. Pourquoi Alice ne peut-elle pas simplement demander le sens de toutes les routes ? Pour quelles
   valeurs de $n$ cette méthode tient-elle en $5n$ questions ?
2. Adapter la stratégie pour savoir s'il existe une ville d'où partent au plus deux routes, en
   $8n$ questions au plus.
