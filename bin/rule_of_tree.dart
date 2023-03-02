/*
Uma das coisas mais úteis que aprendemos no ensino médio é a "Regra de 3".
Consiste quando temos 3 valores e precisamos saber o quarto.
Geralmente temos dois grupos, e o calculo é feito multiplicando paralelamente
os valores entre os dois grupos. 
Ex:
--
Grupo1.1             Grupo1.2
              X
Grupo2.1            Grupo2.2
--
Grupo1.1 x Grupo2.2 = Grupo2.1 x Grupo1.2

Sabendo disso, crie uma função que receba 4 argumentos opcionais e que retorne a resolução da regra de 3, 
levando em consideração que será considerado o argumento vazio como valor a ser encontrado, logo, 
poderá ter apenas um valor necessariamente "vazio".


*/
double ruleOfTree([int b = 1, int c = 10, int d = 5, double? a]) {
  double calcula = (c * b) / d;
  a = calcula;

  return a;
}
