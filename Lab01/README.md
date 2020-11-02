Ex1. Implementați și simulați un sumator elementar complet. Analizați dificultatea implementării fiecărei
dintre cele trei variante propuse.
● Hint: Urmăriți tutorialul pentru a realiza simularea (săriți peste adăugarea modulului de test,
deoarece este deja adăugat).
1a. Implementați și simulați sumatorul elementar complet folosind descrierea structurală a unui
sumator parțial.
● Hint: Consultați laboratorul 0 pentru implementare.
1b. Implementați sumatorul elementar complet folosind ecuația logică a semnalelor de ieșire
● Hint: Folosiți atribuirea continuă pentru semnalele de ieșire
1c. Implementați sumatorul elementar complet folosind operatorul de adunare.
● Hint: Atenție la dimensiunea ieșirii operației de adunare.
____________________________________________________________________________________________________
Ex2. Implementați și simulați un comparator pe un bit. Acesta are două intrări și 3 ieșiri (pentru
mai mic, egal și mai mare).
● Hint: Unei variabile îi poate fi atribuită valoarea unei expresii logice.
● (Optional) Implementați multiplexorul folosind primitive, observați diferențele.
____________________________________________________________________________________________________
Ex3. Implementați și simulați un multiplexor 4:1. Urmăriți diagrama de semnale generată.
● Hint: Consultați laboratorul 0 pentru implementarea unui multiplexor 4:1.
● Hint: Respectați interfața cerută în scheletul de cod.
3a. Implementați multiplexorul folosind ecuația logică dedusă din tabelul de adevăr.
3b. Implementați multiplexorul folosind operatorul condițional ‘?’
● Hint: Operatorul poate apărea de mai multe ori într-o expresie.
ex: assign x = (a == 0) ? 1 : ( (a == 1) ? : 2 : 0 );
____________________________________________________________________________________________________
Ex4. Implementați un sumator pe 4 biți, cu două intrări și o ieșire. Câți biți va avea ieșirea? De ce? Verificați
corectitudinea sumatorului vizualizând semnalele în baza 10.
4a. Implementați sumatorul folosind sumatorul elementar.
● Hint: Consultați laboratorul 0 pentru implementarea unui sumator pe mai mulți biți.
● Hint: Folosiți sumatorul implementat la exercițiul 1, adăugându-l la proiect din meniul
Project→Add Copy of Source… .
● Hint: Modificați afișarea unui semnal cu click-dreapta→Radix→Unsigned Decimal.
4b. Implementați sumatorul folosind atribuirea continuă și operatorul +. Comparați cele două
implementări.
