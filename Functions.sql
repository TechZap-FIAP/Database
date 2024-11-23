--FUNÇÃO QUE VALIDA SE O EMAIL JA ESTÁ CADASTRADO
CREATE OR REPLACE FUNCTION validate_email(p_email VARCHAR2) 
RETURN BOOLEAN IS
    v_count INTEGER;
BEGIN
    SELECT COUNT(*) 
    INTO v_count
    FROM T_TZ_USER
    WHERE ds_email = p_email;
    IF v_count > 0 THEN
        RETURN TRUE;  
    ELSE
        RETURN FALSE;
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN FALSE;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro ao validar e-mail: ' || SQLERRM);
        RETURN FALSE;
END validate_email;
/

--FUNÇÃO QUE VALIDA SE A SENHA TEM PELO MENOS 6 CARACTERES
CREATE OR REPLACE FUNCTION validate_password(p_password IN VARCHAR2)
RETURN VARCHAR2
AS
    v_length NUMBER;
BEGIN
    v_length := LENGTH(p_password);

    IF v_length < 6 THEN
        RETURN 'A senha deve ter pelo menos 6 caracteres.';
    ELSE
        RETURN 'Senha válida.';
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        RETURN 'Erro ao validar a senha. Tente novamente.';
END;
/