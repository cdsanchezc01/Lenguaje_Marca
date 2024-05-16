<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Libreria</title>
				<link rel="stylesheet" type="text/css" href="libreria.css"/>
			</head>
			<body>
				<xsl:apply-templates select="bookstore/book"/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="book">
		<table>
			<tr>
				<th colspan="3">
				<xsl:value-of select="title/@lang"/>-<xsl:value-of select="title/@isbn"/>
				</th>
			</tr>
			<tr>
				<th>Titulo</th>
				<th>Precio</th>
				<th>Portada</th>
			</tr>
			<tr>
				<td><xsl:value-of select="title"/></td>
				<td><xsl:value-of select="price"/></td>
				<td><img>
				
					<xsl:attribute name="src">
					<xsl:value-of select="portada"/>
				</xsl:attribute>
				<img/>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>