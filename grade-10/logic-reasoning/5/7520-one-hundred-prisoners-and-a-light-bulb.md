---
id: "7520"
title: "Cent prisonniers et une ampoule"
grade: 10
theme: logic-reasoning
difficulty: 5
duration_min: 50
tags: [strategie, information, comptage, communication, invariant]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 23 (solution p. 242, résolu par Khalil Besrour). L'erratum publié (stage_ete_2012_errata.pdf) corrige la première phrase de l'énoncé en « Chaque jour, l'un des 100 prisonniers ». L'énoncé d'origine ne précise pas l'état initial de l'ampoule, et la solution imprimée suppose en plus que le compteur est le premier à entrer dans la salle ; ici l'ampoule est éteinte au départ, et la variante à état initial inconnu est traitée dans « Pour aller plus loin »."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Cent prisonniers sont enfermés séparément. Chaque jour, le gardien en choisit un et le conduit dans une salle où se trouve une ampoule munie d'un interrupteur. Le prisonnier peut, s'il le souhaite, allumer ou éteindre l'ampoule, puis il est ramené dans sa cellule. L'ampoule est **éteinte** le premier jour.

Le gardien choisit qui il veut, et peut convoquer plusieurs fois la même personne. La seule garantie est la suivante : **chaque prisonnier sera convoqué un nombre illimité de fois**, pour peu qu'on attende assez longtemps.

À tout moment, un prisonnier peut déclarer : « nous sommes tous passés dans la salle ». Si c'est vrai, tous sont libérés ; si c'est faux, tous sont exécutés.

Avant le premier jour, les cent prisonniers se réunissent une fois pour convenir d'une stratégie. Ensuite ils sont séparés et le seul moyen de communiquer est l'ampoule.

Peuvent-ils garantir leur libération ?

## Hints

1. Oui, ils le peuvent. Toute la difficulté est qu'une ampoule ne porte qu'un bit d'information : allumée ou éteinte. Il faut donc s'en servir non pas comme d'un message, mais comme d'un **compteur**.
2. Si tout le monde joue le même rôle, personne ne peut distinguer « l'ampoule a été allumée par une personne » de « elle a été allumée par dix personnes ». Il faut casser la symétrie : désignez quelqu'un à part.
3. Donne à cette personne, et à elle seule, le droit d'**éteindre** l'ampoule. Que peut-elle compter ?
4. Donne aux 99 autres une consigne qui garantit que chacun n'allume l'ampoule **qu'une seule fois de sa vie**.
5. Quand le compteur doit-il déclarer ? Attention : il ne se compte pas lui-même.

## Solution

**Réponse : oui, ils peuvent garantir leur libération.**

**Étape 1. La stratégie, décidée lors de la réunion.**

On désigne un prisonnier particulier, appelons-le le **compteur**. Les $99$ autres sont les **lampistes**.

*Consigne du compteur.* Chaque fois qu'il entre et trouve l'ampoule **allumée**, il l'éteint et ajoute $1$ à son compte. S'il la trouve éteinte, il ne fait rien. Son compte part de $0$.

*Consigne d'un lampiste.* Chaque fois qu'il entre, il regarde l'ampoule.

- S'il n'a **jamais encore allumé l'ampoule de sa vie** et qu'il la trouve éteinte, il l'allume. C'est sa seule et unique action de toute l'histoire.
- Dans tous les autres cas (il a déjà allumé une fois, ou l'ampoule est déjà allumée), il ne touche à rien.

*Déclaration.* Dès que le compte du compteur atteint $99$, il déclare que tout le monde est passé.

**Étape 2. Pourquoi la déclaration est-elle toujours vraie ?**

L'ampoule part éteinte. Les seuls à l'allumer sont les lampistes, et chacun ne l'allume **qu'une fois au plus dans toute sa vie**. Le seul à l'éteindre est le compteur.

Donc, chaque fois que le compteur éteint l'ampoule, c'est qu'un lampiste l'avait allumée juste avant, et ce lampiste n'a jamais allumé auparavant et ne rallumera jamais. Autrement dit :

$$\text{compte du compteur} \;=\; \text{nombre de lampistes ayant déjà allumé une fois}.$$

Si ce compte vaut $99$, c'est que les $99$ lampistes sont tous passés au moins une fois dans la salle. Le compteur, lui, y est passé aussi, forcément, puisque c'est lui qui a fait le compte. Donc les $100$ y sont passés, et la déclaration est vraie.

**Étape 3. Pourquoi le compte finit-il par atteindre 99 ?**

Il faut vérifier que la stratégie ne bloque jamais. Supposons qu'à un moment le compte du compteur soit resté bloqué à une valeur $k < 99$ pour toujours. Deux situations :

- *L'ampoule reste éteinte pour toujours.* Il reste au moins un lampiste qui n'a jamais allumé. Or il sera convoqué encore une fois, et il trouvera l'ampoule éteinte : il l'allumera. Contradiction.
- *L'ampoule reste allumée pour toujours.* Or le compteur sera convoqué encore une fois, et il l'éteindra en ajoutant $1$ à son compte. Contradiction.

Dans les deux cas c'est absurde, donc le compte augmente indéfiniment jusqu'à atteindre $99$. Comme il ne peut pas dépasser $99$ (il n'y a que $99$ lampistes), il l'atteint exactement, et la libération est garantie.

## Going further

**Combien de temps cela prend-il ?** Très longtemps si le gardien est malveillant, mais peu importe : l'énoncé demande seulement une garantie, pas une garantie rapide.

**Et si on ne sait pas si l'ampoule est allumée au départ ?** C'est la version que pose en réalité le recueil d'origine, qui ne précise pas l'état initial. La stratégie ci-dessus tombe en panne : si l'ampoule était allumée dès le début, le compteur compte un signal qui ne correspond à personne, et il déclare trop tôt.

Le remède est joli. Chaque lampiste allume l'ampoule non pas une fois, mais **deux fois** dans sa vie (toujours selon la même règle : quand il la trouve éteinte et qu'il n'a pas encore fait ses deux allumages). Le compteur, lui, déclare quand son compte atteint $198 = 2 \times 99$.

Pourquoi cela marche-t-il ? L'état initial fausse le compte d'au plus $1$. Donc, quand le compteur atteint $198$, le nombre de vrais signaux émis est au moins $197$. Or si un lampiste n'était jamais passé, les $98$ autres n'auraient pu émettre que $2 \times 98 = 196$ signaux au plus, ce qui est trop peu. Donc tout le monde est passé. Et réciproquement le compte atteint bien $198$ tôt ou tard, par le même raisonnement qu'à l'étape 3.
