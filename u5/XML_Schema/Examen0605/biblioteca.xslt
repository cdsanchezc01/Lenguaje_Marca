<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:text disable-output-escaping="yes">
			&lt;!DOCTYPE html&gt;
		</xsl:text>
		<html>
			<head>
				<title><xsl:value-of select="libro/nombre"/></title>
			</head>
			<body>
				<h1>Biblioteca<xsl:value-of select="biblioteca/nombre"/></h1>
				<h2>Listado de libros (Ordenadas por n de ejemplares)</h2>
				<table border="1">
					<tr>
						<td>ISBN</td>
						<td>Titulo</td>
						<td>N Ejemplares</td>
					</tr>
					<xsl:for-each select="//libros">
						<xsl:sort select="libro" data-type="number" order="descending"/>
							<tr>
							<td><xsl:value-of select="@codigo"/></td>
							<td><xsl:value-of select="titulo"/></td>
							<td><xsl:value-of select="numero"/></td>						
						</tr>
					</xsl:for-each>
				</table>
				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>