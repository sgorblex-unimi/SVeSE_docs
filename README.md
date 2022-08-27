# SVeSE: relazione di progetto
SVeSE (acronimo di Sistema di Voto e Scrutinio Elettronico) è un'applicazione web e sistema all-in-one per il voto e scrutinio digitale, sviluppato come progetto di laboratorio dell'insegnamento di Ingegneria del Software del corso di laurea triennale in Informatica presso Unimi, anno accademico 2021/22. Questa repo contiene la relazione di progetto richiesta insieme al software, il cui è invece reperibile [qui](https://github.com/sgorblex-unimi/SVeSE).

Il progetto è in stato di prototipo ed è già stato consegnato per la valutazione, per cui sviluppi futuri da parte nostra sono improbabili (ma chi lo sa). Lo stato del progetto al momento dell'ammissione è segnato dal tag `submitted`, sia qui sia nel repository del software.



## Compilare dal sorgente
Installata una [distribuzione LaTeX](https://www.latex-project.org/get/) e [PlantUML](https://plantuml.com/), eseguire, nella directory della repo:
```sh
latexmk -pdf
```
Il `latexmkrc` scritto ad-hoc compilerà automaticamente l'UML in grafica vettoriale per la documentazione.



## Licenza
[LPPL](https://www.latex-project.org/lppl)



## Contribuzione
Correzioni di errori e integrazioni sono ben accette via [issue](https://github.com/sgorblex-unimi/SVeSE_docs/issues) o [pull request](https://github.com/sgorblex-unimi/SVeSE_docs/fork). Sarebbe opportuno che eventuali grosse aggiunte al progetto (da parte nostra o di contribuzione esterna) venissero documentate nella relazione, ma questo non è un requisito stretto.
