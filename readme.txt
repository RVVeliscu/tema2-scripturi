Veliscu,Robert-Valentin,315CC

Task01 - am afisat numarul de argumente, apoi am verificat pentru fiecare argument daca este numar si daca nu incepe cu 0. Apoi am verificat daca este putere a lui 2 ( am impartit repetat la 2 si verificam daca se ajunge la un numar impar sau 0 ). Daca era putere a lui 2 il afisam, daca nu il adaugam la suma

Task02 - mi-am creeat variabile pentru fiecare field cerut, apoi le am afisat in modul append in fisierul cerut. Acest proces l-am pus intr-un for care itera de 10 ori comenzile.

Task03 - am folosit comanda find ... -exec pentru a gasii toate fisierele de tip *.conf, urmand sa folosesc comanda du pentru a afisa spatiul folosit de fiecare, folosind -c pentru a face un total, -b pentru a fi in bytes si -h pentru a fi afisat intr-un mod mai readable. Rezultatul acestei comenzi l-am scris in fisierul cerut, iar erorile le-am redirectionat catre celalalt fisier

Task04 - am iterat prin toate liniile fisierului /etc/passwd si am selectat userul si shell-ul aferent. Apoi am iterat prin liniile fisierului /etc/shells, iar daca shell-ul userului curent se alfa in /etc/shells, atunci il consideram real si il adaugam intr-un vector. La final sortam acest vector si il afisam

Task05 - am downloadat fisierul csv folosid wget. Apoi am folosit un while read pentru a lua mai multi useri de pe diferite linii, am separat numele user-ului de numarul tarii, apoi am iterat prin liniile fisierului csv pentru a gasii numele tarii cu codul respectiv. Apoi am verificat daca grupul cu numele tarii aceleia nu exista, iar daca nu il creeam. Apoi verificam daca userul curent a mai fost adaugat in sistem. Daca a mai fost adaugat, doar ii aduagam in grup din care sa faca parte, iar daca nu il creeam si il aduagam in grup.
