<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>

<table border = "1">

        <h3>Nombre y apellidos: Juan Manuel Saborido Baena</h3>
        <ol>
            <xsl:for-each select="bib/libro/autor">
            <xsl:sort select="apellido"/>
            <li>
                <xsl:value-of select="apellido"/>
                <xsl:text> , </xsl:text>
                <xsl:value-of select="nombre"/>
            </li>
            </xsl:for-each>
        </ol>
</table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>