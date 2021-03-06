DEFINE CLASS datos_base as Custom

	PROTECTED isconnected, dbname
	isconnected = .f.
	dbname = "data\biblioteca.dbc"
	
	FUNCTION conectar()
		IF NOT this.isconnected THEN
			OPEN DATABASE (this.dbname)
			this.isconnected = .t.
		ENDIF
		RETURN this.isconnected
	ENDFUNC

	FUNCTION desconectar()
		IF this.isconnected THEN
			CLOSE DATABASES
			this.isconnected = .f.
		ENDIF 
		RETURN this.isconnected
	ENDFUNC
	

ENDDEFINE
		