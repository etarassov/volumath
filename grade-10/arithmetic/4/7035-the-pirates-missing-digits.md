---
id: "7035"
title: "Les deux chiffres effacés du capitaine"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruences, cle de controle, inverse modulaire]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, « Arithmétique », TD (Antoine Taveneaux), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

Un capitaine a fait naufrage. On ne retrouve de lui que sa carte de sécurité sociale, mais
deux chiffres sont effacés :
$$1\ \textbf{??}\ 12\ 71\ 153\ 044\ 67$$

Un tel numéro comporte $15$ chiffres. Les deux derniers servent de **clé de contrôle** : si
l'on additionne le nombre formé par les $13$ premiers chiffres et le nombre formé par les
$2$ derniers, on obtient toujours un multiple de $97$.

Par ailleurs, sur ce genre de carte, les chiffres $2$ à $3$ indiquent l'année de naissance.

Quel âge avait le capitaine en octobre 2011 ?

## Hints

1. Note $x$ le nombre à trois chiffres formé par le $1$ et les deux chiffres effacés. Écris la
   condition de contrôle sous forme d'une congruence modulo $97$.
2. Le nombre des $13$ premiers chiffres s'écrit $x \times 10^{10} + 1\,271\,153\,044$.
   Calcule chaque morceau modulo $97$.
3. Tu arrives à une équation de la forme $49\,x \equiv r \pmod{97}$. Pour t'en débarrasser,
   cherche un nombre qui, multiplié par $49$, donne $1$ modulo $97$.
4. $49 \times 2 = 98$.

## Solution

**Mise en équation.**

Notons $x$ le nombre à trois chiffres formé par le premier chiffre $1$ et les deux chiffres
effacés : $x$ est compris entre $100$ et $199$.

Les $13$ premiers chiffres forment alors le nombre
$$x \times 10^{10} + 1\,271\,153\,044 ,$$
et les deux derniers forment $67$. La condition s'écrit
$$x \times 10^{10} + 1\,271\,153\,044 + 67 \equiv 0 \pmod{97} .$$

**Réduire chaque morceau modulo 97.**

Calculons $10^{10}$ modulo $97$ par élévations au carré successives :
$$10^2 = 100 \equiv 3, \qquad 10^4 \equiv 3^2 = 9, \qquad 10^8 \equiv 9^2 = 81 ,$$
puis
$$10^{10} = 10^8 \times 10^2 \equiv 81 \times 3 = 243 = 2 \times 97 + 49 \equiv 49 \pmod{97} .$$

Pour $1\,271\,153\,044$, on divise : $1\,271\,153\,044 = 97 \times 13\,104\,670 + 54$, donc
$$1\,271\,153\,044 \equiv 54 \pmod{97} .$$

L'équation devient
$$49\,x + 54 + 67 \equiv 0 \pmod{97} ,$$
soit, puisque $54 + 67 = 121 = 97 + 24 \equiv 24$,
$$49\,x \equiv -24 \equiv 73 \pmod{97} .$$

**Éliminer le facteur 49.**

Remarquons que
$$49 \times 2 = 98 \equiv 1 \pmod{97} .$$
Multiplions donc les deux membres par $2$ :
$$x \equiv 2 \times 73 = 146 \pmod{97} .$$

**Conclure.**

On cherche $x$ entre $100$ et $199$ congru à $146$ modulo $97$. Les candidats sont
$146$ et $146 + 97 = 243$, trop grand. Donc
$$x = 146 .$$

Les deux chiffres effacés sont donc $4$ et $6$, et le numéro complet est
$$1\ 46\ 12\ 71\ 153\ 044\ 67 .$$

Les chiffres $2$ et $3$ donnent l'année de naissance : $46$, soit $1946$. En octobre 2011, le
capitaine avait donc **$65$ ans**.

## Going further

Pourquoi $97$ ? C'est le plus grand nombre premier à deux chiffres, ce qui permet d'écrire la
clé sur deux chiffres tout en détectant le maximum d'erreurs : toute erreur sur un seul
chiffre change le reste modulo $97$, donc rend la clé fausse.

Le passage délicat est le remplacement de « diviser par $49$ » par « multiplier par $2$ ». On
dit que $2$ est l'**inverse de $49$ modulo $97$**. Un tel inverse existe pour tout nombre non
divisible par $97$, parce que $97$ est premier.
