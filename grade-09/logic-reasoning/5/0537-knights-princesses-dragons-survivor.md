---
id: "0537"
title: "Chevaliers, princesses et dragons"
grade: 9
theme: logic-reasoning
difficulty: 5
duration_min: 35
tags: [parite, raisonnement-par-l-absurde, denombrement, invariant]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 8 «Чётность», задача 4"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Au commencement des temps vivaient en Achoukhonie $100$ chevaliers, $99$ princesses et $101$ dragons.

Les chevaliers tuent les dragons, les dragons dévorent les princesses, et les princesses font mourir les chevaliers de chagrin. Un ancien sortilège protège toutefois certains habitants : **il est interdit de faire périr quiconque a lui-même fait périr un nombre impair d'autres habitants.**

Aujourd'hui il ne reste qu'un seul habitant en Achoukhonie. Qui est-ce ?

## Hints

1. Commence par traduire le sortilège dans l'autre sens : que peut-on dire du nombre de victimes d'un habitant qui est mort ?
2. Combien d'habitants y avait-il au départ ? Combien ont péri ? Que dit la parité de ce nombre sur les victimes de quelqu'un ?
3. Déduis-en une chose très forte sur le survivant, puis sur tous les autres.
4. Appelle $X$ l'espèce du survivant et $Y$ celle qu'il chasse. Tous les $Y$ sont morts. Qui les a tués, et combien chacun en a-t-il tué ? Que vaut alors la parité de l'effectif de départ des $Y$ ?
5. Recommence le même raisonnement avec l'espèce qui chasse les $X$. Tu obtiendras la parité de l'effectif des $X$. Compare ensuite avec $100$, $99$ et $101$.

## Solution

**Étape 0 : relire le sortilège à l'envers.**

Le sortilège dit qu'on ne peut pas faire périr celui qui a fait périr un nombre impair d'habitants. Retournons la phrase :

> tout habitant **qui est mort** avait à son actif un nombre **pair** de victimes (éventuellement zéro).

C'est sous cette forme que le sortilège va servir.

**Étape 1 : le survivant a fait périr un nombre impair d'habitants.**

Au départ il y a

$$100 + 99 + 101 = 300 \text{ habitants,}$$

et il en reste un seul. Il y a donc eu $299$ victimes, un nombre **impair**.

Additionnons maintenant, pour chaque habitant, son nombre de victimes. Chaque habitant mort ayant été tué par exactement un autre, cette somme vaut le nombre total de victimes, soit $299$.

Si tous les habitants avaient un nombre pair de victimes, cette somme serait paire. Elle est impaire : **au moins un habitant a fait périr un nombre impair d'habitants.** Or, d'après l'étape 0, un tel habitant ne peut pas avoir été tué. Il est donc encore vivant. Comme il ne reste qu'un habitant, c'est le survivant.

On retient donc :

> le survivant a fait périr un nombre **impair** d'habitants, et tous les autres en ont fait périr un nombre **pair**.

**Étape 2 : l'espèce chassée par le survivant est en nombre impair.**

Notons $X$ l'espèce du survivant, et $Y$ l'espèce que $X$ chasse.

Tous les $Y$ sont morts, et seuls les $X$ peuvent les faire périr. Or :

- le survivant en a fait périr un nombre **impair** (étape 1) ;
- chacun des autres $X$ est mort, donc en a fait périr un nombre **pair** (étape 1).

L'effectif de départ des $Y$ est donc

$$\underbrace{\text{impair}}_{\text{le survivant}} + \underbrace{\text{pair} + \dots + \text{pair}}_{\text{les autres } X} = \text{impair}.$$

**L'espèce $Y$ était donc en nombre impair au départ.**

**Étape 3 : l'espèce du survivant est aussi en nombre impair.**

Notons $Z$ l'espèce qui chasse $X$. Tous les $X$ sauf le survivant sont morts, et seuls les $Z$ peuvent les faire périr. Or **tous** les $Z$ sont morts, donc chacun d'eux a fait périr un nombre pair de $X$.

Le nombre de $X$ morts est donc pair, et l'effectif de départ des $X$ vaut

$$1 + \underbrace{(\text{nombre pair})}_{\text{les } X \text{ morts}} = \text{impair}.$$

**L'espèce $X$ était donc, elle aussi, en nombre impair au départ.**

**Étape 4 : on conclut.**

Les effectifs de départ sont $100$ chevaliers (**pair**), $99$ princesses (**impair**) et $101$ dragons (**impair**). D'après les étapes 2 et 3, $X$ et $Y$ sont tous les deux en nombre impair : les chevaliers sont donc exclus, aussi bien comme $X$ que comme $Y$.

Il ne reste que deux possibilités à examiner.

- **$X$ = les princesses.** Les princesses chassent les chevaliers, donc $Y$ = les chevaliers, qui sont $100$, un nombre pair. C'est exclu par l'étape 2.
- **$X$ = les dragons.** Les dragons chassent les princesses, donc $Y$ = les princesses, qui sont $99$, un nombre impair. Et l'effectif des dragons est $101$, également impair. Tout est cohérent.

**Le dernier habitant d'Achoukhonie est donc un dragon.**

**Un scénario qui mène bien à ce résultat.**

Le raisonnement ci-dessus suffit à répondre, puisqu'il élimine toutes les autres possibilités. Mais voici comment cela a pu se dérouler.

- Un chevalier tue $100$ des $101$ dragons. Il en a tué $100$, un nombre pair : le sortilège ne le protège pas.
- Une princesse fait mourir de chagrin les $100$ chevaliers. Elle en a fait périr $100$, un nombre pair : elle non plus n'est pas protégée.
- Le dernier dragon dévore les $99$ princesses. Il en a dévoré $99$, un nombre **impair** : plus personne ne peut le toucher.

Il ne reste que ce dragon.

**L'idée à retenir.** Tout repose sur une seule observation, celle de l'étape 1 : comme le nombre total de victimes est impair, quelqu'un en a fait un nombre impair, et cette personne est justement celle que le sortilège rend intouchable. Ensuite, la parité des effectifs de départ suffit à désigner l'espèce.

## Going further

1. On garde tout l'énoncé, mais l'Achoukhonie compte au départ $100$ chevaliers, $100$ princesses et $100$ dragons. Peut-il ne rester qu'un seul habitant ?
2. On revient aux effectifs de départ ($100$, $99$, $101$) mais le sortilège n'existe plus. Le survivant peut-il alors être un chevalier ?
