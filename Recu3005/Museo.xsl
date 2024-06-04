<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:text disable-output-escaping="yes">
			&lt;!DOCTYPE html&gt;
		</xsl:text>
		<html>
			<head>
				<title><xsl:value-of select="museo/nombre"/></title>
			</head>
			<body>
				<h1>Museo de computacion<xsl:value-of select="Museo/nombre"/></h1>
				<h2>Listado de maquinas (Ordenadas por tipo)</h2>
				<table border="1">
					<tr>
						<td>Tipo</td>
						<td>Modelo</td>
						<td>A.Fabricacion</td>
						<td>Foto</td>
					</tr>
					<xsl:for-each select="//maquinas">
						<xsl:sort select="precio" data-type="number" order="descending"/>
							<tr>
							<td><xsl:value-of select="@codigo"/></td>
							<td><xsl:value-of select="modelo"/></td>
							<td><xsl:value-of select="anio"/></td>						
						</tr>
					</xsl:for-each>
				</table>
				
				
				<h3>Listado de Fabricantes (Ordenados por pais)</h3>
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