---
id: "5804"
title: "Le professeur télépathe"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [chiffres, divisibilite, numeration, tour de magie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Magic for Muggles (Paul Zeitz)"
  reference: "ZeitzMathMuggles.pdf, problème 6 « Telepathic Teacher » (solution p. 6-7)"
  url: "https://mathcircles.org/activity/mathematical-magic-for-muggles/"
  original_language: "en"
  local_copy: "sources/originals/namc/ZeitzMathMuggles.pdf"
---

## Statement

Un professeur se bande les yeux et demande à une élève, au tableau :

1. d'écrire un nombre de quatre chiffres qui ne se lit pas pareil dans les deux sens ;
2. d'écrire en dessous le nombre obtenu en renversant l'ordre de ses chiffres ;
3. de soustraire le plus petit des deux du plus grand.

L'élève entoure alors **un chiffre non nul** du résultat, et annonce à voix haute tous les autres
chiffres, dans l'ordre qu'elle veut. Le professeur, toujours les yeux bandés, annonce le chiffre
entouré.

1. Montrer que la différence obtenue à l'étape 3 est toujours un multiple de $9$.
2. L'élève annonce « $6$, $3$, $3$ ». Quel chiffre a-t-elle entouré ?
3. Décrire la méthode du professeur, et expliquer pourquoi elle donne toujours la bonne réponse.
4. Pourquoi le professeur exige-t-il que le chiffre entouré ne soit pas $0$ ?

## Hints

1. Appelle $a$, $b$, $c$, $d$ les quatre chiffres du nombre de départ. Écris ce nombre, puis son
   renversé, avec $a$, $b$, $c$, $d$.
2. Calcule la différence des deux et factorise le résultat. Un nombre bien connu apparaît.
3. Le professeur n'entend que des chiffres, jamais leur position. Quelle information sur un
   nombre ne dépend justement pas de l'ordre de ses chiffres ?
4. Rappelle-toi le critère de divisibilité par $9$ : un nombre est un multiple de $9$ exactement
   quand la somme de ses chiffres en est un.
5. Pour la dernière question : quels chiffres $x$ vérifient « $x$ est un multiple de $9$ » ?

## Solution

**1. La différence est un multiple de $9$.**

Notons $a$, $b$, $c$, $d$ les chiffres du nombre de départ, de gauche à droite. Ce nombre vaut
$$N = 1000a + 100b + 10c + d,$$
et son renversé vaut
$$M = 1000d + 100c + 10b + a.$$

Calculons :
$$N - M = 999a + 90b - 90c - 999d = 9\,(111a + 10b - 10c - 111d).$$

Donc $N - M$ est un multiple de $9$. Si c'est $M$ qui est le plus grand, la différence vaut
$M - N$, l'opposé du nombre précédent : c'est encore un multiple de $9$. Dans tous les cas, le
résultat écrit au tableau est un multiple de $9$.

**2. Le chiffre entouré.**

Le résultat est un multiple de $9$, donc la somme de tous ses chiffres est un multiple de $9$.
Les chiffres annoncés donnent $6 + 3 + 3 = 12$. Si $x$ est le chiffre entouré, alors
$12 + x$ doit être un multiple de $9$.

Comme $x$ est un chiffre, $12 + x$ est compris entre $12$ et $21$. Le seul multiple de $9$ dans
cet intervalle est $18$, d'où $x = 6$.

Le professeur annonce **$6$**. (Par exemple, l'élève avait pu partir de $8261$ :
$8261 - 1628 = 6633$.)

**3. La méthode.**

Le professeur additionne les chiffres qu'il entend, puis cherche ce qu'il faut ajouter pour
atteindre le multiple de $9$ suivant. Ce complément est le chiffre entouré.

Elle marche parce que le résultat est un multiple de $9$ : la somme de **tous** ses chiffres est
donc un multiple de $9$. Le professeur connaît la somme des chiffres annoncés, appelons-la $s$.
Le chiffre manquant $x$ vérifie donc : $s + x$ est un multiple de $9$. Comme $x$ est compris
entre $0$ et $9$, il n'y a en général qu'une seule possibilité, et le professeur la trouve sans
rien savoir du nombre de départ.

Remarque : l'ordre dans lequel l'élève annonce les chiffres n'a aucune importance, puisque seule
leur somme intervient. C'est ce qui rend le tour impressionnant.

**4. Pourquoi interdire le zéro.**

Il y a exactement un cas gênant : celui où la somme $s$ des chiffres annoncés est **déjà** un
multiple de $9$. Alors $x$ doit vérifier « $x$ est un multiple de $9$ », et deux chiffres
conviennent : $x = 0$ et $x = 9$. Le professeur ne peut pas les départager.

En interdisant d'entourer un $0$, il élimine l'une des deux possibilités : dans ce cas le chiffre
entouré est forcément $9$. La méthode devient alors infaillible.

## Going further

Sans l'interdiction du zéro, le tour rate de temps en temps. Paul Zeitz raconte comment s'en
sortir en gardant l'illusion : le professeur annonce « je vois une forme ronde, mais l'image
tremble, je n'arrive pas à savoir s'il y a un petit crochet en bas : c'est un $0$ ou un $9$ ».

Le tour fonctionne avec un nombre de trois, cinq ou six chiffres tout aussi bien. Reprends le
calcul de la question 1 avec trois chiffres, puis avec cinq, et regarde ce qui reste vrai.
