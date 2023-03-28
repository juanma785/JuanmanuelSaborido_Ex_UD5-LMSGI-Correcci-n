<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>

        <table border = "1">
        <h4>Nombre y apellidos: Juan Manuel Saborido Baena</h4>
        <ol>
            <xsl:for-each select="bib/libro">
            <xsl:if test="precio &lt; 100">
            <li>
                <xsl:value-of select="titulo"/>
                <br/>
            </li>
            </xsl:if>
            </xsl:for-each>
        </ol>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>