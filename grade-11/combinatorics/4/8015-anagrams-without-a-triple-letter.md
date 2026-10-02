---
id: "8015"
title: "Les anagrammes sans trois lettres identiques de suite"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, anagrammes, inclusion-exclusion, permutations]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires lycéens, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Quel est le nombre d'anagrammes du mot

$$\texttt{AAABBBCDEF}$$

dans lesquelles trois lettres consécutives ne sont jamais identiques ?

*(Une anagramme est un mot obtenu en réarrangeant les dix lettres. Le mot n'a pas besoin
d'avoir un sens. Les trois $\texttt{A}$ sont indiscernables entre eux, et de même pour les
trois $\texttt{B}$.)*

## Hints

1. Commence par compter **toutes** les anagrammes, sans condition. Attention : les trois
   $\texttt{A}$ sont identiques, donc les permuter ne donne pas un mot différent.
2. Le mot ne contient que trois $\texttt{A}$ et trois $\texttt{B}$. Que veut dire exactement
   « trois lettres consécutives identiques » ici ?
3. Compte les anagrammes **interdites**, c'est-à-dire celles où les trois $\texttt{A}$ sont
   collés. Astuce : traite le bloc $\texttt{AAA}$ comme une seule lettre.
4. Certaines anagrammes ont à la fois $\texttt{AAA}$ collé et $\texttt{BBB}$ collé : tu les
   auras retirées deux fois.

## Solution

**Le nombre total d'anagrammes.** Le mot a $10$ lettres, dont trois $\texttt{A}$ identiques et
trois $\texttt{B}$ identiques, les quatre autres ($\texttt{C}$, $\texttt{D}$, $\texttt{E}$,
$\texttt{F}$) étant toutes différentes. Le nombre d'anagrammes vaut donc

$$\frac{10!}{3! \times 3!} = \frac{3\,628\,800}{6 \times 6} = 100\,800 .$$

**Ce que veut dire la condition.** Trois lettres consécutives identiques, c'est un bloc
$\texttt{AAA}$ ou un bloc $\texttt{BBB}$, puisqu'aucune autre lettre n'apparaît trois fois. Il
faut donc retirer du total les anagrammes contenant $\texttt{AAA}$ ou $\texttt{BBB}$.

**Les anagrammes contenant le bloc $\texttt{AAA}$.** Collons les trois $\texttt{A}$ en un seul
symbole. On réarrange alors $8$ objets :

$$[\texttt{AAA}], \quad \texttt{B}, \quad \texttt{B}, \quad \texttt{B}, \quad \texttt{C}, \quad \texttt{D}, \quad \texttt{E}, \quad \texttt{F},$$

dont trois sont identiques. Cela fait

$$\frac{8!}{3!} = \frac{40\,320}{6} = 6\,720$$

anagrammes. Cette correspondance est exacte : à toute anagramme contenant $\texttt{AAA}$
correspond un et un seul de ces réarrangements.

**Les anagrammes contenant le bloc $\texttt{BBB}$.** Par symétrie, il y en a aussi $6\,720$.

**Les anagrammes contenant les deux blocs.** Collons les deux : on réarrange $6$ objets tous
différents,

$$[\texttt{AAA}], \quad [\texttt{BBB}], \quad \texttt{C}, \quad \texttt{D}, \quad \texttt{E}, \quad \texttt{F},$$

ce qui fait $6! = 720$ anagrammes.

**Le principe d'inclusion-exclusion.** Le nombre d'anagrammes contenant $\texttt{AAA}$ **ou**
$\texttt{BBB}$ vaut

$$6\,720 + 6\,720 - 720 = 12\,720 .$$

On soustrait les $720$ communes, qui auraient sinon été comptées deux fois.

**Le compte final.**

$$100\,800 - 12\,720 = 88\,080 .$$

**Il y a $88\,080$ anagrammes convenables.**

## Going further

Le fait que le mot contienne exactement trois $\texttt{A}$, et pas quatre, simplifie beaucoup
la condition : « trois lettres identiques consécutives » devient « les trois $\texttt{A}$ sont
collés ». Avec quatre $\texttt{A}$, il faudrait compter les mots contenant $\texttt{AAAA}$
*ou* $\texttt{AAA}$ placé autrement, et l'inclusion-exclusion deviendrait nettement plus
délicate.
