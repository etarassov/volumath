---
id: "13027"
title: "Le jeu des vingt-deux cartes"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [jeu, strategie gagnante, chiffre des unites, parite, invariant]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, test de rentrée (Coupe Animath d'automne) du 1er octobre 2014"
  reference: "2017-09_coupe_automne_2014.pdf, exercices lycéens, exercice 10 ; corrigé 2017-09_coupe_automne_2014_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2014.pdf"
---

## Statement

Sur la table sont posées $22$ cartes, numérotées $1, 2, \ldots, 22$. Alcindor et Benoît retirent à tour de rôle une carte de leur choix, jusqu'à ce qu'il n'en reste plus. C'est Alcindor qui commence.

À la fin, chacun calcule la somme des numéros de ses cartes et regarde le **chiffre des unités** de cette somme. Celui qui obtient le chiffre le plus élevé gagne.

L'un des deux joueurs a-t-il un moyen de gagner à coup sûr, quoi que fasse l'autre ? Si oui, lequel ?

## Hints

1. Le chiffre des unités d'une somme ne dépend que des chiffres des unités des nombres que l'on ajoute. Combien de cartes ont pour chiffre des unités $0$ ? $1$ ? $2$ ? $3$ ?
2. Si chaque chiffre des unités apparaissait sur exactement deux cartes, le joueur qui joue en second pourrait copier l'autre. Ici, les chiffres $1$ et $2$ apparaissent trois fois chacun. Alcindor peut en profiter dès son premier coup.
3. Essaie la stratégie suivante pour Alcindor : il commence par prendre une carte dont le chiffre des unités est $2$. Ensuite, chaque fois que Benoît prend une carte, Alcindor en prend une qui a le même chiffre des unités, s'il en reste. Quelles cartes chacun a-t-il à la fin ?

## Solution

Nous allons montrer qu'**Alcindor peut gagner à coup sûr**.

**Seuls les chiffres des unités comptent.** Le chiffre des unités d'une somme ne dépend que des chiffres des unités des nombres ajoutés. On peut donc remplacer chaque carte par son chiffre des unités, que nous appellerons sa **valeur**. Les valeurs des $22$ cartes sont :

- la valeur $1$ pour les cartes $1$, $11$, $21$, et la valeur $2$ pour les cartes $2$, $12$, $22$ : trois cartes chacune ;
- la valeur $0$ pour les cartes $10$ et $20$, la valeur $3$ pour les cartes $3$ et $13$, ..., la valeur $9$ pour les cartes $9$ et $19$ : deux cartes chacune.

**La stratégie d'Alcindor.** Alcindor commence par prendre une carte de valeur $2$. Ensuite, chaque fois que Benoît prend une carte :

- s'il reste sur la table une carte de la même valeur, Alcindor la prend ;
- sinon, Alcindor prend n'importe quelle carte.

**Ce qui reste sur la table.** Montrons qu'après chaque coup d'Alcindor, il y a sur la table **exactement une valeur présente un nombre impair de fois**. Appelons-la la valeur impaire du moment.

Après le premier coup d'Alcindor, il reste trois cartes de valeur $1$ et deux cartes de chacune des autres valeurs : la valeur impaire est $1$.

Supposons la propriété vraie après un coup d'Alcindor, avec la valeur impaire $v$. Benoît prend une carte de valeur $w$.

- Si $w \neq v$ : il y avait un nombre pair de cartes de valeur $w$, et au moins une, donc au moins deux. Il en reste au moins une, et Alcindor la prend. Le nombre de cartes de valeur $w$ redevient pair, et $v$ reste la valeur impaire.
- Si $w = v$ et qu'il reste une carte de valeur $v$ : Alcindor la prend. Le nombre de cartes de valeur $v$ a diminué de $2$, il reste impair, et $v$ reste la valeur impaire.
- Si $w = v$ et que Benoît a pris la **dernière** carte de valeur $v$ : toutes les valeurs sont maintenant présentes un nombre pair de fois. S'il reste des cartes, Alcindor en prend une, de valeur $u$, et $u$ devient la nouvelle valeur impaire.

La propriété est donc vraie tout au long de la partie. On retient deux faits.

- Dans les deux premiers cas, la valeur impaire ne change pas. Une valeur cesse donc d'être la valeur impaire seulement dans le troisième cas, c'est-à-dire quand **Benoît** prend sa dernière carte.
- Une valeur ne devient impaire que de deux façons : la valeur $1$ au début, ou une valeur $u$ qu'Alcindor choisit librement.

**Qui reçoit les cartes de chaque valeur.** En dehors du premier coup d'Alcindor, les cartes sont prises :

- soit **par paires** : Benoît prend une carte, et Alcindor prend aussitôt une carte de même valeur ;
- soit **hors paire** : Benoît prend la dernière carte de la valeur impaire, ou Alcindor choisit librement une carte, qui fixe la nouvelle valeur impaire.

Les paires donnent autant de cartes à chacun. Regardons les cartes hors paire, valeur par valeur.

- **La valeur $1$** est impaire dès le début, et le reste jusqu'à ce que Benoît prenne sa dernière carte (toutes les cartes finissent par être prises). Alcindor ne la choisit jamais librement : avant cela elle est impaire, après il n'en reste plus. Sa seule carte hors paire est la dernière, prise par Benoît. Sur trois cartes de valeur $1$, Benoît en a donc **deux** et Alcindor **une**.
- **Une valeur $u$ choisie librement par Alcindor** une fois (elle ne peut l'être qu'une fois, car ensuite Benoît prend sa dernière carte) : elle a exactement deux cartes hors paire, celle d'Alcindor et la dernière, prise par Benoît. Le partage est égal.
- **Une valeur qui n'est jamais impaire** n'a que des cartes prises par paires : le partage est égal.

Ajoutons enfin la carte de valeur $2$ prise par Alcindor au premier coup. Les deux autres cartes de valeur $2$ sont partagées également, donc Alcindor a **deux** cartes de valeur $2$ et Benoît **une**. Pour les valeurs $0$, $3$, $4$, ..., $9$, qui ont deux cartes chacune, chaque joueur en a une.

**Les résultats.** Rappelons que $0 + 1 + 2 + \cdots + 9 = 45$.

- Alcindor a une carte de chaque valeur, plus une deuxième carte de valeur $2$ : la somme des valeurs vaut $45 + 2 = 47$, et son résultat est $7$.
- Benoît a une carte de chaque valeur, plus une deuxième carte de valeur $1$ : la somme des valeurs vaut $45 + 1 = 46$, et son résultat est $6$.

On vérifie que chacun a bien $11$ cartes : $10 + 1 = 11$.

**Conclusion.** Si Alcindor suit cette stratégie, il obtient $7$ et Benoît obtient $6$, quoi que fasse Benoît. C'est donc **Alcindor** qui peut gagner à coup sûr.

## Going further

1. Même jeu avec $21$ cartes numérotées de $1$ à $21$ ; Alcindor commence, et il aura donc une carte de plus que Benoît. L'un des deux peut-il gagner à coup sûr ?
2. Montrer que, dans le jeu à $22$ cartes, les deux joueurs ne peuvent jamais obtenir le même résultat, quelle que soit la façon de jouer.
