<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	<xsl:text disable-output-escaping='yes'>
		&lt;!DOCTYPE html&gt;
	</xsl:text>
		<html>
			<head>
				<title>Gasolinera gas1</title>
			</head>
			<body>
				<xsl:for-each select="//gasolinera">
					<xsl:if test="@id='gas1'">
						<h1>Gasolinera <xsl:value-of select="compañia"/></h1>
							<h2>Carretera:<xsl:value-of select="carretera"/>Punto Kilométrico: <xsl:value-of select="carretera/@puntoKilometrico"/></h2>
							<p>
							Localidad:<xsl:value-of select="localidad"/> (<xsl:value-of select="localidad/@provincia"/>)
							Teléfono:<xsl:value-of select="telefono"/>
							</p>
							<h3>Lista de Servicios</h3>
							<ul>
							<xsl:apply-templates select="servicios/servicio"/>
							</ul>
							<!-- LO HACEMOS CON UN BUCLE -->
							<h3>Lista de Servicios Ordenados</h3>
							<ul>
								<xsl:for-each select="servicios/servicio">
									<xsl:sort select="."/>
									<li><xsl:value-of select="."/></li>
								</xsl:for-each>
							</ul>
		
					</xsl:if>
					
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="gasolinera">
		
	</xsl:template>
	<xsl:template match="servicio">
		<li><xsl:value-of select="."/></li>
	</xsl:template>
</xsl:stylesheet>