---
id: "8223"
title: "Dix billets et deux parts égales"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe-des-tiroirs, sous-ensembles, somme, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, entraînement de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », entraînement de fin de parcours, exercice 4"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Savinien et Andreï ont dérobé $10$ billets de banque. Les valeurs de ces billets sont dix entiers **deux à deux distincts**, compris entre $1$ et $99$ euros.

1. Savinien envisage de repartir seul avec une partie du butin. Combien y a-t-il de choix possibles, sachant qu'il ne veut pas repartir les mains vides ? (Deux choix sont différents s'ils ne portent pas exactement sur les mêmes billets.)

2. Finalement, comme ils sont jaloux l'un de l'autre, ils veulent repartir chacun avec **la même somme d'argent**, non nulle, quitte à abandonner une partie du butin. Aucun billet ne peut être coupé en deux ni partagé. Montrer qu'ils y arrivent toujours, quelles que soient les valeurs des dix billets.

## Hints

1. Pour la question 1, raisonne billet par billet : pour chacun des dix billets, Savinien a deux options. Combien de choix cela fait-il en tout, et lequel faut-il retirer ?
2. Pour la question 2, il faut trouver deux **paquets de billets sans billet commun** ayant la même valeur totale. Commence par chercher plus facile : deux paquets quelconques (pas forcément disjoints) de même valeur totale.
3. Combien de paquets non vides y a-t-il ? Et entre quelles bornes se situe la valeur totale d'un paquet ?
4. Compare ces deux nombres. Si les paquets sont plus nombreux que les valeurs possibles, que peut-on conclure ?
5. Tu obtiens deux paquets différents de même valeur. Ils peuvent avoir des billets en commun : que se passe-t-il si tu retires ces billets communs des deux paquets ?
6. Dernière précaution : après cette opération, les deux paquets sont-ils encore non vides ?

## Solution

**Question 1 : le nombre de butins possibles.**

Numérotons les billets de $1$ à $10$. Un butin, c'est une décision par billet : « je le prends » ou « je le laisse ». Cela fait $2$ possibilités pour le premier billet, $2$ pour le deuxième, et ainsi de suite, soit

$$2 \times 2 \times \cdots \times 2 = 2^{10} = 1024$$

façons de choisir un sous-ensemble de billets. Parmi elles se trouve le choix « je ne prends rien », qu'il faut exclure. Donc

$$\boxed{2^{10} - 1 = 1023} \text{ butins non vides.}$$

**Question 2 : deux parts égales.**

*Combien de valeurs possibles ?* Un butin non vide a une valeur totale qui est un entier. Elle vaut au moins $1$ (le plus petit billet vaut au moins $1$ euro) et au plus $10 \times 99 = 990$ (dix billets d'au plus $99$ euros chacun). Il y a donc au plus

$$990$$

valeurs totales possibles.

*Le principe des tiroirs.* On a $1023$ butins non vides et au plus $990$ valeurs possibles. Comme

$$1023 > 990 ,$$

deux butins **différents** ont forcément la même valeur totale. Appelons-les $A$ et $B$ : ce sont deux ensembles de billets, $A \ne B$, de même valeur totale.

*Enlever ce qu'ils ont en commun.* Les ensembles $A$ et $B$ peuvent partager des billets. Notons $C$ l'ensemble des billets communs, et posons

$$A' = A \setminus C, \qquad B' = B \setminus C .$$

Ces deux nouveaux ensembles sont **disjoints** par construction : aucun billet n'appartient aux deux.

Notons $T$ la valeur totale de $C$. Comme $A$ est la réunion disjointe de $A'$ et $C$, sa valeur totale vaut (valeur de $A'$) $+\ T$, et de même pour $B$. Puisque $A$ et $B$ ont la même valeur totale,

$$\text{valeur}(A') + T = \text{valeur}(B') + T, \qquad \text{donc} \qquad \text{valeur}(A') = \text{valeur}(B') .$$

*Ils sont bien non vides.* Il reste à écarter le cas où $A'$ ou $B'$ serait vide.

Si $A'$ était vide, sa valeur serait $0$, donc celle de $B'$ aussi. Mais tous les billets valent au moins $1$ euro : un ensemble de billets de valeur totale nulle est forcément vide. Donc $B'$ serait vide aussi, ce qui signifierait $A = C = B$, contredisant $A \ne B$.

Donc $A'$ et $B'$ sont tous deux non vides, et ils ont la même valeur totale, qui est donc non nulle.

**Conclusion.**

$$\boxed{\text{Savinien prend } A', \text{ Andreï prend } B', \text{ et ils abandonnent le reste : les deux parts sont égales et non nulles.}}$$

**Remarque sur la marge.** On a utilisé la majoration grossière $990$ alors que dix billets **distincts** d'au plus $99$ euros valent en réalité au plus $99 + 98 + \cdots + 90 = 945$. La marge est donc encore plus confortable. En revanche, le raisonnement ne dit absolument pas **comment** trouver les deux paquets : il prouve seulement qu'ils existent.

## Going further

Avec $10$ billets distincts compris entre $1$ et $99$ euros, l'argument fonctionne. Jusqu'où peut-on monter la borne supérieure sur la valeur d'un billet en gardant $10$ billets ? Et avec $9$ billets seulement, la conclusion reste-t-elle vraie ?
