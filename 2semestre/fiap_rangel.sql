   SET SERVEROUTPUT ON;


DECLARE
   soma NUMBER := 0;
BEGIN
   FOR i IN 1..10 LOOP
      soma := soma + i;
      dbms_output.put_line(i);
   END LOOP;
   dbms_output.put_line('O total é: ' || soma);
END;


BEGIN
   FOR i IN REVERSE 1..10 LOOP
      dbms_output.put_line(i);
   END LOOP;
END;


DECLARE
   i     NUMBER := 1;
   total NUMBER := 0;
BEGIN
   WHILE i <= 5 LOOP
      total := total + i;
      i := i + 1;
   END LOOP;
   dbms_output.put_line('O total é: ' || total);
END;


DECLARE
   i     NUMBER := 1;
   total NUMBER := 0;
BEGIN
   LOOP
      total := total + i;
      i := i + 1;
      EXIT WHEN i > 7;
   END LOOP;
   dbms_output.put_line('O total é: ' || total);
END;


DECLARE
   multiplicando NUMBER;
   multiplicador NUMBER;
   resultado     NUMBER;
BEGIN
   FOR multiplicando IN 1..2 LOOP
      FOR multiplicador IN 1..2 LOOP
         resultado := multiplicando * multiplicador;
         dbms_output.put_line(multiplicando
                              || ' * '
                              || multiplicador
                              || ' = '
                              || resultado
                              || '   ');
      END LOOP;
   END LOOP;
END;


-- Exercicio 1
DECLARE
   v_tabuada NUMBER;
   i         NUMBER;
BEGIN
   v_tabuada := &v_tabuada;
   FOR i IN 1..10 LOOP
      dbms_output.put_line(v_tabuada
                           || ' * '
                           || i
                           || ' = '
                           ||(v_tabuada * i)
                           || '   ');
   END LOOP;
END;