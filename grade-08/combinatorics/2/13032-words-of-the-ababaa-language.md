---
id: "13032"
title: "Les mots de la langue ababaa"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, mots, fibonacci, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire collégiens"
  reference: "2017-09_coupe_automne_2015_elim_college.pdf, exercice 6 ; corrigé 2017-09_coupe_automne_2015_elim_college_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_college.pdf"
---

## Statement

Dans la langue *ababaa*, les mots ne s'écrivent qu'avec les lettres $a$ et $b$, et il n'y a qu'une règle : **chaque lettre $b$ doit être immédiatement suivie d'un $a$**.

Par exemple, $abaa$ est un mot de cette langue, mais $abba$ et $aab$ n'en sont pas.

Combien la langue *ababaa* compte-t-elle de mots de six lettres ?

## Hints

1. Un $b$ ne peut pas être la dernière lettre du mot. Peut-il y avoir deux $b$ côte à côte ?
2. Range les mots selon leur nombre de lettres $b$.
3. Chaque $b$ forme, avec le $a$ qui le suit, un bloc « $ba$ » de deux lettres. Un mot est alors une suite de blocs « $a$ » et « $ba$ ».

## Solution

**Des blocs.** Dans un mot de la langue, chaque $b$ est suivi d'un $a$ : on les regroupe en un bloc « $ba$ » de deux lettres. Les autres lettres sont des $a$ seuls. Un mot de la langue est donc une suite de blocs « $a$ » et « $ba$ ».

Inversement, toute suite de tels blocs donne un mot de la langue, et deux suites différentes donnent deux mots différents : en lisant le mot de gauche à droite, un $a$ est un bloc « $a$ », et un $b$ est le début d'un bloc « $ba$ ».

**On compte selon le nombre de $b$.** Pour un mot de six lettres :

- **Aucun $b$** : le mot $aaaaaa$, soit $1$ mot.
- **Un $b$** : un bloc « $ba$ » et quatre blocs « $a$ », soit $5$ blocs en tout. On choisit la place du bloc « $ba$ » parmi les $5$ : cela fait $5$ mots.
- **Deux $b$** : deux blocs « $ba$ » et deux blocs « $a$ », soit $4$ blocs. On choisit les places des deux blocs « $ba$ » parmi les $4$. En les listant :
$$babaaa, \quad baabaa, \quad baaaba, \quad ababaa, \quad abaaba, \quad aababa,$$
cela fait $6$ mots.
- **Trois $b$** : trois blocs « $ba$ », soit le mot $bababa$, $1$ mot.
- **Quatre $b$ ou plus** : il faudrait au moins $8$ lettres, c'est impossible.

**Conclusion.** La langue compte
$$1 + 5 + 6 + 1 = 13$$
mots de six lettres.

**Une autre méthode.** Notons $m_n$ le nombre de mots de $n$ lettres. Un mot commence soit par le bloc « $a$ », suivi de n'importe quel mot de $n - 1$ lettres, soit par le bloc « $ba$ », suivi de n'importe quel mot de $n - 2$ lettres. Donc $m_n = m_{n-1} + m_{n-2}$. Comme $m_1 = 1$ (le mot $a$) et $m_2 = 2$ (les mots $aa$ et $ba$), on trouve de proche en proche
$$m_3 = 3, \quad m_4 = 5, \quad m_5 = 8, \quad m_6 = 13 .$$

## Going further

1. Combien la langue compte-t-elle de mots de dix lettres ?
2. Expliquer pourquoi il y a autant de mots de $n$ lettres dans la langue *ababaa* que de façons de recouvrir une bande de $2$ cases sur $n$ avec des dominos (voir l'exercice 0178).
