---
id: "5808"
title: "Bal ou Da"
grade: 10
theme: logic-reasoning
difficulty: 5
duration_min: 45
tags: [logique, langue inconnue, une seule question, tableau de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Knights and Knaves: A journey to the land of logic (Altha Rodin, d'après Raymond Smullyan)"
  reference: "RodinKnightsandKnaves.pdf, partie 5 « The Island of Zombies », scénarios 1 et 2 (handout sans solutions)"
  url: "https://mathcircles.org/activity/knights-and-knaves-a-journey-to-the-land-of-logic/"
  original_language: "en"
  local_copy: "sources/originals/namc/RodinKnightsandKnaves.pdf"
---

## Statement

Sur une île vivent des **humains**, qui disent toujours la vérité, et des **zombies**, qui mentent
toujours. Rien ne les distingue de l'extérieur.

Tous comprennent parfaitement le français, mais la coutume de l'île leur interdit de répondre
autrement que dans leur propre langue. À toute question à laquelle on répond par oui ou par non,
un habitant répond donc **« Bal »** ou **« Da »**. L'un de ces deux mots veut dire oui et l'autre
veut dire non, mais tu ignores lequel.

Il faut bien comprendre la règle du jeu. Un habitant décide d'abord de la réponse qu'il veut
donner : un humain choisit la réponse vraie, un zombie choisit la réponse fausse. Puis il traduit
honnêtement cette réponse dans sa langue : s'il veut dire oui, il prononce celui des deux mots qui
signifie oui, et s'il veut dire non, il prononce l'autre. Un zombie ment sur le contenu, jamais
sur le vocabulaire.

1. Tu rencontres un habitant et tu lui demandes : « Est-ce que "Bal" veut dire oui ? » Il répond
   « Bal ». Peux-tu en déduire ce que signifie « Bal » ? Peux-tu en déduire si tu as affaire à un
   humain ou à un zombie ?
2. On raconte qu'il y a de l'or sur l'île. Tous les habitants savent s'il y en a ou non, mais toi
   pas. Trouve **une seule question**, à poser à **un seul habitant** pris au hasard, dont la
   réponse te dira à coup sûr s'il y a de l'or.

## Hints

1. Il y a deux inconnues : la nature de l'habitant, et le sens des mots. Chacune renverse la
   réponse. Ce qui te sauve, c'est que deux renversements se compensent.
2. Pour la question 1, fais le tableau des quatre cas : humain ou zombie, « Bal » veut dire oui
   ou non. Dans chacun, écris le mot prononcé.
3. Pour la question 2, une question directe ne peut pas marcher : montre-le d'abord, cela
   t'indiquera ce qu'il faut ajouter.
4. Essaie une question qui parle de la réponse à une autre question, une question **emboîtée**,
   du genre « si je te demandais …, répondrais-tu … ? ».
5. Choisis d'emboîter la question sur l'or, et de faire porter la question extérieure sur le mot
   « Bal ». Puis vérifie les huit cas.

## Solution

**Question 1.**

Passons en revue les quatre situations possibles.

| Habitant | « Bal » signifie | Réponse vraie à « Bal veut-il dire oui ? » | Il veut répondre | Il prononce |
|---|---|---|---|---|
| humain | oui | oui | oui | **Bal** |
| humain | non | non | non | **Bal** |
| zombie | oui | oui | non | **Da** |
| zombie | non | non | oui | **Da** |

Les deux lignes « humain » sont instructives. Si « Bal » veut dire oui, la réponse vraie est oui,
et l'humain prononce le mot qui veut dire oui, c'est-à-dire « Bal ». Si « Bal » veut dire non, la
réponse vraie est non, et l'humain prononce le mot qui veut dire non, c'est-à-dire… « Bal »
encore. **Un humain répond toujours « Bal » à cette question.** Par le même raisonnement, un
zombie répond toujours « Da ».

Donc :

- l'habitant a répondu « Bal » : c'est un **humain** ;
- en revanche, les deux lignes « humain » du tableau donnent la même réponse pour les deux sens
  possibles de « Bal ». La réponse ne permet **rien** de conclure sur la langue.

Cette question sonde la nature de l'habitant et rien d'autre. Retiens le mécanisme : le sens de
« Bal » intervient deux fois, une fois dans la question et une fois dans la traduction, et les
deux effets s'annulent.

**Question 2.**

D'abord, pourquoi la question directe « y a-t-il de l'or ? » ne peut pas suffire. Supposons
qu'il y ait de l'or. Un humain répond le mot qui veut dire oui ; un zombie répond le mot qui veut
dire non. Selon le sens de « Bal », ces deux mots sont « Bal » ou « Da » : les quatre cas
donnent les deux réponses possibles, et entendre « Bal » ne t'apprend rien.

Il faut donc une question qui neutralise **les deux** inconnues à la fois. Voici la question à
poser :

> **« Si je te demandais s'il y a de l'or sur l'île, répondrais-tu "Bal" ? »**

Affirmation : s'il répond « Bal », il y a de l'or ; s'il répond « Da », il n'y en a pas.

*Vérification.* Calculons d'abord ce que l'habitant répondrait à la question intérieure « y a-t-il
de l'or ? » :

- un humain dit le mot qui veut dire oui s'il y a de l'or, et le mot qui veut dire non sinon ;
- un zombie fait l'inverse.

Puis la question posée est : « ce mot-là serait-il "Bal" ? » Il y répond selon sa nature, et
traduit. Voici les huit cas.

| Habitant | « Bal » signifie | Or ? | Mot qu'il dirait à « y a-t-il de l'or ? » | Réponse vraie à la question posée | Il veut répondre | Il prononce |
|---|---|---|---|---|---|---|
| humain | oui | oui | Bal | oui | oui | **Bal** |
| humain | oui | non | Da  | non | non | **Da** |
| humain | non | oui | Da  | non | non | **Bal** |
| humain | non | non | Bal | oui | oui | **Da** |
| zombie | oui | oui | Da  | non | oui | **Bal** |
| zombie | oui | non | Bal | oui | non | **Da** |
| zombie | non | oui | Bal | oui | non | **Bal** |
| zombie | non | non | Da  | non | oui | **Da** |

Dans la colonne de droite, « Bal » apparaît exactement sur les quatre lignes où il y a de l'or, et
« Da » exactement sur les quatre autres. La question marche donc dans tous les cas.

**Pourquoi cela marche.** Chacune des deux inconnues renverse la réponse un nombre **pair** de
fois. Le sens de « Bal » intervient une fois dans la traduction de la réponse finale, et une fois
dans le mot cité à l'intérieur de la question : deux renversements, qui se compensent. La nature
de l'habitant intervient une fois pour la réponse intérieure, qu'il calcule comme il la donnerait,
et une fois pour la réponse extérieure qu'il te donne : deux renversements encore. Il ne reste que
la vérité sur l'or.

**Conclusion.** Demande « si je te demandais s'il y a de l'or sur l'île, répondrais-tu "Bal" ? ».
La réponse « Bal » signifie qu'il y a de l'or, la réponse « Da » qu'il n'y en a pas, et cela quel
que soit l'habitant interrogé et quelle que soit la langue de l'île.

## Going further

Remarque qu'après ta question tu sais s'il y a de l'or, mais toujours pas ce que veut dire
« Bal », ni à qui tu as parlé. C'est le prix d'une question unique : elle ne peut rapporter qu'une
seule information.

Avec plusieurs questions, en revanche, on finit par tout savoir. Pose d'abord celle de la question
1 : tu sais maintenant si ton interlocuteur est un humain ou un zombie. Demande-lui ensuite
« est-ce que $2 + 2 = 4$ ? », dont tu connais déjà la réponse vraie. Puisque tu connais sa nature,
tu sais s'il veut dire oui ou non, et le mot qu'il prononce te livre enfin la langue de l'île.

Cherche alors, une fois la langue connue, quelle question toute simple suffit pour l'or.
