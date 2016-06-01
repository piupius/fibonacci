#
# Mostra os primeiros <num_sequencia> números da sequência de Fibonacci,
# omitindo (<omitir_0>) ou não o zero inicial
#

###### DELIMITADOR PARA O BANCO DE DADOS INCLUIR A PROCEDURE CORRETAMENTE
DELIMITER |
CREATE OR REPLACE FUNCTION Fibonacci( num_sequencia INT, omitir_0 BOOLEAN) RETURNS VARCHAR( 512) DETERMINISTIC NO SQL
BEGIN
	DECLARE primeiro INT DEFAULT 0;
	DECLARE segundo INT DEFAULT 1;
	DECLARE temporario INT DEFAULT 0;
	DECLARE contador INT DEFAULT 0;
	DECLARE acumulador VARCHAR( 512) DEFAULT "";

	IF omitir_0 THEN
		SET primeiro = 1;
	END IF;

	IF num_sequencia > 0 THEN
		SET acumulador = cast( primeiro AS CHAR);
	END IF;

	IF num_sequencia > 1 THEN
		SET acumulador = concat( acumulador, ' / ', segundo);
	END IF;

	IF num_sequencia > 2 THEN 
		REPEAT
			SET temporario = segundo;
			SET segundo = segundo + primeiro;
			SET primeiro := temporario;

			SET acumulador = concat( acumulador, ' / ', segundo);		

			SET contador := contador + 1;
		UNTIL contador = num_sequencia - 2 END REPEAT;
	END IF;

	RETURN acumulador;
END |
