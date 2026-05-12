reinado('Carlos ll',1665,1700).
reinado('Felipe V',1700,1724).
reinado('Luis l',1724,1724).
reinado('Felipe V',1724,1746).

rige(Persona,N):-
    reinado(Persona,A,B),
    A=<N,
    N=<B.

rige_lapso(R, Desde, Hasta) :-
    reinado(R, Inicio, Fin),
    Inicio =< Hasta,
    Fin >= Desde.