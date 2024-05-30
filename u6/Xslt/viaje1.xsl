<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:text disable-output-escaping="yes">
			&lt;!DOCTYPE html&gt;
		</xsl:text>
		<html>
			<head>
				<title><xsl:value-of select="mayorista/nombre"/></title>
			</head>
			<body>
				<h1>Mayorista:<xsl:value-of select="mayorista/nombre"/></h1>
				<h2>Listado de viajes ....</h2>
				<table border="1">
					<tr>
						<td>Código</td>
						<td>Duración</td>
						<td>Precio</td>						
					</tr>
					<xsl:for-each select="//viaje">
						<xsl:sort select="precio" data-type="number" order="descending"/>
							<tr>
							<td><xsl:value-of select="@codigo"/></td>
							<td><xsl:value-of select="duracion"/></td>
							<td><xsl:value-of select="precio"/></td>						
						</tr>
					</xsl:for-each>
				</table>
				
				
				<h3>Destinos</h3>
				<ul>
				<xsl:for-each select="//viaje[@codigo='V12345']/destinos/destino">
					<li><xsl:value-of select="@ciudad"/></li>
				</xsl:for-each>
				</ul>
				<h3>Alojamientos</h3>
				<ul>
				<xsl:for-each select="//viaje[@codigo='V12345']/alojamiento/hotel">
					<li><a>
					<xsl:attribute name="href"><xsl:value-of select="web/@url"/></xsl:attribute>
					<xsl:value-of select="@nombre"/>
					</a></li>
				</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>