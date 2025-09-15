-- 2TDSPA
-- RANGEL 560547
-- LUCAS LIMA 561160
-- EDUARDO 559755

SET SERVEROUTPUT ON;
VARIABLE media_check NUMBER;
VARIABLE media_sprint number;
VARIABLE media_gs NUMBER;
VARIABLE MED_FINAL NUMBER;

DECLARE
    CP1 NUMBER;
    CP2 NUMBER;
    CP3 NUMBER;
    GS1 NUMBER;
    SP1 NUMBER;
    SP2 NUMBER;


-- EXERCICIO 1
BEGIN
    CP1 :=  &CP1;
    CP2 :=  &CP2;
    CP3 :=  &CP3;

    IF CP1 >= 0 AND CP1 <= 10 AND CP2 >= 0 AND CP2 <= 10 AND CP3 >= 0 AND CP3 <= 10 THEN    
        IF CP1 >= CP2 AND CP3 >= CP2 THEN 
            :media_check := (CP1 + CP3)/2;
        dbms_output.put_line('Media CP: ' || :media_check);
        ELSIF CP1 >= CP3 AND CP2 >= CP3 THEN 
            :media_check := (CP1 + CP2)/2;
        dbms_output.put_line('Media CP: ' || :media_check);
        ELSIF CP2 >= CP1 AND CP3 >= CP1 THEN 
            :media_check := (CP2 + CP3)/2;
        dbms_output.put_line('Media CP: ' || :media_check);
        END IF;
    ELSE 
        dbms_output.put_line('Valor invalido');
    END IF;


-- EXERCICIO 2
    SP1 := &SP1;

    SP2 := &SP2;

   if sp1 >= 0 and sp2 >=0 and sp1 <=100 and sp2 <=100  then

         :media_sprint := (((SP1+SP2)/10/2));

         dbms_output.put_line('Media Sprint: ' || :media_sprint);

    ELSE 
        dbms_output.put_line('Valor invalido');
    end if;



-- EXERCICIO 3
    GS1 :=  &GS1;
    IF GS1 >= 0 AND GS1 <= 100 THEN
        :media_gs := GS1/10;
        dbms_output.put_line('Media GS: ' || :media_gs);
    ELSE 
        dbms_output.put_line('Valor invalido');   
    END IF;

 
-- EXERCICIO 4
    :MED_FINAL := (:media_gs * 0.6) + (:media_sprint * 0.2) + (:media_check * 0.2) / 3;
    IF :MED_FINAL >= 6 AND :MED_FINAL <= 10 THEN
    dbms_output.put_line('Parabéns você foi Aprovado!');
    ELSIF :MED_FINAL >= 2 AND :MED_FINAL <= 5.9 THEN
    dbms_output.put_line('Infelizmente você ficou de exame');
    ELSIF :MED_FINAL > 10 or :MED_FINAL < 0 THEN
    dbms_output.put_line('Valor invalido');
    ELSE
    dbms_output.put_line('Você foi reprovado!');
    END IF;
END;
