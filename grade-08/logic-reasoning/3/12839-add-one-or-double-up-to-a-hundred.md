---
id: "12839"
title: "Ajouter 1 ou doubler, jusqu'à 100"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [jeu, strategie-gagnante, parite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 17 janvier 2024"
  reference: "2025-01_Enonce-Test-2.pdf, test junior, exercice 2 ; corrigé 2025-01_Corrige-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-2.pdf"
---

## Statement

Anna et Baptiste jouent au jeu suivant. Au départ, le nombre $1$ est écrit au tableau. Ensuite, chacun son tour, en commençant par Anna, le joueur efface le nombre écrit au tableau et le remplace :

- soit par ce nombre augmenté de $1$,
- soit par le double de ce nombre.

Le premier joueur qui écrit un entier supérieur ou égal à $100$ gagne, et l'autre perd.

Démontrer que l'un des deux joueurs peut gagner à coup sûr, quoi que fasse son adversaire, et dire lequel.

## Hints

1. Si le nombre au tableau vaut au moins $50$, le joueur dont c'est le tour gagne tout de suite. Pourquoi ?
2. Personne ne veut donc être le premier à écrire un nombre supérieur ou égal à $50$, sauf s'il gagne du même coup. Est-ce possible en partant d'un nombre inférieur ou égal à $49$ ?
3. Supposons que Baptiste ajoute toujours $1$, sauf quand il peut gagner. Regardez la parité des nombres qu'Anna trouve au tableau quand c'est à elle de jouer.

## Solution

C'est **Baptiste** qui peut gagner à coup sûr.

### La stratégie de Baptiste

Quand c'est à Baptiste de jouer, et que le nombre au tableau est $n$ :

- si $n \geq 50$, il écrit $2n$, qui vaut au moins $100$, et il gagne ;
- si $n \leq 49$, il écrit $n + 1$.

Montrons que cette stratégie le fait gagner, quoi que fasse Anna.

### Ce qu'Anna trouve au tableau

Montrons que, tant que la partie dure, **Anna trouve toujours au tableau un nombre impair inférieur ou égal à $49$**.

- Au premier tour, elle trouve $1$, qui est impair et inférieur à $49$.
- Supposons qu'Anna trouve un nombre impair $m \leq 49$. Elle écrit $m + 1$ ou $2m$. Dans les deux cas, elle écrit un nombre **pair** (impair plus un, ou double), et ce nombre vaut au plus $2 \times 49 = 98$. Elle n'a donc pas gagné.
- Baptiste trouve alors un nombre pair $n$. Si $n \geq 50$, il gagne. Sinon $n \leq 49$, et comme $n$ est pair, en fait $n \leq 48$. Baptiste écrit $n + 1$, qui est impair et vaut au plus $49$.

Au tour suivant, Anna trouve donc de nouveau un nombre impair inférieur ou égal à $49$.

### Conclusion

On vient de voir qu'Anna n'écrit jamais un nombre supérieur ou égal à $100$ : elle ne peut pas gagner.

Mais la partie ne dure pas éternellement. À chaque coup, le nombre au tableau augmente d'au moins $1$ (on a $n + 1 > n$ et $2n > n$, car $n \geq 1$). Au bout d'au plus $99$ coups, quelqu'un a donc écrit un nombre supérieur ou égal à $100$. Ce n'est pas Anna, c'est donc Baptiste : **Baptiste gagne à coup sûr.**

## Going further

1. Pourquoi a-t-on eu besoin de savoir que le nombre trouvé par Baptiste est pair pour être sûr qu'il écrit au plus $49$ ? Que se passerait-il s'il trouvait $49$ ?
2. Remplacez $100$ par $101$ : le premier qui écrit un nombre supérieur ou égal à $101$ gagne. Montrez que la stratégie de Baptiste ci-dessus ne marche plus : Anna peut s'arranger pour trouver $25$ au tableau, puis écrire $50$. (Baptiste peut encore gagner, mais avec une stratégie plus fine. On peut la trouver en classant, en partant de $100$ et en descendant, chaque nombre en « gagnant » ou « perdant » pour le joueur qui doit jouer.)
