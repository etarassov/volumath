---
id: "0582"
title: "Le plus âgé et le meilleur"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 15
tags: [logique, langage, contre-exemple, ensembles]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 6–7 классы, 2-е полугодие, пособие для преподавателей"
  reference: "KuOn2017.pdf, листок 4 «Логично мыслить – не порок», задача 3"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/KuOn2017.pdf"
---

## Statement

Dans un club, certaines personnes sont mathématiciennes, d'autres sont joueuses d'échecs, et certaines sont les deux à la fois. On suppose qu'il y a au moins une personne qui est à la fois mathématicienne et joueuse d'échecs, et que deux personnes n'ont jamais exactement le même âge.

a) « Le mathématicien le plus âgé parmi les joueurs d'échecs » et « le joueur d'échecs le plus âgé parmi les mathématiciens » : est-ce forcément la même personne ?

b) Même question avec « le meilleur » à la place de « le plus âgé » : « le meilleur mathématicien parmi les joueurs d'échecs » et « le meilleur joueur d'échecs parmi les mathématiciens » sont-ils forcément la même personne ?

## Hints

1. Dans les deux questions, de quelles personnes parle-t-on exactement ? Commence par décrire ce groupe.
2. Dans la question a), les deux expressions désignent la personne la plus âgée d'un certain groupe. Est-ce le même groupe dans les deux cas ?
3. Dans la question b), pose-toi la question : le meilleur, mais le meilleur en quoi ? Est-ce la même chose dans les deux expressions ?
4. Pour répondre « non » à une question comme celle-ci, il suffit d'inventer un exemple où cela ne marche pas.

## Solution

**a) Oui, c'est forcément la même personne.**

Regardons de qui on parle. « Un mathématicien parmi les joueurs d'échecs », c'est une personne qui est mathématicienne **et** joueuse d'échecs. « Un joueur d'échecs parmi les mathématiciens », c'est aussi une personne qui est joueuse d'échecs **et** mathématicienne.

Les deux expressions décrivent donc le même groupe de personnes : celles qui sont à la fois mathématiciennes et joueuses d'échecs. Appelons-le $G$ ; par hypothèse, $G$ n'est pas vide.

- « Le mathématicien le plus âgé parmi les joueurs d'échecs » est la personne la plus âgée de $G$.
- « Le joueur d'échecs le plus âgé parmi les mathématiciens » est aussi la personne la plus âgée de $G$.

Comme deux personnes n'ont jamais le même âge, le groupe $G$ a une seule personne la plus âgée. Les deux expressions désignent donc bien la même personne.

**b) Non, pas forcément.**

La différence vient du mot lui-même. « Le plus âgé » se comprend tout seul : l'âge d'une personne ne dépend pas de l'activité dont on parle. Mais « le meilleur » appelle toujours la question : le meilleur **en quoi** ?

- « Le meilleur mathématicien parmi les joueurs d'échecs » veut dire : dans le groupe $G$, celui qui est le meilleur **en mathématiques**.
- « Le meilleur joueur d'échecs parmi les mathématiciens » veut dire : dans le même groupe $G$, celui qui est le meilleur **aux échecs**.

Ce sont deux classements différents des mêmes personnes, et rien n'oblige la même personne à être en tête des deux.

*Contre-exemple.* Supposons que $G$ contienne exactement deux personnes, Alice et Benoît. Alice est meilleure en mathématiques que Benoît, et Benoît est meilleur aux échecs qu'Alice. Alors « le meilleur mathématicien parmi les joueurs d'échecs » est Alice, tandis que « le meilleur joueur d'échecs parmi les mathématiciens » est Benoît. Ce ne sont pas les mêmes personnes.

**Conclusion.**

a) Oui : les deux expressions désignent la personne la plus âgée d'un seul et même groupe.
b) Non : les deux expressions comparent les mêmes personnes, mais selon deux critères différents.

## Going further

1. Les phrases « certains plombiers aiment le rap » et « certains amateurs de rap sont plombiers » veulent-elles dire la même chose ?
2. Et les phrases « tous les plombiers aiment le rap » et « tous les amateurs de rap sont plombiers » ?
3. Grondé pour son écriture illisible, Denis répond : « tous les grands hommes avaient une mauvaise écriture, donc je suis un grand homme ». Où est l'erreur de raisonnement ?
